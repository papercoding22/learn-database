Câu 1: (8 điểm)

Cho lược đồ cơ sở dữ liệu “Quản lý hồ sơ bệnh án điện tử công dân” có cấu trúc như sau:

**BENHNHAN** (MABN, HOTEN, NGSINH, CMND, DIACHI, DOITUONG, SLPT)

_Tân từ:_ Quan hệ BENHNHAN lưu trữ thông tin của một bệnh nhân, bao gồm: họ tên (HOTEN), ngày sinh (NGSINH), số chứng minh nhân dân/căn cước công dân/hộ chiếu (CMND), địa chỉ (DIACHI), đối tượng (DOITUONG), số lần phẫu thuật (SLPT). Mỗi bệnh nhân được cấp một mã số (MABN).

**KHAMBENH** (MAKB, MABN, BENH, BENHKT, BATDAU, KETTHUC, KETLUAN, TAIKHAM)

_Tân từ:_ Quan hệ KHAMBENH chứa các thông tin của việc khám bệnh, bao gồm: mã khám bệnh (MAKB), mã bệnh nhân được khám bệnh (MABN), bệnh chính (BENH), bệnh kèm theo (BENHKT), thời gian bắt đầu việc khám bệnh (BATDAU), thời gian kết thúc việc khám bệnh (KETTHUC), kết luận của bác sĩ (KETLUAN) và ngày hẹn tái khám nếu có (TAIKHAM).

**PHAUTHUAT** (MAPT, MAKB, BOPHANPT, LOAIPT, KETQUA)

_Tân từ:_ Quan hệ PHAUTHUAT chứa các thông tin sự kiện phẫu thuật, bao gồm: mã phẫu thuật (MAPT), mã khám bệnh mà bác sĩ kết luận chỉ định phẫu thuật (MAKB), bộ phận cơ thể cần phẫu thuật (BOPHANPT), loại phẫu thuật (LOAIPT) và kết quả ca phẫu thuật (KETQUA).

**BACSI** (MABS, HOTEN, NAMSINH, CHUYENMON, KHOA, BENHVIEN)

_Tân từ:_ Quan hệ BACSI lưu trữ thông tin các bác sĩ, bao gồm: mã bác sĩ (MABS), họ tên (HOTEN), năm sinh (NAMSINH), chuyên môn (CHUYENMON), khoa (KHOA) và bệnh viện đang công tác (BENHVIEN).

**PHUTRACH** (MABS, MAKB, BATDAUPT, KETTHUCPT)

_Tân từ:_ Quan hệ PHUTRACH lưu trữ thông tin phụ trách khám bệnh của mỗi bác sĩ, bao gồm: mã bác sĩ phụ trách (MABS), mã khám bệnh (MAKB), thời điểm bắt đầu phụ trách (BATDAUPT), thời điểm kết thúc (KETTHUCPT).

---

## 2. Thực hiện các câu truy vấn sau bằng ngôn ngữ SQL: (6 điểm)

### a.

Cho biết thông tin bệnh nhân (HOTEN, CMND) thuộc đối tượng ‘BHYT’ hoặc có địa chỉ ở ‘Đồng Nai’. Kết quả được sắp xếp theo số lần phẫu thuật giảm dần. (1 điểm)

### b.

Cho biết thông tin (MAKB, MABN, HOTEN) của những bệnh nhân sinh sau năm 2020 có khám bệnh chính là ‘Tim mạch’. (1 điểm)

### c.

Cho biết số lần khám bệnh của từng bệnh nhân trong năm 2020. Thông tin hiển thị gồm: MABN, HOTEN và SL. (1 điểm)

### d.

Cho biết thông tin những bác sĩ (MABS, HOTEN) có chuyên môn ‘Tai-Mũi-Họng’ chưa được phụ trách khám bệnh trong năm 2020 (BATDAUPT). (1 điểm)

### e.

Cho biết thông tin (MABS, HOTEN) của những bác sĩ chuyên môn ‘Hồi sức - Cấp cứu’ tham gia tất cả các mã khám bệnh của bệnh nhân ‘Nguyễn Văn A’. (1 điểm)

### f.

Cho biết thông tin bác sĩ (MABS, HOTEN) có số lần phụ trách khám bệnh nhiều nhất. (1 điểm)
