-- Sinh viên hoàn thành Phần III bài tập QuanLyGiaoVu từ câu 11 đến câu 18.
-- 11. Tìm họ tên giáo viên dạy môn CTRR cho cả hai lớp “K11” và “K12” trong cùng học kỳ 1 năm 2006.
SELECT
	GV.HOTEN
FROM
	GIANGDAY GD
	JOIN GIAOVIEN GV ON GD.MAGV = GV.MAGV
WHERE
	GD.MAMH = 'CTRR'
	AND GD.MALOP IN ('K11', 'K12')
	AND GD.HOCKY = 1
	AND GD.NAM = 2006
GROUP BY
	GV.HOTEN,
	GD.MAGV
HAVING
	COUNT(DISTINCT GD.MALOP) = 2;

-- 12. Tìm những học viên (mã học viên, họ tên) thi không đạt môn CSDL ở lần thi thứ 1 nhưng chưa thi
-- lại môn này.
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN
FROM
	HOCVIEN HV
	JOIN KETQUATHI KQ ON HV.MAHV = KQ.MAHV
WHERE
	KQ.MAMH = 'CSDL'
	AND KQ.LANTHI = 1
	AND KQ.KQUA = 'Khong Dat'
	AND NOT EXISTS (
		SELECT
			1
		FROM
			KETQUATHI KQ2
		WHERE
			KQ2.MAHV = KQ.MAHV
			AND KQ2.MAMH = KQ.MAMH
			AND KQ2.LANTHI > 1
	);

-- 13. Tìm giáo viên (mã giáo viên, họ tên) không được phân công giảng dạy bất kỳ môn học nào.
SELECT
	GV.MAGV,
	GV.HOTEN
FROM
	GIAOVIEN GV
	LEFT JOIN GIANGDAY GD ON GV.MAGV = GD.MAGV
WHERE
	GD.MAGV IS NULL;

-- 14. Tìm giáo viên (mã giáo viên, họ tên) không được phân công giảng dạy bất kỳ môn học nào thuộc
-- khoa giáo viên đó phụ trách.
SELECT
	GV.MAGV,
	GV.HOTEN
FROM
	GIAOVIEN GV
WHERE
	NOT EXISTS (
		SELECT
			1
		FROM
			GIANGDAY GD
			JOIN MONHOC MH ON GD.MAMH = MH.MAMH
		WHERE
			GD.MAGV = GV.MAGV
			AND MH.MAKHOA = GV.MAKHOA
	);

-- 15. Tìm họ tên các học viên thuộc lớp “K11” thi một môn bất kỳ quá 3 lần vẫn “Khong dat” hoặc thi lần
-- thứ 2 môn CTRR được 5 điểm.
SELECT DISTINCT
	HV.HO + ' ' + HV.TEN AS HOTEN
FROM
	HOCVIEN HV
WHERE
	HV.MALOP = 'K11'
	AND (
		EXISTS (
			SELECT
				1
			FROM
				KETQUATHI KQ
			WHERE
				KQ.MAHV = HV.MAHV
			GROUP BY
				KQ.MAMH
			HAVING
				MAX(KQ.LANTHI) > 3
				AND SUM(
					CASE
						WHEN KQ.KQUA = 'Dat' THEN 1
						ELSE 0
					END
				) = 0
		)
		OR EXISTS (
			SELECT
				1
			FROM
				KETQUATHI KQ
			WHERE
				KQ.MAHV = HV.MAHV
				AND KQ.MAMH = 'CTRR'
				AND KQ.LANTHI = 2
				AND KQ.DIEM = 5
		)
	);

-- 16. Tìm họ tên giáo viên dạy môn CTRR cho ít nhất hai lớp trong cùng một học kỳ của một năm học.
SELECT DISTINCT
	GV.HOTEN
FROM
	GIAOVIEN GV
	JOIN GIANGDAY GD ON GV.MAGV = GD.MAGV
WHERE
	GD.MAMH = 'CTRR'
	AND EXISTS (
		SELECT
			1
		FROM
			GIANGDAY GD2
		WHERE
			GD2.MAGV = GD.MAGV
			AND GD2.MAMH = 'CTRR'
		GROUP BY
			GD2.HOCKY,
			GD2.NAM
		HAVING
			COUNT(DISTINCT GD2.MALOP) >= 2
	);

-- 17. Danh sách học viên và điểm thi môn CSDL (chỉ lấy điểm của lần thi sau cùng).
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN,
	KQ.DIEM
FROM
	HOCVIEN HV
	JOIN KETQUATHI KQ ON HV.MAHV = KQ.MAHV
WHERE
	KQ.MAMH = 'CSDL'
	AND KQ.LANTHI = (
		SELECT
			MAX(KQ2.LANTHI)
		FROM
			KETQUATHI KQ2
		WHERE
			KQ2.MAHV = KQ.MAHV
			AND KQ2.MAMH = KQ.MAMH
	);

-- 18. Danh sách học viên và điểm thi môn “Co So Du Lieu” (chỉ lấy điểm cao nhất của các lần thi).
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN,
	MAX(KQ.DIEM) AS DIEMCAONHAT
FROM
	HOCVIEN HV
	JOIN KETQUATHI KQ ON HV.MAHV = KQ.MAHV
WHERE
	KQ.MAMH = 'CSDL'
GROUP BY
	HV.MAHV,
	HV.HO,
	HV.TEN;