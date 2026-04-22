-- 11.
-- Học viên ít nhất là 18 tuổi.
-- 12.
-- Giảng dạy một môn học ngày bắt đầu (TUNGAY) phải nhỏ hơn ngày kết thúc (DENNGAY).
-- 13.
-- Giáo viên khi vào làm ít nhất là 22 tuổi.
-- 14.
-- Tất cả các môn học đều có số tín chỉ lý thuyết và tín chỉ thực hành chênh lệch nhau không quá 3.

USE Homework;

-- Cau 11: Hoc vien it nhat 18 tuoi
ALTER TABLE HOCVIEN
ADD CONSTRAINT chk_HV_Tuoi
    CHECK (DATEDIFF(YEAR, NGSINH, GETDATE()) >= 18);

-- Cau 12: Ngay bat dau giang day phai truoc ngay ket thuc
ALTER TABLE GIANGDAY
ADD CONSTRAINT chk_GD_NgayDay
    CHECK (TUNGAY < DENNGAY);

-- Cau 13: Giao vien khi vao lam it nhat 22 tuoi
ALTER TABLE GIAOVIEN
ADD CONSTRAINT chk_GV_Tuoi
    CHECK (DATEDIFF(YEAR, NGSINH, NGVL) >= 22);

-- Cau 14: So tin chi ly thuyet va thuc hanh chenh lech khong qua 3
ALTER TABLE MONHOC
ADD CONSTRAINT chk_MH_TinChi
    CHECK (ABS(TCLT - TCTH) <= 3);
