-- 1.2. Sử dụng lệnh cập nhật để giảm 10% đơn giá cho các vật tư có đơn vị tính là “cái” (1đ).
USE Homework;

UPDATE VATTU
SET
	DonGia = DonGia * 0.9
WHERE
	DonViTinh = 'cái';