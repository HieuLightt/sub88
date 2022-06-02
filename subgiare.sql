-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 22, 2022 lúc 11:46 AM
-- Phiên bản máy phục vụ: 10.5.15-MariaDB-cll-lve
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sunmomos_phamquangnhat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `band_ip`
--

CREATE TABLE `band_ip` (
  `id` int(11) NOT NULL,
  `ip_band` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `id_xep` int(11) DEFAULT NULL,
  `namectk` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `namestk` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `id_xep`, `namectk`, `namestk`, `img`, `status`, `url_config`) VALUES
(21, 20000, 'PHAM QUANG NHAT', 'BẢO TRÌ', 'https://subgiare.vn/assets/images/vcb.png', 1, 'BEMMOMO.ONLINE'),
(23, 10000, 'PHAM QUANG NHAT', 'phamquangnhat', 'https://subgiare.vn/assets/images/logo_thesieurecom.png', 1, 'BEMMOMO.ONLINE'),
(24, 10000, 'PHẠM QUANG NHẬT', '0795649874', 'https://subgiare.vn/assets/images/momo.png', 1, 'BEMMOMO.ONLINE'),
(25, 10000, 'PHAM QUANG NHAT', '6011112004', 'https://subgiare.vn/assets/images/mbb.png', 1, 'BEMMOMO.ONLINE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ds_sitecon`
--

CREATE TABLE `ds_sitecon` (
  `id_site` int(11) NOT NULL,
  `username` varchar(999) NOT NULL,
  `domain` varchar(999) NOT NULL,
  `token` varchar(999) DEFAULT NULL,
  `ip` varchar(999) NOT NULL,
  `date` varchar(999) NOT NULL,
  `site_me` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `site_con` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ds_sitecon`
--

INSERT INTO `ds_sitecon` (`id_site`, `username`, `domain`, `token`, `ip`, `date`, `site_me`, `site_con`, `url_config`, `status`) VALUES
(18, 'pqncoder', 'API.PQNIT.ASIA', 'eyJhbGciOghlzWKDfWimcWYsmTQGjhuemxkvzUxSPQNPIPEpARvXjRWQTkcOmRyvnhQOobEOnYngIlakcUOqgTbEwCEbjcndxjHFhIIbkRJLU1651906301OTJmNTk3ODJkY2RiNTA3YmZlMzMxOTk4ZjIyOTIyMDQ==', '113.182.128.11', '2022-05-22 14:14:37', 'BEMMOMO.ONLINE', 'API.PQNIT.ASIA', 'BEMMOMO.ONLINE', 'Band');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_buy`
--

CREATE TABLE `history_buy` (
  `id` int(11) NOT NULL,
  `username` varchar(999) NOT NULL,
  `type` varchar(999) DEFAULT NULL,
  `hinh_thuc` varchar(999) DEFAULT NULL,
  `soluong` varchar(999) DEFAULT NULL,
  `number_star` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `number_end` int(255) NOT NULL,
  `time_buy` int(255) NOT NULL,
  `tong_tien` varchar(999) DEFAULT NULL,
  `link_buy` varchar(999) DEFAULT NULL,
  `server_buy` varchar(999) DEFAULT NULL,
  `list_msg` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `ghichu` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` varchar(999) DEFAULT NULL,
  `ma_gd` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `history_buy`
--

INSERT INTO `history_buy` (`id`, `username`, `type`, `hinh_thuc`, `soluong`, `number_star`, `number_end`, `time_buy`, `tong_tien`, `link_buy`, `server_buy`, `list_msg`, `ghichu`, `status`, `ma_gd`, `date`, `url_config`) VALUES
(10, 'thanhvu', 'sub_vip', 'Log', '1000000', 'Error', 0, 0, '100000000', '100052813938530', '3', '', '', 'Pendding', 'ID_131046825', '2022-05-07 13:54:28', 'LIKESUBFB.XYZ'),
(11, 'lonto123', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '10000', '100012200415994', '3', '', '', 'Pendding', 'ID_69852534', '2022-05-07 19:40:10', 'LIKESUBFB.XYZ'),
(12, 'thanhvu', 'sub_vip', 'Log', '1000', '138739', 0, 0, '1000', '100052813938530', '3', '', '', 'Pendding', 'ID_319186443', '2022-05-07 23:03:11', 'AUTOTUONGTAC.SITE'),
(13, 'thanhvubt', 'sub_vip', 'Log', '1000', 'Error', 0, 0, '1000', '100052813938530', '3', '', '', 'Pendding', 'ID_851347478', '2022-05-08 01:32:08', 'AUTOTUONGTAC.SITE'),
(14, 'nddcoder', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '597906747', '4', '', '', 'Success', 'ID_753496962', '2022-05-19 13:12:38', 'SUBNGON125.COM'),
(15, 'nddcoder', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '7500', '100080052297717', '4', '', '', 'Success', 'ID_526606810', '2022-05-19 17:52:09', 'SUBNGON125.COM'),
(16, 'tmanhcute', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100025641982567', '4', '', 'Subngon125.com ????', 'Success', 'ID_386642519', '2022-05-19 18:12:41', 'SUBNGON125.COM'),
(17, 'tmanhcute', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100025641982567', '4', '', 'k', 'Success', 'ID_695816173', '2022-05-19 18:30:45', 'SUBNGON125.COM'),
(18, 'nddcoder', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '597906747', '3', '', 'duy dz', 'Success', 'ID_489733438', '2022-05-19 19:10:27', 'SUBNGON125.COM'),
(19, 'lequyphu001', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '9000', '100069385376310', '5', '', '', 'Success', 'ID_60842298', '2022-05-19 19:32:54', 'SUBNGON125.COM'),
(20, 'kduyendz1209', 'sub_vip', 'Log', '9000', 'Error', 0, 0, '9720', '100041591864303', '5', '', '', 'Success', 'ID_554375273', '2022-05-19 20:21:46', 'SUBNGON125.COM'),
(21, 'phucthien', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '6000', '100074286067764', '4', '', '', 'Success', 'ID_245695159', '2022-05-19 21:25:29', 'SUBNGON125.COM'),
(22, 'phucthien', 'sub_vip', 'Log', '15000', 'Error', 0, 0, '9000', '100064336801258', '4', '', '', 'Success', 'ID_30767810', '2022-05-19 21:27:43', 'SUBNGON125.COM'),
(23, 'phucthien', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '10200', '100074286067764', '3', '', '', 'Success', 'ID_936406461', '2022-05-19 21:35:03', 'SUBNGON125.COM'),
(24, 'phucthien', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '10200', '100074286067764', '3', '', '', 'Success', 'ID_330557459', '2022-05-19 21:45:31', 'SUBNGON125.COM'),
(25, 'hylz12', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '10800', '100000426467965', '5', '', '', 'Success', 'ID_350932423', '2022-05-20 07:25:57', 'SUBNGON125.COM'),
(26, 'duchoang', 'sub_vip', 'Log', '2800', 'Error', 0, 0, '3024', '100054477469628', '5', '', '', 'Success', 'ID_258304009', '2022-05-20 07:45:54', 'SUBNGON125.COM'),
(27, 'kduyendz1209', 'sub_vip', 'Log', '9200', 'Error', 0, 0, '9936', '100049479799969', '5', '', '', 'Success', 'ID_714436137', '2022-05-20 07:51:56', 'SUBNGON125.COM'),
(28, 'quynhenh', 'sub_vip', 'Log', '30000', 'Error', 0, 0, '27000', '100016640628730', '5', '', '', 'Success', 'ID_506878011', '2022-05-20 08:10:56', 'SUBNGON125.COM'),
(29, 'quynhenh', 'sub_vip', 'Log', '15000', 'Error', 0, 0, '13500', '100068005924249', '5', '', '', 'Success', 'ID_538348409', '2022-05-20 08:12:32', 'SUBNGON125.COM'),
(30, 'hylz12', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '9000', '100000426467965', '5', '', '', 'Success', 'ID_225714555', '2022-05-20 08:19:44', 'SUBNGON125.COM'),
(31, 'phuquy06', 'sub_vip', 'Log', '80000', 'Error', 0, 0, '72000', '100007856102575', '5', '', '', 'Pause', 'ID_854145736', '2022-05-20 08:20:15', 'SUBNGON125.COM'),
(32, 'phuquy06', 'sub_vip', 'Log', '70000', 'Error', 0, 0, '63000', '100007856102575', '5', '', '', 'Success', 'ID_775096180', '2022-05-20 08:23:55', 'SUBNGON125.COM'),
(33, 'ngo-thuong-minh', 'sub_vip', 'Log', '20000', 'Error', 0, 0, '18000', '100048000095002', '5', '', '', 'Success', 'ID_210118803', '2022-05-20 08:29:38', 'SUBNGON125.COM'),
(34, 'duchoang', 'sub_vip', 'Log', '100', 'Error', 0, 0, '180', '100054477469628', '4', '', '', 'Pendding', 'ID_809906730', '2022-05-20 08:49:57', 'SUBNGON125.COM'),
(35, 'lequyphu001', 'sub_vip', 'Log', '8000', 'Error', 0, 0, '14400', '100052880944835', '4', '', '', 'Pendding', 'ID_525693655', '2022-05-20 08:57:22', 'SUBNGON125.COM'),
(36, 'nddcoder', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100050988345302', '4', '', '', 'Pendding', 'ID_191333856', '2022-05-20 09:46:29', 'SUBNGON125.COM'),
(37, 'nddcoder', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100050988345302', '4', '', '', 'Start', 'ID_856151631', '2022-05-20 09:48:09', 'SUBNGON125.COM'),
(38, 'nddcoder', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100067846841315', '4', '', '', 'Start', 'ID_446933203', '2022-05-20 09:56:15', 'SUBNGON125.COM'),
(39, 'nddcoder', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '10000', '100036289236310', '3', '', '', 'Start', 'ID_559357228', '2022-05-20 09:59:24', 'SUBNGON125.COM'),
(40, 'nddcoder', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100025818072044', '4', '', '', 'Start', 'ID_593108009', '2022-05-20 10:09:02', 'SUBNGON125.COM'),
(41, 'phucthien', 'sub_vip', 'Log', '1000', 'Error', 0, 0, '3000', '100064336801258', '1', '', '', 'Start', 'ID_180144773', '2022-05-20 12:19:14', 'SUBNGON125.COM'),
(42, 'nguyentandung109', 'sub_vip', 'Log', '100000', 'Error', 0, 0, '50000', '100053975863848', '5', '', '', 'Pause', 'ID_196995740', '2022-05-20 13:46:07', 'SUBNGON125.COM'),
(43, 'bundyo111', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '5000', '100057201736827', '5', '', '', 'Pause', 'ID_468940351', '2022-05-20 13:46:16', 'SUBNGON125.COM'),
(44, 'lequyphu001', 'sub_vip', 'Log', '1000', 'Error', 0, 0, '500', '100037077223527', '3', '', '', 'Success', 'ID_849181111', '2022-05-20 13:46:44', 'SUBNGON125.COM'),
(45, 'teoemm', 'sub_vip', 'Log', '80000', 'Error', 0, 0, '40000', '100023328722862', '5', '', '', 'Pause', 'ID_794651082', '2022-05-20 13:46:50', 'SUBNGON125.COM'),
(46, 'quynhenh', 'sub_vip', 'Log', '18000', 'Error', 0, 0, '9000', '100067220538694', '3', '', '', 'Pause', 'ID_271083401', '2022-05-20 13:48:42', 'SUBNGON125.COM'),
(47, 'bundyo111', 'sub_vip', 'Log', '50000', 'Error', 0, 0, '25000', '100057201736827', '3', '', '', 'Pause', 'ID_114131302', '2022-05-20 13:49:36', 'SUBNGON125.COM'),
(48, 'duchoang', 'sub_vip', 'Log', '4000', 'Error', 0, 0, '2000', '100032816922758', '3', '', '', 'Pause', 'ID_868257484', '2022-05-20 13:58:06', 'SUBNGON125.COM'),
(49, 'phuquy06', 'sub_vip', 'Log', '200000', 'Error', 0, 0, '100000', '100007856102575', '3', '', '', 'Pause', 'ID_914677179', '2022-05-20 14:03:51', 'SUBNGON125.COM'),
(50, 'thanhdat05', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '5000', '100027737153618', '3', '', '', 'Pause', 'ID_484609355', '2022-05-20 14:04:24', 'SUBNGON125.COM'),
(51, 'leducthanh2006', 'sub_vip', 'Log', '50000', 'Error', 0, 0, '25000', '100081217651914', '3', '', '', 'Success', 'ID_662359864', '2022-05-20 14:06:29', 'SUBNGON125.COM'),
(52, 'trumsubvn', 'sub_vip', 'Log', '23000', 'Error', 0, 0, '41400', '100073016204132', '4', '', '', 'Pause', 'ID_18227155', '2022-05-20 14:18:20', 'SUBNGON125.COM'),
(53, 'trumsubvn', 'sub_vip', 'Log', '870', 'Error', 0, 0, '1566', '100017108192657', '4', '', '', 'Pause', 'ID_782793086', '2022-05-20 14:21:27', 'SUBNGON125.COM'),
(54, 'thanhdat05', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100069154724706', '4', '', '', 'Pause', 'ID_440878362', '2022-05-20 14:24:55', 'SUBNGON125.COM'),
(55, 'lequyphu001', 'sub_vip', 'Log', '1000', 'Error', 0, 0, '2000', '100037077223527', '3', '', '', 'Start', 'ID_324673643', '2022-05-20 14:41:44', 'SUBNGON125.COM'),
(56, 'gianguyeen', 'sub_vip', 'Log', '5555', 'Error', 0, 0, '9999', '100059965612819', '4', '', '', 'Start', 'ID_272142419', '2022-05-20 15:03:30', 'SUBNGON125.COM'),
(57, 'thuannn', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100028378962882', '4', '', '', 'Start', 'ID_619542349', '2022-05-20 15:51:23', 'SUBNGON125.COM'),
(58, 'trumsubvn', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100073016204132', '4', '', '', 'Start', 'ID_862712347', '2022-05-20 16:23:04', 'SUBNGON125.COM'),
(59, 'thanhdat05', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100069154724706', '4', '', '', 'Start', 'ID_798343936', '2022-05-20 16:34:48', 'SUBNGON125.COM'),
(60, 'ahaosubhihi', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100030984914220', '4', '', '', 'Start', 'ID_515487730', '2022-05-20 17:10:48', 'SUBNGON125.COM'),
(61, 'trumsubvn', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100071731634201', '4', '', '', 'Start', 'ID_571967027', '2022-05-20 19:17:37', 'SUBNGON125.COM'),
(62, 'lequyphu001', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100078752701019', '3', '', '', 'Start', 'ID_407782279', '2022-05-20 19:58:13', 'SUBNGON125.COM'),
(63, 'lequyphu001', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100037077223527', '3', '', '', 'Start', 'ID_689879990', '2022-05-20 20:30:37', 'SUBNGON125.COM'),
(64, 'bnguyen2008', 'sub_vip', 'Log', '7500', 'Error', 0, 0, '15000', '100047512505562', '3', '', '', 'Start', 'ID_520350272', '2022-05-20 21:21:45', 'SUBNGON125.COM'),
(65, 'nguyentandung109', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100053975863848', '4', '', '', 'Start', 'ID_224291310', '2022-05-21 08:25:31', 'SUBNGON125.COM'),
(66, 'nguyentandung109', 'sub_vip', 'Log', '7259', 'Error', 0, 0, '13066.2', '100053975863848', '4', '', '', 'Start', 'ID_348507905', '2022-05-21 08:28:55', 'SUBNGON125.COM'),
(67, 'nguyentandung109', 'sub_vip', 'Log', '4400', 'Error', 0, 0, '8800', '100042080942750', '3', '', '', 'Start', 'ID_578438703', '2022-05-21 08:43:10', 'SUBNGON125.COM'),
(68, 'quynhenh', 'sub_vip', 'Log', '5000', 'Error', 0, 0, '9000', '100067220538694', '4', '', '', 'Start', 'ID_537769797', '2022-05-21 10:23:46', 'SUBNGON125.COM'),
(69, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100073223966428', '4', '', '', 'Start', 'ID_72956248', '2022-05-21 13:28:53', 'SUBNGON125.COM'),
(70, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100073223966428', '3', '', '', 'Start', 'ID_830019991', '2022-05-21 13:53:43', 'SUBNGON125.COM'),
(71, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100073223966428', '3', '', '', 'Start', 'ID_972252653', '2022-05-21 14:33:59', 'SUBNGON125.COM'),
(72, 'teoemm', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100057532164170', '3', '', '', 'Start', 'ID_8774981', '2022-05-21 15:25:42', 'SUBNGON125.COM'),
(73, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100069482898449', '3', '', '', 'Start', 'ID_61884088', '2022-05-21 21:32:44', 'SUBNGON125.COM'),
(74, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100073223966428', '3', '', '', 'Start', 'ID_494853506', '2022-05-21 21:34:05', 'SUBNGON125.COM'),
(75, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '20000', '100073223966428', '3', '', '', 'Start', 'ID_745954872', '2022-05-21 21:58:09', 'SUBNGON125.COM'),
(76, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100073223966428', '4', '', '', 'Start', 'ID_144023460', '2022-05-22 00:30:51', 'SUBNGON125.COM'),
(77, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100069482898449', '4', '', '', 'Start', 'ID_415232207', '2022-05-22 00:31:58', 'SUBNGON125.COM'),
(78, 'quynhenh', 'sub_vip', 'Log', '10000', 'Error', 0, 0, '18000', '100069482898449', '4', '', '', 'Start', 'ID_520796219', '2022-05-22 02:09:20', 'SUBNGON125.COM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_naptien`
--

CREATE TABLE `history_naptien` (
  `id` int(11) NOT NULL,
  `type` varchar(999) NOT NULL,
  `username` varchar(999) NOT NULL,
  `loaithe` varchar(999) DEFAULT NULL,
  `menhgia` varchar(999) NOT NULL,
  `sothe` varchar(999) DEFAULT NULL,
  `soseri` varchar(999) DEFAULT NULL,
  `thucnhan` varchar(999) DEFAULT NULL,
  `trangthai` varchar(999) NOT NULL,
  `date` varchar(999) DEFAULT NULL,
  `namemomo` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `phonemomo` varchar(999) DEFAULT NULL,
  `tranid` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_api`
--

CREATE TABLE `list_api` (
  `id` int(11) NOT NULL,
  `username` varchar(999) DEFAULT NULL,
  `token` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `name_api` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `link_callback` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_hotro`
--

CREATE TABLE `list_hotro` (
  `id` int(11) NOT NULL,
  `username` varchar(999) DEFAULT NULL,
  `loai_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `tieu_de_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `id_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung_xuly` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_site`
--

CREATE TABLE `log_site` (
  `id` int(11) NOT NULL,
  `username` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `ip` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `log_site`
--

INSERT INTO `log_site` (`id`, `username`, `note`, `ip`, `date`, `url_config`) VALUES
(221, 'lequyphu001', 'phus', '14.255.155.20', '2022-05-19 19:31:46', 'SUBNGON125.COM'),
(222, 'lequyphu001', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '2001:ee0:48ba:6f50:9130:ba50:63ee:8c9f', '2022-05-19 19:32:55', 'SUBNGON125.COM'),
(223, 'lequyphu001', '', '14.255.155.20', '2022-05-19 19:44:25', 'SUBNGON125.COM'),
(224, 'kduyendz1209', 'Đăng kí tài khoản', '2402:800:6273:23a4:38:19fa:dd39:3eb8', '2022-05-19 19:44:53', 'SUBNGON125.COM'),
(225, 'ahaosubhihi', 'Đăng kí tài khoản', '118.68.230.58', '2022-05-19 19:54:38', 'SUBNGON125.COM'),
(226, 'Tandzs1', 'Đăng kí tài khoản', '2402:800:6310:774b:b588:cea1:33dc:9262', '2022-05-19 20:06:00', 'SUBNGON125.COM'),
(227, 'tandzs1', '', '14.255.155.20', '2022-05-19 20:07:35', 'SUBNGON125.COM'),
(228, 'Nguyendz12386', 'Đăng kí tài khoản', '2001:ee0:4bda:5030:846f:8f0:add1:3d0a', '2022-05-19 20:12:08', 'SUBNGON125.COM'),
(229, 'Ttnam123', 'Đăng kí tài khoản', '2402:800:6312:90ab:38c7:bee9:9d40:fe7a', '2022-05-19 20:14:00', 'SUBNGON125.COM'),
(230, 'Caiconcac123', 'Đăng kí tài khoản', '115.72.73.169', '2022-05-19 20:16:41', 'SUBNGON125.COM'),
(231, 'kduyendz1209', '', '14.255.155.20', '2022-05-19 20:18:06', 'SUBNGON125.COM'),
(232, 'kduyendz1209', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9720', '2402:800:6273:23a4:38:19fa:dd39:3eb8', '2022-05-19 20:21:47', 'SUBNGON125.COM'),
(233, 'nhkdepzaiqa', 'Đăng kí tài khoản', '2001:ee0:48bf:5ea0:5c0f:abca:96ea:253b', '2022-05-19 20:23:41', 'SUBNGON125.COM'),
(234, 'thanhnam291208', 'Đăng kí tài khoản', '2402:800:611a:ad6a:f82d:2843:89cc:b15f', '2022-05-19 20:29:45', 'SUBNGON125.COM'),
(235, 'kduyendz1209', '', '14.255.155.20', '2022-05-19 20:39:53', 'SUBNGON125.COM'),
(236, 'tietien07', 'Đăng kí tài khoản', '14.255.155.20', '2022-05-19 20:46:58', 'SUBNGON125.COM'),
(237, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:00:40', 'SUBNGON125.COM'),
(238, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:01:24', 'SUBNGON125.COM'),
(239, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:02:00', 'SUBNGON125.COM'),
(240, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:02:16', 'SUBNGON125.COM'),
(241, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:03:02', 'SUBNGON125.COM'),
(242, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:03:23', 'SUBNGON125.COM'),
(243, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:04:03', 'SUBNGON125.COM'),
(244, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:04:31', 'SUBNGON125.COM'),
(245, 'nddcoder', '', '2402:800:61eb:3fac:155d:3990:8334:e480', '2022-05-19 21:07:51', 'SUBNGON125.COM'),
(246, 'PhucThien', 'Đăng kí tài khoản', '2402:800:629e:f614:942c:816d:fc9:4611', '2022-05-19 21:13:51', 'SUBNGON125.COM'),
(247, 'phucthien', ' Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-05-19 21:14:27', '2402:800:629e:f614:942c:816d:fc9:4611', '2022-05-19 21:14:27', 'SUBNGON125.COM'),
(248, 'Phuocnguyen3933', 'Đăng kí tài khoản', '2001:ee0:4c05:57f0:cc2e:b107:f0bd:ae9', '2022-05-19 21:16:51', 'SUBNGON125.COM'),
(249, 'phucthien', '', '14.255.155.20', '2022-05-19 21:24:37', 'SUBNGON125.COM'),
(250, 'phucthien', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 6000', '2402:800:629e:f614:942c:816d:fc9:4611', '2022-05-19 21:25:29', 'SUBNGON125.COM'),
(251, 'Namsubngon', 'Đăng kí tài khoản', '5.62.61.153', '2022-05-19 21:27:28', 'SUBNGON125.COM'),
(252, 'phucthien', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '2402:800:629e:f614:942c:816d:fc9:4611', '2022-05-19 21:27:44', 'SUBNGON125.COM'),
(253, '123123ok', 'Đăng kí tài khoản', '2405:4802:159:fa10:cd35:9e31:eb9b:f713', '2022-05-19 21:29:35', 'SUBNGON125.COM'),
(254, 'phucthien', '', '14.255.155.20', '2022-05-19 21:32:38', 'SUBNGON125.COM'),
(255, 'phucthien', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 10200', '2402:800:629e:f614:942c:816d:fc9:4611', '2022-05-19 21:35:04', 'SUBNGON125.COM'),
(256, 'phucthien', '', '14.255.155.20', '2022-05-19 21:40:34', 'SUBNGON125.COM'),
(257, 'phucthien', '', '14.255.155.20', '2022-05-19 21:40:48', 'SUBNGON125.COM'),
(258, 'phucthien', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 10200', '2402:800:629e:f614:942c:816d:fc9:4611', '2022-05-19 21:45:33', 'SUBNGON125.COM'),
(259, 'Hackerdz', 'Đăng kí tài khoản', '14.189.120.229', '2022-05-20 00:22:31', 'SUBNGON125.COM'),
(260, 'duchoang', '', '14.255.155.18', '2022-05-20 07:02:16', 'SUBNGON125.COM'),
(261, 'tuandzkzt', 'Đăng kí tài khoản', '2402:9d80:227:7bd3:11b:5678:1bd7:bdd1', '2022-05-20 07:17:38', 'SUBNGON125.COM'),
(262, 'hylz12', '', '14.255.155.18', '2022-05-20 07:24:31', 'SUBNGON125.COM'),
(263, 'Thuhathu', 'Đăng kí tài khoản', '103.74.105.8', '2022-05-20 07:25:25', 'SUBNGON125.COM'),
(264, 'hylz12', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 10800', '42.118.57.14', '2022-05-20 07:25:58', 'SUBNGON125.COM'),
(265, 'CoTecutevcl', 'Đăng kí tài khoản', '27.67.75.125', '2022-05-20 07:33:33', 'SUBNGON125.COM'),
(266, 'Leezuong', 'Đăng kí tài khoản', '103.176.113.240', '2022-05-20 07:39:14', 'SUBNGON125.COM'),
(267, 'Bulon123', 'Đăng kí tài khoản', '27.67.187.55', '2022-05-20 07:42:34', 'SUBNGON125.COM'),
(268, 'duchoang', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 3024', '2001:ee0:49c9:21f0:9d60:8773:4255:cca7', '2022-05-20 07:45:55', 'SUBNGON125.COM'),
(269, 'kduyendz1209', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9936', '2402:800:6273:23a4:38:19fa:dd39:3eb8', '2022-05-20 07:51:57', 'SUBNGON125.COM'),
(270, 'phuquy06', 'Đăng kí tài khoản', '14.255.155.18', '2022-05-20 07:52:26', 'SUBNGON125.COM'),
(271, 'phuquy06', '', '14.255.155.18', '2022-05-20 07:56:53', 'SUBNGON125.COM'),
(272, 'phuquy06', '', '14.255.155.18', '2022-05-20 07:57:56', 'SUBNGON125.COM'),
(273, 'phuquy06', '', '14.255.155.18', '2022-05-20 07:58:32', 'SUBNGON125.COM'),
(274, 'phuquy06', '', '14.255.155.18', '2022-05-20 07:58:55', 'SUBNGON125.COM'),
(275, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:02:22', 'SUBNGON125.COM'),
(276, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:02:53', 'SUBNGON125.COM'),
(277, 'Quynhenh ', 'Đăng kí tài khoản', '2402:800:6273:f278:c0e5:3968:d6e:8615', '2022-05-20 08:07:53', 'SUBNGON125.COM'),
(278, 'quynhenh', '', '14.255.155.18', '2022-05-20 08:10:19', 'SUBNGON125.COM'),
(279, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 27000', '2402:800:6273:f278:c0e5:3968:d6e:8615', '2022-05-20 08:10:57', 'SUBNGON125.COM'),
(280, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 13500', '2402:800:6273:f278:c0e5:3968:d6e:8615', '2022-05-20 08:12:32', 'SUBNGON125.COM'),
(281, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:19:29', 'SUBNGON125.COM'),
(282, 'hylz12', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '42.118.57.14', '2022-05-20 08:19:45', 'SUBNGON125.COM'),
(283, 'phuquy06', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 72000', '27.67.75.112', '2022-05-20 08:20:16', 'SUBNGON125.COM'),
(284, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:20:43', 'SUBNGON125.COM'),
(285, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:21:07', 'SUBNGON125.COM'),
(286, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:22:03', 'SUBNGON125.COM'),
(287, 'phuquy06', '', '14.255.155.18', '2022-05-20 08:23:05', 'SUBNGON125.COM'),
(288, 'phuquy06', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 63000', '27.67.75.112', '2022-05-20 08:23:55', 'SUBNGON125.COM'),
(289, 'ngo-thuong-minh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2405:4800:757d:1d6:98c2:3cdf:e387:b7e3', '2022-05-20 08:29:39', 'SUBNGON125.COM'),
(290, 'trannguyen', 'Đăng kí tài khoản', '2402:800:6210:d69d:d956:d1aa:4b95:9afe', '2022-05-20 08:33:02', 'SUBNGON125.COM'),
(291, 'lebao1', 'Đăng kí tài khoản', '2405:4802:605f:99b0:613c:b13b:57d3:e59e', '2022-05-20 08:37:49', 'SUBNGON125.COM'),
(292, 'duchoang', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 180', '2001:ee0:49c9:21f0:9d60:8773:4255:cca7', '2022-05-20 08:49:58', 'SUBNGON125.COM'),
(293, 'ngo-thuong-minh', '', '14.255.155.18', '2022-05-20 08:55:04', 'SUBNGON125.COM'),
(294, 'lequyphu001', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 14400', '2001:ee0:48ba:c6c0:b98e:26b2:1574:c39d', '2022-05-20 08:57:23', 'SUBNGON125.COM'),
(295, 'Dinh0401', 'Đăng kí tài khoản', '1.54.154.81', '2022-05-20 09:18:14', 'SUBNGON125.COM'),
(296, 'nddcoder', '', '27.67.190.187', '2022-05-20 09:45:51', 'SUBNGON125.COM'),
(297, 'nddcoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '27.67.190.187', '2022-05-20 09:46:30', 'SUBNGON125.COM'),
(298, 'nddcoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '27.67.190.187', '2022-05-20 09:48:09', 'SUBNGON125.COM'),
(299, 'nddcoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '27.67.190.187', '2022-05-20 09:56:16', 'SUBNGON125.COM'),
(300, 'nddcoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 10000', '27.67.190.187', '2022-05-20 09:59:24', 'SUBNGON125.COM'),
(301, 'nddcoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '27.67.190.187', '2022-05-20 10:09:03', 'SUBNGON125.COM'),
(302, 'Minhdzx', 'Đăng kí tài khoản', '2001:ee0:4dad:fd20:34c2:c239:f6ab:fba1', '2022-05-20 10:24:01', 'SUBNGON125.COM'),
(303, 'tjeuho001', 'Đăng kí tài khoản', '61.9.103.60', '2022-05-20 10:42:12', 'SUBNGON125.COM'),
(304, 'ditmeadndd', 'Đăng kí tài khoản', '2402:800:6273:9459:5129:39c1:bec5:dc1c', '2022-05-20 11:00:54', 'SUBNGON125.COM'),
(305, 'Lamhoaibao11111', 'Đăng kí tài khoản', '2402:800:63f1:9b50:ff:4146:22c6:9f58', '2022-05-20 11:08:25', 'SUBNGON125.COM'),
(306, '123123', 'Đăng kí tài khoản', '118.69.73.190', '2022-05-20 11:31:20', 'SUBNGON125.COM'),
(307, 'nddcoder', '', '14.255.155.18', '2022-05-20 11:46:20', 'SUBNGON125.COM'),
(308, 'nddcoder', '', '14.255.155.18', '2022-05-20 11:49:55', 'SUBNGON125.COM'),
(309, 'lodatk6', 'Đăng kí tài khoản', '2001:ee0:4507:bcf0:316c:8d73:ebd6:1942', '2022-05-20 12:03:13', 'SUBNGON125.COM'),
(310, 'Hoangvinhday', 'Đăng kí tài khoản', '2001:ee0:5535:1aa0:14f9:9f94:86ad:11b5', '2022-05-20 12:16:23', 'SUBNGON125.COM'),
(311, 'NHH2006', 'Đăng kí tài khoản', '42.116.206.197', '2022-05-20 12:19:04', 'SUBNGON125.COM'),
(312, 'phucthien', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 3000', '2402:800:629e:f614:bc4a:b009:3264:6ca8', '2022-05-20 12:19:14', 'SUBNGON125.COM'),
(313, 'ngotheduy123', 'Đăng kí tài khoản', '2001:ee0:48ba:c6c0:39a5:65c9:1701:bbd7', '2022-05-20 12:19:42', 'SUBNGON125.COM'),
(314, 'long99nd', 'Đăng kí tài khoản', '118.71.164.176', '2022-05-20 12:44:17', 'SUBNGON125.COM'),
(315, 'Phucthanhdo', 'Đăng kí tài khoản', '2001:ee0:7854:bee0:8c1d:d987:ed8:583d', '2022-05-20 12:46:17', 'SUBNGON125.COM'),
(316, 'tranvuduy1244', 'Đăng kí tài khoản', '2402:800:f7ab:fb40:179a:4309:73a0:a15e', '2022-05-20 12:55:48', 'SUBNGON125.COM'),
(317, 'Vietdeptrai', 'Đăng kí tài khoản', '27.75.155.151', '2022-05-20 13:02:18', 'SUBNGON125.COM'),
(318, 'gianguyeen', 'Đăng kí tài khoản', '2402:800:6214:ad0e:3824:b977:d9b6:92bf', '2022-05-20 13:03:06', 'SUBNGON125.COM'),
(319, 'gianguyeen', '', '14.255.155.18', '2022-05-20 13:08:15', 'SUBNGON125.COM'),
(320, 'teoemm', '', '14.255.155.18', '2022-05-20 13:09:43', 'SUBNGON125.COM'),
(321, 'luuhopp000005', 'Đăng kí tài khoản', '2001:ee0:438e:e6d0:c541:a48a:9618:f37f', '2022-05-20 13:15:48', 'SUBNGON125.COM'),
(322, 'mkhoa2006', 'Đăng kí tài khoản', '2001:ee0:169:697b:4dbd:38d9:2646:f57', '2022-05-20 13:19:08', 'SUBNGON125.COM'),
(323, 'lequyphu001', '', '14.255.155.18', '2022-05-20 13:21:35', 'SUBNGON125.COM'),
(324, 'Ducle1910', 'Đăng kí tài khoản', '2402:800:61aa:eb73:f160:7b29:1023:bb70', '2022-05-20 13:21:42', 'SUBNGON125.COM'),
(325, 'nguyentandung109', '', '14.255.155.18', '2022-05-20 13:28:51', 'SUBNGON125.COM'),
(326, 'bundyo111', '', '14.255.155.18', '2022-05-20 13:31:32', 'SUBNGON125.COM'),
(327, 'nguyentandung109', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 50000', '2402:800:611b:55ac:5db1:6e20:34da:5fa2', '2022-05-20 13:46:07', 'SUBNGON125.COM'),
(328, 'bundyo111', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 5000', '2402:800:6273:16f:d030:9f6d:84d2:4940', '2022-05-20 13:46:17', 'SUBNGON125.COM'),
(329, 'lequyphu001', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 500', '14.255.155.18', '2022-05-20 13:46:45', 'SUBNGON125.COM'),
(330, 'teoemm', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 40000', '2405:4802:60b0:5900:f139:7bf2:28b2:6b92', '2022-05-20 13:46:50', 'SUBNGON125.COM'),
(331, 'Cuongdcbn1231', 'Đăng kí tài khoản', '42.116.170.65', '2022-05-20 13:48:41', 'SUBNGON125.COM'),
(332, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '2402:800:6273:f278:c0e5:3968:d6e:8615', '2022-05-20 13:48:43', 'SUBNGON125.COM'),
(333, 'bundyo111', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 25000', '2402:800:6273:16f:d030:9f6d:84d2:4940', '2022-05-20 13:49:37', 'SUBNGON125.COM'),
(334, 'adminbinh', 'Đăng kí tài khoản', '2402:800:61a4:8583:383d:c1c8:a36:b530', '2022-05-20 13:55:48', 'SUBNGON125.COM'),
(335, 'duchoang', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 2000', '2001:ee0:49c9:21f0:9d60:8773:4255:cca7', '2022-05-20 13:58:07', 'SUBNGON125.COM'),
(336, 'trumsubvn', '', '14.255.155.18', '2022-05-20 13:58:44', 'SUBNGON125.COM'),
(337, 'phuquy06', '', '14.255.155.18', '2022-05-20 14:00:06', 'SUBNGON125.COM'),
(338, 'leducthanh2006', 'Đăng kí tài khoản', '14.255.155.18', '2022-05-20 14:02:32', 'SUBNGON125.COM'),
(339, 'thanhdat05', '', '14.255.155.18', '2022-05-20 14:03:17', 'SUBNGON125.COM'),
(340, 'phuquy06', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 100000', '2402:800:62d0:ff52:1c2b:acbb:2f9:f1e2', '2022-05-20 14:03:51', 'SUBNGON125.COM'),
(341, 'thanhdat05', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 5000', '113.163.202.103', '2022-05-20 14:04:25', 'SUBNGON125.COM'),
(342, 'leducthanh2006', '', '14.255.155.18', '2022-05-20 14:05:23', 'SUBNGON125.COM'),
(343, 'leducthanh2006', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 25000', '14.255.155.18', '2022-05-20 14:06:29', 'SUBNGON125.COM'),
(344, 'thang1231', 'Đăng kí tài khoản', '171.252.154.37', '2022-05-20 14:06:40', 'SUBNGON125.COM'),
(345, 'leducthanh2006', '', '14.255.155.18', '2022-05-20 14:06:56', 'SUBNGON125.COM'),
(346, 'thangdzqn', 'Đăng kí tài khoản', '171.252.154.37', '2022-05-20 14:08:11', 'SUBNGON125.COM'),
(347, 'trumsubvn', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 41400', '222.253.180.40', '2022-05-20 14:18:20', 'SUBNGON125.COM'),
(348, 'Nguyentandung109', '', '14.255.155.18', '2022-05-20 14:19:13', 'SUBNGON125.COM'),
(349, 'teoemm', '', '14.255.155.18', '2022-05-20 14:21:01', 'SUBNGON125.COM'),
(350, 'trumsubvn', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 1566', '222.253.180.40', '2022-05-20 14:21:28', 'SUBNGON125.COM'),
(351, 'thanhdat05', '', '14.255.155.18', '2022-05-20 14:22:46', 'SUBNGON125.COM'),
(352, 'bundyo111', '', '14.255.155.18', '2022-05-20 14:23:26', 'SUBNGON125.COM'),
(353, 'bundyo111', '', '14.255.155.18', '2022-05-20 14:24:35', 'SUBNGON125.COM'),
(354, 'thanhdat05', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '2402:800:634f:81a1:dd04:ae81:fbcd:85e7', '2022-05-20 14:24:56', 'SUBNGON125.COM'),
(355, 'tuan188', 'Đăng kí tài khoản', '113.189.47.10', '2022-05-20 14:28:05', 'SUBNGON125.COM'),
(356, 'thanhdat05', '', '14.255.155.18', '2022-05-20 14:30:40', 'SUBNGON125.COM'),
(357, 'thanhdat05', '', '14.255.155.18', '2022-05-20 14:32:11', 'SUBNGON125.COM'),
(358, 'thanhdat05', '', '14.255.155.18', '2022-05-20 14:32:25', 'SUBNGON125.COM'),
(359, 'trumsubvn', '', '14.255.155.18', '2022-05-20 14:33:33', 'SUBNGON125.COM'),
(360, 'phuquy06', '', '14.255.155.18', '2022-05-20 14:34:10', 'SUBNGON125.COM'),
(361, 'duchoang', '', '14.255.155.18', '2022-05-20 14:34:40', 'SUBNGON125.COM'),
(362, 'duchoang', '', '14.255.155.18', '2022-05-20 14:34:58', 'SUBNGON125.COM'),
(363, 'quynhenh', '', '14.255.155.18', '2022-05-20 14:35:34', 'SUBNGON125.COM'),
(364, 'lequyphu001', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 2000', '14.255.155.18', '2022-05-20 14:41:44', 'SUBNGON125.COM'),
(365, 'gianguyeen', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9999', '2402:800:6214:ad0e:452b:444b:c76c:bc19', '2022-05-20 15:03:31', 'SUBNGON125.COM'),
(366, 'Naznh14', 'Đăng kí tài khoản', '2402:800:61ea:6d35:4cbe:1069:41f5:a2de', '2022-05-20 15:26:44', 'SUBNGON125.COM'),
(367, 'Thuannn', 'Đăng kí tài khoản', '2001:ee0:225:5431:e812:f8d6:54d0:4fc3', '2022-05-20 15:30:09', 'SUBNGON125.COM'),
(368, 'anhkhoa05', 'Đăng kí tài khoản', '123.25.114.131', '2022-05-20 15:33:49', 'SUBNGON125.COM'),
(369, 'thuannn', '', '14.255.155.18', '2022-05-20 15:34:26', 'SUBNGON125.COM'),
(370, 'Tamdz103', 'Đăng kí tài khoản', '2001:ee0:527e:1b0:b489:ccf0:b556:1a0b', '2022-05-20 15:46:46', 'SUBNGON125.COM'),
(371, 'thuannn', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2001:ee0:225:5431:e812:f8d6:54d0:4fc3', '2022-05-20 15:51:24', 'SUBNGON125.COM'),
(372, 'khahuy', 'Đăng kí tài khoản', '2001:ee0:569c:eb0:b9e0:4658:d1aa:b735', '2022-05-20 15:52:15', 'SUBNGON125.COM'),
(373, 'kenedm64225', 'Đăng kí tài khoản', '14.180.206.132', '2022-05-20 15:58:45', 'SUBNGON125.COM'),
(374, 'trumsubvn', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '222.253.180.40', '2022-05-20 16:23:04', 'SUBNGON125.COM'),
(375, 'thanhdat05', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '2402:800:634f:81a1:a542:5613:5494:fdba', '2022-05-20 16:34:49', 'SUBNGON125.COM'),
(376, 'Thaonhu_0508', 'Đăng kí tài khoản', '2402:800:639a:8b1d:7044:ee3a:be6d:149', '2022-05-20 16:40:00', 'SUBNGON125.COM'),
(377, 'ahaosubhihi', '', '14.255.155.18', '2022-05-20 17:00:55', 'SUBNGON125.COM'),
(378, 'ahaosubhihi', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '171.243.179.232', '2022-05-20 17:10:48', 'SUBNGON125.COM'),
(379, 'trcquh', 'Đăng kí tài khoản', '2001:ee0:4cff:16b0:fce0:60d9:aa87:1db9', '2022-05-20 17:22:15', 'SUBNGON125.COM'),
(380, 'Vuminhhieu2008', 'Đăng kí tài khoản', '14.191.151.232', '2022-05-20 17:39:10', 'SUBNGON125.COM'),
(381, 'TrinhduytoanNo1', 'Đăng kí tài khoản', '171.244.57.217', '2022-05-20 17:47:20', 'SUBNGON125.COM'),
(382, 'Khang2009', 'Đăng kí tài khoản', '2405:4803:c85c:2880:a15e:50bb:9faa:e3fd', '2022-05-20 18:52:52', 'SUBNGON125.COM'),
(383, 'Datvu03', 'Đăng kí tài khoản', '2401:d800:d060:a280:a7c5:67d7:f47:86f3', '2022-05-20 18:58:42', 'SUBNGON125.COM'),
(384, 'trumsubvn', ' Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-05-20 19:04:04', '222.253.180.40', '2022-05-20 19:04:04', 'SUBNGON125.COM'),
(385, 'ltd77777', 'Đăng kí tài khoản', '2405:4802:b2b1:2940:adbe:221c:f9ec:8cad', '2022-05-20 19:05:08', 'SUBNGON125.COM'),
(386, 'zongzii1', 'Đăng kí tài khoản', '2405:4802:70f8:7f60:892a:11fa:80c9:fd60', '2022-05-20 19:08:14', 'SUBNGON125.COM'),
(387, 'ndtbuff', 'Đăng kí tài khoản', '14.184.78.108', '2022-05-20 19:10:01', 'SUBNGON125.COM'),
(388, 'trumsubvn', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '222.253.180.40', '2022-05-20 19:17:38', 'SUBNGON125.COM'),
(389, 'Khanh222', 'Đăng kí tài khoản', '2001:ee0:4523:cd20:3845:f287:4e4c:170d', '2022-05-20 19:21:19', 'SUBNGON125.COM'),
(390, 'doanvanloi', 'Đăng kí tài khoản', '2402:9d80:432:1785:665:4ad5:e0ca:b7e2', '2022-05-20 19:23:21', 'SUBNGON125.COM'),
(391, 'teoemm', ' Vừa nạp thẻ MOBIFONE với mệnh giá  vào lúc 2022-05-20 19:43:40', '2405:4802:60b0:5900:298d:87d2:9a38:b224', '2022-05-20 19:43:40', 'SUBNGON125.COM'),
(392, 'teoemm', '', '14.255.155.18', '2022-05-20 19:57:15', 'SUBNGON125.COM'),
(393, 'lequyphu001', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '14.255.155.18', '2022-05-20 19:58:13', 'SUBNGON125.COM'),
(394, 'bnguyen2008', 'Đăng kí tài khoản', '1.55.171.107', '2022-05-20 20:21:29', 'SUBNGON125.COM'),
(395, 'trumsubvn', '', '14.255.155.18', '2022-05-20 20:25:58', 'SUBNGON125.COM'),
(396, 'lequyphu001', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '14.255.155.18', '2022-05-20 20:30:38', 'SUBNGON125.COM'),
(397, 'tantai123', 'Đăng kí tài khoản', '2402:800:634a:a434:b097:9437:6636:23f0', '2022-05-20 20:33:14', 'SUBNGON125.COM'),
(398, 'Nhan290915', 'Đăng kí tài khoản', '2402:800:6216:7e33:547e:f411:e081:49d', '2022-05-20 20:50:02', 'SUBNGON125.COM'),
(399, 'tandat1205', 'Đăng kí tài khoản', '2402:800:63c3:a53d:b517:fb0a:f52b:238', '2022-05-20 21:01:49', 'SUBNGON125.COM'),
(400, 'bnguyen2008', ' Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-05-20 21:05:32', '27.67.86.154', '2022-05-20 21:05:32', 'SUBNGON125.COM'),
(401, 'bnguyen2008', '', '14.255.155.18', '2022-05-20 21:16:52', 'SUBNGON125.COM'),
(402, '1234nd', 'Đăng kí tài khoản', '113.185.45.144', '2022-05-20 21:19:06', 'SUBNGON125.COM'),
(403, 'bnguyen2008', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 15000', '27.67.86.154', '2022-05-20 21:21:46', 'SUBNGON125.COM'),
(404, 'hoang12345', 'Đăng kí tài khoản', '2402:800:63b9:f0a8:4530:1077:6806:e3b7', '2022-05-20 22:11:08', 'SUBNGON125.COM'),
(405, '0389771217', 'Đăng kí tài khoản', '2001:ee0:4f8f:90:fd69:641d:dfd1:979f', '2022-05-20 22:20:03', 'SUBNGON125.COM'),
(406, 'hiendapda123', 'Đăng kí tài khoản', '2405:4802:7016:d140:60db:5813:c4b8:5386', '2022-05-20 22:40:14', 'SUBNGON125.COM'),
(407, 'nguyentandung109', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2402:800:611b:2415:5db1:6e20:34da:5fa2', '2022-05-21 08:25:32', 'SUBNGON125.COM'),
(408, 'nguyentandung109', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 13066.2', '2402:800:611b:2415:5db1:6e20:34da:5fa2', '2022-05-21 08:28:56', 'SUBNGON125.COM'),
(409, 'nguyentandung109', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 8800', '2402:800:611b:2415:5db1:6e20:34da:5fa2', '2022-05-21 08:43:11', 'SUBNGON125.COM'),
(410, 'dotoan7h', 'Đăng kí tài khoản', '113.190.180.54', '2022-05-21 08:57:49', 'SUBNGON125.COM'),
(411, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 9000', '2402:800:6273:f278:44af:d645:4ac7:a1e1', '2022-05-21 10:23:46', 'SUBNGON125.COM'),
(412, 'quynhenh', '', '14.255.155.18', '2022-05-21 13:26:45', 'SUBNGON125.COM'),
(413, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2402:800:6273:f278:44af:d645:4ac7:a1e1', '2022-05-21 13:28:54', 'SUBNGON125.COM'),
(414, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '2402:800:6273:f278:44af:d645:4ac7:a1e1', '2022-05-21 13:53:43', 'SUBNGON125.COM'),
(415, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '2001:ee0:4c15:bb80:dc0a:9496:608e:927f', '2022-05-21 14:34:00', 'SUBNGON125.COM'),
(416, 'truongdev', 'Đăng kí tài khoản', '14.191.153.167', '2022-05-21 14:46:25', 'SUBNGON125.COM'),
(417, 'teoemm', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '2405:4802:60b0:5900:89b3:52bf:23a3:9a39', '2022-05-21 15:25:42', 'SUBNGON125.COM'),
(418, 'Vanlinh123', 'Đăng kí tài khoản', '2402:800:61ac:4d3a:65e6:1c5a:90a0:3bb5', '2022-05-21 16:30:20', 'SUBNGON125.COM'),
(419, 'kemchina', '', '14.255.155.18', '2022-05-21 17:44:53', 'SUBNGON125.COM'),
(420, 'hoang2k5', 'Đăng kí tài khoản', '2402:800:6279:e6d:ac21:9ec6:732e:42c7', '2022-05-21 18:52:17', 'SUBNGON125.COM'),
(421, 'cuong1231', 'Đăng kí tài khoản', '42.116.170.123', '2022-05-21 19:44:24', 'SUBNGON125.COM'),
(422, 'PhuQuoczz', 'Đăng kí tài khoản', '2402:800:6347:c1bd:e07d:44ca:a28f:2567', '2022-05-21 20:28:18', 'SUBNGON125.COM'),
(423, 'Nguyendz12386', 'phú dz', '14.255.155.18', '2022-05-21 21:16:33', 'SUBNGON125.COM'),
(424, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '2402:800:6273:f278:e8f5:82d7:63e1:3170', '2022-05-21 21:32:44', 'SUBNGON125.COM'),
(425, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '2402:800:6273:f278:e8f5:82d7:63e1:3170', '2022-05-21 21:34:05', 'SUBNGON125.COM'),
(426, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 20000', '2402:800:6273:f278:e8f5:82d7:63e1:3170', '2022-05-21 21:58:10', 'SUBNGON125.COM'),
(427, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2402:800:6273:f278:e8f5:82d7:63e1:3170', '2022-05-22 00:30:52', 'SUBNGON125.COM'),
(428, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2402:800:6273:f278:e8f5:82d7:63e1:3170', '2022-05-22 00:31:58', 'SUBNGON125.COM'),
(429, 'quynhenh', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 18000', '2402:800:6273:f278:e8f5:82d7:63e1:3170', '2022-05-22 02:09:20', 'SUBNGON125.COM'),
(430, 'lecongvinh', 'Đăng kí tài khoản', '171.236.56.137', '2022-05-22 06:57:25', 'SUBNGON125.COM'),
(431, 'quynhenh', '', '14.255.155.18', '2022-05-22 08:57:47', 'SUBNGON125.COM'),
(432, 'pqncoderit', 'Đăng kí tài khoản', '14.180.206.132', '2022-05-22 09:18:10', 'BEMMOMO.ONLINE'),
(433, 'trickernhat754', 'Đăng kí tài khoản', '14.180.206.132', '2022-05-22 09:48:38', 'BEMMOMO.ONLINE'),
(434, 'pqncoderit', '', '14.180.206.132', '2022-05-22 10:44:45', 'BEMMOMO.ONLINE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_thongbao`
--

CREATE TABLE `note_thongbao` (
  `id` int(11) NOT NULL,
  `nguoidang` varchar(999) NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(999) NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `note_thongbao`
--

INSERT INTO `note_thongbao` (`id`, `nguoidang`, `noidung`, `date`, `url_config`) VALUES
(36, 'pqncoderit', 'Phạm Quang Nhật Đẹp trai nhất trong làng Coder', '2022-05-22 09:25:04', 'BEMMOMO.ONLINE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `key`, `value`) VALUES
(1, 'url_admin', 'BEMMOMO.ONLINE'),
(2, 'trang_thai_auto', 'ON'),
(3, 'token_auto_dvfb', 'eyJpdiI6InUrTmIvblFNM1V6U1A3dlBUdE1QZkE9PSIsInZhbHVlIjoiU2U5S1pvWUlmNFNwdXRueDBibE5IeVVWVTBZWGdwMjNHVEZCdzN5dXdaUmRuazVXVjBDdTlVRmQxVnlSTy9YKyIsIm1hYyI6IjNlNzgwYmE1NWNlOTRkNTMxM2E3OWUzMWE5ZmIyZTA1NDQzOTE3OGZjNDU0NmVjNGM2NWU2YjliODQxNzY1MjQiLCJ0YWciOiIifQ=='),
(4, 'link_host', 'https://hkg112.arandomserver.com:2083/cpsess0503461694/'),
(5, 'ip_host', '172.96.185.244'),
(6, 'username_host', 'tlikesubfbxyz'),
(7, 'password_host', 'Az9Daily1967927213'),
(8, 'id_cloud_flare', '3ffcd68bf9159de9872d9ae8254b9d98'),
(9, 'key_cloud_flare', '052c91fe2b4cd36931cd085cdbfac29c'),
(10, 'email_cloud_flare', 'lesonca05@gmail.com'),
(11, 'name_sv1', 'albert.ns.cloudflare.com'),
(12, 'name_sv2', 'priscilla.ns.cloudflare.com'),
(15, 'token_auto_trum', ''),
(16, 'token_auto_autofb', ''),
(17, 'id_auto_autofb', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `server_service`
--

CREATE TABLE `server_service` (
  `id` int(11) NOT NULL,
  `code_service` varchar(999) DEFAULT NULL,
  `server_service` varchar(999) DEFAULT NULL,
  `rate_service` varchar(999) DEFAULT NULL,
  `title_service` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `server_name` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `server_text` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status_service` int(11) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `server_service`
--

INSERT INTO `server_service` (`id`, `code_service`, `server_service`, `rate_service`, `title_service`, `server_name`, `server_text`, `status_service`, `url_config`) VALUES
(4068, 'sub_vip', '3', '1', 'Sub dạng mới, cực bá, không hỗ trợ pro5, bảo hành 7 ngày, đang sale độc quyền tại Việt Nam', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 10m / 1 ID Facebook, không chạy cho pro5.', '', 1, 'LIKESUBFB.XYZ'),
(4069, 'sub_tiktok', '3', '100', '1', '', '', 1, 'LIKESUBFB.XYZ'),
(4070, 'like_tiktok', '2', '100', '4', '', '', 1, 'LIKESUBFB.XYZ'),
(4071, 'like_post_sale', '1', '10', '3', '', '', 1, 'LIKESUBFB.XYZ'),
(4072, 'sub_vip', '3', '1', 'ok', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4073, 'sub_sale', '2', '1', '1', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4074, 'sub_vip', '35', '102', 's', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4075, 'like_post_sale', '3', '10', '1', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4076, 'like_post', '5', '10', 'd', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4077, 'sub_speed', '2', '10', 'r', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4078, 'cmt', '2', '10', '3', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4079, 'cmt', '1', '1', '4', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4080, 'mat_live', '2', '1', 't', '', '', 1, 'AUTOTUONGTAC.SITE'),
(4103, 'sub_vip', '1', '3', 'Sub dạng mới, cực bá, không hỗ trợ pro5, bảo hành 7 ngày (độc quyền cực VIP đang mua rất nhiều)', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max không giới hạn, không chạy cho pro5, (đến đơn 100k chỉ trong 5p - 20p xong).', '', 1, 'SUBNGON125.COM'),
(4104, 'sub_vip', '2', '3', 'Sub dạng mới, cực bá, không hỗ trợ pro5, bảo hành 7 ngày', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h max không giới hạn, không chạy cho pro5, (đến đơn 100k chỉ trong 5p - 20p xong).', '', 1, 'SUBNGON125.COM'),
(4105, 'sub_vip', '3', '2.0', 'Sub dạng mới, cực bá, không hỗ trợ pro5, đang sale độc quyền tại Việt Nam', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 2m / 1 ID Facebook, không chạy cho pro5.', '', 1, 'SUBNGON125.COM'),
(4106, 'sub_vip', '4', '1.8', 'Sub dạng mới, cực bá, không hỗ trợ pro5, đang sale độc quyền tại Việt Nam', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 300k / 1 ID Facebook, mỗi ngày mua được 10 đơn, không chạy cho pro5.', '', 1, 'SUBNGON125.COM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `partner_id` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `partner_key` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `token_facebook` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `id_page` longtext CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `id_page_chat` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `mail_config` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pass_mail_config` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `base_url` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `cuphap` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `site_napthe` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `logo` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `trangthai_auto` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `full_name_admin` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone_zalo` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `rate_ctv` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `rate_daily` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `rate_admin` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ten_website` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `logo_user` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `favicon` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `api_automm` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `callback_momo` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `script_live_chat` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bao_tri` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `logo_mini` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `tu_khoa` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `anhbia` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `user_auto_dvfb` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pass_auto_dvfb` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_ctv` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_dl` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_npp` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `gioi_thieu_web` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_user` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `thongbao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `anh_thong_bao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_thecao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `trang_thai_lam_tron` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `token_auto_dvfb` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `theme_home` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `theme_login` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `theme_landing` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `so_du_tao_site` int(11) NOT NULL,
  `so_tieu_tao_site` int(11) NOT NULL,
  `cap_bac_tao_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bot_tele` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `id_chat_tele` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `thong_bao_mail` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `nap_km_bank` int(255) NOT NULL,
  `bg_header_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bg_navbar_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `icon_color_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `text_color_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `modal_color` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `tuyet_roi` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `partner_id`, `partner_key`, `facebook`, `token_facebook`, `id_page`, `id_page_chat`, `mail_config`, `pass_mail_config`, `base_url`, `cuphap`, `site_napthe`, `logo`, `trangthai_auto`, `full_name_admin`, `phone_zalo`, `rate_ctv`, `rate_daily`, `rate_admin`, `ten_website`, `logo_user`, `favicon`, `api_automm`, `callback_momo`, `script_live_chat`, `bao_tri`, `logo_mini`, `tu_khoa`, `anhbia`, `user_auto_dvfb`, `pass_auto_dvfb`, `ck_ctv`, `ck_dl`, `ck_npp`, `gioi_thieu_web`, `ck_user`, `thongbao`, `anh_thong_bao`, `ck_thecao`, `trang_thai_lam_tron`, `token_auto_dvfb`, `theme_home`, `theme_login`, `theme_landing`, `so_du_tao_site`, `so_tieu_tao_site`, `cap_bac_tao_site`, `status`, `bot_tele`, `id_chat_tele`, `thong_bao_mail`, `nap_km_bank`, `bg_header_site`, `bg_navbar_site`, `icon_color_site`, `text_color_site`, `modal_color`, `tuyet_roi`, `url_config`) VALUES
(1, '0079592561', '195e2a39796131600c69c8ef80bbb2ad', 'https://www.facebook.com/nhatcss.it', 'EAABwzLixnjYBAIlTl7FuZAnVoTiZAdEm5OUdQJzNEZAalOarV1UkWKkBZBSEMpAIUbTMqexfrsNodUEOiyqZCuqZCxwSllGtpBfp8MspRI626OMyeFK6ZCWO23u3AQfCSzofQWfZBnSHKFpydmchQp5hrz4WTmN30yJjPLNNrq1fIKTnDpOGHZB8WElMi0Af1KH2ZCzfPOZCl7tRAZDZD', '100046598650791', '0', 'nhatcssit@gmail.com', 'pxuqfbsgwigydolo', 'https://subngon125.com/', 'pqncoder', 'thesieure', 'https://subgiare.vn/assets/images/logo-web-dark.png', 'ON', 'Phạm Quang Nhật', '0375343460', '500000', '5000000', '10000000', 'PQNIT.ASIA', 'https://ui-avatars.com/api/?background=random&name=', '', 'pqncoder', 'https://subngon125.com/callback/callback_bank.php', '', 'ON', 'https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-vector-illustration-initial-letter-s-and-circle-icon-logo-modern-design-png-image_1715953.jpg', 'PQNIT.ASIA, HACK LIKE , HACK SUB , TĂNG LIKE FREE , PHẠM QUANG NHẬT traodoisub, tăng like, tăng follow facebook, tiktok, instagram, miễn phí, tương tác chéo, trao đổi sub. Hệ thống mua like uy tín, Tăng like giá rẻ , Dịch vụ tăng like tăng sub giá rẻ, tăng view video FB, Tăng người xem Livestream, tăng theo dõi, tăng like Facebook, tuongtaccheo, traodoisub, tăng like, tăng follow facebook, tiktok, instagram, miễn phí, tương tác chéo, trao đổi sub, giá rẻ đảm bảo uy tín, chất lượng...', 'https://ipg-connect.com/wp-content/uploads/2020/02/Pic1.jpg', '', '', '0', '0', '0', 'PQNIT.ASIA - #1 BEST PANEL SOCIAL MEDIA VN 2022', '0', 'Chào mừng bạn đến với PQNIT.ASIA', 'https://i.imgur.com/16T4XJx.jpg', '30', 'ON', 'omNeETa17C3SAIgQrMbkK4R2X', '1', '3', '5', 2147483647, 1000000, '1', 'active', '0', '0', 'ON', 0, '#fafaff', '#033d77', '#7f9cb8', '#ffffff', '', 'OFF', 'BEMMOMO.ONLINE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_bao_modal`
--

CREATE TABLE `thong_bao_modal` (
  `id` int(11) NOT NULL,
  `loai_tb` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `text_thong_bao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_bao_modal`
--

INSERT INTO `thong_bao_modal` (`id`, `loai_tb`, `text_thong_bao`, `status`, `url_config`) VALUES
(41, 'like_post', '', 'OFF', 'LIKESUBFB.VN'),
(42, 'sub_vip', 'Hệ thống duyệt đơn hoàn toàn tự động, đơn lên sau 5 giây -> 1 giờ, khi nào quá 2 giờ thì mới liên hệ để hỗ trợ (ngoại trừ sv3 là sale nên đông sẽ lên lâu hơn phải chờ), vui lòng đọc kĩ các chú ý dịch vụ trước khi lên đơn!', 'ON', 'LIKESUBFB.VN'),
(43, 'cx_post', '', 'OFF', 'LIKESUBFB.VN'),
(44, 'cmt', '', 'OFF', 'LIKESUBFB.VN'),
(45, 'like_page_sale', '', 'OFF', 'LIKESUBFB.VN'),
(46, 'share', '', 'OFF', 'LIKESUBFB.VN'),
(47, 'mat_live', '', 'OFF', 'LIKESUBFB.VN'),
(48, 'view_video', '', 'OFF', 'LIKESUBFB.VN'),
(49, 'like_cmt', '', 'OFF', 'LIKESUBFB.VN'),
(50, 'view_story', '', 'OFF', 'LIKESUBFB.VN'),
(51, 'mem_gr', '', 'OFF', 'LIKESUBFB.VN'),
(52, 'like_ins', '', 'OFF', 'LIKESUBFB.VN'),
(53, 'cmt_ins', '', 'OFF', 'LIKESUBFB.VN'),
(54, 'sub_ins', '', 'OFF', 'LIKESUBFB.VN'),
(55, 'like_tiktok', '', 'OFF', 'LIKESUBFB.VN'),
(56, 'cmt_tiktok', '', 'OFF', 'LIKESUBFB.VN'),
(57, 'sub_tiktok', '', 'OFF', 'LIKESUBFB.VN'),
(58, 'sub_youtube', '', 'OFF', 'LIKESUBFB.VN'),
(59, 'like_youtube', '', 'OFF', 'LIKESUBFB.VN'),
(60, 'nap_the', '', 'OFF', 'LIKESUBFB.VN'),
(61, 'like_post', '', 'OFF', 'SUBNGON125.COM'),
(62, 'sub_sale', '- Mua bằng ID Facebook đã mở chế độ công khai, có nút theo dõi, có hỗ trợ tăng được cho tài khoản dưới 18+.', 'ON', 'SUBNGON125.COM'),
(63, 'cx_post', '', 'OFF', 'SUBNGON125.COM'),
(64, 'cmt', '', 'OFF', 'SUBNGON125.COM'),
(65, 'like_page_sale', '', 'OFF', 'SUBNGON125.COM'),
(66, 'share', '', 'OFF', 'SUBNGON125.COM'),
(67, 'mat_live', '', 'OFF', 'SUBNGON125.COM'),
(68, 'view_video', '', 'OFF', 'SUBNGON125.COM'),
(69, 'like_cmt', '', 'OFF', 'SUBNGON125.COM'),
(70, 'view_story', '', 'OFF', 'SUBNGON125.COM'),
(71, 'mem_gr', '', 'OFF', 'SUBNGON125.COM'),
(72, 'like_ins', '', 'OFF', 'SUBNGON125.COM'),
(73, 'cmt_ins', '', 'OFF', 'SUBNGON125.COM'),
(74, 'sub_ins', '', 'OFF', 'SUBNGON125.COM'),
(75, 'like_tiktok', '', 'OFF', 'SUBNGON125.COM'),
(76, 'cmt_tiktok', '', 'OFF', 'SUBNGON125.COM'),
(77, 'sub_tiktok', '', 'OFF', 'SUBNGON125.COM'),
(78, 'sub_youtube', '', 'OFF', 'SUBNGON125.COM'),
(79, 'like_youtube', '', 'OFF', 'SUBNGON125.COM'),
(80, 'nap_the', '', 'OFF', 'SUBNGON125.COM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(999) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `token` varchar(999) DEFAULT NULL,
  `capbac` varchar(999) DEFAULT NULL,
  `money` varchar(999) DEFAULT NULL,
  `tongnap` varchar(999) DEFAULT NULL,
  `tongtru` varchar(999) DEFAULT NULL,
  `banned` varchar(999) DEFAULT NULL,
  `time_banned` varchar(999) DEFAULT NULL,
  `ip` varchar(999) DEFAULT NULL,
  `cuphap` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `lastdate` varchar(999) DEFAULT NULL,
  `otp_code` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `email`, `token`, `capbac`, `money`, `tongnap`, `tongtru`, `banned`, `time_banned`, `ip`, `cuphap`, `date`, `lastdate`, `otp_code`, `url_config`) VALUES
(1, 'pqncoderit', 'PHẠM QUANG NHẬT', 'NzU4NTVkM2U3NGVmNGQ4YjIzM2RjMDlmOWVhZTBjZGQ=', 'nhatcssit@gmail.com', 'eyJhbGciOxYznGQDvIkRIiEcOYgQOcrbOaCAzIgzbmIUYeRTfUklxPPkXWWQjTUhLFvEPhljHdJhWhvxjbxjEcBqWylYbNQmnvnMpPmocVRKn1653190354NzlmMmQzYzQzODI2NGEwZTEwYTAzZGY5NWE4YjBkZWE==', '99', '200000000', '200000000', '0', '0', NULL, '14.180.206.132', 'Subngon125 pqncoderit', '2022-05-22 09:18:08', '2022-05-22 10:37:42', '', 'BEMMOMO.ONLINE');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `band_ip`
--
ALTER TABLE `band_ip`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ds_sitecon`
--
ALTER TABLE `ds_sitecon`
  ADD PRIMARY KEY (`id_site`);

--
-- Chỉ mục cho bảng `history_buy`
--
ALTER TABLE `history_buy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_naptien`
--
ALTER TABLE `history_naptien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_api`
--
ALTER TABLE `list_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_hotro`
--
ALTER TABLE `list_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_site`
--
ALTER TABLE `log_site`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `note_thongbao`
--
ALTER TABLE `note_thongbao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `server_service`
--
ALTER TABLE `server_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_bao_modal`
--
ALTER TABLE `thong_bao_modal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `band_ip`
--
ALTER TABLE `band_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `ds_sitecon`
--
ALTER TABLE `ds_sitecon`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `history_buy`
--
ALTER TABLE `history_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `history_naptien`
--
ALTER TABLE `history_naptien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `list_api`
--
ALTER TABLE `list_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `list_hotro`
--
ALTER TABLE `list_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `log_site`
--
ALTER TABLE `log_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT cho bảng `note_thongbao`
--
ALTER TABLE `note_thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `server_service`
--
ALTER TABLE `server_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4109;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `thong_bao_modal`
--
ALTER TABLE `thong_bao_modal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
