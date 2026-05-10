-- Sinh viên hoàn thành Phần II bài tập QuanLyGiaoVu từ câu 1 đến câu 4.
-- 1. In ra danh sách (mã học viên, họ tên, ngày sinh, mã lớp) lớp trưởng của các lớp.
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN,
	HV.NGSINH,
	HV.MALOP
FROM
	HOCVIEN HV
	JOIN LOP L ON HV.MAHV = L.TRGLOP;

-- 2. In ra bảng điểm khi thi (mã học viên, họ tên , lần thi, điểm số) môn CTRR của lớp “K12”, sắp xếp
-- theo tên, họ học viên.
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN,
	KQ.LANTHI,
	KQ.DIEM
FROM
	HOCVIEN HV
	JOIN KETQUATHI KQ ON HV.MAHV = KQ.MAHV
	JOIN MONHOC MH ON KQ.MAMH = MH.MAMH
WHERE
	HV.MALOP = 'K12'
	AND MH.TENMH = 'CTRR'
ORDER BY
	HV.TEN,
	HV.HO;

-- 3. In ra danh sách những học viên (mã học viên, họ tên) và những môn học mà học viên đó thi lần thứ
-- nhất đã đạt.
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN,
	MH.TENMH
FROM
	HOCVIEN HV
	JOIN KETQUATHI KQ ON HV.MAHV = KQ.MAHV
	JOIN MONHOC MH ON KQ.MAMH = MH.MAMH
WHERE
	KQ.LANTHI = 1
	AND KQ.KQUA = 'Đạt';

-- 4. In ra danh sách học viên (mã học viên, họ tên) của lớp “K11” thi môn CTRR không đạt (ở lần thi 1).
SELECT
	HV.MAHV,
	HV.HO + ' ' + HV.TEN AS HOTEN
FROM
	HOCVIEN HV
	JOIN KETQUATHI KQ ON HV.MAHV = KQ.MAHV
	JOIN MONHOC MH ON KQ.MAMH = MH.MAMH
WHERE
	HV.MALOP = 'K11'
	AND MH.TENMH = 'CTRR'
	AND KQ.LANTHI = 1
	AND KQ.KQUA = 'Không đạt';