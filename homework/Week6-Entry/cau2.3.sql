-- 2.3. In danh sách những nhà cung cấp (mã nhà cung cấp, tên nhà cung cấp) chưa được đặt hàng. (1đ).
USE Homework;

SELECT
	NHACC.MaNhaCC,
	NHACC.TenNhaCC
FROM
	NHACC
	LEFT JOIN DONDH ON NHACC.MaNhaCC = DONDH.MaNhaCC
WHERE
	DONDH.MaNhaCC IS NULL;