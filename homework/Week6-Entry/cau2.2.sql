-- 2.2. In ra danh sách đơn hàng (số đơn hàng và ngày đặt hàng) của nhà cung cấp có tên “Gạch Đồng Tâm”. (1đ).
USE Homework;

SELECT
	DONDH.SoDonDH,
	DONDH.NgayDat
FROM
	DONDH
	JOIN NHACC ON DONDH.MaNhaCC = NHACC.MaNhaCC
WHERE
	NHACC.TenNhaCC = 'Gạch Đồng Tâm';