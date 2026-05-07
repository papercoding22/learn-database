-- CÂU e: Bác sĩ chuyên môn 'Hồi sức - Cấp cứu' tham gia TẤT CẢ các khám bệnh 
--  của bệnh nhân 'Nguyễn Văn A'
--  Hiển thị: MABS, HOTEN
SELECT
	bs.MABS,
	bs.HOTEN
FROM
	BACSI bs
WHERE
	bs.CHUYENMON = N'Hồi sức - Cấp cứu'
	AND bs.MABS IN (
		SELECT
			pt.MABS
		FROM
			PHUTRACH pt
		WHERE
			pt.MAKB IN (
				SELECT
					kb.MAKB
				FROM
					KHAMBENH kb
					INNER JOIN BENHNHAN bn ON kb.MABN = bn.MABN
				WHERE
					bn.HOTEN = N'Nguyễn Văn A'
			)
		GROUP BY
			pt.MABS
		HAVING
			COUNT(DISTINCT pt.MAKB) = (
				SELECT
					COUNT(DISTINCT kb.MAKB)
				FROM
					KHAMBENH kb
					INNER JOIN BENHNHAN bn ON kb.MABN = bn.MABN
				WHERE
					bn.HOTEN = N'Nguyễn Văn A'
			)
	);