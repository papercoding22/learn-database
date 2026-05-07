-- CÂU d: Bác sĩ chuyên môn 'Tai-Mũi-Họng' CHƯA phụ trách khám bệnh năm 2020
--  Hiển thị: MABS, HOTEN
SELECT
	bs.MABS,
	bs.HOTEN
FROM
	BACSI bs
WHERE
	bs.CHUYENMON = N'Tai-Mũi-Họng'
	AND bs.MABS NOT IN (
		SELECT DISTINCT
			pt.MABS
		FROM
			PHUTRACH pt
			INNER JOIN KHAMBENH kb ON pt.MAKB = kb.MAKB
		WHERE
			YEAR (pt.BATDAUPT) = 2020
	);