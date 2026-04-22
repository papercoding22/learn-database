# Bài tập 1:

Cơ sở dữ liệu quản lý bán hàng gồm có các quan hệ sau:

**KHACHHANG** (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK)  
*Tân từ*: Quan hệ khách hàng sẽ lưu trữ thông tin của khách hàng thành viên gồm có các thuộc tính: mã khách hàng, họ tên, địa chỉ, số điện thoại, ngày sinh, ngày đăng ký và doanh số (tổng trị giá các hóa đơn của khách hàng thành viên này).

**NHANVIEN** (MANV,HOTEN, NGVL, SODT)  
*Tân từ*: Mỗi nhân viên bán hàng cần ghi nhận họ tên, ngày vào làm, điện thọai liên lạc, mỗi nhân viên phân biệt với nhau bằng mã nhân viên.

**SANPHAM** (MASP,TENSP, DVT, NUOCSX, GIA)  
*Tân từ*: Mỗi sản phẩm có một mã số, một tên gọi, đơn vị tính, nước sản xuất và một giá bán.

**HOADON** (SOHD, NGHD, MAKH, MANV, TRIGIA)  
*Tân từ*: Khi mua hàng, mỗi khách hàng sẽ nhận một hóa đơn tính tiền, trong đó sẽ có số hóa đơn, ngày mua, nhân viên nào bán hàng, trị giá của hóa đơn là bao nhiêu và mã số của khách hàng nếu là khách hàng thành viên.

**CTHD** (SOHD,MASP,SL)  
*Tân từ*: Diễn giải chi tiết trong mỗi hóa đơn gồm có những sản phẩm gì với số lượng là bao nhiêu.

| KHACHHANG |  |  |  |  |  |  |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **MAKH** | **HOTEN** | **DCHI** | **SODT** | **NGSINH** | **DOANHSO** | **NGDK** |
| KH01 | Nguyen Van A | 731 Tran Hung Dao, Q5, TpHCM | 08823451 | 22/10/1960 | 13,060,000 | 22/07/2006 |
| KH02 | Tran Ngoc Han | 23/5 Nguyen Trai, Q5, TpHCM | 0908256478 | 3/4/1974 | 280,000 | 30/07/2006 |
| KH03 | Tran Ngoc Linh | 45 Nguyen Canh Chan, Q1, TpHCM | 0938776266 | 12/6/1980 | 3,860,000 | 05/08/2006 |
| KH04 | Tran Minh Long | 50/34 Le Dai Hanh, Q10, TpHCM | 0917325476 | 9/3/1965 | 250,000 | 02/10/2006 |
| KH05 | Le Nhat Minh | 34 Truong Dinh, Q3, TpHCM | 08246108 | 10/3/1950 | 21,000 | 28/10/2006 |
| KH06 | Le Hoai Thuong | 227 Nguyen Van Cu, Q5, TpHCM | 08631738 | 31/12/1981 | 915,000 | 24/11/2006 |
| KH07 | Nguyen Van Tam | 32/3 Tran Binh Trong, Q5, TpHCM | 0916783565 | 6/4/1971 | 12,500 | 01/12/2006 |
| KH08 | Phan Thi Thanh | 45/2 An Duong Vuong, Q5, TpHCM | 0938435756 | 10/1/1971 | 365,000 | 13/12/2006 |
| KH09 | Le Ha Vinh | 873 Le Hong Phong, Q5, TpHCM | 08654763 | 3/9/1979 | 70,000 | 14/01/2007 |
| KH10 | Ha Duy Lap | 34/34B Nguyen Trai, Q1, TpHCM | 08768904 | 2/5/1983 | 67,500 | 16/01/2007 |
| **NHANVIEN** |  |  |  |  |  |  |
| **MANV** | **HOTEN** | **DTHOAI** | **NGVL** |  |  |  |
| NV01 | Nguyen Nhu Nhut | 0927345678 | 13/4/2006 |  |  |  |
| NV02 | Le Thi Phi Yen | 0987567390 | 21/4/2006 |  |  |  |
| NV03 | Nguyen Van B | 0997047382 | 27/4/2006 |  |  |  |
| NV04 | Ngo Thanh Tuan | 0913758498 | 24/6/2006 |  |  |  |
| NV05 | Nguyen Thi Truc Thanh | 0918590387 | 20/7/2006 |  |  |  |

	

| SANPHAM |  |  |  |  |
| ----- | ----- | ----- | ----- | ----- |
| **MASP** | **TENSP** | **DVT** | **NUOCSX** | **GIA** |
| BC01 | But chi | cay | Singapore | 3,000 |
| BC02 | But chi | cay | Singapore | 5,000 |
| BC03 | But chi | cay | Viet Nam | 3,500 |
| BC04 | But chi | hop | Viet Nam | 30,000 |
| BB01 | But bi | cay | Viet Nam | 5,000 |
| BB02 | But bi | cay | Trung Quoc | 7,000 |
| BB03 | But bi | hop | Thai Lan | 100,000 |
| TV01 | Tap 100 giay mong | quyen | Trung Quoc | 2,500 |
| TV02 | Tap 200 giay mong | quyen | Trung Quoc | 4,500 |
| TV03 | Tap 100 giay tot | quyen | Viet Nam | 3,000 |
| TV04 | Tap 200 giay tot | quyen | Viet Nam | 5,500 |
| TV05 | Tap 100 trang | chuc | Viet Nam | 23,000 |
| TV06 | Tap 200 trang | chuc | Viet Nam | 53,000 |
| TV07 | Tap 100 trang | chuc | Trung Quoc | 34,000 |
| ST01 | So tay 500 trang | quyen | Trung Quoc | 40,000 |
| ST02 | So tay loai 1 | quyen | Viet Nam | 55,000 |
| ST03 | So tay loai 2 | quyen | Viet Nam | 51,000 |
| ST04 | So tay | quyen | Thai Lan | 55,000 |
| ST05 | So tay mong | quyen | Thai Lan | 20,000 |
| ST06 | Phan viet bang | hop | Viet Nam | 5,000 |
| ST07 | Phan khong bui | hop | Viet Nam | 7,000 |
| ST08 | Bong bang | cai | Viet Nam | 1,000 |
| ST09 | But long | cay | Viet Nam | 5,000 |
| ST10 | But long | cay | Trung Quoc | 7,000 |
| **HOADON** |  |  |  |  |
| **SOHD** | **NGHD** | **MAKH** | **MANV** | **TRIGIA** |
| 1001 | 23/07/2006 | KH01 | NV01 | 320,000 |
| 1002 | 12/08/2006 | KH01 | NV02 | 840,000 |
| 1003 | 23/08/2006 | KH02 | NV01 | 100,000 |
| 1004 | 01/09/2006 | KH02 | NV01 | 180,000 |
| 1005 | 20/10/2006 | KH01 | NV02 | 3,800,000 |
| 1006 | 16/10/2006 | KH01 | NV03 | 2,430,000 |
| 1007 | 28/10/2006 | KH03 | NV03 | 510,000 |
| 1008 | 28/10/2006 | KH01 | NV03 | 440,000 |
| 1009 | 28/10/2006 | KH03 | NV04 | 200,000 |
| 1010 | 01/11/2006 | KH01 | NV01 | 5,200,000 |
| 1011 | 04/11/2006 | KH04 | NV03 | 250,000 |
| 1012 | 30/11/2006 | KH05 | NV03 | 21,000 |
| 1013 | 12/12/2006 | KH06 | NV01 | 5,000 |
| 1014 | 31/12/2006 | KH03 | NV02 | 3,150,000 |
| 1015 | 01/01/2007 | KH06 | NV01 | 910,000 |
| 1016 | 01/01/2007 | KH07 | NV02 | 12,500 |
| 1017 | 02/01/2007 | KH08 | NV03 | 35,000 |
| 1018 | 13/01/2007 | KH08 | NV03 | 330,000 |
| 1019 | 13/01/2007 | KH01 | NV03 | 30,000 |
| 1020 | 14/01/2007 | KH09 | NV04 | 70,000 |
| 1021 | 16/01/2007 | KH10 | NV03 | 67,500 |
| 1022 | 16/01/2007 | Null | NV03 | 7,000 |
| 1023 | 17/01/2007 | Null | NV01 | 330,000 |
| **CTHD** |  |  |  |  |
| **SOHD** | **MASP** | **SL** |  |  |
| 1001 | TV02 | 10 |  |  |
| 1001 | ST01 | 5 |  |  |
| 1001 | BC01 | 5 |  |  |
| 1001 | BC02 | 10 |  |  |
| 1001 | ST08 | 10 |  |  |
| 1002 | BC04 | 20 |  |  |
| 1002 | BB01 | 20 |  |  |
| 1002 | BB02 | 20 |  |  |
| 1003 | BB03 | 10 |  |  |
| 1004 | TV01 | 20 |  |  |
| 1004 | TV02 | 10 |  |  |
| 1004 | TV03 | 10 |  |  |
| 1004 | TV04 | 10 |  |  |
| 1005 | TV05 | 50 |  |  |
| 1005 | TV06 | 50 |  |  |
| 1006 | TV07 | 20 |  |  |
| **CTHD** |  |  |  |  |
| **SOHD** | **MASP** | **SL** |  |  |
| 1006 | ST01 | 30 |  |  |
| 1006 | ST02 | 10 |  |  |
| 1007 | ST03 | 10 |  |  |
| 1008 | ST04 | 8 |  |  |
| 1009 | ST05 | 10 |  |  |
| 1010 | TV07 | 50 |  |  |
| 1010 | ST07 | 50 |  |  |
| 1010 | ST08 | 100 |  |  |
| 1010 | ST04 | 50 |  |  |
| 1010 | TV03 | 100 |  |  |
| 1011 | ST06 | 50 |  |  |
| 1012 | ST07 | 3 |  |  |
| 1013 | ST08 | 5 |  |  |
| 1014 | BC02 | 80 |  |  |
| 1014 | BB02 | 100 |  |  |
| 1014 | BC04 | 60 |  |  |
| **CTHD** |  |  |  |  |
| **SOHD** | **MASP** | **SL** |  |  |
| 1014 | BB01 | 50 |  |  |
| 1015 | BB02 | 30 |  |  |
| 1015 | BB03 | 7 |  |  |
| 1016 | TV01 | 5 |  |  |
| 1017 | TV02 | 1 |  |  |
| 1017 | TV03 | 1 |  |  |
| 1017 | TV04 | 5 |  |  |
| 1018 | ST04 | 6 |  |  |
| 1019 | ST05 | 1 |  |  |
| 1019 | ST06 | 2 |  |  |
| 1020 | ST07 | 10 |  |  |
| 1021 | ST08 | 5 |  |  |
| 1021 | TV01 | 7 |  |  |
| 1021 | TV02 | 10 |  |  |
| 1022 | ST07 | 1 |  |  |
| 1023 | ST04 | 6 |  |  |

	

| BẢNG THUỘC TÍNH |  |  |  |
| :---: | ----- | ----- | ----- |
| **Quan hệ** | **Thuộc tính** | **Diễn giải** | **Kiểu dữ liệu** |
| **KHACHHANG** | MAKH | Mã khách hàng | char(4) |
|  | HOTEN | Họ tên | varchar(40) |
|  | DCHI | Địa chỉ | varchar(50) |
|  | SODT | Số điện thọai | varchar(20) |
|  | NGSINH | Ngày sinh | smalldatetime |
|  | DOANHSO | Tổng trị giá các hóa đơn khách hàng đã mua | money |
|  | NGDK | Ngày đăng ký thành viên | smalldatetime |
| **NHANVIEN** | MANV | Mã nhân viên | char(4) |
|  | HOTEN | Họ tên | varchar(40) |
|  | SODT | Số điện thoại | varchar(20) |
|  | NGVL | Ngày vào làm | smalldatetime |
| **SANPHAM** | MASP | Mã sản phẩm | char(4) |
|  | TENSP | Tên sản phẩm | varchar(40) |
|  | DVT | Đơn vị tính | varchar(20) |
|  | NUOCSX | Nước sản xuất | varchar(40) |
|  | GIA | Giá bán | money |
| **HOADON** | SOHD | Số hóa đơn | int |
|  | NGHD | Ngày mua hàng | smalldatetime |
|  | MAKH | Mã khách hàng nào mua | char(4) |
|  | MANV | Nhân viên bán hàng | char(4) |
|  | TRIGIA | Trị giá hóa đơn | money |
| **CTHD** | SOHD | Số hóa đơn | int |
|  | MASP | Mã sản phẩm | char(4) |
|  | SL | Số lượng | int |

## I. Ngôn ngữ định nghĩa dữ liệu (Data Definition Language):

1. Tạo các quan hệ và khai báo các khóa chính, khóa ngoại của quan hệ. 

2. Thêm vào thuộc tính GHICHU có kiểu dữ liệu *varchar(20)* cho quan hệ SANPHAM. 

3. Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là *tinyint* cho quan hệ KHACHHANG

4. Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành *varchar(100).*

5. Xóa thuộc tính GHICHU trong quan hệ SANPHAM.

6. Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG có thể lưu các giá trị là: “Vang lai”, “Thuong xuyen”, “Vip”, …

7. Đơn vị tính của sản phẩm chỉ có thể là (“cay”,”hop”,”cai”,”quyen”,”chuc”)

8. Giá bán của sản phẩm từ 500 đồng trở lên.

9. Mỗi lần mua hàng, khách hàng phải mua ít nhất 1 sản phẩm.

10. Ngày khách hàng đăng ký là khách hàng thành viên phải lớn hơn ngày sinh của người đó.

11. Ngày mua hàng (NGHD) của một khách hàng thành viên sẽ lớn hơn hoặc bằng ngày khách hàng đó đăng ký thành viên (NGDK).

12. Ngày bán hàng (NGHD) của một nhân viên phải lớn hơn hoặc bằng ngày nhân viên đó vào làm.

13. Mỗi một hóa đơn phải có ít nhất một chi tiết hóa đơn.

14. Trị giá của một hóa đơn là tổng thành tiền (số lượng\*đơn giá) của các chi tiết thuộc hóa đơn đó.

15. Doanh số của một khách hàng là tổng trị giá các hóa đơn mà khách hàng thành viên đó đã mua.

## II. Ngôn ngữ thao tác dữ liệu (Data Manipulation Language):

1. Nhập dữ liệu cho các quan hệ trên.

2. Tạo quan hệ SANPHAM1 chứa toàn bộ dữ liệu của quan hệ SANPHAM. Tạo quan hệ KHACHHANG1 chứa toàn bộ dữ liệu của quan hệ KHACHHANG.

3. Cập nhật giá tăng 5% đối với những sản phẩm do “Thai Lan” sản xuất (cho quan hệ SANPHAM1)

4. Cập nhật giá giảm 5% đối với những sản phẩm do “Trung Quoc” sản xuất có giá từ 10.000 trở xuống (cho quan hệ SANPHAM1).

5. Cập nhật giá trị LOAIKH là “Vip” đối với những khách hàng đăng ký thành viên trước ngày 1/1/2007 có doanh số từ 10.000.000 trở lên hoặc khách hàng đăng ký thành viên từ 1/1/2007 trở về sau có doanh số từ 2.000.000 trở lên (cho quan hệ KHACHHANG1).

## III. Ngôn ngữ truy vấn dữ liệu:

1. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.

2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.

3. In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.

4. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000.

5. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000.

6. In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.

7. In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).

8. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.

9. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.

10. In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.

11. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.

12. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20\.

13. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20\.

14. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được bán ra trong ngày 1/1/2007.

15. In ra danh sách các sản phẩm (MASP,TENSP) không bán được.

16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006\.

17. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006\.

18. Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất.

19. Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.

20. Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?

21. Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006\.

22. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?

23. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?

24. Tính doanh thu bán hàng trong năm 2006\.

25. Tìm số hóa đơn có trị giá cao nhất trong năm 2006\.

26. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006\.

27. In ra danh sách 3 khách hàng đầu tiên (MAKH, HOTEN) sắp xếp theo doanh số giảm dần.

28. In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.

29. In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).

30. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).

31. \* In ra danh sách khách hàng nằm trong 3 hạng cao nhất (xếp hạng theo doanh số).

32. Tính tổng số sản phẩm do “Trung Quoc” sản xuất.

33. Tính tổng số sản phẩm của từng nước sản xuất.

34. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.

35. Tính doanh thu bán hàng mỗi ngày.

36. Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.

37. Tính doanh thu bán hàng của từng tháng trong năm 2006\.

38. Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.

39. Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).

40. Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất. 

41. Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?

42. Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006\.

43. \*Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.

44. Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.

45. \*Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.

# Bài tập 2:

*Cho cơ sở dữ liệu quản lý giáo vụ gồm có những quan hệ sau:*

**HOCVIEN** (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP)  
*Tân từ*: mỗi học viên phân biệt với nhau bằng mã học viên, lưu trữ họ tên, ngày sinh, giới tính, nơi sinh, thuộc lớp nào.

**LOP** (MALOP, TENLOP, TRGLOP, SISO, MAGVCN)  
*Tân từ*: mỗi lớp gồm có mã lớp, tên lớp, học viên làm lớp trưởng của lớp, sỉ số lớp và giáo viên chủ nhiệm.

**KHOA** (MAKHOA, TENKHOA, NGTLAP, TRGKHOA)  
*Tân từ*: mỗi khoa cần lưu trữ mã khoa, tên khoa, ngày thành lập khoa và trưởng khoa (cũng là một giáo viên thuộc khoa).

**MONHOC** (MAMH, TENMH, TCLT, TCTH, MAKHOA)  
*Tân từ:* mỗi môn học cần lưu trữ tên môn học, số tín chỉ lý thuyết, số tín chỉ thực hành và khoa nào phụ trách.

**DIEUKIEN** (MAMH, MAMH\_TRUOC)	  
*Tân từ*: có những môn học học viên phải có kiến thức từ một số môn học trước.

**GIAOVIEN** (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA)  
*Tân từ*: mã giáo viên để phân biệt giữa các giáo viên, cần lưu trữ họ tên, học vị, học hàm, giới tính, ngày sinh, ngày vào làm, hệ số, mức lương và thuộc một khoa.

**GIANGDAY** (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY)  
*Tân từ*: mỗi học kỳ của năm học sẽ phân công giảng dạy: lớp nào học môn gì do giáo viên nào phụ trách.

**KETQUATHI** (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA)  
*Tân từ*: lưu trữ kết quả thi của học viên: học viên nào thi môn học gì, lần thi thứ mấy, ngày thi là ngày nào, điểm thi bao nhiêu và kết quả là đạt hay không đạt.

| KHOA |  |  |  |  |
| :---- | :---- | ----- | ----- | :---- |
| **MAKHOA** | **TENKHOA** | **NGTLAP** | **TRGKHOA** |  |
| KHMT | Khoa hoc may tinh | 7/6/2005 | GV01 |  |
| HTTT | He thong thong tin | 7/6/2005 | GV02 |  |
| CNPM | Cong nghe phan mem | 7/6/2005 | GV04 |  |
| MTT | Mang va truyen thong | 20/10/2005 | GV03 |  |
| KTMT | Ky thuat may tinh | 20/12/2005 | Null |  |
| **LOP** |  |  |  |  |
| **MALOP** | **TENLOP** | **TRGLOP** | **SISO** | **MAGVCN** |
| K11 | Lop 1 khoa 1 | K1108 | 11 | GV07 |
| K12 | Lop 2 khoa 1 | K1205 | 12 | GV09 |
| K13 | Lop 3 khoa 1 | K1305 | 12 | GV14 |

| MONHOC |  |  |  |  |  |  |  |  |  |
| :---- | :---- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | :---- |
| **MAMH** | **TENMH** | **TCLT** | **TCTH** | **MAKHOA** |  |  |  |  |  |
| THDC | Tin hoc dai cuong | 4 | 1 | KHMT |  |  |  |  |  |
| CTRR | Cau truc roi rac | 5 | 0 | KHMT |  |  |  |  |  |
| CSDL | Co so du lieu | 3 | 1 | HTTT |  |  |  |  |  |
| CTDLGT | Cau truc du lieu va giai thuat | 3 | 1 | KHMT |  |  |  |  |  |
| PTTKTT | Phan tich thiet ke thuat toan | 3 | 0 | KHMT |  |  |  |  |  |
| DHMT | Do hoa may tinh | 3 | 1 | KHMT |  |  |  |  |  |
| KTMT | Kien truc may tinh | 3 | 0 | KTMT |  |  |  |  |  |
| TKCSDL | Thiet ke co so du lieu | 3 | 1 | HTTT |  |  |  |  |  |
| PTTKHTTT | Phan tich thiet ke he thong thong tin | 4 | 1 | HTTT |  |  |  |  |  |
| HDH | He dieu hanh | 4 | 0 | KTMT |  |  |  |  |  |
| NMCNPM | Nhap mon cong nghe phan mem | 3 | 0 | CNPM |  |  |  |  |  |
| LTCFW | Lap trinh C for win | 3 | 1 | CNPM |  |  |  |  |  |
| LTHDT | Lap trinh huong doi tuong | 3 | 1 | CNPM |  |  |  |  |  |
| **DIEUKIEN** |  |  |  |  |  |  |  |  |  |
| **MAMH** | **MAMH\_TRUOC** |  |  |  |  |  |  |  |  |
| CSDL | CTRR |  |  |  |  |  |  |  |  |
| CSDL | CTDLGT |  |  |  |  |  |  |  |  |
| CTDLGT | THDC |  |  |  |  |  |  |  |  |
| PTTKTT | THDC |  |  |  |  |  |  |  |  |
| PTTKTT | CTDLGT |  |  |  |  |  |  |  |  |
| DHMT | THDC |  |  |  |  |  |  |  |  |
| LTHDT | THDC |  |  |  |  |  |  |  |  |
| PTTKHTTT | CSDL |  |  |  |  |  |  |  |  |
| **GIAOVIEN** |  |  |  |  |  |  |  |  |  |
| **MAGV** | **HOTEN** | **HOCVI** | **HOCHAM** | **GIOITINH** | **NGSINH** | **NGVL** | **HESO** | **MUCLUONG** | **MAKHOA** |
| GV01 | Ho Thanh Son | PTS | GS | Nam | 2/5/1950 | 11/1/2004 | 5.00 | 2,250,000 | KHMT |
| GV02 | Tran Tam Thanh | TS | PGS | Nam | 17/12/1965 | 20/4/2004 | 4.50 | 2,025,000 | HTTT |
| GV03 | Do Nghiem Phung | TS | GS | Nu | 1/8/1950 | 23/9/2004 | 4.00 | 1,800,000 | CNPM |
| GV04 | Tran Nam Son | TS | PGS | Nam | 22/2/1961 | 12/1/2005 | 4.50 | 2,025,000 | KTMT |
| GV05 | Mai Thanh Danh | ThS | GV | Nam | 12/3/1958 | 12/1/2005 | 3.00 | 1,350,000 | HTTT |
| GV06 | Tran Doan Hung | TS | GV | Nam | 11/3/1953 | 12/1/2005 | 4.50 | 2,025,000 | KHMT |
| GV07 | Nguyen Minh Tien | ThS | GV | Nam | 23/11/1971 | 1/3/2005 | 4.00 | 1,800,000 | KHMT |
| GV08 | Le Thi Tran | KS | Null | Nu | 26/3/1974 | 1/3/2005 | 1.69 | 760,500 | KHMT |
| GV09 | Nguyen To Lan | ThS | GV | Nu | 31/12/1966 | 1/3/2005 | 4.00 | 1,800,000 | HTTT |
| GV10 | Le Tran Anh Loan | KS | Null | Nu | 17/7/1972 | 1/3/2005 | 1.86 | 837,000 | CNPM |
| GV11 | Ho Thanh Tung | CN | GV | Nam | 12/1/1980 | 15/5/2005 | 2.67 | 1,201,500 | MTT |
| GV12 | Tran Van Anh | CN | Null | Nu | 29/3/1981 | 15/5/2005 | 1.69 | 760,500 | CNPM |
| GV13 | Nguyen Linh Dan | CN | Null | Nu | 23/5/1980 | 15/5/2005 | 1.69 | 760,500 | KTMT |
| GV14 | Truong Minh Chau | ThS | GV | Nu | 30/11/1976 | 15/5/2005 | 3.00 | 1,350,000 | MTT |
| GV15 | Le Ha Thanh | ThS | GV | Nam | 4/5/1978 | 15/5/2005 | 3.00 | 1,350,000 | KHMT |
| **GIANGDAY** |  |  |  |  |  |  |  |  |  |
| **MALOP** | **MAMH** | **MAGV** | **HOCKY** | **NAM** | **TUNGAY** | **DENNGAY** |  |  |  |
| K11 | THDC | GV07 | 1 | 2006 | 2/1/2006 | 12/5/2006 |  |  |  |
| K12 | THDC | GV06 | 1 | 2006 | 2/1/2006 | 12/5/2006 |  |  |  |
| K13 | THDC | GV15 | 1 | 2006 | 2/1/2006 | 12/5/2006 |  |  |  |
| K11 | CTRR | GV02 | 1 | 2006 | 9/1/2006 | 17/5/2006 |  |  |  |
| K12 | CTRR | GV02 | 1 | 2006 | 9/1/2006 | 17/5/2006 |  |  |  |
| K13 | CTRR | GV08 | 1 | 2006 | 9/1/2006 | 17/5/2006 |  |  |  |
| K11 | CSDL | GV05 | 2 | 2006 | 1/6/2006 | 15/7/2006 |  |  |  |
| K12 | CSDL | GV09 | 2 | 2006 | 1/6/2006 | 15/7/2006 |  |  |  |
| K13 | CTDLGT | GV15 | 2 | 2006 | 1/6/2006 | 15/7/2006 |  |  |  |
| K13 | CSDL | GV05 | 3 | 2006 | 1/8/2006 | 15/12/2006 |  |  |  |
| K13 | DHMT | GV07 | 3 | 2006 | 1/8/2006 | 15/12/2006 |  |  |  |
| K11 | CTDLGT | GV15 | 3 | 2006 | 1/8/2006 | 15/12/2006 |  |  |  |
| K12 | CTDLGT | GV15 | 3 | 2006 | 1/8/2006 | 15/12/2006 |  |  |  |
| K11 | HDH | GV04 | 1 | 2007 | 2/1/2007 | 18/2/2007 |  |  |  |
| K12 | HDH | GV04 | 1 | 2007 | 2/1/2007 | 20/3/2007 |  |  |  |
| K11 | DHMT | GV07 | 1 | 2007 | 18/2/2007 | 20/3/2007 |  |  |  |

| KETQUATHI |  |  |  |  |  |
| :---- | :---- | ----- | ----- | ----- | :---- |
| **MAHV** | **MAMH** | **LT** | **NGTHI** | **DIEM** | **KQUA** |
| K1101 | CSDL | 1 | 20/7/2006 | 10.00 | Dat |
| K1101 | CTDLGT | 1 | 28/12/2006 | 9.00 | Dat |
| K1101 | THDC | 1 | 20/5/2006 | 9.00 | Dat |
| K1101 | CTRR | 1 | 13/5/2006 | 9.50 | Dat |
| K1102 | CSDL | 1 | 20/7/2006 | 4.00 | Khong Dat |
| K1102 | CSDL | 2 | 27/7/2006 | 4.25 | Khong Dat |
| K1102 | CSDL | 3 | 10/8/2006 | 4.50 | Khong Dat |
| K1102 | CTDLGT | 1 | 28/12/2006 | 4.50 | Khong Dat |
| K1102 | CTDLGT | 2 | 5/1/2007 | 4.00 | Khong Dat |
| K1102 | CTDLGT | 3 | 15/1/2007 | 6.00 | Dat |
| K1102 | THDC | 1 | 20/5/2006 | 5.00 | Dat |
| K1102 | CTRR | 1 | 13/5/2006 | 7.00 | Dat |
| K1103 | CSDL | 1 | 20/7/2006 | 3.50 | Khong Dat |
| K1103 | CSDL | 2 | 27/7/2006 | 8.25 | Dat |
| K1103 | CTDLGT | 1 | 28/12/2006 | 7.00 | Dat |
| K1103 | THDC | 1 | 20/5/2006 | 8.00 | Dat |
| K1103 | CTRR | 1 | 13/5/2006 | 6.50 | Dat |
| K1104 | CSDL | 1 | 20/7/2006 | 3.75 | Khong Dat |
| K1104 | CTDLGT | 1 | 28/12/2006 | 4.00 | Khong Dat |
| K1104 | THDC | 1 | 20/5/2006 | 4.00 | Khong Dat |
| K1104 | CTRR | 1 | 13/5/2006 | 4.00 | Khong Dat |
| K1104 | CTRR | 2 | 20/5/2006 | 3.50 | Khong Dat |
| K1104 | CTRR | 3 | 30/6/2006 | 4.00 | Khong Dat |
| K1201 | CSDL | 1 | 20/7/2006 | 6.00 | Dat |
| K1201 | CTDLGT | 1 | 28/12/2006 | 5.00 | Dat |
| K1201 | THDC | 1 | 20/5/2006 | 8.50 | Dat |
| K1201 | CTRR | 1 | 13/5/2006 | 9.00 | Dat |
| K1202 | CSDL | 1 | 20/7/2006 | 8.00 | Dat |
| K1202 | CTDLGT | 1 | 28/12/2006 | 4.00 | Khong Dat |
| K1202 | CTDLGT | 2 | 5/1/2007 | 5.00 | Dat |
| K1202 | THDC | 1 | 20/5/2006 | 4.00 | Khong Dat |
| K1202 | THDC | 2 | 27/5/2006 | 4.00 | Khong Dat |
| K1202 | CTRR | 1 | 13/5/2006 | 3.00 | Khong Dat |
| **KETQUATHI** |  |  |  |  |  |
| **MAHV** | **MAMH** | **LT** | **NGTHI** | **DIEM** | **KQUA** |
| K1202 | CTRR | 2 | 20/5/2006 | 4.00 | Khong Dat |
| K1202 | CTRR | 3 | 30/6/2006 | 6.25 | Dat |
| K1203 | CSDL | 1 | 20/7/2006 | 9.25 | Dat |
| K1203 | CTDLGT | 1 | 28/12/2006 | 9.50 | Dat |
| K1203 | THDC | 1 | 20/5/2006 | 10.00 | Dat |
| K1203 | CTRR | 1 | 13/5/2006 | 10.00 | Dat |
| K1204 | CSDL | 1 | 20/7/2006 | 8.50 | Dat |
| K1204 | CTDLGT | 1 | 28/12/2006 | 6.75 | Dat |
| K1204 | THDC | 1 | 20/5/2006 | 4.00 | Khong Dat |
| K1204 | CTRR | 1 | 13/5/2006 | 6.00 | Dat |
| K1301 | CSDL | 1 | 20/12/2006 | 4.25 | Khong Dat |
| K1301 | CTDLGT | 1 | 25/7/2006 | 8.00 | Dat |
| K1301 | THDC | 1 | 20/5/2006 | 7.75 | Dat |
| K1301 | CTRR | 1 | 13/5/2006 | 8.00 | Dat |
| K1302 | CSDL | 1 | 20/12/2006 | 6.75 | Dat |
| K1302 | CTDLGT | 1 | 25/7/2006 | 5.00 | Dat |
| K1302 | THDC | 1 | 20/5/2006 | 8.00 | Dat |
| K1302 | CTRR | 1 | 13/5/2006 | 8.50 | Dat |
| K1303 | CSDL | 1 | 20/12/2006 | 4.00 | Khong Dat |
| K1303 | CTDLGT | 1 | 25/7/2006 | 4.50 | Khong Dat |
| K1303 | CTDLGT | 2 | 7/8/2006 | 4.00 | Khong Dat |
| K1303 | CTDLGT | 3 | 15/8/2006 | 4.25 | Khong Dat |
| K1303 | THDC | 1 | 20/5/2006 | 4.50 | Khong Dat |
| K1303 | CTRR | 1 | 13/5/2006 | 3.25 | Khong Dat |
| K1303 | CTRR | 2 | 20/5/2006 | 5.00 | Dat |
| K1304 | CSDL | 1 | 20/12/2006 | 7.75 | Dat |
| K1304 | CTDLGT | 1 | 25/7/2006 | 9.75 | Dat |
| K1304 | THDC | 1 | 20/5/2006 | 5.50 | Dat |
| K1304 | CTRR | 1 | 13/5/2006 | 5.00 | Dat |
| K1305 | CSDL | 1 | 20/12/2006 | 9.25 | Dat |
| K1305 | CTDLGT | 1 | 25/7/2006 | 10.00 | Dat |
| K1305 | THDC | 1 | 20/5/2006 | 8.00 | Dat |
| K1305 | CTRR | 1 | 13/5/2006 | 10.00 | Dat |

| HOCVIEN |  |  |  |  |  |  |
| :---- | :---- | :---- | ----- | :---- | :---- | :---- |
| **MAHV** | **HO** | **TEN** | **NGSINH** | **GIOITINH** | **NOISINH** | **MALOP** |
| K1101 | Nguyen Van | A | 27/1/1986 | Nam | TpHCM | K11 |
| K1102 | Tran Ngoc | Han | 14/3/1986 | Nu | Kien Giang | K11 |
| K1103 | Ha Duy | Lap | 18/4/1986 | Nam | Nghe An | K11 |
| K1104 | Tran Ngoc | Linh | 30/3/1986 | Nu | Tay Ninh | K11 |
| K1105 | Tran Minh | Long | 27/2/1986 | Nam | TpHCM | K11 |
| K1106 | Le Nhat | Minh | 24/1/1986 | Nam | TpHCM | K11 |
| K1107 | Nguyen Nhu | Nhut | 27/1/1986 | Nam | Ha Noi | K11 |
| K1108 | Nguyen Manh | Tam | 27/2/1986 | Nam | Kien Giang | K11 |
| K1109 | Phan Thi Thanh | Tam | 27/1/1986 | Nu | Vinh Long | K11 |
| K1110 | Le Hoai | Thuong | 5/2/1986 | Nu | Can Tho | K11 |
| K1111 | Le Ha | Vinh | 25/12/1986 | Nam | Vinh Long | K11 |
| K1201 | Nguyen Van | B | 11/2/1986 | Nam | TpHCM | K12 |
| K1202 | Nguyen Thi Kim | Duyen | 18/1/1986 | Nu | TpHCM | K12 |
| K1203 | Tran Thi Kim | Duyen | 17/9/1986 | Nu | TpHCM | K12 |
| K1204 | Truong My | Hanh | 19/5/1986 | Nu | Dong Nai | K12 |
| K1205 | Nguyen Thanh | Nam | 17/4/1986 | Nam | TpHCM | K12 |
| K1206 | Nguyen Thi Truc | Thanh | 4/3/1986 | Nu | Kien Giang | K12 |
| K1207 | Tran Thi Bich | Thuy | 8/2/1986 | Nu | Nghe An | K12 |
| K1208 | Huynh Thi Kim | Trieu | 8/4/1986 | Nu | Tay Ninh | K12 |
| K1209 | Pham Thanh | Trieu | 23/2/1986 | Nam | TpHCM | K12 |
| K1210 | Ngo Thanh | Tuan | 14/2/1986 | Nam | TpHCM | K12 |
| K1211 | Do Thi | Xuan | 9/3/1986 | Nu | Ha Noi | K12 |
| K1212 | Le Thi Phi | Yen | 12/3/1986 | Nu | TpHCM | K12 |
| K1301 | Nguyen Thi Kim | Cuc | 9/6/1986 | Nu | Kien Giang | K13 |
| K1302 | Truong Thi My | Hien | 18/3/1986 | Nu | Nghe An | K13 |
| K1303 | Le Duc | Hien | 21/3/1986 | Nam | Tay Ninh | K13 |
| K1304 | Le Quang | Hien | 18/4/1986 | Nam | TpHCM | K13 |
| K1305 | Le Thi | Huong | 27/3/1986 | Nu | TpHCM | K13 |
| K1306 | Nguyen Thai | Huu | 30/3/1986 | Nam | Ha Noi | K13 |
| K1307 | Tran Minh | Man | 28/5/1986 | Nam | TpHCM | K13 |
| K1308 | Nguyen Hieu | Nghia | 8/4/1986 | Nam | Kien Giang | K13 |
| K1309 | Nguyen Trung | Nghia | 18/1/1987 | Nam | Nghe An | K13 |
| K1310 | Tran Thi Hong | Tham | 22/4/1986 | Nu | Tay Ninh | K13 |
| K1311 | Tran Minh | Thuc | 4/4/1986 | Nam | TpHCM | K13 |
| K1312 | Nguyen Thi Kim | Yen | 7/9/1986 | Nu | TpHCM | K13 |

BẢNG THUỘC TÍNH

| Quan hệ | Thuộc tính | Diễn giải | Kiểu dữ liệu |
| :---: | ----- | ----- | ----- |
| **KHOA** | MAKHOA | Mã khoa (khóa chính) | varchar(4) |
|  | TENKHOA | Tên khoa | varchar(40) |
|  | NGTLAP | Ngày thành lập khoa | smalldatetime |
|  | TRGKHOA | Trưởng khoa (mã giáo viên) | char(4) |
| **MONHOC** | MAMH | Mã môn học (khóa chính) | varchar(10) |
|  | TENMH | Tên môn học | varchar(40) |
|  | TCLT | Số tín chỉ lý thuyết | tinyint |
|  | TCTH | Số tín chỉ thực hành | tinyint |
|  | MAKHOA | Môn học thuộc khoa nào | varchar(4) |
| **DIEUKIEN** | MAMH | Mã môn học (thuộc tính khóa) | varchar(10) |
|  | MAMH\_TRUOC | Mã môn học phải học trước (thuộc tính khóa) | varchar(10) |
| **GIAOVIEN** | MAGV | Mã giáo viên (khóa chính) | char(4) |
|  | HOTEN | Họ tên | varchar(40) |
|  | HOCVI, HOCHAM | Học vị, học hàm | varchar(10) |
|  | GIOITINH | Giới tính | varchar(3) |
|  | NGSINH, NGVL | Ngày sinh, ngày vào làm việc | smalldatetime |
|  | HESO | Hệ số lương | numeric(4,2) |
|  | MUCLUONG | Mức lương | money |
|  | MAKHOA | Thuộc khoa nào | varchar(4) |
| **LOP** | MALOP | Mã lớp (khóa chính) | char(3) |
|  | TENLOP | Tên lớp | varchar(40) |
|  | TRGLOP | Lớp trưởng (mã học viên) | char(5) |
|  | SISO | Sỉ số lớp | tinyint |
|  | MAGVCN | Mã giáo viên chủ nhiệm | char(4) |
| **HOCVIEN** | MAHV | Mã học viên (khóa chính) | char(5) |
|  | HO | Họ và tên lót | varchar(40) |
|  | TEN | Tên | varchar(10) |
|  | NGSINH | Ngày sinh | smalldatetime |
|  | GIOITINH | Giới tính | varchar(3) |
|  | NOISINH | Nơi sinh | varchar(40) |
|  | MALOP | Mã lớp | char(3) |
| **GIANGDAY** | MALOP | Mã lớp (thuộc tính khóa) | char(3) |
|  | MAMH | Mã môn học (thuộc tính khóa) | varchar(10) |
|  | MAGV | Mã giáo viên | char(4) |
|  | HOCKY | Học kỳ | tinyint |
|  | NAM | Năm học | smallint |
|  | TUNGAY, DENNGAY | Ngày bắt đầu và ngày kết thúc môn học  | smalldatetime |
| **KETQUATHI** | MAHV | Mã học viên (thuộc tính khóa) | char(5) |
|  | MAMH | Mã môn học (thuộc tính khóa) | varchar(10) |
|  | LANTHI | Lần thi (thuộc tính khóa) | tinyint |
|  | NGTHI | Ngày thi | smalldatetime |
|  | DIEM | Điểm thi | numeric(4,2) |
|  | KQUA | Kết quả thi | varchar(10) |

## I. Ngôn ngữ định nghĩa dữ liệu (Data Definition Language):

1. Tạo quan hệ và khai báo tất cả các ràng buộc khóa chính, khóa ngoại. Thêm vào 3 thuộc tính GHICHU, DIEMTB, XEPLOAI cho quan hệ HOCVIEN.

2. Mã học viên là một chuỗi 5 ký tự, 3 ký tự đầu là mã lớp, 2 ký tự cuối cùng là số thứ tự học viên trong lớp. VD: “K1101”

3. Thuộc tính GIOITINH chỉ có giá trị là “Nam” hoặc “Nu”.

4. Điểm số của một lần thi có giá trị từ 0 đến 10 và cần lưu đến 2 số lẽ (VD: 6.22).

5. Kết quả thi là “Dat” nếu điểm từ 5 đến 10  và “Khong dat” nếu điểm nhỏ hơn 5\.

6. Học viên thi một môn tối đa 3 lần.

7. Học kỳ chỉ có giá trị từ 1 đến 3\.

8. Học vị của giáo viên chỉ có thể là “CN”, “KS”, “Ths”, ”TS”, ”PTS”.

9. Lớp trưởng của một lớp phải là học viên của lớp đó.

10. Trưởng khoa phải là giáo viên thuộc khoa và có học vị “TS” hoặc “PTS”.

11. Học viên ít nhất là 18 tuổi.

12. Giảng dạy một môn học ngày bắt đầu (TUNGAY) phải nhỏ hơn ngày kết thúc (DENNGAY).

13. Giáo viên khi vào làm ít nhất là 22 tuổi.

14. Tất cả các môn học đều có số tín chỉ lý thuyết và tín chỉ thực hành chênh lệch nhau không quá 3\.

15. Học viên chỉ được thi một môn học nào đó khi lớp của học viên đã học xong môn học này.

16. Mỗi học kỳ của một năm học, một lớp chỉ được học tối đa 3 môn.

17. Sỉ số của một lớp bằng với số lượng học viên thuộc lớp đó.

18. Trong quan hệ DIEUKIEN giá trị của thuộc tính MAMH và MAMH\_TRUOC trong cùng một bộ không được giống nhau (“A”,”A”) và cũng không tồn tại hai bộ (“A”,”B”) và (“B”,”A”).

19. Các giáo viên có cùng học vị, học hàm, hệ số lương thì mức lương bằng nhau.

20. Học viên chỉ được thi lại (lần thi \>1) khi điểm của lần thi trước đó dưới 5\.

21. Ngày thi của lần thi sau phải lớn hơn ngày thi của lần thi trước (cùng học viên, cùng môn học).

22. Học viên chỉ được thi những môn mà lớp của học viên đó đã học xong.

23. Khi phân công giảng dạy một môn học, phải xét đến thứ tự trước sau giữa các môn học (sau khi học xong những môn học phải học trước mới được học những môn liền sau).

24. Giáo viên chỉ được phân công dạy những môn thuộc khoa giáo viên đó phụ trách.

	

## II. Ngôn ngữ thao tác dữ liệu (Data Manipulation Language):

1. Tăng hệ số lương thêm 0.2 cho những giáo viên là trưởng khoa.

2. Cập nhật giá trị điểm trung bình tất cả các môn học  (DIEMTB) của mỗi học viên (tất cả các môn học đều có hệ số 1 và nếu học viên thi một môn nhiều lần, chỉ lấy điểm của lần thi sau cùng).

3. Cập nhật giá trị cho cột GHICHU là “Cam thi” đối với trường hợp: học viên có một môn bất kỳ thi lần thứ 3 dưới 5 điểm.

4. Cập nhật giá trị cho cột XEPLOAI trong quan hệ HOCVIEN như sau:

* Nếu DIEMTB ≥ 9 thì XEPLOAI \=”XS”

* Nếu  8 ≤ DIEMTB \< 9 thì XEPLOAI \= “G”

* Nếu  6.5 ≤ DIEMTB \< 8 thì XEPLOAI \= “K”

* Nếu  5  ≤  DIEMTB \< 6.5 thì XEPLOAI \= “TB”

* Nếu  DIEMTB \< 5 thì XEPLOAI \= ”Y”

## III. Ngôn ngữ truy vấn dữ liệu:

1. In ra danh sách (mã học viên, họ tên, ngày sinh, mã lớp) lớp trưởng của các lớp.

2. In ra bảng điểm khi thi (mã học viên, họ tên , lần thi, điểm số) môn CTRR của lớp “K12”, sắp xếp theo tên, họ học viên.

3. In ra danh sách những học viên (mã học viên, họ tên) và những môn học mà học viên đó thi lần thứ nhất đã đạt.

4. In ra danh sách học viên (mã học viên, họ tên) của lớp “K11” thi môn CTRR không đạt (ở lần thi 1).

5. \* Danh sách học viên (mã học viên, họ tên) của lớp “K” thi môn CTRR không đạt (ở tất cả các lần thi).

6. Tìm tên những môn học mà giáo viên có tên “Tran Tam Thanh” dạy trong học kỳ 1 năm 2006\.

7. Tìm những môn học (mã môn học, tên môn học) mà giáo viên chủ nhiệm lớp “K11” dạy trong học kỳ 1 năm 2006\.

8. Tìm họ tên lớp trưởng của các lớp mà giáo viên có tên “Nguyen To Lan” dạy môn “Co So Du Lieu”.

9. In ra danh sách những môn học (mã môn học, tên môn học) phải học liền trước môn “Co So Du Lieu”.

10. Môn “Cau Truc Roi Rac” là môn bắt buộc phải học liền trước những môn học (mã môn học, tên môn học) nào.

11. Tìm họ tên giáo viên dạy môn CTRR cho cả hai lớp “K11” và “K12” trong cùng học kỳ 1 năm 2006\.

12. Tìm những học viên (mã học viên, họ tên) thi không đạt môn CSDL ở lần thi thứ 1 nhưng chưa thi lại môn này.

13. Tìm giáo viên (mã giáo viên, họ tên) không được phân công giảng dạy bất kỳ môn học nào.

14. Tìm giáo viên (mã giáo viên, họ tên) không được phân công giảng dạy bất kỳ môn học nào thuộc khoa giáo viên đó phụ trách.

15. Tìm họ tên các học viên thuộc lớp “K11” thi một môn bất kỳ quá 3 lần vẫn “Khong dat” hoặc thi lần thứ 2 môn CTRR được 5 điểm.

16. Tìm họ tên giáo viên dạy môn CTRR cho ít nhất hai lớp trong cùng một học kỳ của một năm học.

17. Danh sách học viên và điểm thi môn CSDL (chỉ lấy điểm của lần thi sau cùng).

18. Danh sách học viên và điểm thi môn “Co So Du Lieu” (chỉ lấy điểm cao nhất của các lần thi).

19. Khoa nào (mã khoa, tên khoa) được thành lập sớm nhất.

20. Có bao nhiêu giáo viên có học hàm là “GS” hoặc “PGS”.

21. Thống kê có bao nhiêu giáo viên có học vị là “CN”, “KS”, “Ths”, “TS”, “PTS” trong mỗi khoa.

22. Mỗi môn học thống kê số lượng học viên theo kết quả (đạt và không đạt).

23. Tìm giáo viên (mã giáo viên, họ tên) là giáo viên chủ nhiệm của một lớp, đồng thời dạy cho lớp đó ít nhất một môn học.

24. Tìm họ tên lớp trưởng của lớp có sỉ số cao nhất.

25. \* Tìm họ tên những LOPTRG thi không đạt quá 3 môn (mỗi môn đều thi không đạt ở tất cả các lần thi).

26. Tìm học viên (mã học viên, họ tên) có số môn đạt điểm 9,10 nhiều nhất.

27. Trong từng lớp, tìm học viên (mã học viên, họ tên) có số môn đạt điểm 9,10 nhiều nhất.

28. Trong từng học kỳ của từng năm, mỗi giáo viên phân công dạy bao nhiêu môn học, bao nhiêu lớp.

29. Trong từng học kỳ của từng năm, tìm giáo viên (mã giáo viên, họ tên) giảng dạy nhiều nhất.

30. Tìm môn học (mã môn học, tên môn học) có nhiều học viên thi không đạt (ở lần thi thứ 1\) nhất.

31. Tìm học viên (mã học viên, họ tên) thi môn nào cũng đạt (chỉ xét lần thi thứ 1).

32. \* Tìm học viên (mã học viên, họ tên) thi môn nào cũng đạt (chỉ xét lần thi sau cùng).

33. \* Tìm học viên (mã học viên, họ tên) đã thi tất cả các môn đều đạt (chỉ xét lần thi thứ 1).

34. \* Tìm học viên (mã học viên, họ tên) đã thi tất cả các môn đều đạt  (chỉ xét lần thi sau cùng).

35. \*\* Tìm học viên (mã học viên, họ tên) có điểm thi cao nhất trong từng môn (lấy điểm ở lần thi sau cùng).

	  
