-- ============================================================
-- BAI TAP 1 - CAU 2: THEM COT GHICHU VAO BANG SANPHAM
-- ============================================================

-- BUOC 1: Xem cau truc hien tai cua SANPHAM (truoc khi them)
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'SANPHAM';

-- BUOC 2: Them cot GHICHU kieu varchar(20)
ALTER TABLE SANPHAM ADD GHICHU varchar(20);

-- BUOC 3: Kiem tra lai - cot GHICHU phai xuat hien o cuoi
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'SANPHAM';
