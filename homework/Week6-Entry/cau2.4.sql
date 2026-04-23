-- 2.4. In ra danh sách mã vật tư, tên vật tư và tổng số lượng đã được đặt hàng của từng vật tư đó (1đ).
USE Homework;

SELECT
	VATTU.MaVT,
	VATTU.TenVT,
	ISNULL (SUM(CHITIETDH.SoLuong), 0) AS TongSoLuong
FROM
	VATTU
	LEFT JOIN CHITIETDH ON VATTU.MaVT = CHITIETDH.MaVT
GROUP BY
	VATTU.MaVT,
	VATTU.TenVT;