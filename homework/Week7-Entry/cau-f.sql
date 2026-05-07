-- CÂU f: Bác sĩ có số lần phụ trách khám bệnh nhiều nhất
--  Hiển thị: MABS, HOTEN
WITH
	BacSiKhamBenh AS (
		SELECT
			pt.MABS,
			COUNT(pt.MAKB) AS SoLanPhuTrach
		FROM
			PHUTRACH pt
		GROUP BY
			pt.MABS
	)
SELECT
	bs.MABS,
	bs.HOTEN
FROM
	BACSI bs
	INNER JOIN BacSiKhamBenh bskb ON bs.MABS = bskb.MABS
WHERE
	bskb.SoLanPhuTrach = (
		SELECT
			MAX(SoLanPhuTrach)
		FROM
			BacSiKhamBenh
	);