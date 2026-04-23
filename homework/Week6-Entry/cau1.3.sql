-- 1.3. Cài đặt ràng buộc ngày đặt hàng phải luôn bé hơn ngày hiện tại (1đ).
USE Homework;

ALTER TABLE PHIEUDATHANG ADD CONSTRAINT CHK_NGAYDAT CHECK (NGAYDAT < GETDATE ());