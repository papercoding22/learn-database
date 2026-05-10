---
name: sql-execution-explain
description: 'Giải thích từng bước thứ tự thực thi SQL của Microsoft SQL Server để xây dựng mental model khi thi. Dùng khi: muốn hiểu SQL chạy như thế nào từng bước; chuẩn bị thi cuối kỳ làm trên giấy; muốn giải thích tại sao một câu SQL cho kết quả như vậy; muốn phân biệt WHERE vs HAVING, JOIN, DISTINCT, GROUP BY.'
argument-hint: 'Câu SQL cần giải thích'
---

# SQL Execution Order Explainer

## Mục tiêu

Giải thích từng bước Microsoft SQL Server thực thi một câu lệnh SQL theo **thứ tự logic** (không phải thứ tự viết), kèm bảng dữ liệu minh họa tại mỗi bước để người học có mental model rõ ràng khi làm bài thi trên giấy.

## Thứ tự thực thi logic (luôn ghi nhớ)

```
FROM → JOIN → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY
```

> Thứ tự **viết**: SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
> Thứ tự **chạy**: ngược lại, SELECT gần cuối cùng

## Quy trình giải thích

### Bước 1 — Đọc câu SQL, xác định các mệnh đề có mặt

Liệt kê các mệnh đề xuất hiện trong câu lệnh (FROM, JOIN, WHERE, GROUP BY, HAVING, SELECT, DISTINCT, ORDER BY) để xác định các bước cần đi qua.

### Bước 2 — FROM / JOIN

- Xác định bảng (hoặc các bảng) làm nguồn dữ liệu.
- Nếu có JOIN: giải thích loại JOIN (INNER, LEFT, ...) và điều kiện nối.
- Vẽ bảng dữ liệu mẫu ban đầu (4–6 dòng đủ minh họa).

### Bước 3 — WHERE

- Duyệt **từng dòng** trong tập dữ liệu.
- Giải thích từng điều kiện: `IN`, `BETWEEN`, `LIKE`, `AND`, `OR`, `NOT`, subquery.
- Vẽ bảng trước/sau, đánh dấu dòng bị loại (✗) và dòng giữ lại (✓).

> **Quy tắc vàng**: WHERE lọc **từng dòng**, không được dùng hàm tổng hợp (COUNT, SUM...).

### Bước 4 — GROUP BY

- Gom các dòng có cùng giá trị cột GROUP BY thành **một nhóm**.
- Vẽ bảng nhóm, liệt kê các dòng bên trong mỗi nhóm.
- Sau bước này, đơn vị xử lý là **nhóm**, không còn là dòng đơn lẻ.

### Bước 5 — HAVING

- Tính hàm tổng hợp (COUNT, SUM, AVG, MIN, MAX) cho **từng nhóm**.
- Loại nhóm không thỏa điều kiện.
- Vẽ bảng nhóm trước/sau với cột giá trị hàm tổng hợp.

> **Phân biệt WHERE vs HAVING**:
> - Điều kiện trên cột gốc → **WHERE** (trước GROUP BY, nhanh hơn)
> - Điều kiện trên hàm tổng hợp → **bắt buộc HAVING**

### Bước 6 — SELECT

- Chiếu (giữ lại) các cột được chỉ định.
- Tính toán biểu thức nếu có (ví dụ: `HO + ' ' + TEN AS HOTEN`).
- Vẽ bảng kết quả chỉ với các cột đã chọn.

### Bước 7 — DISTINCT (nếu có)

- Loại bỏ các dòng trùng lặp hoàn toàn.
- Giải thích tại sao có/không có trùng lặp trong trường hợp cụ thể.

### Bước 8 — ORDER BY (nếu có)

- Sắp xếp kết quả cuối theo cột/biểu thức chỉ định.
- Lưu ý: đây là bước **duy nhất** chạy sau SELECT, nên có thể dùng alias.

## Bảng tóm tắt mental model (in ra ôn thi)

| Mệnh đề | Thứ tự | Lọc/xử lý | Dùng hàm tổng hợp? |
|---------|--------|------------|---------------------|
| FROM/JOIN | 1 | Tạo tập dữ liệu | Không |
| WHERE | 2 | Từng **dòng** | Không |
| GROUP BY | 3 | Gom thành nhóm | — |
| HAVING | 4 | Từng **nhóm** | **Bắt buộc** |
| SELECT | 5 | Chiếu cột | Được |
| DISTINCT | 6 | Khử trùng | Không |
| ORDER BY | 7 | Sắp xếp | Được |

## Các pattern hay gặp trong thi

### OR → dùng IN
```sql
-- Thay vì: WHERE MASP = 'A' OR MASP = 'B'
WHERE MASP IN ('A', 'B')
```

### "Cùng lúc cả A và B" → INTERSECT hoặc GROUP BY + HAVING
```sql
-- Cách 1: INTERSECT (trực quan)
SELECT SOHD FROM CTHD WHERE MASP = 'A' AND SL BETWEEN 10 AND 20
INTERSECT
SELECT SOHD FROM CTHD WHERE MASP = 'B' AND SL BETWEEN 10 AND 20;

-- Cách 2: GROUP BY + HAVING (ngắn hơn, quét 1 lần)
SELECT SOHD FROM CTHD
WHERE MASP IN ('A', 'B') AND SL BETWEEN 10 AND 20
GROUP BY SOHD
HAVING COUNT(DISTINCT MASP) = 2;
```

### Subquery trong WHERE
- `IN (subquery)` → dòng cha khớp ít nhất 1 dòng con
- `NOT IN (subquery)` → dòng cha không khớp dòng con nào
- `EXISTS (subquery)` → tương tự IN nhưng dừng sớm khi tìm thấy 1 dòng

### Tên đầy đủ từ HO + TEN (schema QuanLyGiaoVu)
```sql
HV.HO + ' ' + HV.TEN AS HOTEN
```
