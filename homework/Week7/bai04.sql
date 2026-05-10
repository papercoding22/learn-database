-- Sinh viên hoàn thành Phần III bài tập QuanLyBanHang từ câu 14 đến 19.
-- 14. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được
-- bán ra trong ngày 1/1/2007.
SELECT DISTINCT
	SP.MASP,
	SP.TENSP
FROM
	SANPHAM SP
	LEFT JOIN CTHD CT ON SP.MASP = CT.MASP
	LEFT JOIN HOADON HD ON CT.SOHD = HD.SOHD
WHERE
	SP.NUOCSX = 'Trung Quoc'
	OR HD.NGHD = '2007-01-01';

-- 15. In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
SELECT
	SP.MASP,
	SP.TENSP
FROM
	SANPHAM SP
	LEFT JOIN CTHD CT ON SP.MASP = CT.MASP
WHERE
	CT.SOHD IS NULL;

-- 16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
SELECT
	SP.MASP,
	SP.TENSP
FROM
	SANPHAM SP
WHERE
	NOT EXISTS (
		SELECT
			1
		FROM
			CTHD CT
			JOIN HOADON HD ON CT.SOHD = HD.SOHD
		WHERE
			CT.MASP = SP.MASP
			AND YEAR (HD.NGHD) = 2006
	);

-- 17. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong
-- năm 2006.
SELECT
	SP.MASP,
	SP.TENSP
FROM
	SANPHAM SP
WHERE
	SP.NUOCSX = 'Trung Quoc'
	AND NOT EXISTS (
		SELECT
			1
		FROM
			CTHD CT
			JOIN HOADON HD ON CT.SOHD = HD.SOHD
		WHERE
			CT.MASP = SP.MASP
			AND YEAR (HD.NGHD) = 2006
	);

-- 18. Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất.
SELECT
	HD.SOHD
FROM
	HOADON HD
WHERE
	NOT EXISTS (
		SELECT
			1
		FROM
			SANPHAM SP
		WHERE
			SP.NUOCSX = 'Singapore'
			AND NOT EXISTS (
				SELECT
					1
				FROM
					CTHD CT
				WHERE
					CT.SOHD = HD.SOHD
					AND CT.MASP = SP.MASP
			)
	);

-- 19. Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
SELECT
	HD.SOHD
FROM
	HOADON HD
WHERE
	YEAR (HD.NGHD) = 2006
	AND NOT EXISTS (
		SELECT
			1
		FROM
			SANPHAM SP
		WHERE
			SP.NUOCSX = 'Singapore'
			AND NOT EXISTS (
				SELECT
					1
				FROM
					CTHD CT
				WHERE
					CT.SOHD = HD.SOHD
					AND CT.MASP = SP.MASP
			)
	);