-- ============================================================
-- BAI TAP 1 - CAU 1: TAO BANG + KHOA CHINH + KHOA NGOAI
-- Co so du lieu Quan ly Ban Hang
-- ============================================================

-- Xoa bang cu neu ton tai (theo thu tu nguoc: con truoc, cha sau)
IF OBJECT_ID('CTHD',      'U') IS NOT NULL DROP TABLE CTHD;
IF OBJECT_ID('HOADON',    'U') IS NOT NULL DROP TABLE HOADON;
IF OBJECT_ID('SANPHAM',   'U') IS NOT NULL DROP TABLE SANPHAM;
IF OBJECT_ID('NHANVIEN',  'U') IS NOT NULL DROP TABLE NHANVIEN;
IF OBJECT_ID('KHACHHANG', 'U') IS NOT NULL DROP TABLE KHACHHANG;

-- ============================================================
-- BUOC 1: Tao cac bang cha (khong co FK)
-- ============================================================

CREATE TABLE KHACHHANG (
    MAKH    char(4)       NOT NULL,
    HOTEN   varchar(40)   NOT NULL,
    DCHI    varchar(50),
    SODT    varchar(20),
    NGSINH  smalldatetime,
    DOANHSO money,
    NGDK    smalldatetime,
    CONSTRAINT PK_KHACHHANG PRIMARY KEY (MAKH)
);

CREATE TABLE NHANVIEN (
    MANV  char(4)       NOT NULL,
    HOTEN varchar(40)   NOT NULL,
    SODT  varchar(20),
    NGVL  smalldatetime,
    CONSTRAINT PK_NHANVIEN PRIMARY KEY (MANV)
);

CREATE TABLE SANPHAM (
    MASP   char(4)      NOT NULL,
    TENSP  varchar(40)  NOT NULL,
    DVT    varchar(20),
    NUOCSX varchar(40),
    GIA    money,
    CONSTRAINT PK_SANPHAM PRIMARY KEY (MASP)
);

-- ============================================================
-- BUOC 2: Tao bang HOADON (FK -> KHACHHANG, NHANVIEN)
-- ============================================================

CREATE TABLE HOADON (
    SOHD   int           NOT NULL,
    NGHD   smalldatetime,
    MAKH   char(4),               -- NULL duoc: khach vang lai khong co MAKH
    MANV   char(4)        NOT NULL,
    TRIGIA money,
    CONSTRAINT PK_HOADON PRIMARY KEY (SOHD),
    CONSTRAINT FK_HD_KH  FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH),
    CONSTRAINT FK_HD_NV  FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);

-- ============================================================
-- BUOC 3: Tao bang CTHD (FK -> HOADON, SANPHAM)
--         Khoa chinh gom 2 cot: (SOHD, MASP)
-- ============================================================

CREATE TABLE CTHD (
    SOHD int     NOT NULL,
    MASP char(4) NOT NULL,
    SL   int     NOT NULL,
    CONSTRAINT PK_CTHD    PRIMARY KEY (SOHD, MASP),
    CONSTRAINT FK_CTHD_HD FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD),
    CONSTRAINT FK_CTHD_SP FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)
);

-- ============================================================
-- KIEM TRA KET QUA: Xem danh sach bang vua tao
-- ============================================================
SELECT
    t.name        AS TenBang,
    c.name        AS TenCot,
    tp.name       AS KieuDuLieu,
    c.max_length  AS DoRong,
    c.is_nullable AS ChoPhepNull
FROM sys.tables t
JOIN sys.columns c  ON t.object_id = c.object_id
JOIN sys.types   tp ON c.user_type_id = tp.user_type_id
WHERE t.name IN ('KHACHHANG','NHANVIEN','SANPHAM','HOADON','CTHD')
ORDER BY t.name, c.column_id;
