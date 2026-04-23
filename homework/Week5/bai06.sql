-- 1. 2. In ra danh sách (mã học viên, họ tên, ngày sinh, mã lớp) lớp trưởng của các lớp.
-- In ra bảng điểm khi thi (mã học viên, họ tên , lần thi, điểm số) môn CTRR của lớp "K12", sắp xếp
-- theo tên, họ học viên.
-- 3. In ra danh sách những học viên (mã học viên, họ tên) và những môn học mà học viên đó thi lần thứ
-- nhất đã đạt.

USE Homework;

-- Cau 1: Danh sach lop truong cua cac lop
SELECT hv.MAHV,
       hv.HO + ' ' + hv.TEN AS HOTEN,
       hv.NGSINH,
       l.MALOP
FROM LOP l
JOIN HOCVIEN hv ON l.TRGLOP = hv.MAHV;

-- Cau 2: Bang diem mon CTRR cua lop K12, sap xep theo ten, ho hoc vien
SELECT hv.MAHV,
       hv.HO + ' ' + hv.TEN AS HOTEN,
       kq.LANTHI,
       kq.DIEM
FROM KETQUATHI kq
JOIN HOCVIEN hv ON kq.MAHV = hv.MAHV
WHERE kq.MAMH = 'CTRR'
  AND hv.MALOP = 'K12'
ORDER BY hv.TEN ASC, hv.HO ASC;

-- Cau 3: Hoc vien va mon hoc thi lan 1 da dat
SELECT hv.MAHV,
       hv.HO + ' ' + hv.TEN AS HOTEN,
       mh.TENMH
FROM KETQUATHI kq
JOIN HOCVIEN hv ON kq.MAHV = hv.MAHV
JOIN MONHOC  mh ON kq.MAMH = mh.MAMH
WHERE kq.LANTHI = 1
  AND kq.KQUA = 'Dat';
