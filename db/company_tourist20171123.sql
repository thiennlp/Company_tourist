-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2017 lúc 04:15 PM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `company_tourist`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `about` varchar(120) NOT NULL,
  `about_english` varchar(120) DEFAULT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `content_english` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id_about`, `about`, `about_english`, `image`, `content`, `content_english`) VALUES
(1, 'OUR STORY', '', 'data/about/32d31f3c5adf37a12420fa4227e79a17.jpg', 'From a single store to international force, we have come a long way making clothing for all. Get to know us.', ''),
(2, 'OUR NAME', '', 'data/about/32d31f3c5adf37a12420fa4227e79a17.jpg', 'From a single store to international force, we have come a long way making clothing for all. Get to know us.', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id_account` int(11) NOT NULL,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id_account`, `username`, `password`, `permission`) VALUES
(1, 'viennd91', 'fe65c1699f4d377ce5c781fd0da9049a', 'admin'),
(2, 'micky_9229', '25f9e794323b453885f5181f1b624d0b', 'customer'),
(6, 'darmian_martial', '25f9e794323b453885f5181f1b624d0b', 'customer'),
(7, 'neuer', '25f9e794323b453885f5181f1b624d0b', 'customer'),
(8, 'matial', '86200c8ef6f1763587f09dc983b1fed6', 'customer'),
(9, 'daniel', '70873e8580c9900986939611618d7b1e', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(120) NOT NULL,
  `english_category` varchar(120) DEFAULT NULL,
  `image_category` varchar(120) NOT NULL,
  `is_display` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `category`, `english_category`, `image_category`, `is_display`) VALUES
(1, 'Trang Chủ', 'Home', '', 0),
(2, 'Giới thiệu', 'About', '', 1),
(3, 'Vận tải hành khách', 'Passenger', '', 1),
(4, 'Vận tải hàng hóa', 'Ship', '', 1),
(5, 'Du Lịch', 'Travel', '', 1),
(6, 'Tin tức', 'News', '', 1),
(7, 'Liên hệ', 'Contact', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `id_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `email`, `phone`, `address`, `id_account`) VALUES
(1, 'Micky', 'micky.9229@gmail.com', '0909.123.456', 'Amernia', 2),
(2, 'Darmian', 'darmian1990@gmail.com', '0934.234.122', 'Milan, Italia', 6),
(3, 'Neuer', 'viennd91@gmail.com', '0909123123', 'Munich, Germany', 7),
(4, 'Matial', 'matial.94@gmail.com', '0909222111', 'France', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`id_image`, `url`, `title`, `id_product`) VALUES
(1, 'data/product/2f47cf99be84ced676ed1f86b654e524.jpg', '', 5),
(2, 'data/product/ed1c08f73f2c0dadaf33b63c3d76ddd1.jpg', '', 5),
(3, 'data/product/70eb5655c03ad43aa687ddf01741a7e5.jpg', '', 5),
(4, 'data/product/2876cec6c2d61383bfcac3b97ff3f9fd.jpg', '', 5),
(5, 'data/product/e6103ff52e6e3246635fb30bc73a9a80.jpg', '', 6),
(6, 'data/product/99729b636734d7df1f3de0c55712bdde.jpg', '', 6),
(7, 'data/product/5423d323785d99af4bc75a3767bae36f.jpg', '', 6),
(8, 'data/product/54506007f39b5693146e5e256d937339.jpg', '', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `product` varchar(220) NOT NULL,
  `phone` text,
  `time` text NOT NULL,
  `id_category` int(11) NOT NULL,
  `date_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `product`, `phone`, `time`, `id_category`, `date_update`) VALUES
(1, 'Bến xe Miền Đông', '0909200200', 'Thời gian phục vụ 3h-19h', 3, '0000-00-00'),
(2, 'Bến xe Miền Tây', '0909202202', 'Thời gian phục vụ 3h-19h', 3, '0000-00-00'),
(3, 'Bến xe Đức Linh', '0909201201', 'Thời gian phục vụ 3h-19h', 3, '0000-00-00'),
(4, 'Bến xe Bắc Ruộng', '0909203203', 'Thời gian phục vụ 3h-19h', 3, '0000-00-00'),
(7, 'KIDS DRY-EX SHORTS', '33', '', 8, '0000-00-00'),
(8, 'KIDS DRY STRETCH SWEATPANTS', '31', '', 8, '0000-00-00'),
(9, 'Frye Cara Saddle', '37', '', 14, '0000-00-00'),
(10, 'American West Maya Flap Crossbody', '37', '', 15, '0000-00-00'),
(11, 'SKECHERS Go Run Ultra R', '32', '', 10, '0000-00-00'),
(12, 'SKECHERS Go Run Ultra N', '32', '', 9, '0000-00-00'),
(13, 'MEN ULTRA STRETCH SKINNY FIT ', '35', '', 7, '0000-00-00'),
(14, 'MEN STRETCH SELVEDGE SLIM FIT JEANS', '35', '', 7, '0000-00-00'),
(15, 'MEN SLIM-FIT DISTRESSED JEANS', '35', '', 7, '0000-00-00'),
(20, 'WOMEN EZY JEANS', '37', '', 7, '0000-00-00'),
(21, 'WOMEN ULTRA STRETCH JEANS', '37', '', 7, '0000-00-00'),
(22, 'WIGHT', '38', '', 14, '0000-00-00'),
(23, 'VERY CHAIN BAG', '38', '', 15, '0000-00-00'),
(24, 'TWIST MM', '37', '', 14, '0000-00-00'),
(25, 'Sperry Billfish 3-Eye Boat Shoe', '36', '', 10, '0000-00-00'),
(26, 'Sperry Gamefish 3-Eye', '43', '', 10, '0000-00-00'),
(27, 'SAUCONY GUIDE 8 WOMEN RUNNING SHOES', '35', '', 9, '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` text,
  `phone` varchar(50) NOT NULL,
  `id_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `sex`, `birthday`, `address`, `phone`, `id_account`) VALUES
(1, 'Nguyen Duc Vien', 'Nam', '1991-05-01', 'Đinh Bộ Lĩnh, Bình Thạnh, TP.HCM', '0937.524.634', 1),
(3, 'Daniel', 'Nam', '1990-12-12', 'Spain', '0937555666', 9);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
