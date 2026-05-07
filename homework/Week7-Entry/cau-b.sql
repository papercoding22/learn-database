-- CÂU b: Bệnh nhân sinh sau năm 2020 có khám bệnh chính là 'Tim mạch'
--        Hiển thị: MAKB, MABN, HOTEN
SELECT DISTINCT
	k.MAKB,
	k.MABN,
	b.HOTEN
FROM
	KHAMBENH k
	INNER JOIN BENHNHAN b ON k.MABN = b.MABN
WHERE
	YEAR (b.NGSINH) > 2020
	AND k.BENH = N'Tim mạch';

-- SELECT DISTINCT 
--  -> DISTINCT để loại bỏ các dòng trùng lặp (nếu có)
--  -> Chọn MAKB (Mã khám bệnh), MABN (Mã bệnh nhân), HOTEN (Họ tên)

-- FROM KHAMBENH k INNER JOIN BENHNHAN b ON k.MABN = b.MABN
-- -> INNER JOIN: kết hợp 2 bảng dựa trên mã bệnh nhân
-- -> Chỉ lấy bệnh nhân có bản ghi khám bệnh

-- WHERE YEAR(b.NGSINH) > 2020
-- -> YEAR() trích xuất năm từ ngày sinh
-- Lọc bệnh nhân sinh sau năm 2020 (tức NGSINH > 2020-12-31)

-- AND k.BENH = N'Tim mạch'
-- -> Bệnh chính phải là 'Tim mạch'