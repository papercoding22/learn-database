-- CÂU a: Bệnh nhân thuộc đối tượng 'BHYT' HOẶC ở 'Đồng Nai'
--  Sắp xếp theo số lần phẫu thuật (SLPT) giảm dần
SELECT
	HOTEN,
	CMND,
	DOITUONG,
	DIACHI,
	SLPT
FROM
	BENHNHAN
WHERE
	DOITUONG = N'BHYT'
	OR DIACHI = N'Đồng Nai'
ORDER BY
	SLPT DESC;