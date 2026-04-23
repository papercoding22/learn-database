-- 1.
-- In ra danh sách các sản phẩm (MASP,TENSP) do "Trung Quoc" sản xuất.
-- 2.
-- In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là "cay", "quyen".
-- 3.
-- In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là "B" và kết thúc là "01".
-- 4.
-- In ra danh sách các sản phẩm (MASP,TENSP) do "Trung Quốc" sản xuất có giá từ 30.000 đến 40.000.
-- 5.
-- In ra danh sách các sản phẩm (MASP,TENSP) do "Trung Quoc" hoặc "Thai Lan" sản xuất có giá từ 30.000 đến 40.000.
-- 6.
-- In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
-- 7.
-- In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
-- 8.
-- In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
-- 9.
-- In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên "Nguyen Van B" lập trong ngày 28/10/2006.
-- 10.
-- In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên "Nguyen Van A" mua trong tháng 10/2006.
-- 11.
-- Tìm các số hóa đơn đã mua sản phẩm có mã số "BB01" hoặc "BB02".

USE Homework;

-- Cau 1
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc';

-- Cau 2
SELECT MASP, TENSP
FROM SANPHAM
WHERE DVT IN ('cay', 'quyen');

-- Cau 3
SELECT MASP, TENSP
FROM SANPHAM
WHERE MASP LIKE 'B%01';

-- Cau 4
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
  AND GIA BETWEEN 30000 AND 40000;

-- Cau 5
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX IN ('Trung Quoc', 'Thai Lan')
  AND GIA BETWEEN 30000 AND 40000;

-- Cau 6
SELECT SOHD, TRIGIA
FROM HOADON
WHERE CAST(NGHD AS date) IN ('2007-01-01', '2007-01-02');

-- Cau 7
SELECT SOHD, NGHD, TRIGIA
FROM HOADON
WHERE MONTH(NGHD) = 1 AND YEAR(NGHD) = 2007
ORDER BY NGHD ASC, TRIGIA DESC;

-- Cau 8
SELECT DISTINCT kh.MAKH, kh.HOTEN
FROM KHACHHANG kh
JOIN HOADON hd ON kh.MAKH = hd.MAKH
WHERE CAST(hd.NGHD AS date) = '2007-01-01';

-- Cau 9
SELECT hd.SOHD, hd.TRIGIA
FROM HOADON hd
JOIN NHANVIEN nv ON hd.MANV = nv.MANV
WHERE nv.HOTEN = 'Nguyen Van B'
  AND CAST(hd.NGHD AS date) = '2006-10-28';

-- Cau 10
SELECT DISTINCT sp.MASP, sp.TENSP
FROM SANPHAM sp
JOIN CTHD    ct ON sp.MASP  = ct.MASP
JOIN HOADON  hd ON ct.SOHD  = hd.SOHD
JOIN KHACHHANG kh ON hd.MAKH = kh.MAKH
WHERE kh.HOTEN = 'Nguyen Van A'
  AND MONTH(hd.NGHD) = 10 AND YEAR(hd.NGHD) = 2006;

-- Cau 11
SELECT DISTINCT SOHD
FROM CTHD
WHERE MASP IN ('BB01', 'BB02');
