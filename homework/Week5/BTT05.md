# 📘 Bài Thực Hành Số 2 – Cơ Sở Dữ Liệu

## I. Yêu cầu & Nội dung chính

### 1. Kiến thức cần có

* Các lệnh thao tác dữ liệu:

  * Thêm (INSERT)
  * Xóa (DELETE)
  * Sửa (UPDATE)
* Sử dụng **SQL Server Management Studio (SSMS)**
* Các câu lệnh truy vấn SQL cơ bản (SELECT)

---

### 2. Nội dung thực hành

* Làm quen và sử dụng SSMS:

  * Thêm / Xóa / Sửa dữ liệu
* Thực hiện các thao tác trên CSDL:

  * Nhập dữ liệu cho:

    * **Quản lý bán hàng**
    * **Quản lý giáo vụ**
  * Cập nhật dữ liệu
  * Thực hiện truy vấn đơn giản

---

### 3. Lưu ý quan trọng

* Kiểu dữ liệu SQL:

  * `int`, `char`, `varchar`, ...
* Cách nhập dữ liệu:

  * Chuỗi (string)
  * Số (number)
  * Ngày tháng (date)

---

## II. Kỹ thuật cần biết

### Sao chép bảng

```sql
SELECT * INTO <Bảng_mới> FROM <Bảng_cũ>
```

**Ví dụ:**

```sql
SELECT * INTO KHACHHANG_NEW FROM KHACHHANG
```

---

## III. Bài tập yêu cầu

### 🧩 Bài 1

* Viết câu lệnh **nhập dữ liệu** cho CSDL **Quản lý bán hàng**

---

### 🧩 Bài 2

* Viết câu lệnh **nhập dữ liệu** cho CSDL **Quản lý giáo vụ**

---

### 🧩 Bài 3

* Hoàn thành **Phần II – QuanLyBanHang**

  * Từ câu **2 → 5**

---

### 🧩 Bài 4

* Hoàn thành **Phần I – QuanLyGiaoVu**

  * Từ câu **11 → 14**

---

### 🧩 Bài 5

* Hoàn thành **Phần III – QuanLyBanHang**

  * Từ câu **1 → 11**

---

### 🧩 Bài 6

* Hoàn thành **Phần III – QuanLyGiaoVu**

  * Từ câu **1 → 5**
