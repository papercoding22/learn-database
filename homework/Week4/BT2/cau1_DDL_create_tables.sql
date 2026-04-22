-- ============================================================
-- BAI TAP 2 - CAU 1: TAO BANG + KHOA CHINH + KHOA NGOAI
-- Co so du lieu Quan ly Giao Vu
-- ============================================================

USE Homework;

-- Xoa bang cu neu ton tai (thu tu nguoc: con truoc, cha sau)
IF OBJECT_ID('KETQUATHI', 'U') IS NOT NULL DROP TABLE KETQUATHI;
IF OBJECT_ID('GIANGDAY',  'U') IS NOT NULL DROP TABLE GIANGDAY;
IF OBJECT_ID('DIEUKIEN',  'U') IS NOT NULL DROP TABLE DIEUKIEN;
IF OBJECT_ID('HOCVIEN',   'U') IS NOT NULL DROP TABLE HOCVIEN;
IF OBJECT_ID('LOP',       'U') IS NOT NULL DROP TABLE LOP;
IF OBJECT_ID('MONHOC',    'U') IS NOT NULL DROP TABLE MONHOC;
IF OBJECT_ID('GIAOVIEN',  'U') IS NOT NULL DROP TABLE GIAOVIEN;
IF OBJECT_ID('KHOA',      'U') IS NOT NULL DROP TABLE KHOA;

-- ============================================================
-- BUOC 1: Tao KHOA (chua co FK TRGKHOA vi GIAOVIEN chua ton tai)
-- ============================================================
CREATE TABLE KHOA (
    MAKHOA  varchar(4)   NOT NULL,
    TENKHOA varchar(40)  NOT NULL,
    NGTLAP  smalldatetime,
    TRGKHOA char(4),             -- FK -> GIAOVIEN, them sau
    CONSTRAINT PK_KHOA PRIMARY KEY (MAKHOA)
);

-- ============================================================
-- BUOC 2: Tao GIAOVIEN (FK -> KHOA)
-- ============================================================
CREATE TABLE GIAOVIEN (
    MAGV     char(4)       NOT NULL,
    HOTEN    varchar(40)   NOT NULL,
    HOCVI    varchar(10),
    HOCHAM   varchar(10),
    GIOITINH varchar(3),
    NGSINH   smalldatetime,
    NGVL     smalldatetime,
    HESO     numeric(4,2),
    MUCLUONG money,
    MAKHOA   varchar(4),
    CONSTRAINT PK_GIAOVIEN PRIMARY KEY (MAGV),
    CONSTRAINT FK_GV_KHOA  FOREIGN KEY (MAKHOA) REFERENCES KHOA(MAKHOA)
);

-- Them FK TRGKHOA vao KHOA sau khi GIAOVIEN da ton tai
ALTER TABLE KHOA
ADD CONSTRAINT FK_KHOA_TRGKHOA FOREIGN KEY (TRGKHOA) REFERENCES GIAOVIEN(MAGV);

-- ============================================================
-- BUOC 3: Tao LOP (chua co FK TRGLOP vi HOCVIEN chua ton tai)
-- ============================================================
CREATE TABLE LOP (
    MALOP  char(3)     NOT NULL,
    TENLOP varchar(40),
    TRGLOP char(5),              -- FK -> HOCVIEN, them sau
    SISO   tinyint,
    MAGVCN char(4),
    CONSTRAINT PK_LOP    PRIMARY KEY (MALOP),
    CONSTRAINT FK_LOP_GV FOREIGN KEY (MAGVCN) REFERENCES GIAOVIEN(MAGV)
);

-- ============================================================
-- BUOC 4: Tao MONHOC (FK -> KHOA)
-- ============================================================
CREATE TABLE MONHOC (
    MAMH    varchar(10)  NOT NULL,
    TENMH   varchar(40),
    TCLT    tinyint,
    TCTH    tinyint,
    MAKHOA  varchar(4),
    CONSTRAINT PK_MONHOC    PRIMARY KEY (MAMH),
    CONSTRAINT FK_MH_KHOA   FOREIGN KEY (MAKHOA) REFERENCES KHOA(MAKHOA)
);

-- ============================================================
-- BUOC 5: Tao DIEUKIEN (FK -> MONHOC x2)
-- ============================================================
CREATE TABLE DIEUKIEN (
    MAMH       varchar(10) NOT NULL,
    MAMH_TRUOC varchar(10) NOT NULL,
    CONSTRAINT PK_DIEUKIEN     PRIMARY KEY (MAMH, MAMH_TRUOC),
    CONSTRAINT FK_DK_MH        FOREIGN KEY (MAMH)       REFERENCES MONHOC(MAMH),
    CONSTRAINT FK_DK_MH_TRUOC  FOREIGN KEY (MAMH_TRUOC) REFERENCES MONHOC(MAMH)
);

-- ============================================================
-- BUOC 6: Tao HOCVIEN (FK -> LOP)
-- ============================================================
CREATE TABLE HOCVIEN (
    MAHV     char(5)      NOT NULL,
    HO       varchar(40),
    TEN      varchar(10),
    NGSINH   smalldatetime,
    GIOITINH varchar(3),
    NOISINH  varchar(40),
    MALOP    char(3),
    GHICHU   varchar(50),
    DIEMTB   numeric(4,2),
    XEPLOAI  varchar(4),
    CONSTRAINT PK_HOCVIEN  PRIMARY KEY (MAHV),
    CONSTRAINT FK_HV_LOP   FOREIGN KEY (MALOP) REFERENCES LOP(MALOP)
);

-- Them FK TRGLOP vao LOP sau khi HOCVIEN da ton tai
ALTER TABLE LOP
ADD CONSTRAINT FK_LOP_TRGLOP FOREIGN KEY (TRGLOP) REFERENCES HOCVIEN(MAHV);

-- ============================================================
-- BUOC 7: Tao GIANGDAY (FK -> LOP, MONHOC, GIAOVIEN)
-- ============================================================
CREATE TABLE GIANGDAY (
    MALOP   char(3)      NOT NULL,
    MAMH    varchar(10)  NOT NULL,
    MAGV    char(4)      NOT NULL,
    HOCKY   tinyint,
    NAM     smallint,
    TUNGAY  smalldatetime,
    DENNGAY smalldatetime,
    CONSTRAINT PK_GIANGDAY    PRIMARY KEY (MALOP, MAMH, HOCKY, NAM),
    CONSTRAINT FK_GD_LOP      FOREIGN KEY (MALOP) REFERENCES LOP(MALOP),
    CONSTRAINT FK_GD_MONHOC   FOREIGN KEY (MAMH)  REFERENCES MONHOC(MAMH),
    CONSTRAINT FK_GD_GIAOVIEN FOREIGN KEY (MAGV)  REFERENCES GIAOVIEN(MAGV)
);

-- ============================================================
-- BUOC 8: Tao KETQUATHI (FK -> HOCVIEN, MONHOC)
-- ============================================================
CREATE TABLE KETQUATHI (
    MAHV   char(5)      NOT NULL,
    MAMH   varchar(10)  NOT NULL,
    LANTHI tinyint      NOT NULL,
    NGTHI  smalldatetime,
    DIEM   numeric(4,2),
    KQUA   varchar(10),
    CONSTRAINT PK_KETQUATHI    PRIMARY KEY (MAHV, MAMH, LANTHI),
    CONSTRAINT FK_KQT_HOCVIEN  FOREIGN KEY (MAHV) REFERENCES HOCVIEN(MAHV),
    CONSTRAINT FK_KQT_MONHOC   FOREIGN KEY (MAMH) REFERENCES MONHOC(MAMH)
);

-- ============================================================
-- KIEM TRA: Danh sach bang vua tao
-- ============================================================
SELECT name AS TenBang
FROM sys.tables
WHERE name IN ('KHOA','GIAOVIEN','LOP','MONHOC','DIEUKIEN','HOCVIEN','GIANGDAY','KETQUATHI')
ORDER BY name;