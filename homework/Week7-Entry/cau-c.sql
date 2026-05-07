-- CÂU c: Số lần khám bệnh của từng bệnh nhân trong năm 2020
--        Hiển thị: MABN, HOTEN, SL
SELECT
	b.MABN,
	b.HOTEN,
	COUNT(k.MAKB) AS SL
FROM
	BENHNHAN b
	LEFT JOIN KHAMBENH k ON b.MABN = k.MABN
WHERE
	YEAR (k.BATDAU) = 2020
GROUP BY
	b.MABN,
	b.HOTEN
HAVING
	COUNT(k.MAKB) > 0
ORDER BY
	b.MABN;