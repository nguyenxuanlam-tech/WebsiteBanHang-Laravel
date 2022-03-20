-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 12, 2021 lúc 07:00 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_16_091719_create_tbl_admin_table', 1),
(5, '2021_08_17_023819_create_tbl_category_product', 2),
(6, '2021_08_17_135211_create_tbl_brand_product', 3),
(7, '2021_08_17_150028_create_tbl_product', 4),
(8, '2021_08_19_081646_tbl_customer', 5),
(9, '2021_08_19_090406_tbl_shipping', 6),
(13, '2021_08_20_063457_tbl_payment', 7),
(14, '2021_08_20_063618_tbl_order_details', 7),
(15, '2021_08_20_063952_tbl_order', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(3, 'tonnyshark1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hoàng Phúc', '0902580697', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(3, 'Hoàng Tuấn', 'Acer', 0, NULL, NULL),
(4, 'Hoàng Phúc', 'Hoàng Phúc', 0, NULL, NULL),
(5, 'Chí Nghĩa', 'Chí Nghĩa', 0, NULL, NULL),
(6, 'Quốc Tín', 'Quốc Tín', 0, NULL, NULL),
(7, 'Tấn Phát', 'Tấn Phát', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(5, 'Đèn cây', 'đâsd', 0, NULL, NULL),
(6, 'Đèn chùm', 'Đèn chùm', 0, NULL, NULL),
(7, 'Đèn Gốm', 'Đèn Gốm', 0, NULL, NULL),
(8, 'Đèn Ốp Trần', 'Đèn Ốp Trần', 0, NULL, NULL),
(9, 'Đèn Thả', 'Đèn Thả', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Hoang Phuc', 'tonnyshark2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0902580697', NULL, NULL),
(5, 'Ngoc Huong', 'tonnyshark3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '03232323', NULL, NULL),
(6, 'Thanh Sang', 'tonnyshark4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '543534534', NULL, NULL),
(7, 'Chí NGHĨA', 'tonnyshark5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '094532443', NULL, NULL),
(8, 'Hoàng Tuấn', 'tonnyshark7@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '869565065', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(11, 1, 5, 13, '5,149,000.00', 'Đang chờ xử lý', NULL, NULL),
(12, 7, 6, 14, '1,440,000.00', 'Đang chờ xử lý', NULL, NULL),
(13, 1, 7, 15, '21,960,000.00', 'Đang chờ xử lý', NULL, NULL),
(14, 1, 8, 16, '252,000.00', 'Đang chờ xử lý', NULL, NULL),
(15, 1, 9, 17, '35,919,000.00', 'Đang chờ xử lý', NULL, NULL),
(16, 1, 10, 18, '1,952,000.00', 'Đang chờ xử lý', NULL, NULL),
(17, 1, 11, 19, '1,280,000.00', 'Đang chờ xử lý', NULL, NULL),
(18, 1, 11, 20, '0.00', 'Đang chờ xử lý', NULL, NULL),
(19, 1, 12, 21, '58,765,000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 8, 4, 'Đèn Cây Aladin  DD0002', '1407000', 4, NULL, NULL),
(2, 8, 7, 'Đèn Chùm Andals DCSNCD600130', '58765000', 2, NULL, NULL),
(3, 9, 4, 'Đèn Cây Aladin  DD0002', '1407000', 4, NULL, NULL),
(4, 9, 7, 'Đèn Chùm Andals DCSNCD600130', '58765000', 2, NULL, NULL),
(5, 10, 5, 'Đèn Cây Black Tail  DD0001', '1610000', 1, NULL, NULL),
(6, 11, 23, 'ĐÈN THẢ BÀN ĂN HP6 TL 1657/3', '842000', 3, NULL, NULL),
(7, 11, 25, 'ĐÈN THẢ LED HP6 TL 221/9', '2623000', 1, NULL, NULL),
(8, 12, 10, 'Đèn Bình Xoan Hoa Cúc – DGAK006', '1440000', 1, NULL, NULL),
(9, 13, 26, 'ĐÈN THẢ NGHỆ THUẬT', '7320000', 3, NULL, NULL),
(10, 14, 27, 'ĐÈN THẢ TRE 24H ĐTT1020', '252000', 1, NULL, NULL),
(11, 15, 18, 'ĐÈN CHÙM ĐỒNG PT5 CDQT-68-20 Ø1000XC650', '11973000', 3, NULL, NULL),
(12, 16, 33, 'ĐÈN ỐP TRẦN GỖ HP6 OTG 21 500XH120', '1952000', 1, NULL, NULL),
(13, 17, 11, 'Đèn Bình Xoan Hoa Đỏ – DGAK014', '1280000', 1, NULL, NULL),
(14, 19, 7, 'Đèn Chùm Andals DCSNCD600130', '58765000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý', NULL, NULL),
(2, '1', 'Đang chờ xử lý', NULL, NULL),
(3, '1', 'Đang chờ xử lý', NULL, NULL),
(4, '1', 'Đang chờ xử lý', NULL, NULL),
(5, '1', 'Đang chờ xử lý', NULL, NULL),
(6, '1', 'Đang chờ xử lý', NULL, NULL),
(7, '1', 'Đang chờ xử lý', NULL, NULL),
(8, '1', 'Đang chờ xử lý', NULL, NULL),
(9, '1', 'Đang chờ xử lý', NULL, NULL),
(10, '1', 'Đang chờ xử lý', NULL, NULL),
(11, '2', 'Đang chờ xử lý', NULL, NULL),
(12, '2', 'Đang chờ xử lý', NULL, NULL),
(13, '2', 'Đang chờ xử lý', NULL, NULL),
(14, '2', 'Đang chờ xử lý', NULL, NULL),
(15, '2', 'Đang chờ xử lý', NULL, NULL),
(16, '2', 'Đang chờ xử lý', NULL, NULL),
(17, '2', 'Đang chờ xử lý', NULL, NULL),
(18, '2', 'Đang chờ xử lý', NULL, NULL),
(19, '2', 'Đang chờ xử lý', NULL, NULL),
(20, '2', 'Đang chờ xử lý', NULL, NULL),
(21, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(4, 5, 'Đèn Cây Aladin  DD0002', 3, 'Đèn cây với thiết kế đơn giản mà tinh tế, màu vàng đồng sang trọng.\r\nChao đèn thiết kế đặc biệt, tản sáng tốt, khi bật đèn sẽ tạo hiệu ứng nâu ấm áp cho gian phòng.', 'Đèn cây với thiết kế đơn giản mà tinh tế, màu vàng đồng sang trọng.\r\nChao đèn thiết kế đặc biệt, tản sáng tốt, khi bật đèn sẽ tạo hiệu ứng nâu ấm áp cho gian phòng', '1407000', 'dencay192.jpg', 0, NULL, NULL),
(5, 5, 'Đèn Cây Black Tail  DD0001', 3, 'Đèn cây với thiết kế đơn giản mà tinh tế, sắc đen huyền bí hiện đại, tích hợp chiếc bàn nhỏ tiện dụng, cùng khớp nối để người dùng có thể điều chỉnh độ dài thân đèn vô cùng tiện lợi.', 'Đèn cây với thiết kế đơn giản mà tinh tế, sắc đen huyền bí hiện đại, tích hợp chiếc bàn nhỏ tiện dụng, cùng khớp nối để người dùng có thể điều chỉnh độ dài thân đèn vô cùng tiện lợi.', '1610000', 'dencay253.jpg', 0, NULL, NULL),
(6, 5, 'Đèn Cây XCray DB0015', 3, 'Đèn cây với thiết kế hiện đại với những đường cắt nét tinh tế, chân đèn bằng chất liệu sắt sơn tĩnh điện với tạo hình hiện đại.', 'Đèn cây với thiết kế hiện đại với những đường cắt nét tinh tế, chân đèn bằng chất liệu sắt sơn tĩnh điện với tạo hình hiện đại.', '1592500', 'dencay397.jpg', 0, NULL, NULL),
(7, 6, 'Đèn Chùm Andals DCSNCD600130', 6, 'Mã Sản Phẩm: DCSN-CD6001-30\r\nXuất Xứ: Nhập khẩu và phân phối bởi DenTrangTri.com\r\nKích Thước: Φ108 x H120 cm\r\nMàu Sắc:\r\nChất Liệu: Đá ngọc thạch\r\nLoại Bóng: Bóng nến E14*30', 'Mã Sản Phẩm: DCSN-CD6001-30\r\nXuất Xứ: Nhập khẩu và phân phối bởi DenTrangTri.com\r\nKích Thước: Φ108 x H120 cm\r\nMàu Sắc:\r\nChất Liệu: Đá ngọc thạch\r\nLoại Bóng: Bóng nến E14*30', '58765000', 'denchum225.png', 0, NULL, NULL),
(8, 6, 'Đèn Chùm Adelaide  DCSN CPL3027', 6, 'Mã Sản Phẩm: DCSN-CPL3027\r\nXuất Xứ: Nhập khẩu và phân phối bởi DenTrangTri.com\r\nKích Thước: Φ60 x H75 cm\r\nMàu Sắc:\r\nChất Liệu: Pha lê\r\nLoại Bóng: LED SMD E14*21', 'Mã Sản Phẩm: DCSN-CPL3027\r\nXuất Xứ: Nhập khẩu và phân phối bởi DenTrangTri.com\r\nKích Thước: Φ60 x H75 cm\r\nMàu Sắc:\r\nChất Liệu: Pha lê\r\nLoại Bóng: LED SMD E14*21', '13283000', 'denchum322.png', 0, NULL, NULL),
(9, 7, 'Đèn Bầu Men Rạn Hoa Sen – DGAK013', 4, 'Đèn gốm là sự kết hợp hoàn hảo giữa nghệ thuật gốm sứ Việt Nam và tính ứng dụng cực kì cao của đèn bàn.', 'Mã Sản Phẩm: DGAK013\r\nXuất Xứ: DBRS0123\r\nKích Thước:\r\n– Thân đèn: 23 cm\r\n– Chụp đèn: 35 x 25 x 23 cm\r\nMàu Sắc: Trắng-Xanh\r\nChất Liệu: Sứ-Vải\r\nLoại Bóng: E27 x 1', '1760000', 'dengom143.jpg', 0, NULL, NULL),
(10, 7, 'Đèn Bình Xoan Hoa Cúc – DGAK006', 4, 'Đèn gốm là sự kết hợp hoàn hảo giữa nghệ thuật gốm sứ Việt Nam và tính ứng dụng cực kì cao của đèn bàn', 'Mã Sản Phẩm: DGAK006\r\nXuất Xứ: BXHCC0123\r\nKích Thước:\r\n– Thân đèn: 24 cm\r\n– Chụp đèn: 34 x 23 x 23 cm\r\nMàu Sắc: Trắng-Vàng\r\nChất Liệu: Sứ-Vải\r\nLoại Bóng: E27 x 1', '1440000', 'dengom25.jpg', 0, NULL, NULL),
(11, 7, 'Đèn Bình Xoan Hoa Đỏ – DGAK014', 4, 'Đèn gốm là sự kết hợp hoàn hảo giữa nghệ thuật gốm sứ Việt Nam và tính ứng dụng cực kì cao của đèn bàn.', 'Mã Sản Phẩm: DGAK014\r\nXuất Xứ: BXHTT0126\r\nKích Thước:\r\n– Thân đèn: 26 cm\r\n– Chụp đèn: 40 x 15 x 25 cm\r\nMàu Sắc: Trắng-Đỏ\r\nChất Liệu: Sứ-Vải\r\nLoại Bóng: E27 x 1', '1280000', 'dengom346.jpg', 0, NULL, NULL),
(12, 7, 'Đèn Cao Họa Tiết Lá Phong – DGAK015', 4, 'Đèn gốm là sự kết hợp hoàn hảo giữa nghệ thuật gốm sứ Việt Nam và tính ứng dụng cực kì cao của đèn bàn.', 'Mã Sản Phẩm: DGAK015\r\nXuất Xứ: MTCLA0130\r\nKích Thước:\r\n– Thân đèn: 30 cm\r\n– Chụp đèn: 34 x 23 x 23 cm\r\nMàu Sắc: Trắng\r\nChất Liệu: Sứ-Vải\r\nLoại Bóng: E27 x 1', '1120000', 'dengom484.jpg', 0, NULL, NULL),
(13, 7, 'Đèn Gốm Giả Gỗ Cao – DGAK012', 4, 'Đèn gốm là sự kết hợp hoàn hảo giữa nghệ thuật gốm sứ Việt Nam và tính ứng dụng cực kì cao của đèn bàn', 'Mã Sản Phẩm: DGAK012\r\nXuất Xứ: GGHLA0131\r\nKích Thước:\r\n– Thân đèn: 31 cm\r\n– Chụp đèn: 35 x 25 x 23 cm\r\nMàu Sắc: Trắng-Nâu\r\nChất Liệu: Gốm-Vải\r\nLoại Bóng: E27 x 1', '1760000', 'dengom557.jpg', 0, NULL, NULL),
(14, 7, 'Đèn Gốm Giả Gỗ Nhỏ – DGAK010', 4, 'Đèn gốm là sự kết hợp hoàn hảo giữa nghệ thuật gốm sứ Việt Nam và tính ứng dụng cực kì cao của đèn bàn.', 'Mã Sản Phẩm: DGAK010\r\nXuất Xứ: GGLAN0127\r\nKích Thước:\r\n– Thân đèn: 27 cm\r\n– Chụp đèn: 40 x 15 x 25 cm\r\nMàu Sắc: Trắng-Nâu\r\nChất Liệu: Gốm-Vải\r\nLoại Bóng: E27 x 1', '1280000', 'dengom643.jpg', 0, NULL, NULL),
(15, 5, 'ĐÈN CÂY TRANG TRÍ PT5 DC-700 N500XC1650', 3, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Cây Trang Trí\r\n\r\nKÍCH THƯỚC: N500xC1650\r\n\r\nLOẠI BÓNG: E27x1\r\n\r\nỨNG DỤNG: Phòng khách, phòng làm việc, phòng ngủ, thư viện..\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Cây Trang Trí\r\n\r\nKÍCH THƯỚC: N500xC1650\r\n\r\nLOẠI BÓNG: E27x1\r\n\r\nỨNG DỤNG: Phòng khách, phòng làm việc, phòng ngủ, thư viện..\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', '4037000', 'dencay448.jpg', 0, NULL, NULL),
(16, 5, 'ĐÈN CÂY TRANG TRÍ PT5 DC-701 N900XC1650', 3, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Cây Trang Trí\r\n\r\nKÍCH THƯỚC: N900xC1650\r\n\r\nLOẠI BÓNG: E27x1\r\n\r\nỨNG DỤNG: Phòng khách, phòng làm việc, phòng ngủ, thư viện..\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Cây Trang Trí\r\n\r\nKÍCH THƯỚC: N900xC1650\r\n\r\nLOẠI BÓNG: E27x1\r\n\r\nỨNG DỤNG: Phòng khách, phòng làm việc, phòng ngủ, thư viện..\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', '2763000', 'dencay532.jpg', 0, NULL, NULL),
(17, 5, 'ĐÈN CÂY TRANG TRÍ AU2 FL0274-1 Ø500XH1650XW320', 3, 'UẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Cây Trang Trí\r\n\r\nKÍCH THƯỚC: Ø500xH1650xW320\r\n\r\nLOẠI BÓNG: E27\r\n\r\nỨNG DỤNG: Phòng khách, phòng làm việc, phòng ngủ, thư viện…\r\n\r\nĐẶC ĐIỂM: chân đế chắc chắn, chụp đèn bằng vải, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', 'UẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Cây Trang Trí\r\n\r\nKÍCH THƯỚC: Ø500xH1650xW320\r\n\r\nLOẠI BÓNG: E27\r\n\r\nỨNG DỤNG: Phòng khách, phòng làm việc, phòng ngủ, thư viện…\r\n\r\nĐẶC ĐIỂM: chân đế chắc chắn, chụp đèn bằng vải, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', '2839000', 'dencay673.jpg', 0, NULL, NULL),
(18, 6, 'ĐÈN CHÙM ĐỒNG PT5 CDQT-68-20 Ø1000XC650', 6, 'UẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Đồng\r\n\r\nKÍCH THƯỚC: Ø1000xC650\r\n\r\nLOẠI BÓNG: E14x15\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn, phòng hội nghị…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng đồng, chao đèn bằng thủy tinh, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', 'UẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Đồng\r\n\r\nKÍCH THƯỚC: Ø1000xC650\r\n\r\nLOẠI BÓNG: E14x15\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn, phòng hội nghị…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng đồng, chao đèn bằng thủy tinh, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', '11973000', 'denchum32.jpg', 0, NULL, NULL),
(19, 6, 'ĐÈN CHÙM NGHỆ THUẬT HP6 TL 8701/4 Ø880XH240', 6, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Nghệ Thuật\r\n\r\nKÍCH THƯỚC: Ø880xH240\r\n\r\nLOẠI BÓNG: LED 52W - 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, phòng ăn, sảnh, thư viện, phòng ngủ, phòng sinh hoạt chung,…\r\n\r\nĐẶC ĐIỂM: thân đèn bằng hợp kim, chao đèn bằng thủy tinh, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Nghệ Thuật\r\n\r\nKÍCH THƯỚC: Ø880xH240\r\n\r\nLOẠI BÓNG: LED 52W - 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, phòng ăn, sảnh, thư viện, phòng ngủ, phòng sinh hoạt chung,…\r\n\r\nĐẶC ĐIỂM: thân đèn bằng hợp kim, chao đèn bằng thủy tinh, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', '1219000', 'denchum498.jpg', 0, NULL, NULL),
(20, 6, 'ĐÈN CHÙM NẾN HP6 CN 635/8+1 Ø900XH880+400', 6, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Nến\r\n\r\nKÍCH THƯỚC: Ø900xH880+400\r\n\r\nLOẠI BÓNG: E14x9\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn, phòng hội nghị…\r\n\r\nĐẶC ĐIỂM: thân đèn khắc hoa văn, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Nến\r\n\r\nKÍCH THƯỚC: Ø900xH880+400\r\n\r\nLOẠI BÓNG: E14x9\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn, phòng hội nghị…\r\n\r\nĐẶC ĐIỂM: thân đèn khắc hoa văn, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', '5900000', 'denchum527.jpg', 0, NULL, NULL),
(21, 6, 'ĐÈN CHÙM PHA LÊ HP6 CFL 1239/800 Ø800XH500', 6, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Pha Lê\r\n\r\nKÍCH THƯỚC: Ø800xH500\r\n\r\nLOẠI BÓNG: E14x19\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn…\r\n\r\nĐẶC ĐIỂM: thân đèn bằng hợp kim, pha lê cao cấp ánh lấp lánh, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Chùm Pha Lê\r\n\r\nKÍCH THƯỚC: Ø800xH500\r\n\r\nLOẠI BÓNG: E14x19\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn…\r\n\r\nĐẶC ĐIỂM: thân đèn bằng hợp kim, pha lê cao cấp ánh lấp lánh, kiểu dáng sang trọng\r\n\r\nBẢO HÀNH: 12 tháng', '5133000', 'denchum667.jpg', 0, NULL, NULL),
(22, 9, 'ĐÈN THẢ CHO BÉ KL AC5-82', 5, 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Cho Bé\r\n\r\nKÍCH THƯỚC: 170x560x700\r\n\r\nLOẠI BÓNG: E27x2(60W)\r\n\r\nỨNG DỤNG: Trang trí phòng trẻ em\r\n\r\nĐẶC ĐIỂM: Hình Con Gấu Ngộ Nghĩnh, Dễ Thương...\r\n\r\nBẢO HÀNH: 18 tháng', 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Cho Bé\r\n\r\nKÍCH THƯỚC: 170x560x700\r\n\r\nLOẠI BÓNG: E27x2(60W)\r\n\r\nỨNG DỤNG: Trang trí phòng trẻ em\r\n\r\nĐẶC ĐIỂM: Hình Con Gấu Ngộ Nghĩnh, Dễ Thương...\r\n\r\nBẢO HÀNH: 18 tháng', '900000', 'dentha171.jpg', 0, NULL, NULL),
(23, 9, 'ĐÈN THẢ BÀN ĂN HP6 TL 1657/3', 5, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Bàn Ăn\r\n\r\nLOẠI BÓNG: E27x3\r\n\r\nỨNG DỤNG: Bàn ăn, quầy bar, quán cafe, nhà hàng,…\r\n\r\nĐẶC ĐIỂM: kiểu dáng hiện đại, dây thả chắc chắn\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Bàn Ăn\r\n\r\nLOẠI BÓNG: E27x3\r\n\r\nỨNG DỤNG: Bàn ăn, quầy bar, quán cafe, nhà hàng,…\r\n\r\nĐẶC ĐIỂM: kiểu dáng hiện đại, dây thả chắc chắn\r\n\r\nBẢO HÀNH: 12 tháng', '842000', 'dentha277.jpg', 0, NULL, NULL),
(24, 9, 'ĐÈN THẢ BÓNG TUÝP HP3 KN', 5, 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Bóng Tuýp\r\n\r\nKÍCH THƯỚC: L1200xW135xH40\r\n\r\nLOẠI BÓNG: LED 54W\r\n\r\nỨNG DỤNG: Cao ốc văn phòng, trung tâm thương mại, siêu thị, nhà hàng, khách sạn, nhà ở,…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim nhôm, bóng led siêu sáng, siêu tiết kiệm điện\r\n\r\nBẢO HÀNH: 2 năm', 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Bóng Tuýp\r\n\r\nKÍCH THƯỚC: L1200xW135xH40\r\n\r\nLOẠI BÓNG: LED 54W\r\n\r\nỨNG DỤNG: Cao ốc văn phòng, trung tâm thương mại, siêu thị, nhà hàng, khách sạn, nhà ở,…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim nhôm, bóng led siêu sáng, siêu tiết kiệm điện\r\n\r\nBẢO HÀNH: 2 năm', '826000', 'dentha334.jpg', 0, NULL, NULL),
(25, 9, 'ĐÈN THẢ LED HP6 TL 221/9', 5, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả LED\r\n\r\nLOẠI BÓNG: LED 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn…\r\n\r\nĐẶC ĐIỂM: dây thả chắc chắn, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả LED\r\n\r\nLOẠI BÓNG: LED 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn…\r\n\r\nĐẶC ĐIỂM: dây thả chắc chắn, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', '2623000', 'dentha441.jpg', 0, NULL, NULL),
(26, 9, 'ĐÈN THẢ NGHỆ THUẬT', 5, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Nghệ Thuật\r\n\r\nKÍCH THƯỚC: Ø1050xH400\r\n\r\nLOẠI BÓNG: E14x7\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn…\r\n\r\nĐẶC ĐIỂM: dây thả chắc chắn, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Thả Nghệ Thuật\r\n\r\nKÍCH THƯỚC: Ø1050xH400\r\n\r\nLOẠI BÓNG: E14x7\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, nhà hàng, khách sạn…\r\n\r\nĐẶC ĐIỂM: dây thả chắc chắn, kiểu dáng hiện đại\r\n\r\nBẢO HÀNH: 12 tháng', '7320000', 'denap160.jpg', 0, NULL, NULL),
(27, 9, 'ĐÈN THẢ TRE 24H ĐTT1020', 5, 'XUẤT XỨ: VN\r\n\r\nTHIẾT KẾ: Đèn Thả Gỗ\r\n\r\nKÍCH THƯỚC: Ø300 x H200mm\r\n\r\nLOẠI BÓNG: E27\r\n\r\nỨNG DỤNG: bàn ăn, quầy bar, quán cafe,..\r\n\r\nĐẶC ĐIỂM: Khung đèn bằng tre 1 lớp\r\n\r\nBẢO HÀNH: 2 năm', 'XUẤT XỨ: VN\r\n\r\nTHIẾT KẾ: Đèn Thả Gỗ\r\n\r\nKÍCH THƯỚC: Ø300 x H200mm\r\n\r\nLOẠI BÓNG: E27\r\n\r\nỨNG DỤNG: bàn ăn, quầy bar, quán cafe,..\r\n\r\nĐẶC ĐIỂM: Khung đèn bằng tre 1 lớp\r\n\r\nBẢO HÀNH: 2 năm', '252000', 'dentha615.jpg', 0, NULL, NULL),
(28, 8, 'ĐÈN ÁP TRẦN LED SN4 ML 85-185 Ø500XH75', 7, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn áp trần LED\r\n\r\nKÍCH THƯỚC: Ø500xH75\r\n\r\nLOẠI BÓNG: LED 110W 3 chế độ\r\n\r\nỨNG DỤNG: phòng khách, phòng ngủ, phòng sinh hoạt chung, sảnh…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim, ánh sáng được chiếu khắp trên thân đèn tạo hiệu ứng cao\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn áp trần LED\r\n\r\nKÍCH THƯỚC: Ø500xH75\r\n\r\nLOẠI BÓNG: LED 110W 3 chế độ\r\n\r\nỨNG DỤNG: phòng khách, phòng ngủ, phòng sinh hoạt chung, sảnh…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng hợp kim, ánh sáng được chiếu khắp trên thân đèn tạo hiệu ứng cao\r\n\r\nBẢO HÀNH: 12 tháng', '1060000', 'denap191.jpg', 0, NULL, NULL),
(29, 8, 'ĐÈN ÁP TRẦN ĐỒNG HP6 OĐ 1342 24W Ø300XH126', 7, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Áp Trần Đồng\r\n\r\nKÍCH THƯỚC: Ø300xH126\r\n\r\nLOẠI BÓNG: LED 24W\r\n\r\nỨNG DỤNG: Phòng khách, phòng ngủ, hành lang, phòng sinh hoạt…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng đồng, chao đèn bằng đá\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Áp Trần Đồng\r\n\r\nKÍCH THƯỚC: Ø300xH126\r\n\r\nLOẠI BÓNG: LED 24W\r\n\r\nỨNG DỤNG: Phòng khách, phòng ngủ, hành lang, phòng sinh hoạt…\r\n\r\nĐẶC ĐIỂM: Thân đèn bằng đồng, chao đèn bằng đá\r\n\r\nBẢO HÀNH: 12 tháng', '1708000', 'denap288.jpg', 0, NULL, NULL),
(30, 8, 'ĐÈN ỐP TRẦN LED PT5 OP1208 L565XH80', 7, 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Ốp Trần LED\r\n\r\nKÍCH THƯỚC: L565xW485xH80\r\n\r\nLOẠI BÓNG: LED 30W 3 màu\r\n\r\nỨNG DỤNG: Trang trí phòng trẻ em\r\n\r\nĐẶC ĐIỂM: Ánh sáng chiếu dọc khắp thân đèn tạo hiệu ứng cao, Bóng Led siêu sáng - bền - tiết kiệm điện\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Ốp Trần LED\r\n\r\nKÍCH THƯỚC: L565xW485xH80\r\n\r\nLOẠI BÓNG: LED 30W 3 màu\r\n\r\nỨNG DỤNG: Trang trí phòng trẻ em\r\n\r\nĐẶC ĐIỂM: Ánh sáng chiếu dọc khắp thân đèn tạo hiệu ứng cao, Bóng Led siêu sáng - bền - tiết kiệm điện\r\n\r\nBẢO HÀNH: 12 tháng', '679000', 'denap332.jpg', 0, NULL, NULL),
(31, 8, 'ĐÈN ỐP TRẦN CỔ ĐIỂN HP6 OT Y020/380 Ø380', 7, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Ốp Trần Cổ Điển\r\n\r\nKÍCH THƯỚC: Ø380\r\n\r\nLOẠI BÓNG: LED 36W 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, cầu thang, hành lang, phòng hội nghị…\r\n\r\nĐẶC ĐIỂM: Vành đèn bằng atimol, chao đèn bằng thủy tinh\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn Ốp Trần Cổ Điển\r\n\r\nKÍCH THƯỚC: Ø380\r\n\r\nLOẠI BÓNG: LED 36W 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, sảnh, cầu thang, hành lang, phòng hội nghị…\r\n\r\nĐẶC ĐIỂM: Vành đèn bằng atimol, chao đèn bằng thủy tinh\r\n\r\nBẢO HÀNH: 12 tháng', '1220000', 'denap49.jpg', 0, NULL, NULL),
(32, 8, 'ĐÈN BÁNH TIÊU LED TCT BT-057', 7, 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Bánh Tiêu\r\n\r\nKÍCH THƯỚC: Ø330\r\n\r\nLOẠI BÓNG: LED: 18w\r\n\r\nỨNG DỤNG: phòng ngủ, hành lang, ban công, toillet,...\r\n\r\nĐẶC ĐIỂM: thân đèn bằng nhựa\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập Khẩu\r\n\r\nTHIẾT KẾ: Đèn Bánh Tiêu\r\n\r\nKÍCH THƯỚC: Ø330\r\n\r\nLOẠI BÓNG: LED: 18w\r\n\r\nỨNG DỤNG: phòng ngủ, hành lang, ban công, toillet,...\r\n\r\nĐẶC ĐIỂM: thân đèn bằng nhựa\r\n\r\nBẢO HÀNH: 12 tháng', '266000', 'denap549.jpg', 0, NULL, NULL),
(33, 8, 'ĐÈN ỐP TRẦN GỖ HP6 OTG 21 500XH120', 7, 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn ốp trần gỗ\r\n\r\nKÍCH THƯỚC: 500xH120\r\n\r\nLOẠI BÓNG: LED 80W 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, phòng sinh hoạt chung, phòng ngủ…\r\n\r\nĐẶC ĐIỂM: Khung đèn bằng gỗ khắc hoa văn, bóng LED siêu sáng,siêu tiết kiệm điện\r\n\r\nBẢO HÀNH: 12 tháng', 'XUẤT XỨ: Nhập khẩu\r\n\r\nTHIẾT KẾ: Đèn ốp trần gỗ\r\n\r\nKÍCH THƯỚC: 500xH120\r\n\r\nLOẠI BÓNG: LED 80W 3 chế độ\r\n\r\nỨNG DỤNG: Phòng khách, phòng sinh hoạt chung, phòng ngủ…\r\n\r\nĐẶC ĐIỂM: Khung đèn bằng gỗ khắc hoa văn, bóng LED siêu sáng,siêu tiết kiệm điện\r\n\r\nBẢO HÀNH: 12 tháng', '1952000', 'denap664.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Phúc', 'Nha Trang', '0902580697', 'tonnyshark6@gmail.com', 'đơn hàng gửi trong ngày', NULL, NULL),
(2, 'Hoàng Phúc', 'Nha Trang', '0902580697', 'tonnyshark2@gmail.com', 'hàng dễ vỡ xin cẩn thận', NULL, NULL),
(3, 'Hoàng Phúc', 'Nha Trang', '45645645', 'tonnyshark2@gmail.com', 'sadasdasdasd', NULL, NULL),
(4, 'Ngọc Hương', 'Diên Phước', '096596945', 'tonnyshark3@gmail.com', 'đơn hàng phải giao nhanh', NULL, NULL),
(5, 'Hoàng Phúc', 'Nha Trang', '0902580697', 'tonnyshark2@gmail.com', 'hàng dễ vỡ', NULL, NULL),
(6, 'Ngọc Hương', 'Diên Phước', '0902580697', 'tonnyshark6@gmail.com', 'đâsdasd', NULL, NULL),
(7, 'Tien Phat', 'Tan Binh', '0977676776', 'tonnyshark2@gmail.com', 'dasdasdasd', NULL, NULL),
(8, 'Phát đạt', 'Diên Phước', '69058695', 'tonnyshark3@gmail.com', 'đâsdasdasdsa', NULL, NULL),
(9, 'Hoàng Tuấn', '433 lương định của', '0787657', 'tonnyshark6@gmail.com', 'đâsdasd', NULL, NULL),
(10, 'Ngọc Hương', '433 lương định của nha trang', '76757567', 'tonnyshark10@gmail.com', 'đâsdasdas', NULL, NULL),
(11, 'đâsd', 'đâsd', '8768678', 'tonnyshark3@gmail.com', 'fdsfsdf', NULL, NULL),
(12, 'Hoàng Phúc', 'Diên Phước', '45645645', 'tonnyshark10@gmail.com', 'đâsd', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
