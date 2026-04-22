-- ============================================================
-- BAI TAP 1 - CAU 3: THEM COT LOAIKH VAO BANG KHACHHANG
-- ============================================================

-- BUOC 1: Xem cau truc hien tai cua KHACHHANG (truoc khi them)
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'KHACHHANG';

-- BUOC 2: Them cot LOAIKH kieu tinyint
ALTER TABLE KHACHHANG ADD LOAIKH tinyint;

-- BUOC 3: Kiem tra lai - cot LOAIKH phai xuat hien o cuoi
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'KHACHHANG';
