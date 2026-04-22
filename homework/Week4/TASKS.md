# Danh sách tác vụ — BTT04

---

## Bài tập 1: Quản lý Bán Hàng

### Phần I — DDL (15 câu)
- [ ] Câu 1: Tạo 5 bảng + khai báo khóa chính, khóa ngoại
- [ ] Câu 2: Thêm cột `GHICHU varchar(20)` vào SANPHAM
- [ ] Câu 3: Thêm cột `LOAIKH tinyint` vào KHACHHANG
- [ ] Câu 4: Sửa kiểu `GHICHU` thành `varchar(100)`
- [ ] Câu 5: Xóa cột `GHICHU` khỏi SANPHAM
- [ ] Câu 6: Cho `LOAIKH` lưu chuỗi "Vang lai", "Thuong xuyen", "Vip"
- [ ] Câu 7: `DVT` chỉ nhận giá trị trong ("cay","hop","cai","quyen","chuc")
- [ ] Câu 8: Giá bán `GIA >= 500`
- [ ] Câu 9: Số lượng mỗi chi tiết hóa đơn `SL >= 1`
- [ ] Câu 10: Ngày đăng ký `NGDK > NGSINH`
- [ ] Câu 11: `NGHD >= NGDK` của khách hàng thành viên
- [ ] Câu 12: `NGHD >= NGVL` của nhân viên bán hàng
- [ ] Câu 13: Mỗi hóa đơn phải có ít nhất 1 chi tiết
- [ ] Câu 14: `TRIGIA` = tổng `(SL * GIA)` của các chi tiết hóa đơn
- [ ] Câu 15: `DOANHSO` = tổng `TRIGIA` các hóa đơn của khách hàng thành viên

### Phần II — DML (5 câu)
- [ ] Câu 1: Nhập dữ liệu mẫu cho tất cả các bảng
- [ ] Câu 2: Tạo `SANPHAM1` và `KHACHHANG1` chứa toàn bộ dữ liệu gốc
- [ ] Câu 3: Tăng giá 5% sản phẩm do "Thai Lan" sản xuất (SANPHAM1)
- [ ] Câu 4: Giảm giá 5% sản phẩm "Trung Quoc" có giá <= 10.000 (SANPHAM1)
- [ ] Câu 5: Cập nhật `LOAIKH = "Vip"` theo điều kiện doanh số + ngày đăng ký (KHACHHANG1)

### Phần III — Query (45 câu)
- [ ] Câu 1: Sản phẩm do "Trung Quoc" sản xuất
- [ ] Câu 2: Sản phẩm có DVT là "cay" hoặc "quyen"
- [ ] Câu 3: Sản phẩm có MASP bắt đầu "B", kết thúc "01"
- [ ] Câu 4: Sản phẩm "Trung Quoc", giá 30.000–40.000
- [ ] Câu 5: Sản phẩm "Trung Quoc" hoặc "Thai Lan", giá 30.000–40.000
- [ ] Câu 6: Hóa đơn bán trong ngày 1/1/2007 và 2/1/2007
- [ ] Câu 7: Hóa đơn tháng 1/2007, sắp xếp ngày tăng, trị giá giảm
- [ ] Câu 8: Khách hàng mua hàng trong ngày 1/1/2007
- [ ] Câu 9: Hóa đơn do "Nguyen Van B" lập ngày 28/10/2006
- [ ] Câu 10: Sản phẩm "Nguyen Van A" mua trong tháng 10/2006
- [ ] Câu 11: Hóa đơn mua "BB01" hoặc "BB02"
- [ ] Câu 12: Hóa đơn mua "BB01" hoặc "BB02", số lượng 10–20
- [ ] Câu 13: Hóa đơn mua cùng lúc "BB01" và "BB02", số lượng 10–20
- [ ] Câu 14: Sản phẩm "Trung Quoc" HOẶC bán ra ngày 1/1/2007
- [ ] Câu 15: Sản phẩm không bán được
- [ ] Câu 16: Sản phẩm không bán được trong năm 2006
- [ ] Câu 17: Sản phẩm "Trung Quoc" không bán được trong năm 2006
- [ ] Câu 18: Hóa đơn mua tất cả sản phẩm do Singapore sản xuất
- [ ] Câu 19: Hóa đơn năm 2006 mua ít nhất tất cả sản phẩm Singapore
- [ ] Câu 20: Số hóa đơn không phải khách hàng thành viên
- [ ] Câu 21: Số sản phẩm khác nhau bán ra trong năm 2006
- [ ] Câu 22: Trị giá hóa đơn cao nhất, thấp nhất
- [ ] Câu 23: Trị giá trung bình hóa đơn năm 2006
- [ ] Câu 24: Doanh thu bán hàng năm 2006
- [ ] Câu 25: Hóa đơn có trị giá cao nhất năm 2006
- [ ] Câu 26: Họ tên khách mua hóa đơn trị giá cao nhất năm 2006
- [ ] Câu 27: Top 3 khách hàng theo doanh số giảm dần
- [ ] Câu 28: Sản phẩm có giá thuộc top 3 mức giá cao nhất
- [ ] Câu 29: Sản phẩm "Thai Lan" có giá thuộc top 3 mức giá cao nhất
- [ ] Câu 30: Sản phẩm "Trung Quoc" có giá thuộc top 3 của riêng nhóm Trung Quoc
- [ ] Câu 31 ⭐: Top 3 khách hàng xếp hạng theo doanh số
- [ ] Câu 32: Tổng số sản phẩm do "Trung Quoc" sản xuất
- [ ] Câu 33: Tổng số sản phẩm theo từng nước sản xuất
- [ ] Câu 34: Giá cao nhất, thấp nhất, trung bình theo từng nước
- [ ] Câu 35: Doanh thu bán hàng mỗi ngày
- [ ] Câu 36: Tổng số lượng từng sản phẩm bán ra tháng 10/2006
- [ ] Câu 37: Doanh thu theo từng tháng trong năm 2006
- [ ] Câu 38: Hóa đơn có ít nhất 4 sản phẩm khác nhau
- [ ] Câu 39: Hóa đơn mua đúng 3 sản phẩm do "Viet Nam" sản xuất
- [ ] Câu 40: Khách hàng có số lần mua hàng nhiều nhất
- [ ] Câu 41: Tháng có doanh số bán cao nhất trong năm 2006
- [ ] Câu 42: Sản phẩm có tổng số lượng bán thấp nhất năm 2006
- [ ] Câu 43 ⭐: Mỗi nước — sản phẩm có giá cao nhất
- [ ] Câu 44: Nước sản xuất có ít nhất 3 sản phẩm giá khác nhau
- [ ] Câu 45 ⭐: Trong top 10 KH doanh số cao nhất, ai mua nhiều lần nhất

---

## Bài tập 2: Quản lý Giáo Vụ

### Phần I — DDL (24 câu)
- [ ] Câu 1: Tạo 8 bảng + khóa chính, khóa ngoại + thêm GHICHU, DIEMTB, XEPLOAI cho HOCVIEN
- [ ] Câu 2: MAHV là 5 ký tự: 3 đầu = mã lớp, 2 cuối = số thứ tự
- [ ] Câu 3: GIOITINH chỉ nhận "Nam" hoặc "Nu"
- [ ] Câu 4: DIEM từ 0 đến 10, lưu 2 số lẻ
- [ ] Câu 5: KQUA = "Dat" nếu DIEM >= 5, "Khong dat" nếu DIEM < 5
- [ ] Câu 6: Mỗi môn thi tối đa 3 lần
- [ ] Câu 7: HOCKY chỉ nhận giá trị 1, 2, 3
- [ ] Câu 8: HOCVI chỉ nhận "CN","KS","Ths","TS","PTS"
- [ ] Câu 9: Lớp trưởng phải là học viên của lớp đó
- [ ] Câu 10: Trưởng khoa phải là GV thuộc khoa, có học vị "TS" hoặc "PTS"
- [ ] Câu 11: Học viên ít nhất 18 tuổi
- [ ] Câu 12: TUNGAY < DENNGAY trong giảng dạy
- [ ] Câu 13: Giáo viên vào làm ít nhất 22 tuổi
- [ ] Câu 14: Chênh lệch TCLT và TCTH không quá 3
- [ ] Câu 15: HV chỉ thi môn khi lớp đã học xong môn đó
- [ ] Câu 16: Mỗi học kỳ một lớp học tối đa 3 môn
- [ ] Câu 17: Sỉ số lớp = số học viên thuộc lớp
- [ ] Câu 18: MAMH và MAMH_TRUOC không được giống nhau, không tồn tại vòng lặp A↔B
- [ ] Câu 19: GV cùng học vị + học hàm + hệ số thì mức lương bằng nhau
- [ ] Câu 20: Thi lại (lần > 1) chỉ khi điểm lần trước dưới 5
- [ ] Câu 21: Ngày thi lần sau > ngày thi lần trước (cùng HV, cùng môn)
- [ ] Câu 22: HV chỉ thi môn mà lớp đã học xong
- [ ] Câu 23: Phân công giảng dạy phải theo thứ tự môn tiên quyết
- [ ] Câu 24: GV chỉ dạy môn thuộc khoa mình phụ trách

### Phần II — DML (4 câu)
- [ ] Câu 1: Tăng hệ số lương thêm 0.2 cho giáo viên là trưởng khoa
- [ ] Câu 2: Cập nhật DIEMTB cho mỗi học viên (lấy điểm lần thi cuối)
- [ ] Câu 3: Cập nhật GHICHU = "Cam thi" nếu thi lần 3 bất kỳ môn dưới 5 điểm
- [ ] Câu 4: Cập nhật XEPLOAI theo DIEMTB (XS / G / K / TB / Y)

### Phần III — Query (35 câu)
- [ ] Câu 1: Danh sách lớp trưởng các lớp
- [ ] Câu 2: Bảng điểm môn CTRR của lớp K12, sắp xếp theo tên
- [ ] Câu 3: HV và môn thi lần 1 đã đạt
- [ ] Câu 4: HV lớp K11 thi CTRR không đạt lần 1
- [ ] Câu 5 ⭐: HV lớp K thi CTRR không đạt ở tất cả các lần
- [ ] Câu 6: Môn "Tran Tam Thanh" dạy trong HK1 năm 2006
- [ ] Câu 7: Môn GVCN lớp K11 dạy trong HK1 năm 2006
- [ ] Câu 8: Lớp trưởng các lớp "Nguyen To Lan" dạy môn CSDL
- [ ] Câu 9: Môn phải học liền trước "Co So Du Lieu"
- [ ] Câu 10: Môn mà "Cau Truc Roi Rac" là tiên quyết
- [ ] Câu 11: GV dạy CTRR cho cả K11 và K12 trong cùng HK1/2006
- [ ] Câu 12: HV thi không đạt CSDL lần 1 nhưng chưa thi lại
- [ ] Câu 13: GV không được phân công dạy bất kỳ môn nào
- [ ] Câu 14: GV không dạy bất kỳ môn nào thuộc khoa mình
- [ ] Câu 15: HV lớp K11 thi quá 3 lần vẫn không đạt, hoặc thi CTRR lần 2 được 5 điểm
- [ ] Câu 16: GV dạy CTRR cho ít nhất 2 lớp trong cùng HK của một năm
- [ ] Câu 17: Danh sách HV và điểm môn CSDL (lần thi cuối)
- [ ] Câu 18: Danh sách HV và điểm môn CSDL (điểm cao nhất)
- [ ] Câu 19: Khoa thành lập sớm nhất
- [ ] Câu 20: Số GV có học hàm "GS" hoặc "PGS"
- [ ] Câu 21: Thống kê số GV theo học vị trong mỗi khoa
- [ ] Câu 22: Mỗi môn — số HV đạt và không đạt
- [ ] Câu 23: GV vừa là GVCN, vừa dạy ít nhất 1 môn cho lớp đó
- [ ] Câu 24: Lớp trưởng của lớp có sỉ số cao nhất
- [ ] Câu 25 ⭐: Lớp trưởng thi không đạt quá 3 môn (không đạt tất cả lần thi)
- [ ] Câu 26: HV có số môn đạt 9–10 điểm nhiều nhất
- [ ] Câu 27: Trong từng lớp — HV có nhiều môn đạt 9–10 điểm nhất
- [ ] Câu 28: Mỗi GV trong từng HK/năm — dạy bao nhiêu môn, bao nhiêu lớp
- [ ] Câu 29: Trong từng HK/năm — GV giảng dạy nhiều nhất
- [ ] Câu 30: Môn có nhiều HV không đạt nhất (lần thi 1)
- [ ] Câu 31: HV thi môn nào cũng đạt (xét lần 1)
- [ ] Câu 32 ⭐: HV thi môn nào cũng đạt (xét lần cuối)
- [ ] Câu 33 ⭐: HV đã thi tất cả các môn đều đạt (lần 1)
- [ ] Câu 34 ⭐: HV đã thi tất cả các môn đều đạt (lần cuối)
- [ ] Câu 35 ⭐⭐: HV có điểm cao nhất trong từng môn (lần thi cuối)

---

> ⭐ = câu nâng cao | ⭐⭐ = câu khó nhất
