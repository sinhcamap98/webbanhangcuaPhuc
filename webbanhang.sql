-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2020 lúc 03:38 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(0, 'admin123', 'doimatkhau'),
(1, 'admin123', 'doimatkhau'),
(0, 'sinh', 'doimatkhaulan2'),
(2, 'sinhcamap', 'lan2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

CREATE TABLE `chitietsp` (
  `id_sp` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(100) NOT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_loaisp` int(100) NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`id_sp`, `tensp`, `hinhanh`, `gia`, `mota`, `id_loaisp`, `thutu`) VALUES
(28, 'iphone x', 'iphone-x-64gb-hh-600x600.jpg', 12, 'iphone xin', 12, 10),
(30, 'iphone 7plus', 'iphone7plus.png', 1234, '', 21, 123),
(32, 'Samsung note 10', 'TheGalaxyNote10LiteiscomingsoonasSamsungscheaperGalaxyNote.jpg', 1000, 'ÄiÃªn thoáº¡i samsung note10', 27, 2),
(33, 'Iphone 11 pro max', 'iphone 11 pro maxjpg.jpg', 1500, 'Äiá»‡n thoáº¡i Iphone 11 pro max xanh', 29, 1),
(34, 'Iphone 6 plus pink', 'iphone-6-32gb-gold-hh-600x600-600x600-600x600.jpg', 250, 'Äiá»‡n thoáº¡i iphone 6 plus mau hong', 29, 1),
(36, 'iphone 11', 'iphone11-xanh.jpg', 2200, '', 29, 3),
(37, 'Iphone 8 lus', 'iphone-8-plus-64gb-ll-thiet-ke.jpg', 2300, '', 31, 4),
(38, 'Ipad gray', 'ipad gray.jpg', 1000, '', 28, 1),
(39, 'Samsung Tables', '636828202600102134_samsung-galaxy-tab-a6-101-2016-spen-trang-1.png', 2300, '', 28, 2),
(40, 'Huawei Tbalets', 'tablelet Huawei.jpg', 1200, '', 28, 3),
(41, 'Ipad pro gen 3', 'ipad pro gen 3 2019.jpg', 10000, '', 28, 4),
(43, 'MÃ¡y chá»¥p hÃ¬nh canon', '321159_may_anh_canon_eos_m10_kem_lens_15-45mm__mau_trang__7.jpg', 3000, '', 26, 1),
(44, 'Canon ios', 'canon eos.jpg', 0, '', 26, 0),
(45, 'SamSung note8', '1513235255_Note8-blue.jpg', 100000, 'Äiá»‡n thoáº¡i SamSung note8 blue', 27, 10),
(46, 'Iphone 11 pro max', 'iphone 11 pro maxjpg.jpg', 2500, '', 31, 0),
(47, 'Iphone 6 plus pink', 'iphone-6-32gb-gold-hh-600x600-600x600-600x600.jpg', 200, '123', 31, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangki`
--

CREATE TABLE `dangki` (
  `id_kh` int(11) NOT NULL,
  `tenkhachhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangki`
--

INSERT INTO `dangki` (`id_kh`, `tenkhachhang`, `matkhau`, `email`, `diachi`, `dienthoai`) VALUES
(6, 'binhbo', '123', 'binhbo@gmail.com', '123a', 123),
(7, 'phanlehang', '123', 'hangxinhdep@gmail.com', 'daklak', 123);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`id_loaisp`, `tenloaisp`, `thutu`) VALUES
(26, 'Camera', 2),
(27, 'Smartphone', 3),
(28, 'Tablets', 4),
(31, 'Iphone', 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `dangki`
--
ALTER TABLE `dangki`
  ADD PRIMARY KEY (`id_kh`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `dangki`
--
ALTER TABLE `dangki`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
