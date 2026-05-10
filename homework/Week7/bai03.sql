-- Sinh viên hoàn thành Phần III bài tập QuanLyGiaoVu từ câu 6 đến câu 10.
-- 6. Tìm tên những môn học mà giáo viên có tên “Tran Tam Thanh” dạy trong học kỳ 1 năm 2006.
SELECT DISTINCT
	MH.TENMH
FROM
	GIAOVIEN GV
	JOIN GIANGDAY GD ON GV.MAGV = GD.MAGV
	JOIN MONHOC MH ON GD.MAMH = MH.MAMH
WHERE
	GV.HOTEN = 'Tran Tam Thanh'
	AND GD.HOCKY = 1
	AND GD.NAM = 2006;

-- 7. Tìm những môn học (mã môn học, tên môn học) mà giáo viên chủ nhiệm lớp “K11” dạy trong học
-- kỳ 1 năm 2006.
SELECT DISTINCT
	MH.MAMH,
	MH.TENMH
FROM
	LOP L
	JOIN GIANGDAY GD ON L.MAGVCN = GD.MAGV
	JOIN MONHOC MH ON GD.MAMH = MH.MAMH
WHERE
	L.MALOP = 'K11'
	AND GD.HOCKY = 1
	AND GD.NAM = 2006;

-- 8. Tìm họ tên lớp trưởng của các lớp mà giáo viên có tên “Nguyen To Lan” dạy môn “Co So Du Lieu”.
SELECT DISTINCT
	HV.HO + ' ' + HV.TEN AS HOTEN
FROM
	GIAOVIEN GV
	JOIN GIANGDAY GD ON GV.MAGV = GD.MAGV
	JOIN MONHOC MH ON GD.MAMH = MH.MAMH
	JOIN LOP L ON GD.MALOP = L.MALOP
	JOIN HOCVIEN HV ON L.TRGLOP = HV.MAHV
WHERE
	GV.HOTEN = 'Nguyen To Lan'
	AND MH.TENMH = 'Co so du lieu';

-- 9. In ra danh sách những môn học (mã môn học, tên môn học) phải học liền trước môn “Co So Du Lieu”.
SELECT
	MH_TRUOC.MAMH,
	MH_TRUOC.TENMH
FROM
	MONHOC MH
	JOIN DIEUKIEN DK ON MH.MAMH = DK.MAMH
	JOIN MONHOC MH_TRUOC ON DK.MAMH_TRUOC = MH_TRUOC.MAMH
WHERE
	MH.TENMH = 'Co so du lieu';

-- 10. Môn “Cau Truc Roi Rac” là môn bắt buộc phải học liền trước những môn học (mã môn học, tên
-- môn học) nào.
SELECT
	MH.MAMH,
	MH.TENMH
FROM
	MONHOC MH_TRUOC
	JOIN DIEUKIEN DK ON MH_TRUOC.MAMH = DK.MAMH_TRUOC
	JOIN MONHOC MH ON DK.MAMH = MH.MAMH
WHERE
	MH_TRUOC.TENMH = 'Cau truc roi rac';