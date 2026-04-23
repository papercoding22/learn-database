**Câu 2: (8đ) Cho lược đồ quan hệ sau:**

| Quan hệ     | Thuộc tính | Kiểu dữ liệu  | Diễn giải         |
| ----------- | ---------- | ------------- | ----------------- |
| **VATTU**   | MaVTu      | char (4)      | Mã vật tư         |
|             | TenVTu     | Varchar (80)  | Tên vật tư        |
|             | DvTinh     | Varchar (15)  | Đơn vị tính       |
|             | DonGia     | Smallmoney    | Đơn giá tham khảo |
| **NHACC**   | MaNhaCC    | Char (4)      | Mã nhà cung cấp   |
|             | TenNhaCC   | Varchar (80)  | Tên nhà cung cấp  |
|             | DiaChi     | Varchar (160) | Địa chỉ           |
|             | DienThoai  | Varchar (15)  | Điện thoại        |
| **DONDH**   | SoDh       | Char (4)      | Số đơn đặt hàng   |
|             | NgayDh     | DateTime      | Ngày đặt hàng     |
|             | MaNhaCC    | Char (4)      | Mã nhà cung cấp   |
| **CTDONDH** | SoDh       | Char (4)      | Số đơn đặt hàng   |
|             | MaVTu      | Char (4)      | Mã vật tư         |
|             | SlDat      | Int           | Số lượng đặt hàng |

---

### **1. Hiện thực các lệnh khai báo và chỉnh sửa quan hệ sau:**

**1.1.** Viết lệnh tạo quan hệ Nhà cung cấp và khai báo khóa chính khi tạo (1đ).

**1.2.** Sử dụng lệnh cập nhật để giảm 10% đơn giá cho các vật tư có đơn vị tính là “cái” (1đ).

**1.3.** Cài đặt ràng buộc ngày đặt hàng phải luôn bé hơn ngày hiện tại (1đ).

**1.4.** Viết lệnh thêm 1 thuộc tính giá trị đơn hàng (GiaTri) kiểu Smallmoney vào quan hệ DONDH (1đ).

---

### **2. Viết các câu lệnh SQL thực hiện các câu truy vấn sau:**

**2.1.** In danh sách các nhà cung cấp có địa chỉ ở “Hà Nội” (trong trường địa chỉ có xuất hiện Hà Nội) sắp xếp kết quả theo thứ tự tên nhà cung cấp tăng dần. (1đ).

**2.2.** In ra danh sách đơn hàng (số đơn hàng và ngày đặt hàng) của nhà cung cấp có tên “Gạch Đồng Tâm”. (1đ).

**2.3.** In danh sách những nhà cung cấp (mã nhà cung cấp, tên nhà cung cấp) chưa được đặt hàng. (1đ).

**2.4.** In ra danh sách mã vật tư, tên vật tư và tổng số lượng đã được đặt hàng của từng vật tư đó (1đ).
