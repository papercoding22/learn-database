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