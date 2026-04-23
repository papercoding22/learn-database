-- 2.1. In danh sách các nhà cung cấp có địa chỉ ở “Hà Nội” (trong trường địa chỉ có xuất hiện Hà Nội) sắp xếp kết quả theo thứ tự tên nhà cung cấp tăng dần. (1đ).
USE Homework;

SELECT
	*
FROM
	NHACC
WHERE
	DiaChi LIKE '%Hà Nội%'
ORDER BY
	TenNhaCC ASC;