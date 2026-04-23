-- **1.1.** Viết lệnh tạo quan hệ Nhà cung cấp và khai báo khóa chính khi tạo (1đ).
USE Homework;

CREATE TABLE
	NHACC (
		MaNhaCC VARCHAR(10) PRIMARY KEY,
		TenNhaCC VARCHAR(50),
		DiaChi VARCHAR(100),
		DienThoai VARCHAR(15)
	);