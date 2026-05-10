-- Sinh viên hoàn thành Phần III bài tập QuanLyBanHang câu 12 và câu 13.
-- 12. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số
-- lượng từ 10 đến 20.
SELECT DISTINCT
	SOHD
FROM
	CTHD
WHERE
	MASP IN ('BB01', 'BB02')
	AND SL BETWEEN 10 AND 20;

-- 13. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”,
--  mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT
	SOHD
FROM
	CTHD
WHERE
	MASP IN ('BB01', 'BB02')
	AND SL BETWEEN 10 AND 20
GROUP BY
	SOHD
HAVING
	COUNT(DISTINCT MASP) = 2;