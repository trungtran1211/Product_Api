-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2023 lúc 07:06 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datntrung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `com_id` int(20) NOT NULL,
  `masanpham` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`com_id`, `masanpham`, `email`, `hoten`, `noidung`, `trangthai`, `updated_at`, `created_at`) VALUES
(4, 34, 'thanhtrungtran8888@gmail.com', 'ứdfgsdfg', 'dfg', NULL, '2020-05-12 03:56:54', '2020-05-12 03:56:54'),
(5, 33, 'thanhtrungtran@gmail.com', 'Nguyen  Van Tu', 'giày dỏm', NULL, '2020-06-01 04:31:49', '2020-06-01 04:31:49'),
(6, 33, 'thanhtrungtran8888@gmail.com', 'Nguyen  Van Tu', 'asdfghjk', NULL, '2020-07-17 21:19:48', '2020-07-17 21:19:48'),
(7, 25, 'thanhtrungtran@gmail.com', 'Nguyen  Van Tu', 'sdfghjkl;', NULL, '2020-07-20 03:32:34', '2020-07-20 03:32:34'),
(8, 25, 'admin@gmail.com', 'Nguyễn Văn A', 'dfhjkl;', NULL, '2020-07-20 03:38:24', '2020-07-20 03:38:24'),
(9, 74, 'thanhtrungtran8888@gmail.com', 'TÔ MINH VƯƠNG', 'ầ', NULL, '2021-07-27 23:18:37', '2021-07-27 23:18:37'),
(10, 33, 'tothivy090399@gmail.com', 'TÔ MINH VƯƠNG', '2225252525jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', NULL, '2021-09-16 23:58:37', '2021-09-16 23:58:37'),
(11, 33, 'tothivy090399@gmail.com', 'TÔ MINH VƯƠNG', 'jhjhj', NULL, '2021-09-16 23:58:49', '2021-09-16 23:58:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `mand` int(10) NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cart_qty` int(100) NOT NULL,
  `dongia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `prod_id`, `mand`, `prod_name`, `cart_qty`, `dongia`, `tongtien`, `hinhanh`, `size`, `updated_at`, `created_at`) VALUES
(10, 69, 5, 'NIKE JOYRIDE RUN FLYKNIT BLUE NAVY 1:1', 3, '950000', '2850000', 'nike-joyride-run-flyknit-blue-navy-1-1.jpg', 37, '2023-06-05 21:53:52', '2023-06-05 21:53:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `det_id` int(11) NOT NULL,
  `mahd` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(20) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `kichco` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`det_id`, `mahd`, `masp`, `soluong`, `tongtien`, `kichco`, `created_at`, `updated_at`) VALUES
(12, 23, 39, 1, 257242, 0, '2020-06-13 22:34:22', '2020-06-13 22:34:22'),
(13, 23, 27, 1, 450000, 0, '2020-06-13 22:34:22', '2020-06-13 22:34:22'),
(14, 23, 33, 2, 900000, 0, '2020-06-13 22:34:22', '2020-06-13 22:34:22'),
(15, 24, 27, 1, 450000, 0, '2020-06-13 22:38:03', '2020-06-13 22:38:03'),
(16, 24, 30, 1, 450000, 0, '2020-06-13 22:38:03', '2020-06-13 22:38:03'),
(17, 25, 27, 1, 450000, 0, '2020-06-14 01:03:30', '2020-06-14 01:03:30'),
(18, 30, 33, 1, 450000, 0, '2020-06-14 20:02:10', '2020-06-14 20:02:10'),
(19, 31, 33, 1, 450000, 0, '2020-06-14 20:20:31', '2020-06-14 20:20:31'),
(37, 46, 25, 1, 2400000, 0, '2020-07-20 04:05:14', '2020-07-20 04:05:14'),
(38, 46, 33, 1, 450000, 0, '2020-07-20 04:05:14', '2020-07-20 04:05:14'),
(39, 46, 27, 1, 450000, 0, '2020-07-20 04:05:14', '2020-07-20 04:05:14'),
(40, 47, 27, 1, 450000, 0, '2020-07-20 04:31:53', '2020-07-20 04:31:53'),
(41, 48, 33, 2, 900000, 0, '2020-07-20 06:41:48', '2020-07-20 06:41:48'),
(42, 49, 25, 6, 14400000, 0, '2020-07-21 00:30:00', '2020-07-21 00:30:00'),
(43, 49, 25, 1, 2400000, 0, '2020-07-21 00:30:00', '2020-07-21 00:30:00'),
(44, 49, 25, 1, 2400000, 0, '2020-07-21 00:30:00', '2020-07-21 00:30:00'),
(54, 58, 25, 1, 2400000, NULL, '2020-07-22 01:34:21', '2020-07-22 01:34:21'),
(55, 59, 28, 2, 900000, NULL, '2020-07-22 06:03:42', '2020-07-22 06:03:42'),
(56, 60, 26, 1, 999000, NULL, '2020-07-22 06:06:42', '2020-07-22 06:06:42'),
(57, 61, 26, 1, 999000, NULL, '2020-07-22 06:07:42', '2020-07-22 06:07:42'),
(58, 62, 26, 1, 999000, NULL, '2020-07-22 06:13:02', '2020-07-22 06:13:02'),
(64, 67, 25, 2, 4800000, NULL, '2020-07-22 23:41:27', '2020-07-22 23:41:27'),
(65, 70, 30, 1, 450000, NULL, '2020-07-22 23:51:43', '2020-07-22 23:51:43'),
(66, 71, 25, 1, 2400000, NULL, '2020-07-23 00:22:20', '2020-07-23 00:22:20'),
(67, 72, 34, 1, 1399000, NULL, '2020-07-23 00:27:35', '2020-07-23 00:27:35'),
(68, 72, 30, 1, 450000, NULL, '2020-07-23 00:34:57', '2020-07-23 00:34:57'),
(69, 73, 33, 3, 1350000, NULL, '2020-07-23 08:00:24', '2020-07-23 08:00:24'),
(70, 73, 34, 3, 4197000, NULL, '2020-07-23 08:00:24', '2020-07-23 08:00:24'),
(71, 73, 29, 1, 399000, NULL, '2020-07-23 08:00:24', '2020-07-23 08:00:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `mactpn` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `bil_id` int(10) UNSIGNED NOT NULL,
  `manguoidung` int(10) NOT NULL,
  `tennguoinhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodt` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` int(20) NOT NULL,
  `hinhthucthanhtoan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaydat` date DEFAULT NULL,
  `trangthai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`bil_id`, `manguoidung`, `tennguoinhan`, `sodt`, `diachi`, `tongtien`, `hinhthucthanhtoan`, `ngaydat`, `trangthai`, `created_at`, `updated_at`) VALUES
(23, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 1607242, 'Thanh toán khi nhận hàng', '2020-06-14', '1', '2020-06-13 22:34:22', '2020-06-13 22:34:22'),
(24, 9999, 'Nguyễn Văn A', 335234285, '80 tô hiệu', 900000, 'Thanh toán khi nhận hàng', '2020-06-14', '1', '2020-06-13 22:38:03', '2020-06-13 22:38:03'),
(59, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 900000, 'Thanh toán khi nhận hàng', '2020-07-22', '1', '2020-07-22 06:03:42', '2020-07-22 06:03:42'),
(60, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 999000, 'Thanh toán khi nhận hàng', '2020-07-22', '5', '2020-07-22 06:06:42', '2020-07-22 06:06:42'),
(61, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 999000, 'Thanh toán khi nhận hàng', '2020-07-22', '1', '2020-07-22 06:07:42', '2020-07-22 06:07:42'),
(62, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 999000, 'Thanh toán khi nhận hàng', '2020-07-22', '5', '2020-07-22 06:13:02', '2020-07-22 06:13:02'),
(63, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 399000, 'Thanh toán khi nhận hàng', '2020-07-22', '5', '2020-07-22 06:15:05', '2020-07-22 06:15:05'),
(65, 10000, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 899000, 'Thanh toán khi nhận hàng', '2020-07-23', '2', '2020-07-22 23:26:11', '2020-07-22 23:26:11'),
(66, 5, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 450000, 'Thanh toán khi nhận hàng', '2020-07-23', '1', '2020-07-22 23:34:53', '2020-07-22 23:34:53'),
(67, 5, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 4800000, 'Thanh toán khi nhận hàng', '2020-07-23', '1', '2020-07-22 23:41:27', '2020-07-22 23:41:27'),
(70, 5, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 450000, 'Thanh toán khi nhận hàng', '2020-07-23', '5', '2020-07-22 23:51:43', '2020-07-22 23:51:43'),
(71, 5, 'Trần thanh trung', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', 2400000, 'Thanh toán khi nhận hàng', '2020-07-23', '5', '2020-07-23 00:22:20', '2020-07-23 00:22:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichco`
--

CREATE TABLE `kichco` (
  `id` int(20) NOT NULL,
  `sokichco` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kichco`
--

INSERT INTO `kichco` (`id`, `sokichco`) VALUES
(1, 37),
(2, 38),
(3, 39),
(4, 40),
(5, 41),
(6, 42),
(7, 43),
(8, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichcosp`
--

CREATE TABLE `kichcosp` (
  `sizpr_id` int(20) NOT NULL,
  `makc` int(20) NOT NULL,
  `masp` int(20) NOT NULL,
  `soluong` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kichcosp`
--

INSERT INTO `kichcosp` (`sizpr_id`, `makc`, `masp`, `soluong`) VALUES
(1, 37, 42, 37),
(2, 38, 42, 38),
(3, 39, 42, 39),
(4, 40, 42, 40),
(5, 41, 42, 41),
(6, 42, 42, 42),
(7, 43, 42, 43),
(8, 44, 42, 44),
(9, 37, 43, 66),
(10, 38, 43, 65),
(11, 39, 43, 44),
(12, 40, 43, 34),
(13, 41, 43, 23),
(14, 42, 43, 87),
(15, 43, 43, 76),
(16, 44, 43, 65),
(17, 37, 44, 22),
(18, 38, 44, 24),
(19, 37, 45, 22),
(20, 39, 44, 42),
(21, 38, 45, 24),
(22, 40, 44, 248),
(23, 39, 45, 42),
(24, 41, 44, 424),
(25, 40, 45, 248),
(26, 42, 44, 42),
(27, 41, 45, 424),
(28, 43, 44, 442),
(29, 42, 45, 42),
(30, 44, 44, 42),
(31, 43, 45, 442),
(32, 44, 45, 42),
(33, 37, 46, 960),
(34, 38, 46, 142),
(35, 39, 46, 184),
(36, 40, 46, 888),
(37, 41, 46, 888),
(38, 42, 46, 888),
(39, 43, 46, 888),
(40, 44, 46, 888),
(41, 37, 40, 14),
(42, 38, 40, 16),
(43, 39, 40, 15),
(44, 40, 40, 13),
(45, 41, 40, 12),
(46, 42, 40, 13),
(47, 43, 40, 12),
(48, 44, 40, 13),
(49, 37, 41, 23),
(50, 38, 41, 45),
(51, 39, 41, 11),
(52, 40, 41, 11),
(53, 41, 41, 11),
(54, 42, 41, 11),
(55, 43, 41, 12),
(56, 44, 41, 11),
(57, 37, 40, 20),
(58, 38, 40, 20),
(59, 39, 40, 20),
(60, 40, 40, 20),
(61, 41, 40, 20),
(62, 42, 40, 20),
(63, 43, 40, 20),
(64, 44, 40, 20),
(65, 37, 41, 20),
(66, 38, 41, 20),
(67, 39, 41, 20),
(68, 40, 41, 20),
(69, 41, 41, 20),
(70, 42, 41, 20),
(71, 43, 41, 20),
(72, 44, 41, 20),
(73, 37, 42, 10),
(74, 38, 42, 10),
(75, 39, 42, 10),
(76, 40, 42, 10),
(77, 41, 42, 10),
(78, 42, 42, 10),
(79, 43, 42, 10),
(80, 44, 42, 10),
(81, 37, 43, 11),
(82, 38, 43, 10),
(83, 39, 43, 10),
(84, 40, 43, 11),
(85, 41, 43, 10),
(86, 42, 43, 10),
(87, 43, 43, 10),
(88, 44, 43, 10),
(89, 37, 42, 15),
(90, 38, 42, 15),
(91, 39, 42, 15),
(92, 40, 42, 15),
(93, 41, 42, 15),
(94, 42, 42, 15),
(95, 43, 42, 15),
(96, 44, 42, 15),
(97, 37, 43, 15),
(98, 38, 43, 15),
(99, 39, 43, 15),
(100, 40, 43, 15),
(101, 41, 43, 15),
(102, 42, 43, 15),
(103, 43, 43, 15),
(104, 44, 43, 15),
(105, 37, 44, 15),
(106, 38, 44, 15),
(107, 39, 44, 15),
(108, 40, 44, 15),
(109, 41, 44, 15),
(110, 42, 44, 15),
(111, 43, 44, 15),
(112, 44, 44, 15),
(113, 37, 45, 15),
(114, 38, 45, 15),
(115, 39, 45, 15),
(116, 40, 45, 15),
(117, 41, 45, 15),
(118, 42, 45, 15),
(119, 43, 45, 15),
(120, 44, 45, 15),
(121, 37, 46, 15),
(122, 38, 46, 15),
(123, 39, 46, 15),
(124, 40, 46, 15),
(125, 41, 46, 15),
(126, 42, 46, 15),
(127, 43, 46, 15),
(128, 44, 46, 15),
(129, 37, 47, 15),
(130, 38, 47, 15),
(131, 39, 47, 15),
(132, 40, 47, 15),
(133, 41, 47, 15),
(134, 42, 47, 15),
(135, 43, 47, 15),
(136, 44, 47, 15),
(137, 37, 48, 15),
(138, 38, 48, 15),
(139, 39, 48, 15),
(140, 40, 48, 15),
(141, 41, 48, 15),
(142, 42, 48, 15),
(143, 43, 48, 15),
(144, 44, 48, 15),
(145, 37, 49, 15),
(146, 38, 49, 15),
(147, 39, 49, 15),
(148, 40, 49, 15),
(149, 41, 49, 15),
(150, 42, 49, 15),
(151, 43, 49, 15),
(152, 44, 49, 15),
(153, 37, 50, 15),
(154, 38, 50, 15),
(155, 39, 50, 15),
(156, 40, 50, 15),
(157, 41, 50, 15),
(158, 42, 50, 15),
(159, 43, 50, 15),
(160, 44, 50, 15),
(161, 37, 51, 15),
(162, 38, 51, 15),
(163, 39, 51, 15),
(164, 40, 51, 15),
(165, 41, 51, 15),
(166, 42, 51, 15),
(167, 43, 51, 15),
(168, 44, 51, 15),
(169, 37, 52, 15),
(170, 38, 52, 15),
(171, 39, 52, 15),
(172, 40, 52, 15),
(173, 41, 52, 15),
(174, 42, 52, 15),
(175, 43, 52, 15),
(176, 44, 52, 15),
(177, 37, 53, 15),
(178, 38, 53, 15),
(179, 39, 53, 15),
(180, 40, 53, 15),
(181, 41, 53, 15),
(182, 42, 53, 15),
(183, 43, 53, 15),
(184, 44, 53, 15),
(185, 37, 54, 15),
(186, 38, 54, 15),
(187, 39, 54, 15),
(188, 40, 54, 15),
(189, 41, 54, 15),
(190, 42, 54, 15),
(191, 43, 54, 15),
(192, 44, 54, 15),
(193, 37, 55, 15),
(194, 38, 55, 15),
(195, 39, 55, 15),
(196, 40, 55, 15),
(197, 41, 55, 15),
(198, 42, 55, 15),
(199, 43, 55, 15),
(200, 44, 55, 15),
(201, 37, 56, 15),
(202, 38, 56, 15),
(203, 39, 56, 15),
(204, 40, 56, 15),
(205, 41, 56, 15),
(206, 42, 56, 15),
(207, 43, 56, 15),
(208, 44, 56, 15),
(209, 37, 57, 15),
(210, 38, 57, 15),
(211, 39, 57, 15),
(212, 40, 57, 15),
(213, 41, 57, 15),
(214, 42, 57, 15),
(215, 43, 57, 15),
(216, 44, 57, 15),
(217, 37, 58, 15),
(218, 38, 58, 15),
(219, 39, 58, 15),
(220, 40, 58, 15),
(221, 41, 58, 15),
(222, 42, 58, 15),
(223, 43, 58, 15),
(224, 44, 58, 15),
(225, 37, 59, 15),
(226, 38, 59, 15),
(227, 39, 59, 15),
(228, 40, 59, 15),
(229, 41, 59, 15),
(230, 42, 59, 15),
(231, 43, 59, 15),
(232, 44, 59, 15),
(233, 37, 60, 15),
(234, 38, 60, 15),
(235, 39, 60, 15),
(236, 40, 60, 15),
(237, 41, 60, 15),
(238, 42, 60, 15),
(239, 43, 60, 15),
(240, 44, 60, 15),
(241, 37, 61, 15),
(242, 38, 61, 15),
(243, 39, 61, 15),
(244, 40, 61, 15),
(245, 41, 61, 15),
(246, 42, 61, 15),
(247, 43, 61, 15),
(248, 44, 61, 15),
(249, 37, 62, 15),
(250, 38, 62, 15),
(251, 39, 62, 15),
(252, 40, 62, 15),
(253, 41, 62, 15),
(254, 42, 62, 15),
(255, 43, 62, 15),
(256, 44, 62, 15),
(257, 37, 63, 15),
(258, 38, 63, 15),
(259, 39, 63, 15),
(260, 40, 63, 15),
(261, 41, 63, 15),
(262, 42, 63, 15),
(263, 43, 63, 15),
(264, 44, 63, 15),
(265, 37, 64, 15),
(266, 38, 64, 15),
(267, 39, 64, 15),
(268, 40, 64, 15),
(269, 41, 64, 15),
(270, 42, 64, 15),
(271, 43, 64, 15),
(272, 44, 64, 15),
(273, 37, 65, 15),
(274, 38, 65, 15),
(275, 39, 65, 15),
(276, 40, 65, 15),
(277, 41, 65, 15),
(278, 42, 65, 15),
(279, 43, 65, 15),
(280, 44, 65, 15),
(281, 37, 66, 15),
(282, 38, 66, 15),
(283, 39, 66, 15),
(284, 40, 66, 15),
(285, 41, 66, 15),
(286, 42, 66, 15),
(287, 43, 66, 15),
(288, 44, 66, 15),
(289, 37, 67, 15),
(290, 38, 67, 15),
(291, 39, 67, 15),
(292, 40, 67, 15),
(293, 41, 67, 15),
(294, 42, 67, 15),
(295, 43, 67, 15),
(296, 44, 67, 15),
(297, 37, 68, 15),
(298, 38, 68, 15),
(299, 39, 68, 15),
(300, 40, 68, 15),
(301, 41, 68, 15),
(302, 42, 68, 15),
(303, 43, 68, 15),
(304, 44, 68, 15),
(305, 37, 69, 15),
(306, 38, 69, 15),
(307, 39, 69, 15),
(308, 40, 69, 15),
(309, 41, 69, 15),
(310, 42, 69, 15),
(311, 43, 69, 15),
(312, 44, 69, 15),
(313, 37, 70, 15),
(314, 38, 70, 15),
(315, 39, 70, 15),
(316, 40, 70, 15),
(317, 41, 70, 15),
(318, 42, 70, 15),
(319, 43, 70, 15),
(320, 44, 70, 15),
(321, 37, 71, 15),
(322, 38, 71, 15),
(323, 39, 71, 15),
(324, 40, 71, 15),
(325, 41, 71, 15),
(326, 42, 71, 15),
(327, 43, 71, 15),
(328, 44, 71, 15),
(329, 37, 72, 15),
(330, 38, 72, 15),
(331, 39, 72, 15),
(332, 40, 72, 15),
(333, 41, 72, 15),
(334, 42, 72, 15),
(335, 43, 72, 15),
(336, 44, 72, 15),
(337, 37, 73, 15),
(338, 38, 73, 15),
(339, 39, 73, 15),
(340, 40, 73, 15),
(341, 41, 73, 15),
(342, 42, 73, 15),
(343, 43, 73, 15),
(344, 44, 73, 15),
(345, 37, 74, 15),
(346, 38, 74, 15),
(347, 39, 74, 15),
(348, 40, 74, 15),
(349, 41, 74, 15),
(350, 42, 74, 15),
(351, 43, 74, 15),
(352, 44, 74, 15),
(353, 37, 75, 15),
(354, 38, 75, 15),
(355, 39, 75, 15),
(356, 40, 75, 15),
(357, 41, 75, 15),
(358, 42, 75, 15),
(359, 43, 75, 15),
(360, 44, 75, 15),
(361, 37, 76, 15),
(362, 38, 76, 15),
(363, 39, 76, 15),
(364, 40, 76, 15),
(365, 41, 76, 15),
(366, 42, 76, 15),
(367, 43, 76, 15),
(368, 44, 76, 15),
(369, 37, 77, 15),
(370, 38, 77, 15),
(371, 39, 77, 15),
(372, 40, 77, 15),
(373, 41, 77, 15),
(374, 42, 77, 15),
(375, 43, 77, 15),
(376, 44, 77, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`cate_id`, `tenloai`, `cate_slug`, `created_at`, `updated_at`, `img`) VALUES
(1, 'GUCCI', 'gucci', NULL, NULL, '4.png'),
(2, 'ADIDAS', 'adidas', NULL, NULL, '5.png'),
(3, 'CONVERSE', 'converse', '2020-01-13 23:15:01', '2020-01-13 23:15:01', '6.png'),
(4, 'VANS', 'vans', '2020-01-13 23:15:22', '2020-01-13 23:15:22', '7.png'),
(5, 'BALENCIAGA', 'balenciaga', '2020-01-13 23:26:51', '2020-01-13 23:26:51', '8.png'),
(6, 'NIKE', 'nike', '2020-01-13 23:27:07', '2020-01-13 23:27:07', '9.png'),
(7, 'FILA', 'fila', '2020-01-20 21:23:08', '2020-01-20 21:23:08', '10.png'),
(8, 'PUMA', 'puma', '2020-03-04 02:10:10', '2020-03-04 02:10:10', '11.svg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2020_01_13_043341_vp_user', 1),
('2020_01_14_042907_vp_categories', 2),
('2020_05_12_072005_vp_DetailBill', 3),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2020_01_13_043341_vp_user', 1),
('2020_01_14_042907_vp_categories', 2),
('2020_05_12_072005_vp_DetailBill', 3),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2020_01_13_043341_vp_user', 1),
('2020_01_14_042907_vp_categories', 2),
('2020_05_12_072005_vp_DetailBill', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` int(11) NOT NULL,
  `tenncc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `mapn` int(11) NOT NULL,
  `mancc` int(11) NOT NULL,
  `manv` int(10) NOT NULL,
  `ngaynhap` date NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `maloaisp` int(11) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dongia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baohanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khuyenmai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chitiet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soluongcon` int(11) DEFAULT NULL,
  `soluongban` int(11) DEFAULT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_status` int(4) DEFAULT NULL,
  `prod_featured` int(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`prod_id`, `maloaisp`, `tensanpham`, `prod_slug`, `dongia`, `hinhanh`, `baohanh`, `khuyenmai`, `chitiet`, `soluongcon`, `soluongban`, `prod_condition`, `prod_accessories`, `prod_status`, `prod_featured`, `created_at`, `updated_at`) VALUES
(25, 1, 'GIÀY GUCCI RHYTON LEATHER LOGO COLOR', 'giay-gucci-rhyton-leather-logo-color', '2400000', 'Giay-Gucci-Ryhton-Leather-REP-300x300.jpg', '💯 Bảo Hành 12 Tháng', NULL, '<p><strong>Gi&agrave;y Gucci Rhyton Logo Leather Sneaker</strong>&nbsp;sử dụng mặt đế được cấu tạo đặc biệt, mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang cũng như chống trơn trượt l&agrave; một trong những ưu điểm m&agrave; d&ograve;ng gi&agrave;y Gucci cho đến hiện tại vẫn đạt được.</p>', 7, 4, 'Mới 100%', '.', 1, 1, NULL, '2020-07-23 00:22:20'),
(26, 1, 'GIÀY GUCCI SNEAKER RẮN ĐÍNH ĐÁ', 'giay-gucci-sneaker-ran-dinh-da', '999000', 'Giay-Gucci-Ran-Dinh-Da-Replica-1.1-300x300.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>GI&Agrave;Y GUCCI SNEAKER RẮN Đ&Iacute;NH Đ&Aacute; M&Agrave;U TRẮNG TH&Ecirc;U HOA VĂN. HỌA TIẾT RẮN&nbsp;ĐANG L&Agrave; HỌA TIẾT ĐƯỢC SẮM NHIỀU NHẤT BỞI SỰ ĐƠN GIẢN M&Agrave; TINH TẾ, PHONG&nbsp;C&Aacute;CH. GUCCI THỰC SỰ Đ&Atilde; TRỞ TH&Agrave;NH XU HƯỚNG M&Agrave; BẠN KH&Ocirc;NG THỂ L&Agrave;M LƠ ĐƯỢC.</p>', 17, 19, 'Mới 100%', '.', 1, 0, NULL, '2020-07-22 06:13:02'),
(27, 1, 'GIÀY GUCCI SNEAKER RHYTON HÌNH DÂU', 'giay-gucci-sneaker-rhyton-hinh-dau', '450000', 'Giay-gucci-rhyton-DAU-300x300.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Gi&agrave;y Gucci Sneaker Rhyton H&igrave;nh D&acirc;u&nbsp;</strong>sử dụng mặt đế được cấu tạo đặc biệt, mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang cũng như chống trơn trượt l&agrave; một trong những ưu điểm m&agrave; d&ograve;ng gi&agrave;y Gucci cho đến hiện tại vẫn đạt được.</p>\r\n\r\n<p>Phần b&ecirc;n trong&nbsp;<a href=\"https://shopgiaythethaogiare.com/san-pham/giay-gucci-sneaker-rhyton-hinh-dau/\">Gi&agrave;y Gucci Sneaker Rhyton H&igrave;nh D&acirc;u</a><a href=\"https://shopgiaythethaogiare.com/san-pham/giay-gucci-sneaker-con-ong/\">&nbsp;</a>sử dụng chất liệu vải tho&aacute;ng kh&iacute; kh&ocirc;ng g&acirc;y ứa nước qu&aacute; l&acirc;u, phần ngo&agrave;i được sử dụng chất liệu chống thấm nước. Tổng thể thiết kế đạt đến độ ho&agrave;n mỹ về chất lượng cũng như đạt được t&iacute;nh thẫm mỹ cao.</p>', 7, 2, 'Mới 100%', '.', 1, 1, NULL, '2020-07-22 23:34:53'),
(28, 1, 'GIÀY GUCCI SNEAKER RHYTON GOLD', 'giay-gucci-sneaker-rhyton-gold', '450000', 'Giay-gucci-rhyton-gold-300x300.jpg', '💯 Bảo Hành 12 Tháng', NULL, '<p>&quot;Mới 100%&quot;</p>', 17, 3, 'Mới 100%', '.', 1, 0, NULL, '2020-07-22 23:26:11'),
(29, 1, 'GIÀY SNEAKERS GUCCI RYHTON KEM', 'giay-sneakers-gucci-ryhton-kem', '399000', 'Giay-gucci-rhyton-kem-tron-300x300.jpg', '💯 Bảo Hành 12 Tháng', NULL, '<p>&quot;Mới 100%&quot;</p>', 16, 22, 'Mới 100%', '.', 1, 0, NULL, '2020-07-23 08:00:24'),
(30, 1, 'GIÀY GUCCI SNEAKER RHYTON LOGO 7 MÀU', 'giay-gucci-sneaker-rhyton-logo-7-mau', '450000', 'Giay-gucci-rhyton-KIM-TUYEN-300x300.jpg', '💯 Bảo Hành 12 Tháng', NULL, '<p>&quot;Mới 100%&quot;</p>', 17, 2, 'Mới 100%', '.', 1, 0, NULL, '2020-07-22 23:51:43'),
(31, 1, 'GIÀY GUCCI SNEAKER RHYTON NY', 'giay-gucci-sneaker-rhyton-ny', '449000', 'Giay-Gucci-Rhyton-NY-300x300.jpg', '💯 Bảo Hành 12 Tháng', NULL, '<p><strong>Gi&agrave;y Gucci Sneaker Rhyton NY&nbsp;</strong>sử dụng mặt đế được cấu tạo đặc biệt, mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang cũng như chống trơn trượt l&agrave; một trong những ưu điểm m&agrave; d&ograve;ng gi&agrave;y Gucci cho đến hiện tại vẫn đạt được.</p>\r\n\r\n<p>Phần b&ecirc;n trong&nbsp;<strong>Gi&agrave;y Gucci Sneaker Rhyton NY</strong>&nbsp;sử dụng chất liệu vải tho&aacute;ng kh&iacute; kh&ocirc;ng g&acirc;y ứa nước qu&aacute; l&acirc;u, phần ngo&agrave;i được sử dụng chất liệu chống thấm nước. Tổng thể thiết kế đạt đến độ ho&agrave;n mỹ về chất lượng cũng như đạt được t&iacute;nh thẫm mỹ cao.</p>', 16, 3, 'Mới 100%', '.', 1, 0, NULL, '2020-07-22 23:26:11'),
(32, 1, 'GIÀY GUCCI SNEAKER RHYTON HÌNH RẮN', 'giay-gucci-sneaker-rhyton-hinh-ran', '450000', 'Giay-gucci-rhyton-Ran-300x300.jpg', '💯 Bảo Hành 12 Tháng', NULL, '<p><strong>Gi&agrave;y Gucci Sneaker Rhyton H&igrave;nh Rắn&nbsp;</strong>sử dụng mặt đế được cấu tạo đặc biệt, mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang cũng như chống trơn trượt l&agrave; một trong những ưu điểm m&agrave; d&ograve;ng gi&agrave;y Gucci cho đến hiện tại vẫn đạt được.</p>\r\n\r\n<p>Phần b&ecirc;n trong&nbsp;<a href=\"https://shopgiaythethaogiare.com/san-pham/giay-gucci-sneaker-rhyton-hinh-ran/\">Gi&agrave;y Gucci Sneaker Rhyton H&igrave;nh Rắn</a><a href=\"https://shopgiaythethaogiare.com/san-pham/giay-gucci-sneaker-con-ong/\">&nbsp;</a>sử dụng chất liệu vải tho&aacute;ng kh&iacute; kh&ocirc;ng g&acirc;y ứa nước qu&aacute; l&acirc;u, phần ngo&agrave;i được sử dụng chất liệu chống thấm nước. Tổng thể thiết kế đạt đến độ ho&agrave;n mỹ về chất lượng cũng như đạt được t&iacute;nh thẫm mỹ cao.</p>', 19, 1, 'Mới 100%', '.', 1, 0, NULL, '2020-07-21 00:53:08'),
(33, 1, 'GIÀY SNEAKERS GUCCI RHYTON TRÁI TIM', 'giay-sneakers-gucci-rhyton-trai-tim', '450000', 'Giay-gucci-rhyton-TIM-300x300.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><a href=\"https://shopgiaythethaogiare.com/san-pham/giay-gucci-sneaker-rhyton-logo-7-mau/\"><strong>Gi&agrave;y Sneakers Gucci Rhyton Tr&aacute;i Tim</strong>&nbsp;</a>l&agrave; một trong những bộ sưu tập được ưu &aacute;i của Gucci khi mang lại c&aacute;i nh&igrave;n mới mẻ cho người d&ugrave;ng trong những c&aacute;ch phối nổi tiếng của thương hiệu Gucci. G&oacute;t gi&agrave;y sử dụng loại vải tốt, c&oacute; lớp đệm v&ocirc; c&ugrave;ng thoải m&aacute;i.</p>\r\n\r\n<p><strong>Gi&agrave;y Sneakers Gucci Rhyton Tr&aacute;i Tim&nbsp;</strong>sử dụng mặt đế được cấu tạo đặc biệt, mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang cũng như chống trơn trượt l&agrave; một trong những ưu điểm m&agrave; d&ograve;ng gi&agrave;y Gucci cho đến hiện tại vẫn đạt được.</p>\r\n\r\n<p>Phần b&ecirc;n trong&nbsp;<strong>Gi&agrave;y Sneakers Gucci Rhyton Tr&aacute;i Tim</strong><a href=\"https://shopgiaythethaogiare.com/san-pham/giay-gucci-sneaker-con-ong/\">&nbsp;</a>sử dụng chất liệu vải tho&aacute;ng kh&iacute; kh&ocirc;ng g&acirc;y ứa nước qu&aacute; l&acirc;u, phần ngo&agrave;i được sử dụng chất liệu chống thấm nước. Tổng thể thiết kế đạt đến độ ho&agrave;n mỹ về chất lượng cũng như đạt được t&iacute;nh thẫm mỹ cao.</p>', -9, 5, 'Mới 100%', '.', 1, 1, NULL, '2020-07-23 08:00:24'),
(34, 1, 'GUCCI RHYTON MOUTH PRINT SNEAKERS', 'gucci-rhyton-mouth-print-sneakers', '1399000', 'Gucci-Rhyton-Hinh-Moi-Rep-300x300.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong><a href=\"http://anchuongshoes.com/gucci-rhyton-mouth-print-sneakers\">Gucci Rhyton Mouth Print Sneakers</a>&nbsp;</strong>l&agrave; một trong những bộ sưu tập được ưu &aacute;i của Gucci khi mang lại c&aacute;i nh&igrave;n mới mẻ cho người d&ugrave;ng trong những c&aacute;ch phối nổi tiếng của thương hiệu Gucci. G&oacute;t gi&agrave;y sử dụng loại vải tốt, c&oacute; lớp đệm v&ocirc; c&ugrave;ng thoải m&aacute;i. Th&ecirc;m v&agrave;o đ&oacute; với những vệt bẩn xen kẽ l&agrave;m t&ocirc;n l&ecirc;n vẻ chất của đ&ocirc;i&nbsp;<a href=\"http://anchuongshoes.com/gucci-rhyton-mouth-print-sneakers\"><strong>Gucci Rhyton Mouth Print&nbsp;</strong></a><strong>Sneakers.</strong></p>\r\n\r\n<p><strong><a href=\"http://anchuongshoes.com/gucci-rhyton-mouth-print-sneakers\">Gucci Rhyton Mouth Print Sneakers</a>&nbsp;</strong>sử dụng mặt đế được cấu tạo đặc biệt, mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang cũng như chống trơn trượt l&agrave; một trong những ưu điểm m&agrave; d&ograve;ng gi&agrave;y Gucci cho đến hiện tại vẫn đạt được.</p>', 16, 4, 'Mới 100%', '.', 1, 0, NULL, '2020-07-23 08:00:24'),
(39, 1, 'Giay-Adidas-AlphaBoost-Allblack', 'giay-adidas-alphaboost-allblack', '257242', 'Giay-Adidas-AlphaBoost-Allblack.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>dfghjkl</p>', 6, 1, 'Mới 100%', '.', 1, 2, NULL, '2020-07-21 02:08:51'),
(40, 2, 'ADIDAS YEEZY 350 V2 \'FLAX\' VÀNG NAM NỮ 1:1', 'adidas-yeezy-350-v2-flax-vang-nam-nu-11', '1100000', 'adidas-yeezy-350-v2-flax-nam-nu-1-1.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Adidas vốn được biết đến l&agrave; thương hiệu gi&agrave;y thể thao cao cấp tr&ecirc;n thế giới. Thương hiệu n&agrave;y in đậm dấu ấn trong l&ograve;ng người ti&ecirc;u d&ugrave;ng với c&aacute;c sản phẩm đ&igrave;nh đ&aacute;m, trở th&agrave;nh hot trend một thời như: gi&agrave;y adidas nữ Stan Smith, Adidas SuperStar, Adidas NMD R1,... V&agrave; mẫu gi&agrave;y Adidas&nbsp;<strong>ADIDAS YEEZY 350 V2 &#39;FLAX&#39; V&Agrave;NG&nbsp;&rdquo;</strong>&nbsp;l&agrave; sản phẩm m&agrave; c&aacute;c t&iacute;n đồ &ldquo;m&ecirc; gi&agrave;y&rdquo; kh&ocirc;ng thể bỏ lỡ.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 71px; left: 404.444px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/icon/16.png\" /></div>', 20, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(41, 2, 'ADIDAS YEEZY 700 V3 VÀNG KEM NAM NỮ', 'adidas-yeezy-700-v3-vang-kem-nam-nu', '950000', 'adidas-yeezy-700-v3-vang-kem-nam-nu.jpg', '💯 Bảo Hành 1 Tháng', 'Khuyến mãi một đôi tất', '<p>Adidas vốn được biết đến l&agrave; thương hiệu gi&agrave;y thể thao cao cấp tr&ecirc;n thế giới. Thương hiệu n&agrave;y in đậm dấu ấn trong l&ograve;ng người ti&ecirc;u d&ugrave;ng với c&aacute;c sản phẩm đ&igrave;nh đ&aacute;m, trở th&agrave;nh hot trend một thời như: gi&agrave;y adidas nữ Stan Smith, Adidas SuperStar, Adidas NMD R1,... V&agrave; mẫu gi&agrave;y Adidas&nbsp;<strong>ADIDAS YEEZY 700 V3 V&Agrave;NG KEM</strong> &nbsp;l&agrave; sản phẩm m&agrave; c&aacute;c t&iacute;n đồ &ldquo;m&ecirc; gi&agrave;y&rdquo; kh&ocirc;ng thể bỏ lỡ.</p>', 20, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(42, 2, 'ADIDAS YEEZY BOOST 350 V2 STATIC BLACK 3M \'REFLECTIVE\' NAM, NỮ', 'adidas-yeezy-boost-350-v2-static-black-3m-reflective-nam-nu', '1400000', 'adidas-yeezy-boost-350-v2-static-black-3m-reflective-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Nếu bạn hỏi điều g&igrave; l&agrave;m n&ecirc;n sự kh&aacute;c biệt giữa c&aacute;c đ&ocirc;i gi&agrave;y sneaker đến từ thương hiệu Adidas v&agrave; những thương hiệu kh&aacute;c tr&ecirc;n thị trường th&igrave; h&atilde;y nh&igrave;n v&agrave;o đ&ocirc;i&nbsp;<strong>Adidas Yeezy Boost 350 V2 Static Black</strong>&nbsp;sẽ thấy ngay c&acirc;u trả lời. Kh&ocirc;ng chỉ mang đến những thiết kế ấn tượng m&agrave; chất lượng gi&agrave;y Adidas c&ograve;n v&ocirc; c&ugrave;ng tuyệt vời.<br />\r\n<br />\r\n<em>Với đ&ocirc;i&nbsp;<strong>Yeezy 350 V2 Static Black</strong>&nbsp;bạn ho&agrave;n to&agrave;n c&oacute; thể thể hiện được &quot;CHẤT RI&Ecirc;NG&quot; của m&igrave;nh v&agrave; &quot;NỔI BẦN BẬT&quot; trước đ&aacute;m đ&ocirc;ng.</em></p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(43, 2, 'ADIDAS YEEZY 350 V2 STATIC NAM, NỮ REP 1:1 FULL PHẢN QUANG', 'adidas-yeezy-350-v2-static-nam-nu-rep-11-full-phan-quang', '1400000', 'adidas-yeezy-boost-350-v2-static-nam-nu-rep-1-1-full-phan-quang.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Gi&agrave;y Yeezy 350 V2 Static Full Phản Quang được đ&aacute;nh gi&aacute; l&agrave; một trong những mẫu gi&agrave;y HOT nhất trong năm nay. Vậy điều g&igrave; đ&atilde; l&agrave;m n&ecirc;n &ldquo;mị lực&rdquo; cho&nbsp;<strong>Yeezy 350 V2 Static Full Phản Quang</strong>? H&atilde;y c&ugrave;ng&nbsp;<strong>Giaygiare.vn</strong>&nbsp;đi t&igrave;m c&acirc;u trả lời qua c&aacute;c th&ocirc;ng tin được chọn lọc dưới đ&acirc;y!</p>\r\n\r\n<p>Sau một thời gian d&agrave;i im hơi, lặng tiếng chuy&ecirc;n t&acirc;m v&agrave;o c&aacute;c mẫu Yeezy Boost 700 v&agrave; Yeezy 500 th&igrave; gần đ&acirc;y&nbsp;<strong>Adidas</strong>&nbsp;c&ugrave;ng&nbsp;<strong>Kanye West&nbsp;</strong>(nh&agrave; s&aacute;ng lập thương hiệu Yeezy)<strong>&nbsp;</strong>đ&atilde; cho ra mắt một phi&ecirc;n bản ho&agrave;n to&agrave;n mới nằm trong&nbsp;<a href=\"https://giaygiare.vn/adidas-yeezy-350\" target=\"_blank\">Yeezy 350 V2</a>&nbsp;với t&ocirc;ng m&agrave;u trắng chủ đạo đầy quyến rũ mang t&ecirc;n&nbsp;<strong>Yeezy Boost 350 V2 Static</strong>&nbsp;v&agrave; n&oacute; đ&atilde; &ldquo;&ocirc;m trọn&rdquo; tất cả sự h&agrave;i l&ograve;ng của c&aacute;c t&iacute;n đồ gi&agrave;y sneaker tr&ecirc;n to&agrave;n thế giới.</p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(44, 2, 'ADIDAS YEEZY 350 V2 \'GLOW IN THE DARK\' DẠ QUANG NAM NỮ 1:1', 'adidas-yeezy-350-v2-glow-in-the-dark-da-quang-nam-nu-11', '1000000', 'adidas-yeezy-350-v2-glow-in-the-dark-da-quang-nam-nu-1-1.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Adidas vốn được biết đến l&agrave; thương hiệu gi&agrave;y thể thao cao cấp tr&ecirc;n thế giới. Thương hiệu n&agrave;y in đậm dấu ấn trong l&ograve;ng người ti&ecirc;u d&ugrave;ng với c&aacute;c sản phẩm đ&igrave;nh đ&aacute;m, trở th&agrave;nh hot trend một thời như: gi&agrave;y adidas nữ Stan Smith, Adidas SuperStar, Adidas NMD R1,... V&agrave; mẫu gi&agrave;y Adidas&nbsp;<strong>Yeezy 350 V2 &ldquo;Glow In The Dark&rdquo;</strong>&nbsp;dạ quang l&agrave; sản phẩm m&agrave; c&aacute;c t&iacute;n đồ &ldquo;m&ecirc; gi&agrave;y&rdquo; kh&ocirc;ng thể bỏ lỡ.</p>', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(45, 2, 'ADIDAS YEEZY BOOST 350 V2 BLACK \'NON-REFLECTIVE\' NAM, NỮ', 'adidas-yeezy-boost-350-v2-black-non-reflective-nam-nu', '850000', 'adidas-yeezy-boost-350-v2-black-non-reflective-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Adidas vốn được biết đến l&agrave; thương hiệu gi&agrave;y thể thao cao cấp tr&ecirc;n thế giới. Thương hiệu n&agrave;y in đậm dấu ấn trong l&ograve;ng người ti&ecirc;u d&ugrave;ng với c&aacute;c sản phẩm đ&igrave;nh đ&aacute;m, trở th&agrave;nh hot trend một thời như: gi&agrave;y adidas nữ Stan Smith, Adidas SuperStar, Adidas NMD R1,... V&agrave; mẫu gi&agrave;y Adidas&nbsp;<strong>ADIDAS YEEZY BOOST 350 V2 BLACK &#39;NON-REFLECTIVE&#39;</strong>&nbsp;dạ quang l&agrave; sản phẩm m&agrave; c&aacute;c t&iacute;n đồ &ldquo;m&ecirc; gi&agrave;y&rdquo; kh&ocirc;ng thể bỏ lỡ.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 64px; left: 603.078px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/icon/16.png\" /></div>', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(46, 3, 'CONVERSE 1970S X G DRAGON NAM, NỮ 1:1', 'converse-1970s-x-g-dragon-nam-nu-11', '850000', 'converse-1970s-x-g-dragon-nam-nu-1-1.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(47, 3, 'CONVERSE CHUCK 1970 CHINATOWN MARKET UV ĐỔI MÀU NAM NỮ', 'converse-chuck-1970-chinatown-market-uv-doi-mau-nam-nu', '850000', 'converse-chuck-1970-chinatown-market-uv-doi-mau.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(48, 3, 'CONVERSE CHUCK 1970 NÂU ĐỎ CỔ CAO NAM, NỮ', 'converse-chuck-1970-nau-do-co-cao-nam-nu', '650000', 'converse-chuck-1970-nau-do-co-cao-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(49, 3, 'CONVERSE CHUCK 1970 TRẮNG CỔ CAO NAM, NỮ', 'converse-chuck-1970-trang-co-cao-nam-nu', '650000', 'converse-chuck-1970-trang-co-cao-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(50, 3, 'CONVERSE CHUCK 1970 TRẮNG CỔ THẤP NAM, NỮ', 'converse-chuck-1970-trang-co-thap-nam-nu', '650000', 'converse-chuck-1970-trang-co-thap-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(51, 3, 'CONVERSE CHUCK 1970 VÀNG CỔ CAO NAM, NỮ', 'converse-chuck-1970-vang-co-cao-nam-nu', '650000', 'converse-vang-co-cao-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(52, 3, 'CONVERSE CHUCK 1970 VÀNG CỔ THẤP NAM, NỮ', 'converse-chuck-1970-vang-co-thap-nam-nu', '650000', 'converse-vang-co-thap-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(53, 3, 'CONVERSE CHUCK 1970 ĐEN CỔ CAO NAM, NỮ', 'converse-chuck-1970-den-co-cao-nam-nu', '650000', 'converse-den-co-cao-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(54, 3, 'CONVERSE CHUCK 1970 ĐEN CỔ THẤP NAM, NỮ', 'converse-chuck-1970-den-co-thap-nam-nu', '650000', 'converse-chuck-1970-den-co-thap-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Converse</strong>&nbsp;- Thương hiệu gi&agrave;y h&agrave;ng đầu thế giới, với lịch sử ph&aacute;t triển h&agrave;ng trăm năm. Những mẫu sản phẩm đến từ thương hiệu n&agrave;y chưa bao giờ lỗi thời, lu&ocirc;n trường tồn c&ugrave;ng thời gian. Thậm ch&iacute; người ta v&iacute; những đ&ocirc;i&nbsp;<strong>gi&agrave;y sneaker Converse</strong>&nbsp;như một biểu tượng văn h&oacute;a tinh thần ở Mỹ, giống như khi nhắc đến thức ăn nhanh người ta nghĩ ngay đến McDonald&rsquo;s hay nước uống c&oacute; gas Coca - Cola.Gi&agrave;y Converse phổ biến tr&ecirc;n khắp nước Mỹ, theo thống k&ecirc; c&oacute; đến 60% d&acirc;n số Mỹ sở hữu &iacute;t nhất một đ&ocirc;i&nbsp;<strong>sneaker Converse</strong>. Nếu so s&aacute;nh với c&aacute;c thương hiệu gi&agrave;y truyền thống như Adidas, Nike,... th&igrave; Converse hơn hẳn về sự truyền thừa &amp; l&acirc;u đời của n&oacute;. C&ograve;n so với thương hiệu thời trang cao cấp về thị trường gi&agrave;y thể thao như Balenciaga, Gucci,.. Converse cũng kh&ocirc;ng hề k&eacute;m cạnh trong sự bức ph&aacute; thương hiệu, &yacute; tưởng s&aacute;ng tạo v&agrave; đẳng cấp.</p>', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(55, 4, 'VANS FEAR OF GOD NAM, NỮ', 'vans-fear-of-god-nam-nu', '650000', 'vans-fear-of-god-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Đảm bảo chất lượng, an t&acirc;m m&agrave; lựa chọn nh&eacute;!Vans cho ra đời c&aacute;c bộ sưu tập mới của m&igrave;nh bằng việc hợp t&aacute;c với c&aacute;c h&atilde;ng thời trang kh&aacute;c, những con người mới mẻ, s&aacute;ng tạo đ&atilde; đưa ra những đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng thu h&uacute;t, bắt mắt. Gi&agrave;y Vans với phần đế l&agrave;m từ chất liệu nhựa cao cấp, b&ecirc;n, chắc. Phần upper từ nhiều loại vải kh&aacute;c nhau t&ugrave;y bộ sưu tập h&atilde;ng cho ra mắt, từ loại vải d&agrave;y dặn giữ form, đến vải thổ cẩm, tất cả đều mang phong c&aacute;ch của tuổi trẻ, tươi mới.</p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(56, 4, 'VANS CHECKERBOARD SLIP-ON NAM, NỮ', 'vans-checkerboard-slip-on-nam-nu', '650000', 'vans-checkerboard-slip-on-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Đảm bảo chất lượng, an t&acirc;m m&agrave; lựa chọn nh&eacute;!Vans cho ra đời c&aacute;c bộ sưu tập mới của m&igrave;nh bằng việc hợp t&aacute;c với c&aacute;c h&atilde;ng thời trang kh&aacute;c, những con người mới mẻ, s&aacute;ng tạo đ&atilde; đưa ra những đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng thu h&uacute;t, bắt mắt. Gi&agrave;y Vans với phần đế l&agrave;m từ chất liệu nhựa cao cấp, b&ecirc;n, chắc. Phần upper từ nhiều loại vải kh&aacute;c nhau t&ugrave;y bộ sưu tập h&atilde;ng cho ra mắt, từ loại vải d&agrave;y dặn giữ form, đến vải thổ cẩm, tất cả đều mang phong c&aacute;ch của tuổi trẻ, tươi mới.</p>', 20, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(57, 4, 'VANS MARVEL ALL OVER PRINT NAM, NỮ', 'vans-marvel-all-over-print-nam-nu', '650000', 'vans-marvel-authentic-all-over-print-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Đảm bảo chất lượng, an t&acirc;m m&agrave; lựa chọn nh&eacute;!Vans cho ra đời c&aacute;c bộ sưu tập mới của m&igrave;nh bằng việc hợp t&aacute;c với c&aacute;c h&atilde;ng thời trang kh&aacute;c, những con người mới mẻ, s&aacute;ng tạo đ&atilde; đưa ra những đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng thu h&uacute;t, bắt mắt. Gi&agrave;y Vans với phần đế l&agrave;m từ chất liệu nhựa cao cấp, b&ecirc;n, chắc. Phần upper từ nhiều loại vải kh&aacute;c nhau t&ugrave;y bộ sưu tập h&atilde;ng cho ra mắt, từ loại vải d&agrave;y dặn giữ form, đến vải thổ cẩm, tất cả đều mang phong c&aacute;ch của tuổi trẻ, tươi mới.</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(58, 4, 'VANS MARVEL TRẮNG ĐEN NAM, NỮ', 'vans-marvel-trang-den-nam-nu', '650000', 'vans-marvel-authentic-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Đảm bảo chất lượng, an t&acirc;m m&agrave; lựa chọn nh&eacute;!Vans cho ra đời c&aacute;c bộ sưu tập mới của m&igrave;nh bằng việc hợp t&aacute;c với c&aacute;c h&atilde;ng thời trang kh&aacute;c, những con người mới mẻ, s&aacute;ng tạo đ&atilde; đưa ra những đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng thu h&uacute;t, bắt mắt. Gi&agrave;y Vans với phần đế l&agrave;m từ chất liệu nhựa cao cấp, b&ecirc;n, chắc. Phần upper từ nhiều loại vải kh&aacute;c nhau t&ugrave;y bộ sưu tập h&atilde;ng cho ra mắt, từ loại vải d&agrave;y dặn giữ form, đến vải thổ cẩm, tất cả đều mang phong c&aacute;ch của tuổi trẻ, tươi mới.</p>', 20, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(59, 4, 'VANS SLIP ON HULK REPLICA NAM, NỮ', 'vans-slip-on-hulk-replica-nam-nu', '500000', 'vans-slip-on-hulk-replica-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p>Đảm bảo chất lượng, an t&acirc;m m&agrave; lựa chọn nh&eacute;!Vans cho ra đời c&aacute;c bộ sưu tập mới của m&igrave;nh bằng việc hợp t&aacute;c với c&aacute;c h&atilde;ng thời trang kh&aacute;c, những con người mới mẻ, s&aacute;ng tạo đ&atilde; đưa ra những đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng thu h&uacute;t, bắt mắt. Gi&agrave;y Vans với phần đế l&agrave;m từ chất liệu nhựa cao cấp, b&ecirc;n, chắc. Phần upper từ nhiều loại vải kh&aacute;c nhau t&ugrave;y bộ sưu tập h&atilde;ng cho ra mắt, từ loại vải d&agrave;y dặn giữ form, đến vải thổ cẩm, tất cả đều mang phong c&aacute;ch của tuổi trẻ, tươi mới.</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(60, 5, 'BALENCIAGA TRIPLE S RED DARK CLEAR SOLE NAM', 'balenciaga-triple-s-red-dark-clear-sole-nam', '1700000', 'balenciaga-triple-s-red-black-clear-sole-nam.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Balenciaga</strong>&nbsp;bắt đầu đi v&agrave;o hoạt động từ năm 1919, l&agrave; thương hiệu thời trang cao cấp của T&acirc;y Ban Nha do nh&agrave; thiết kế&nbsp;<strong>Crist&oacute;bal</strong>&nbsp;s&aacute;ng lập.</p>\r\n\r\n<p>Từ những ng&agrave;y đầu ra mắt,&nbsp;<a href=\"https://giaygiare.vn/giay-balenciaga\">Balenciaga</a>&nbsp;nhanh ch&oacute;ng tạo được tiếng vang lớn trong l&agrave;ng thời trang v&agrave; trở th&agrave;nh một trong những thương hiệu thời trang cao cấp nhất nh&igrave; thế giới. Nhắc đến Balenciaga, người ta c&oacute; thể h&igrave;nh dung ngay d&ograve;ng t&uacute;i&nbsp;<strong>City Bag</strong>&nbsp;trứ danh từng g&acirc;y &ldquo;s&oacute;ng gi&oacute;&rdquo; một thời. Hay những thiết kế trở th&agrave;nh tr&agrave;o lưu to&agrave;n cầu như n&oacute;n lưỡi trai logo s&agrave;nh điệu, Speed trainer, t&uacute;i x&aacute;ch đi chợ,...</p>', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(61, 5, 'BALENCIAGA TRIPLE S RED CLEAR SOLE NAM NỮ', 'balenciaga-triple-s-red-clear-sole-nam-nu', '1700000', 'balenciaga-triple-s-red-clear-sole-nam-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Balenciaga</strong>&nbsp;bắt đầu đi v&agrave;o hoạt động từ năm 1919, l&agrave; thương hiệu thời trang cao cấp của T&acirc;y Ban Nha do nh&agrave; thiết kế&nbsp;<strong>Crist&oacute;bal</strong>&nbsp;s&aacute;ng lập.</p>\r\n\r\n<p>Từ những ng&agrave;y đầu ra mắt,&nbsp;<a href=\"https://giaygiare.vn/giay-balenciaga\">Balenciaga</a>&nbsp;nhanh ch&oacute;ng tạo được tiếng vang lớn trong l&agrave;ng thời trang v&agrave; trở th&agrave;nh một trong những thương hiệu thời trang cao cấp nhất nh&igrave; thế giới. Nhắc đến Balenciaga, người ta c&oacute; thể h&igrave;nh dung ngay d&ograve;ng t&uacute;i&nbsp;<strong>City Bag</strong>&nbsp;trứ danh từng g&acirc;y &ldquo;s&oacute;ng gi&oacute;&rdquo; một thời. Hay những thiết kế trở th&agrave;nh tr&agrave;o lưu to&agrave;n cầu như n&oacute;n lưỡi trai logo s&agrave;nh điệu, Speed trainer, t&uacute;i x&aacute;ch đi chợ,...</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(62, 5, 'BALENCIAGA TRIPLE S BLACK RED NAM NỮ 2019', 'balenciaga-triple-s-black-red-nam-nu-2019', '1700000', 'balenciaga-triple-s-black-red-nam-nu-2019.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Balenciaga</strong>&nbsp;bắt đầu đi v&agrave;o hoạt động từ năm 1919, l&agrave; thương hiệu thời trang cao cấp của T&acirc;y Ban Nha do nh&agrave; thiết kế&nbsp;<strong>Crist&oacute;bal</strong>&nbsp;s&aacute;ng lập.</p>\r\n\r\n<p>Từ những ng&agrave;y đầu ra mắt,&nbsp;<a href=\"https://giaygiare.vn/giay-balenciaga\">Balenciaga</a>&nbsp;nhanh ch&oacute;ng tạo được tiếng vang lớn trong l&agrave;ng thời trang v&agrave; trở th&agrave;nh một trong những thương hiệu thời trang cao cấp nhất nh&igrave; thế giới. Nhắc đến Balenciaga, người ta c&oacute; thể h&igrave;nh dung ngay d&ograve;ng t&uacute;i&nbsp;<strong>City Bag</strong>&nbsp;trứ danh từng g&acirc;y &ldquo;s&oacute;ng gi&oacute;&rdquo; một thời. Hay những thiết kế trở th&agrave;nh tr&agrave;o lưu to&agrave;n cầu như n&oacute;n lưỡi trai logo s&agrave;nh điệu, Speed trainer, t&uacute;i x&aacute;ch đi chợ,...</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(63, 5, 'BALENCIAGA TRIPLE S PINK CLEAR SOLE NỮ', 'balenciaga-triple-s-pink-clear-sole-nu', '1700000', 'balenciaga-triple-s-pink-clear-sole-nu.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Balenciaga</strong>&nbsp;bắt đầu đi v&agrave;o hoạt động từ năm 1919, l&agrave; thương hiệu thời trang cao cấp của T&acirc;y Ban Nha do nh&agrave; thiết kế&nbsp;<strong>Crist&oacute;bal</strong>&nbsp;s&aacute;ng lập.</p>\r\n\r\n<p>Từ những ng&agrave;y đầu ra mắt,&nbsp;<a href=\"https://giaygiare.vn/giay-balenciaga\">Balenciaga</a>&nbsp;nhanh ch&oacute;ng tạo được tiếng vang lớn trong l&agrave;ng thời trang v&agrave; trở th&agrave;nh một trong những thương hiệu thời trang cao cấp nhất nh&igrave; thế giới. Nhắc đến Balenciaga, người ta c&oacute; thể h&igrave;nh dung ngay d&ograve;ng t&uacute;i&nbsp;<strong>City Bag</strong>&nbsp;trứ danh từng g&acirc;y &ldquo;s&oacute;ng gi&oacute;&rdquo; một thời. Hay những thiết kế trở th&agrave;nh tr&agrave;o lưu to&agrave;n cầu như n&oacute;n lưỡi trai logo s&agrave;nh điệu, Speed trainer, t&uacute;i x&aacute;ch đi chợ,...</p>', 120, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(64, 5, 'BALENCIAGA TRIPLE S CREAM YELLOW RED NAM NỮ 2019', 'balenciaga-triple-s-cream-yellow-red-nam-nu-2019', '1700000', 'balenciaga-triple-s-cream-yellow-red-nam-nu-2019.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Balenciaga</strong>&nbsp;bắt đầu đi v&agrave;o hoạt động từ năm 1919, l&agrave; thương hiệu thời trang cao cấp của T&acirc;y Ban Nha do nh&agrave; thiết kế&nbsp;<strong>Crist&oacute;bal</strong>&nbsp;s&aacute;ng lập.</p>\r\n\r\n<p>Từ những ng&agrave;y đầu ra mắt,&nbsp;<a href=\"https://giaygiare.vn/giay-balenciaga\">Balenciaga</a>&nbsp;nhanh ch&oacute;ng tạo được tiếng vang lớn trong l&agrave;ng thời trang v&agrave; trở th&agrave;nh một trong những thương hiệu thời trang cao cấp nhất nh&igrave; thế giới. Nhắc đến Balenciaga, người ta c&oacute; thể h&igrave;nh dung ngay d&ograve;ng t&uacute;i&nbsp;<strong>City Bag</strong>&nbsp;trứ danh từng g&acirc;y &ldquo;s&oacute;ng gi&oacute;&rdquo; một thời. Hay những thiết kế trở th&agrave;nh tr&agrave;o lưu to&agrave;n cầu như n&oacute;n lưỡi trai logo s&agrave;nh điệu, Speed trainer, t&uacute;i x&aacute;ch đi chợ,...</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(65, 5, 'BALENCIAGA TRIPLE S GREY CLEAR SOLE NAM NỮ', 'balenciaga-triple-s-grey-clear-sole-nam-nu', '1700000', 'balenciaga-triple-s-grey-clear-sole-nam-nu-2019.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Balenciaga</strong>&nbsp;bắt đầu đi v&agrave;o hoạt động từ năm 1919, l&agrave; thương hiệu thời trang cao cấp của T&acirc;y Ban Nha do nh&agrave; thiết kế&nbsp;<strong>Crist&oacute;bal</strong>&nbsp;s&aacute;ng lập.</p>\r\n\r\n<p>Từ những ng&agrave;y đầu ra mắt,&nbsp;<a href=\"https://giaygiare.vn/giay-balenciaga\">Balenciaga</a>&nbsp;nhanh ch&oacute;ng tạo được tiếng vang lớn trong l&agrave;ng thời trang v&agrave; trở th&agrave;nh một trong những thương hiệu thời trang cao cấp nhất nh&igrave; thế giới. Nhắc đến Balenciaga, người ta c&oacute; thể h&igrave;nh dung ngay d&ograve;ng t&uacute;i&nbsp;<strong>City Bag</strong>&nbsp;trứ danh từng g&acirc;y &ldquo;s&oacute;ng gi&oacute;&rdquo; một thời. Hay những thiết kế trở th&agrave;nh tr&agrave;o lưu to&agrave;n cầu như n&oacute;n lưỡi trai logo s&agrave;nh điệu, Speed trainer, t&uacute;i x&aacute;ch đi chợ,...</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(66, 6, 'NIKE JOYRIDE RUN FLYKNIT LIGHT PINK 1:1', 'nike-joyride-run-flyknit-light-pink-11', '950000', 'nike-joyride-run-flyknit-light-pink-1-1.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Nike</strong>&nbsp;- Thương hiệu gi&agrave;y thể thao đỉnh cao của thế giới. Kh&ocirc;ng chỉ sở hữu chất lượng vượt trội, thiết kế sang trọng, thu h&uacute;t m&agrave; c&aacute;c mẫu gi&agrave;y đến từ thương hiệu n&agrave;y c&ograve;n được biết đến với mức gi&aacute; &ldquo;kh&ocirc;ng hề rẻ&rdquo;. Nếu đ&atilde; l&agrave; fan cuồng của Nike chắc hẳn kh&ocirc;ng ai c&oacute; thể bỏ qua c&aacute;c d&ograve;ng gi&agrave;y sneaker &quot;si&ecirc;u chất, si&ecirc;u đẹp&quot; l&agrave;m chao đảo thị trường Việt Nam trong những năm gần đ&acirc;y.</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(67, 6, 'NIKE JOYRIDE RUN FLYKNIT GREY LIGHT BLUE 1:1', 'nike-joyride-run-flyknit-grey-light-blue-11', '950000', 'nike-joyride-run-flyknit-grey-light-blue-1-1.jpg', '💯 Bảo Hành 5 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Nike</strong>&nbsp;- Thương hiệu gi&agrave;y thể thao đỉnh cao của thế giới. Kh&ocirc;ng chỉ sở hữu chất lượng vượt trội, thiết kế sang trọng, thu h&uacute;t m&agrave; c&aacute;c mẫu gi&agrave;y đến từ thương hiệu n&agrave;y c&ograve;n được biết đến với mức gi&aacute; &ldquo;kh&ocirc;ng hề rẻ&rdquo;. Nếu đ&atilde; l&agrave; fan cuồng của Nike chắc hẳn kh&ocirc;ng ai c&oacute; thể bỏ qua c&aacute;c d&ograve;ng gi&agrave;y sneaker &quot;si&ecirc;u chất, si&ecirc;u đẹp&quot; l&agrave;m chao đảo thị trường Việt Nam trong những năm gần đ&acirc;y.</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(68, 6, 'NIKE JOYRIDE RUN FLYKNIT GREY RED 1:1', 'nike-joyride-run-flyknit-grey-red-11', '950000', 'nike-joyride-run-flyknit-grey-red-1-1.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Nike</strong>&nbsp;- Thương hiệu gi&agrave;y thể thao đỉnh cao của thế giới. Kh&ocirc;ng chỉ sở hữu chất lượng vượt trội, thiết kế sang trọng, thu h&uacute;t m&agrave; c&aacute;c mẫu gi&agrave;y đến từ thương hiệu n&agrave;y c&ograve;n được biết đến với mức gi&aacute; &ldquo;kh&ocirc;ng hề rẻ&rdquo;. Nếu đ&atilde; l&agrave; fan cuồng của Nike chắc hẳn kh&ocirc;ng ai c&oacute; thể bỏ qua c&aacute;c d&ograve;ng gi&agrave;y sneaker &quot;si&ecirc;u chất, si&ecirc;u đẹp&quot; l&agrave;m chao đảo thị trường Việt Nam trong những năm gần đ&acirc;y.</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(69, 6, 'NIKE JOYRIDE RUN FLYKNIT BLUE NAVY 1:1', 'nike-joyride-run-flyknit-blue-navy-11', '950000', 'nike-joyride-run-flyknit-blue-navy-1-1.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Nike</strong>&nbsp;- Thương hiệu gi&agrave;y thể thao đỉnh cao của thế giới. Kh&ocirc;ng chỉ sở hữu chất lượng vượt trội, thiết kế sang trọng, thu h&uacute;t m&agrave; c&aacute;c mẫu gi&agrave;y đến từ thương hiệu n&agrave;y c&ograve;n được biết đến với mức gi&aacute; &ldquo;kh&ocirc;ng hề rẻ&rdquo;. Nếu đ&atilde; l&agrave; fan cuồng của Nike chắc hẳn kh&ocirc;ng ai c&oacute; thể bỏ qua c&aacute;c d&ograve;ng gi&agrave;y sneaker &quot;si&ecirc;u chất, si&ecirc;u đẹp&quot; l&agrave;m chao đảo thị trường Việt Nam trong những năm gần đ&acirc;y.</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(70, 8, 'BTS Court Star Black/White', 'bts-court-star-blackwhite', '892000', '1-e1561626390909.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Gi&agrave;y thể thao&nbsp;</strong>Nam Nữ m&agrave;u&nbsp;<strong>Đen Trắng</strong>. Đại diện nổi bậc cho phong c&aacute;ch&nbsp;<strong>trẻ trung hiện đại</strong>&nbsp;từ c&aacute;c nh&oacute;m &ldquo;K-Pop&rdquo;.&nbsp;<strong>H&agrave;ng mới về</strong>&nbsp;Full box.&nbsp;<strong>Giao h&agrave;ng</strong>&nbsp;to&agrave;n quốc.&nbsp;<strong>Bảo h&agrave;nh&nbsp;</strong>3 th&aacute;ng.&nbsp;<strong>Đổi trả&nbsp;</strong>dễ d&agrave;ng khi mua Gi&agrave;y Sneakers&nbsp;<strong>Puma BTS Court Star&nbsp;</strong>Nam Nữ&nbsp;<strong>Đen Trắng&nbsp;</strong>Da Trơn Trainers Unisex in White/Black.</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(71, 8, 'BTS Court Star White Green', 'bts-court-star-white-green', '892000', '16-e1561626373698-350x350.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Gi&agrave;y thể thao&nbsp;</strong>Nam Nữ m&agrave;u&nbsp;<strong>Trắng Xanh</strong>.&nbsp;Đại diện nổi bậc cho phong c&aacute;ch&nbsp;<strong>trẻ trung hiện đại</strong>&nbsp;từ c&aacute;c nh&oacute;m &ldquo;K-Pop&rdquo;.&nbsp;<strong>H&agrave;ng mới về</strong>&nbsp;Full box.&nbsp;<strong>Giao h&agrave;ng</strong>&nbsp;to&agrave;n quốc.&nbsp;<strong>Bảo h&agrave;nh&nbsp;</strong>3 th&aacute;ng.&nbsp;<strong>Đổi trả&nbsp;</strong>dễ d&agrave;ng khi mua Gi&agrave;y Sneakers&nbsp;<strong>Puma BTS Court Star&nbsp;</strong>Nam Nữ&nbsp;<strong>Trắng Xanh&nbsp;</strong>Da Trơn Trainers Unisex in White/Black.</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(72, 8, 'BTS Court Star White Black', 'bts-court-star-white-black', '892000', '11-e1561626237502-350x350.jpg', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><strong>Gi&agrave;y thể thao&nbsp;</strong>Nam Nữ m&agrave;u&nbsp;<strong>Trắng, Đen</strong>. Đại diện nổi bậc cho phong c&aacute;ch&nbsp;<strong>trẻ trung hiện đại</strong>&nbsp;từ c&aacute;c nh&oacute;m &ldquo;K-Pop&rdquo;.&nbsp;<strong>H&agrave;ng mới về</strong>&nbsp;Full box.&nbsp;<strong>Giao h&agrave;ng</strong>&nbsp;to&agrave;n quốc.&nbsp;<strong>Bảo h&agrave;nh&nbsp;</strong>3 th&aacute;ng.&nbsp;<strong>Đổi trả&nbsp;</strong>dễ d&agrave;ng khi mua Gi&agrave;y Sneakers&nbsp;<strong>Puma BTS Court Star&nbsp;</strong>Nam Nữ&nbsp;<strong>Trắng/Đen&nbsp;</strong>Da Trơn Trainers Unisex in White/Black.</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(73, 7, 'FILA DISRUPTOR 2 WHITE', 'fila-disruptor-2-white', '2390000', 'fila-heritage-disruptor-ii-white-fs1hta1071x-1.png', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><a href=\"https://filavietnam.vn/fila-disruptor-2-white\"><em><strong>FILA Disruptor&nbsp;2 White Authentic</strong></em></a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<em>sneaker</em>&nbsp;đ&igrave;nh đ&aacute;m của&nbsp;<em><strong>FILA</strong></em>&nbsp;với kiểu d&aacute;ng hợp thời trang mang phong c&aacute;ch H&agrave;n Quốc, chất liệu cao cấp c&ugrave;ng thiết kế ph&ugrave; hợp với nhiều&nbsp;hoạt động thể thao, đế độ b&aacute;m tốt c&ugrave;ng độ nặng ph&ugrave; hợp&nbsp;khiến đ&ocirc;i ch&acirc;n vững v&agrave;ng hơn khi di chuyển v&agrave; hoạt động</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(74, 7, 'FILA DISRUPTOR 2 WHITE/PINK', 'fila-disruptor-2-whitepink', '2450000', 'fila-heritage-disruptor-ii-white-pink-fs1hta1074x-wpk-1.png', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><a href=\"https://filavietnam.vn/fila-disruptor-2-white\"><em><strong>FILA Disruptor&nbsp;2 White Authentic</strong></em></a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<em>sneaker</em>&nbsp;đ&igrave;nh đ&aacute;m của&nbsp;<em><strong>FILA</strong></em>&nbsp;với kiểu d&aacute;ng hợp thời trang mang phong c&aacute;ch H&agrave;n Quốc, chất liệu cao cấp c&ugrave;ng thiết kế ph&ugrave; hợp với nhiều&nbsp;hoạt động thể thao, đế độ b&aacute;m tốt c&ugrave;ng độ nặng ph&ugrave; hợp&nbsp;khiến đ&ocirc;i ch&acirc;n vững v&agrave;ng hơn khi di chuyển v&agrave; hoạt động</p>', 120, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(75, 7, 'FILA HERITAGE DISRUPTOR II ALL BLACK', 'fila-heritage-disruptor-ii-all-black', '2390000', 'fila-heritage-disruptor-ii-all-black-fs1hta1078x-bbk-3.png', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><a href=\"https://filavietnam.vn/fila-disruptor-2-white\"><em><strong>FILA Disruptor&nbsp;2 White Authentic</strong></em></a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<em>sneaker</em>&nbsp;đ&igrave;nh đ&aacute;m của&nbsp;<em><strong>FILA</strong></em>&nbsp;với kiểu d&aacute;ng hợp thời trang mang phong c&aacute;ch H&agrave;n Quốc, chất liệu cao cấp c&ugrave;ng thiết kế ph&ugrave; hợp với nhiều&nbsp;hoạt động thể thao, đế độ b&aacute;m tốt c&ugrave;ng độ nặng ph&ugrave; hợp&nbsp;khiến đ&ocirc;i ch&acirc;n vững v&agrave;ng hơn khi di chuyển v&agrave; hoạt động</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(76, 7, 'FILA DISRUPTOR 2 TAPE FS1HTA3091X_WWT', 'fila-disruptor-2-tape-fs1hta3091x-wwt', '1990000', 'fila-disruptor-2-tape-fs1hta3091x-wwt-1.png', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><a href=\"https://filavietnam.vn/fila-disruptor-2-white\"><em><strong>FILA Disruptor&nbsp;2 White Authentic</strong></em></a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<em>sneaker</em>&nbsp;đ&igrave;nh đ&aacute;m của&nbsp;<em><strong>FILA</strong></em>&nbsp;với kiểu d&aacute;ng hợp thời trang mang phong c&aacute;ch H&agrave;n Quốc, chất liệu cao cấp c&ugrave;ng thiết kế ph&ugrave; hợp với nhiều&nbsp;hoạt động thể thao, đế độ b&aacute;m tốt c&ugrave;ng độ nặng ph&ugrave; hợp&nbsp;khiến đ&ocirc;i ch&acirc;n vững v&agrave;ng hơn khi di chuyển v&agrave; hoạt động</p>', 120, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(77, 7, 'FILA DISRUPTOR 2 LOGO WHITE/NAVY/RED', 'fila-disruptor-2-logo-whitenavyred', '2490000', 'fila-disruptor-2-logo-white-navy-red-fs1htb1191x-wnr-6.png', '💯 Bảo Hành 12 Tháng', 'Khuyến mãi một đôi tất', '<p><a href=\"https://filavietnam.vn/fila-disruptor-2-white\"><em><strong>FILA Disruptor&nbsp;2 White Authentic</strong></em></a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<em>sneaker</em>&nbsp;đ&igrave;nh đ&aacute;m của&nbsp;<em><strong>FILA</strong></em>&nbsp;với kiểu d&aacute;ng hợp thời trang mang phong c&aacute;ch H&agrave;n Quốc, chất liệu cao cấp c&ugrave;ng thiết kế ph&ugrave; hợp với nhiều&nbsp;hoạt động thể thao, đế độ b&aacute;m tốt c&ugrave;ng độ nặng ph&ugrave; hợp&nbsp;khiến đ&ocirc;i ch&acirc;n vững v&agrave;ng hơn khi di chuyển v&agrave; hoạt động</p>', 120, NULL, NULL, NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `sli_id` int(11) NOT NULL,
  `tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`sli_id`, `tieude`, `noidung`, `hinhanh`, `trangthai`) VALUES
(7, 'sdfgh1', 'sdfghj', 'ms_banner_img2.jpg', 0),
(8, 'fghyujikl', 'dfghjkl', 'slideshow_2.jpg', 0),
(9, 'hjkdfghj', 'sdfghjk', 'slider_2.jpg', 1),
(10, 'ádfghjkl', 'ẻtyuio', 'slider_2.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `matt` int(11) NOT NULL,
  `trangthai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `level`, `remember_token`) VALUES
(3, 'Nguyen  Van Tu', 'giaohang@gmail.com', 335234285, 'Thôn đại mỹ đại hưng đại lộc quảng nam', '$2y$10$YP0kWU59dT6OXWT98YAi9.iUIFggQN5mEf0MyOFdIGsIQvhDZy6WG', 2, 'KH7lKc105DRs7zgm9RwZbbw7ZzeYePwB1N5nn5nU9mx9iaTOg7RN6l3mOtEh'),
(4, 'Nguyễn Văn A', 'nhanvien@gmail.com', 335234285, 'Thôn đại mỹ đại hưng đại lộc quảng nam', '$2y$10$4HmjjCrnMi/EWYQHme1L5ODvnBaMfs.bxcvaNHxqTHkFHAkT/2r.u', 3, 'BkqsDpQnJFk9Q9OK1l0Vg7BjnKQMONSj2H5E9Z7XPJElXWVdeDRBHEpHcz45'),
(5, 'Trần thanh trung', 'thanhtrungtran8888@gmail.com', 335234285, '85 Tô hiệu Hóa minh Liên Chiểu Dà Nẵng', '$2y$10$EP3UCWJz14UDYTMWemqHWeJgSy.zq.JKUh5KRWGAbtMts8d3JxEGq', 4, 'LLtGvYrmfcYavAtDb4hLQNHj7QGYiZMsowmAb5ZWw9LHQvdxZd21SvSZ6B7l'),
(6, 'Tran Thanh Trung', 'admin@gmail.com', 335234285, 'Thôn đại mỹ đại hưng đại lộc quảng nam', '$2y$10$4wN/XC/ZKxDYVsolIFj/COqPbQeQeugnDQ92RemX3WR7le068KD5W', 1, 'pAiSgN4LA7EAr3MwpqM0PzjqZHUDQUjsqPeLMFvzaBQn74xkiQ3oIV0gEVFa'),
(7, 'Trần Thanh Trung', 'test@gmail.com', 335234285, 'Thôn đại mỹ đại hưng đại lộc quảng nam', '$2y$10$BCS8fv/9gTXhfRMx2dQdaeTbxaqc5K8lySJXiLaMsU7ElCJb5tOpG', 2, NULL),
(8, 'Trần Thanh Trung', 'thanhtrungtraấdas8@gmail.com', 335234285, 'Thôn đại mỹ đại hưng đại lộc quảng nam', '$2y$10$X8rTnL0iSoIcO8BrMD5k8eMME56pHAlphGGYtscXz2pAw5FpyIjyu', 2, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`com_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`det_id`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`mactpn`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`bil_id`);

--
-- Chỉ mục cho bảng `kichco`
--
ALTER TABLE `kichco`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kichcosp`
--
ALTER TABLE `kichcosp`
  ADD PRIMARY KEY (`sizpr_id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`mapn`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`prod_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`sli_id`);

--
-- Chỉ mục cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`matt`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `com_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `mactpn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `bil_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `kichco`
--
ALTER TABLE `kichco`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `kichcosp`
--
ALTER TABLE `kichcosp`
  MODIFY `sizpr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `mapn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `sli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
