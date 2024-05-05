-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2024 lúc 05:08 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashion_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `avatar`, `name`, `birthday`, `gender`, `phone_number`, `address`, `email`, `password`, `remember_token`, `level`, `status`, `created_at`, `updated_at`) VALUES
(1, '157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpg', 'Nguyễn Việt Hà', '2023-01-01', 1, '19001900', 'Ha Noi', 'info.fashionstore@gmail.com', '$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2', NULL, 1, 1, '2023-10-07 14:22:00', '2023-10-07 14:22:00'),
(2, '171435350920240429081829wPt5OiGWqtqUbz4D4XaYDOALzoIjP9CPoq9o9P3o.jpg', 'Nguyễn Thị Phương Thảo', '2000-10-28', 0, '0981910437', 'Hải Dương', 'phuongthao@gmail.com', '$2y$10$L/5hmAWQOJRgADlfd67aeuhWdLWHWLapA2fldMeq2ZQADM31joLsu', NULL, 0, 1, '2023-11-08 02:26:25', '2024-04-29 01:18:29'),
(3, '171435342320240429081703o2Vqq5IzeZbO7LxPn5dVg91R0NZZ52rAoqdhhBFQ.jpg', 'Lê thị ngọc Khánh', '2004-06-22', 0, '092218123', 'Hà Nội', 'ngockhanh@gmail.com', '$2y$10$va0xLJTvUppIdgJMbVYC8OSFymov8oe6UdJriSSgEgMpsXTI9A3hK', NULL, 0, 1, '2023-11-23 08:52:39', '2024-04-29 01:17:03'),
(18, '171435779920240429092959EBAL6TPlxwhCPUqRcbGWdyQHEM69jfnrD4Hm2fjl.jpg', 'Đặng Văn Hùng', '2002-10-17 00:00:00', 1, '0987145376', 'Hải Dương', 'vanhung123@gmail.com', '$2y$10$yiZD7YimtK1k/g9ti5iVveOoPiUDHBFUmlegUUAdJlxqfmNNyG4tO', NULL, 0, 1, '2024-04-29 02:29:59', '2024-04-29 02:29:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `slug` longtext NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `link`, `created_at`, `updated_at`) VALUES
(3, 'Công ty cổ phần dược phẩm Hoa Linh', 'cong-ty-co-phan-duoc-pham-hoa-linh', NULL, '2019-06-26 12:58:55', '2019-06-26 12:58:55'),
(7, 'Medana Pharma Spolka Akcyjna, Poland', 'medana-pharma-spolka-akcyjna-poland', NULL, '2019-06-27 10:31:08', '2019-06-27 10:31:08'),
(10, 'Egis Pharmaceuticals Public Ltd., Co. - Hungary', 'egis-pharmaceuticals-public-ltd-co-hungary', NULL, '2019-06-27 10:35:19', '2019-06-27 10:35:19'),
(11, 'Gracure Pharmaceuticals Ltd, Ấn độ', 'gracure-pharmaceuticals-ltd-an-do', NULL, '2019-06-27 10:36:07', '2019-06-27 10:36:07'),
(12, 'Engelhard Arzneimittel GmbH Co.KG, Đức', 'engelhard-arzneimittel-gmbh-cokg-duc', NULL, '2019-06-27 10:37:19', '2020-08-21 04:19:20'),
(13, 'Bilim Ilac Sanayii Ve Ticaret AS', 'bilim-ilac-sanayii-ve-ticaret-as', NULL, '2019-06-27 11:01:19', '2019-06-27 11:01:19'),
(17, 'AstraZeneca AB-Thụy Điển', 'astrazeneca-ab-thuy-dien', NULL, '2019-06-27 11:24:42', '2019-06-27 11:24:42'),
(19, 'Abbott Laboratories Ltd., UK', 'abbott-laboratories-ltd-uk', NULL, '2019-06-27 11:26:52', '2019-06-27 11:26:52'),
(22, 'Beaufour Ipsen Industrie', 'beaufour-ipsen-industrie', NULL, '2019-06-27 11:31:18', '2019-06-27 11:31:18'),
(29, 'CHONG KUN DANG HEALTH CARE CORP Hàn Quốc', 'chong-kun-dang-health-care-corp-han-quoc', NULL, '2019-08-19 00:23:36', '2020-08-21 09:12:50'),
(32, 'Meiji Co.,Ltd  Nhật Bản', 'meiji-coltd-nhat-ban', NULL, '2019-08-19 00:34:34', '2020-08-20 07:31:57'),
(36, 'Ineldea Pháp', 'ineldea-phap', NULL, '2019-09-10 23:43:30', '2020-08-21 08:21:48'),
(37, 'Traphaco - Việt Nam', 'traphaco-viet-nam', NULL, '2019-09-10 23:50:44', '2019-09-10 23:50:44'),
(40, 'Công ty cổ phần Dược Khoa - Việt Nam', 'cong-ty-co-phan-duoc-khoa-viet-nam', NULL, '2019-09-11 00:04:05', '2019-09-11 00:04:05'),
(50, 'Công ty Cổ phần Dược phẩm Sanofi-Synthelabo', 'cong-ty-co-phan-duoc-pham-sanofi-synthelabo', NULL, '2019-11-24 15:58:47', '2019-11-24 15:58:47'),
(51, 'Công ty TNHH MTV Dược phẩm DHG - Việt Nam', 'cong-ty-tnhh-mtv-duoc-pham-dhg-viet-nam', NULL, '2019-11-25 05:57:25', '2019-11-25 05:57:25'),
(53, 'United (Việt Nam)', 'united-viet-nam', NULL, '2019-11-25 08:52:33', '2019-11-25 08:52:33'),
(80, 'Công ty Cổ phần Dược phẩm F.T.PHARMA - Việt Nam', 'cong-ty-co-phan-duoc-pham-ftpharma-viet-nam', NULL, '2019-11-25 10:45:46', '2019-11-25 10:45:46'),
(82, 'Công ty TNHH VIMED', 'cong-ty-tnhh-vimed', NULL, '2019-11-25 13:24:45', '2019-11-25 13:24:45'),
(83, 'Công ty Liên doanh Meyer - BPC', 'cong-ty-lien-doanh-meyer-bpc', NULL, '2019-11-25 14:14:34', '2019-11-25 14:14:34'),
(84, 'Vifor Pharma (Thụy Sĩ)', 'vifor-pharma-thuy-si', NULL, '2019-11-25 15:14:15', '2019-11-25 15:14:15'),
(86, 'Công ty Dược phẩm Hà Tây - Việt Nam', 'cong-ty-duoc-pham-ha-tay-viet-nam', NULL, '2019-11-25 16:47:00', '2019-11-25 16:47:00'),
(90, 'Công ty Cổ phần Dược phẩm An Thiên - Việt Nam', 'cong-ty-co-phan-duoc-pham-an-thien-viet-nam', NULL, '2019-11-26 07:34:55', '2019-11-26 07:34:55'),
(91, 'Béres Pharmaceuticals Ltd. - Hungary', 'beres-pharmaceuticals-ltd-hungary', NULL, '2019-11-26 08:49:51', '2019-11-26 08:49:51'),
(93, 'Kotra Pharma (M) Sdn. Bhd', 'kotra-pharma-m-sdn-bhd', NULL, '2019-11-26 15:12:54', '2019-11-26 15:12:54'),
(94, 'Công ty Cổ phần Hóa - Dược phẩm MEKOPHAR', 'cong-ty-co-phan-hoa-duoc-pham-mekophar', NULL, '2019-11-26 16:01:54', '2019-11-26 16:01:54'),
(96, 'PT. Indofarma Tbk - Indonesia', 'pt-indofarma-tbk-indonesia', NULL, '2019-11-27 14:27:53', '2019-11-27 14:27:53'),
(97, 'Công ty Cổ phần Dược Phẩm Nam Hà', 'cong-ty-co-phan-duoc-pham-nam-ha', NULL, '2019-11-27 15:22:49', '2019-11-27 15:22:49'),
(98, 'Sunlife- produktions- undVertriebsgesellschaftmbH -Đức', 'sunlife-produktions-undvertriebsgesellschaftmbh-duc', NULL, '2019-11-27 15:25:53', '2020-08-21 09:32:06'),
(99, 'Materia Medica (Nga)', 'materia-medica-nga', NULL, '2019-11-27 15:27:52', '2019-11-27 15:27:52'),
(100, 'Công ty Cổ phần Dược Phẩm Trung Ương CPC1', 'cong-ty-co-phan-duoc-pham-trung-uong-cpc1', NULL, '2019-11-27 16:57:55', '2019-11-27 16:57:55'),
(101, 'Thái Nakorn Patana (Thái Lan)', 'thai-nakorn-patana-thai-lan', NULL, '2019-11-27 17:08:38', '2019-11-27 17:08:38'),
(103, 'Công ty Cổ phần Dược - TTBYT BÌNH ĐỊNH (BIDIPHAR)', 'cong-ty-co-phan-duoc-ttbyt-binh-dinh-bidiphar', NULL, '2019-11-28 17:04:53', '2019-11-28 17:04:53'),
(105, 'Getz Pharm (Pvt)., Ltd - Ấn Độ', 'getz-pharm-pvt-ltd-an-do', NULL, '2019-11-29 13:59:25', '2019-11-29 13:59:25'),
(108, 'Laboratoires Pharmaceutiques TRENKER SA', 'laboratoires-pharmaceutiques-trenker-sa', NULL, '2019-11-29 16:50:23', '2019-11-29 16:50:23'),
(115, 'Pharmavision San ve Tic.A.S. - Thổ Nhĩ Kỳ', 'pharmavision-san-ve-ticas-tho-nhi-ky', NULL, '2019-12-01 15:29:04', '2019-12-01 15:29:04'),
(118, 'Laboratoria Natury - Balan', 'laboratoria-natury-balan', NULL, '2019-12-02 15:55:18', '2019-12-02 15:55:18'),
(119, 'Glaxo Operations UK Limited ( Anh)', 'glaxo-operations-uk-limited-anh', NULL, '2019-12-02 16:04:19', '2020-08-21 03:02:03'),
(120, 'KAI - Nhật Bản', 'kai-nhat-ban', NULL, '2019-12-02 18:23:51', '2019-12-02 18:23:51'),
(121, 'Công ty cổ phần Dược phẩm APIMED', 'cong-ty-co-phan-duoc-pham-apimed', NULL, '2019-12-03 02:19:45', '2019-12-03 02:19:45'),
(122, 'Pfizer - Mỹ', 'pfizer-my', NULL, '2019-12-04 13:08:43', '2019-12-04 13:08:43'),
(123, 'Công ty Cổ phần Dược phẩm OPV', 'cong-ty-co-phan-duoc-pham-opv', NULL, '2019-12-04 15:04:58', '2019-12-04 15:04:58'),
(126, 'Boehringer Ingelheim (Đức)', 'boehringer-ingelheim-duc', NULL, '2019-12-05 10:16:17', '2019-12-05 10:16:17'),
(129, 'LINDOPHARM- Salutas, Germany', 'lindopharm-salutas-germany', NULL, '2019-12-06 06:13:04', '2019-12-06 06:13:04'),
(131, 'Công ty TNHH Dược phẩm Đức Minh', 'cong-ty-tnhh-duoc-pham-duc-minh', NULL, '2019-12-07 11:40:18', '2019-12-07 11:40:18'),
(132, 'Công ty CPDP Tipharco', 'cong-ty-cpdp-tipharco', NULL, '2020-02-08 02:33:41', '2020-02-08 02:33:41'),
(133, 'Công ty TNHH Nam Dược', 'cong-ty-tnhh-nam-duoc', NULL, '2020-02-10 09:04:38', '2020-02-10 09:07:52'),
(134, 'Fortex nutraceuticals, Ltd - Bulgari', 'fortex-nutraceuticals-ltd-bulgari', NULL, '2020-02-17 03:30:09', '2020-08-21 08:38:46'),
(135, 'Laboratorio Reig Jofre, S.A - Tây Ban Nha', 'laboratorio-reig-jofre-sa-tay-ban-nha', NULL, '2020-02-17 03:55:41', '2020-08-21 07:38:44'),
(136, 'Dr. Muller pharma s.r.o - Cộng hòa Sec', 'dr-muller-pharma-sro-cong-hoa-sec', NULL, '2020-02-17 07:24:48', '2020-08-21 08:48:42'),
(137, 'Công ty cổ phần dược phẩm TW3', 'cong-ty-co-phan-duoc-pham-tw3', NULL, '2020-02-17 08:42:55', '2020-02-17 08:42:55'),
(138, 'Công ty cổ phần dược phẩm Boston Việt Nam', 'cong-ty-co-phan-duoc-pham-boston-viet-nam', NULL, '2020-02-17 08:56:20', '2020-02-17 08:56:20'),
(139, 'Viện pasteur-Việt Nam', 'vien-pasteur-viet-nam', NULL, '2020-02-17 09:10:11', '2020-02-17 09:10:11'),
(141, 'Laboratorios Recalcine S.A. - Chile', 'laboratorios-recalcine-sa-chile', NULL, '2020-02-18 02:03:18', '2020-08-21 07:31:31'),
(143, 'Natures aid - Anh', 'natures-aid-anh', NULL, '2020-02-18 03:06:18', '2020-08-21 08:31:02'),
(144, 'N.V Schering-Plough Labo - BỈ', 'nv-schering-plough-labo-bi', NULL, '2020-02-18 07:58:04', '2020-02-18 07:58:04'),
(145, 'Công ty cổ phần dược phẩm TW2 - Việt Nam', 'cong-ty-co-phan-duoc-pham-tw2-viet-nam', NULL, '2020-02-20 03:17:55', '2020-02-20 03:17:55'),
(147, 'Công ty TNHH Dược Phẩm Sài Gòn (SAGOPHAR) - Việt Nam', 'cong-ty-tnhh-duoc-pham-sai-gon-sagophar-viet-nam', NULL, '2020-02-20 08:53:00', '2020-02-20 08:53:00'),
(148, 'Công ty cổ phần Dược phẩm Dược liệu Pharmedic - Việt Nam', 'cong-ty-co-phan-duoc-pham-duoc-lieu-pharmedic-viet-nam', NULL, '2020-02-20 09:02:07', '2020-02-20 09:02:07'),
(149, 'Laboratorios Francisco Durban S.A', 'laboratorios-francisco-durban-sa', NULL, '2020-02-22 01:51:32', '2020-02-22 01:51:32'),
(153, 'Thương Hiệu Dược phẩm Buona (Ý)', 'thuong-hieu-duoc-pham-buona-y', NULL, '2020-02-26 07:45:22', '2020-02-26 07:45:22'),
(156, 'Cosmecca Korea Co,Ltd', 'cosmecca-korea-coltd', NULL, '2020-03-02 02:58:21', '2020-08-22 02:13:36'),
(159, 'Công Ty Cổ Phần Dược Phẩm ECOLIFE', 'cong-ty-co-phan-duoc-pham-ecolife', NULL, '2020-03-20 08:02:44', '2020-03-20 08:02:44'),
(166, 'Mono chem- pharm produkte GmbH - Áo', 'mono-chem-pharm-produkte-gmbh-ao', NULL, '2020-03-31 02:24:02', '2020-08-22 02:09:18'),
(168, 'Kissy-Việt Nam', 'kissy-viet-nam', NULL, '2020-04-01 03:41:49', '2020-04-01 03:41:49'),
(170, 'Công ty cổ phần Tanaphar', 'cong-ty-co-phan-tanaphar', NULL, '2020-04-02 08:55:12', '2020-04-02 08:55:12'),
(172, 'Công Ty Cổ Phần Dược Phẩm Sao Kim', 'cong-ty-co-phan-duoc-pham-sao-kim', NULL, '2020-04-08 02:21:26', '2020-04-08 02:21:26'),
(173, 'Pharmalife rerearch S.R.L - Italy', 'pharmalife-rerearch-srl-italy', NULL, '2020-04-09 02:19:44', '2020-08-22 01:43:50'),
(175, 'Meyer Organics, Ấn Độ', 'meyer-organics-an-do', NULL, '2020-04-14 02:35:44', '2020-04-14 02:35:44'),
(176, 'Công ty CP Dược Phẩm Trường Thọ', 'cong-ty-cp-duoc-pham-truong-tho', NULL, '2020-04-14 02:41:36', '2020-04-14 02:41:36'),
(177, 'Công ty Cổ phần Dược phẩm CPC1 Hà Nội', 'cong-ty-co-phan-duoc-pham-cpc1-ha-noi', NULL, '2020-04-14 02:45:34', '2020-04-14 02:45:34'),
(178, 'Abbott Biologicals B.V - HÀ LAN', 'abbott-biologicals-bv-ha-lan', NULL, '2020-04-14 03:06:33', '2020-04-14 03:06:33'),
(179, 'Công ty cổ phần Dược phẩm IMEXPHARM - VIỆT NAM', 'cong-ty-co-phan-duoc-pham-imexpharm-viet-nam', NULL, '2020-04-14 06:07:32', '2020-04-14 06:07:32'),
(180, 'Công ty cổ phần Dược phẩm Việt Đức', 'cong-ty-co-phan-duoc-pham-viet-duc', NULL, '2020-04-14 08:48:56', '2020-04-14 08:48:56'),
(181, 'Polipharm Co., Ltd - THÁI LAN', 'polipharm-co-ltd-thai-lan', NULL, '2020-04-14 09:22:54', '2020-04-14 09:22:54'),
(182, 'Bayer HealthCare Pharmaceuticals', 'bayer-healthcare-pharmaceuticals', NULL, '2020-04-15 02:37:47', '2020-04-15 02:37:47'),
(183, 'KAS Direct LLC. Westbury, NY 11590. USA', 'kas-direct-llc-westbury-ny-11590-usa', NULL, '2020-04-15 03:25:43', '2020-08-22 02:18:15'),
(185, 'Công ty Dược mỹ phẩm CVI', 'cong-ty-duoc-my-pham-cvi', NULL, '2020-04-15 04:12:57', '2020-04-15 04:12:57'),
(186, 'Công ty Dược mỹ phẩm CVI', 'cong-ty-duoc-my-pham-cvi', NULL, '2020-04-15 04:12:57', '2020-04-15 04:12:57'),
(187, 'Doppelherz - Đức', 'doppelherz-duc', NULL, '2020-04-15 04:20:38', '2020-08-21 10:05:24'),
(189, 'Công ty TNHH Tư Vấn Y Dược Quốc Tế', 'cong-ty-tnhh-tu-van-y-duoc-quoc-te', NULL, '2020-04-16 02:49:07', '2020-04-16 02:49:07'),
(190, 'RexGene Biotech, Co., Ltd, Korea.', 'rexgene-biotech-co-ltd-korea', NULL, '2020-04-16 08:09:10', '2020-04-16 08:09:10'),
(194, 'Standard Chem - Pharm Co., Ltd (Đài Loan)', 'standard-chem-pharm-co-ltd-dai-loan', NULL, '2020-04-17 02:54:08', '2020-08-21 04:15:50'),
(195, 'Aurora - Nhật Bản', 'aurora-nhat-ban', NULL, '2020-04-17 04:35:16', '2020-08-22 03:02:21'),
(197, 'Olic (Thailand)., Ltd - THÁI LAN', 'olic-thailand-ltd-thai-lan', NULL, '2020-04-22 08:48:50', '2020-04-22 08:48:50'),
(198, 'Công ty TNHH Dược phẩm Mê Linh', 'cong-ty-tnhh-duoc-pham-me-linh', NULL, '2020-04-22 08:57:35', '2020-04-22 08:57:35'),
(199, 'CÔNG TY CỔ PHẦN DƯỢC - VTYT THANH HÓA', 'cong-ty-co-phan-duoc-vtyt-thanh-hoa', NULL, '2020-04-22 09:00:44', '2020-04-22 09:00:44'),
(200, 'Công ty TNHH Dược phẩm Thuận Tâm', 'cong-ty-tnhh-duoc-pham-thuan-tam', NULL, '2020-04-22 09:03:43', '2020-04-22 09:03:43'),
(201, 'Công ty Tư vấn Y Dược Quốc tế IMC', 'cong-ty-tu-van-y-duoc-quoc-te-imc', NULL, '2020-04-22 09:09:18', '2020-04-22 09:09:18'),
(202, 'CÔNG TY CPDP GIA NGUYỄN', 'cong-ty-cpdp-gia-nguyen', NULL, '2020-04-22 09:12:13', '2020-04-22 09:12:13'),
(203, 'Nhà máy Nội Bài- Công ty TNHH Công nghệ Herbitech', 'nha-may-noi-bai-cong-ty-tnhh-cong-nghe-herbitech', NULL, '2020-04-22 09:13:35', '2020-04-22 09:13:35'),
(204, 'Biopro Việt Nam', 'biopro-viet-nam', NULL, '2020-04-22 09:15:08', '2020-04-22 09:15:08'),
(205, 'CÔNG TY CỔ PHẦN LINE VIỆT NAM', 'cong-ty-co-phan-line-viet-nam', NULL, '2020-04-22 09:18:03', '2020-04-22 09:18:03'),
(206, 'CÔNG TY CP DƯỢC PHẨM QD-MELIPHAR', 'cong-ty-cp-duoc-pham-qd-meliphar', NULL, '2020-04-22 09:19:37', '2020-04-22 09:19:37'),
(208, 'Công ty cổ phần đầu tư và sản xuất Âu Cơ', 'cong-ty-co-phan-dau-tu-va-san-xuat-au-co', NULL, '2020-04-22 09:23:11', '2020-04-22 09:23:11'),
(209, 'Tokobuki corporation , Nhật Bản', 'tokobuki-corporation-nhat-ban', NULL, '2020-04-22 09:24:17', '2020-04-22 09:24:17'),
(211, 'Pleuran, s.r.o - Cộng hòa slovakia', 'pleuran-sro-cong-hoa-slovakia', NULL, '2020-04-22 09:33:58', '2020-08-21 08:50:57'),
(212, 'Caleb Pharmaceuticals - Nhật Bản', 'caleb-pharmaceuticals-nhat-ban', NULL, '2020-04-22 09:54:28', '2020-08-22 03:10:11'),
(213, 'Aqua maria - Croatia', 'aqua-maria-croatia', NULL, '2020-04-22 10:04:11', '2020-08-22 02:30:24'),
(214, 'CHR Hansen AS - Đan Mạch', 'chr-hansen-as-dan-mach', NULL, '2020-07-09 08:49:42', '2020-07-09 08:49:42'),
(215, 'Sandoz GmbH - Áo', 'sandoz-gmbh-ao', NULL, '2020-07-30 07:22:55', '2020-08-21 07:37:31'),
(216, 'Vianex SA (Hy Lạp)', 'vianex-sa-hy-lap', NULL, '2020-07-30 08:28:21', '2020-07-30 08:28:21'),
(217, 'Santa Farma Ilac Sanayii A.S.', 'santa-farma-ilac-sanayii-as', NULL, '2020-07-31 02:34:20', '2020-07-31 02:34:20'),
(218, 'Cho-A Pharm Co., Ltd.( Hàn Quốc)', 'cho-a-pharm-co-ltd-han-quoc', NULL, '2020-07-31 03:38:08', '2020-08-21 04:21:57'),
(219, 'USA - NIC - Pharma', 'usa-nic-pharma', NULL, '2020-07-31 09:38:08', '2020-07-31 09:38:08'),
(220, 'Meiji Seika Pharma Co., Ltd.- Odawara Plant', 'meiji-seika-pharma-co-ltd-odawara-plant', NULL, '2020-08-01 02:46:24', '2020-08-01 02:46:24'),
(221, 'CÔNG TY CỔ PHẦN DƯỢC PHẨM TRƯỜNG THỌ', 'cong-ty-co-phan-duoc-pham-truong-tho', NULL, '2020-08-03 03:07:20', '2020-08-03 03:07:20'),
(222, 'Nic - pharma', 'nic-pharma', NULL, '2020-08-03 03:52:50', '2020-08-03 03:52:50'),
(223, 'Santa Farma Ilac Sanayii A.S.', 'santa-farma-ilac-sanayii-as', NULL, '2020-08-03 04:37:54', '2020-08-03 04:37:54'),
(224, 'Ajanta Pharma Ltd. ( Ấn Độ)', 'ajanta-pharma-ltd-an-do', NULL, '2020-08-03 07:36:02', '2020-08-03 07:36:02'),
(226, 'Polfarmex S.A (Ba Lan)', 'polfarmex-sa-ba-lan', NULL, '2020-08-04 01:14:45', '2020-08-04 01:14:45'),
(227, 'Công ty cổ phần tập đoàn Merap ( Việt Nam)', 'cong-ty-co-phan-tap-doan-merap-viet-nam', NULL, '2020-08-04 01:30:46', '2020-08-04 01:30:46'),
(229, 'Desma Pharma (Pháp)', 'desma-pharma-phap', NULL, '2020-08-04 02:12:27', '2020-08-04 02:12:27'),
(230, 'AHAN HEALTHCARE PVT.,LTD', 'ahan-healthcare-pvtltd', NULL, '2020-08-11 04:37:26', '2020-08-11 04:37:26'),
(232, 'Mundipharma Pharmaceuticals Ltd. (Cyprus)', 'mundipharma-pharmaceuticals-ltd-cyprus', NULL, '2020-08-12 02:37:00', '2020-08-12 02:37:00'),
(233, 'Cachet Pharmaceuticals Pvt., Ltd. ( Ấn Độ )', 'cachet-pharmaceuticals-pvt-ltd-an-do', NULL, '2020-08-12 03:43:20', '2020-08-12 03:43:20'),
(234, 'NP Pharma SP Z.O.O.Ba Lan, Eu', 'np-pharma-sp-zooba-lan-eu', NULL, '2020-08-13 01:46:54', '2020-08-21 08:26:02'),
(235, 'Natur Produkt Pharma Sp. z o.o.', 'natur-produkt-pharma-sp-z-oo', NULL, '2020-08-13 02:11:08', '2020-08-13 02:11:08'),
(236, 'Artsana S.p.A, 1-22070 Grandate (CO), Italy', 'artsana-spa-1-22070-grandate-co-italy', NULL, '2020-08-14 07:09:52', '2020-08-14 07:09:52'),
(237, 'Công ty CP Grandstar Quốc tế', 'cong-ty-cp-grandstar-quoc-te', NULL, '2020-08-14 08:07:58', '2020-08-14 08:07:58'),
(238, 'Incepta Pharmaceuticals Limited, Bangladesh', 'incepta-pharmaceuticals-limited-bangladesh', NULL, '2020-08-14 10:03:30', '2020-08-14 10:03:30'),
(240, 'The Madras Pharmaceuticals ( Ấn Độ )', 'the-madras-pharmaceuticals-an-do', NULL, '2020-08-18 07:12:23', '2020-08-18 07:12:23'),
(241, 'Nutrica Infant Nutrition ( Ai-len )', 'nutrica-infant-nutrition-ai-len', NULL, '2020-08-19 08:33:41', '2020-08-22 02:02:32'),
(242, 'Công ty cổ phần Dược phẩm liên doanh FOXS- USA', 'cong-ty-co-phan-duoc-pham-lien-doanh-foxs-usa', NULL, '2020-08-19 09:34:19', '2020-08-19 09:34:19'),
(243, 'Blackmores - Úc', 'blackmores-uc', NULL, '2020-08-20 02:11:10', '2020-08-20 02:11:10'),
(244, 'Mead Johnson - Hà Lan.', 'mead-johnson-ha-lan', NULL, '2020-08-20 04:11:12', '2020-08-20 04:11:12'),
(245, 'Nestlé Suisse SA., 3510 Konolfingen, Thụy Sỹ', 'nestle-suisse-sa-3510-konolfingen-thuy-sy', NULL, '2020-08-20 04:48:43', '2020-08-20 04:48:43'),
(246, 'Sopharma AD ( Bungari )', 'sopharma-ad-bungari', NULL, '2020-08-21 03:42:29', '2020-08-21 03:42:29'),
(247, 'Medochemie Ltd. - Factory C ( Cyprus )', 'medochemie-ltd-factory-c-cyprus', NULL, '2020-08-21 04:06:35', '2020-08-21 04:06:35'),
(248, 'Theragen Etex Co., Ltd ( Hàn Quốc )', 'theragen-etex-co-ltd-han-quoc', NULL, '2020-08-21 04:26:12', '2020-08-21 04:26:12'),
(250, 'Daewoong Pharm. Co., Ltd. ( Hàn Quốc)', 'daewoong-pharm-co-ltd-han-quoc', NULL, '2020-08-21 04:31:39', '2020-08-21 04:31:39'),
(251, 'Haupt Pharma Latina S.r.l	Ý', 'haupt-pharma-latina-srly', NULL, '2020-08-21 04:49:17', '2020-08-21 04:49:17'),
(252, 'Biocodex - Pháp', 'biocodex-phap', NULL, '2020-08-21 04:54:18', '2020-08-21 04:54:18'),
(253, 'Sophartex - Pháp', 'sophartex-phap', NULL, '2020-08-21 05:00:21', '2020-08-21 05:00:21'),
(254, 'Farmea - Pháp', 'farmea-phap', NULL, '2020-08-21 07:11:18', '2020-08-21 07:11:18'),
(255, 'Pharma Developpement - Pháp', 'pharma-developpement-phap', NULL, '2020-08-21 07:18:20', '2020-08-21 07:18:20'),
(256, 'UPSA SAS - Pháp', 'upsa-sas-phap', NULL, '2020-08-21 07:22:14', '2020-08-21 07:22:14'),
(257, 'Lek Pharmaceuticals d.d, - Slovenia', 'lek-pharmaceuticals-dd-slovenia', NULL, '2020-08-21 07:33:55', '2020-08-21 07:33:55'),
(258, 'Công ty cổ phần xuất nhập khẩu Y tế Domesco - Việt Nam', 'cong-ty-co-phan-xuat-nhap-khau-y-te-domesco-viet-nam', NULL, '2020-08-21 07:39:24', '2020-08-21 07:39:24'),
(259, 'Công ty cổ phần sinh học dược phẩm BIOPRO', 'cong-ty-co-phan-sinh-hoc-duoc-pham-biopro', NULL, '2020-08-21 08:16:47', '2020-08-21 08:16:47'),
(260, 'SD Panatseya 2001 - Bulgari', 'sd-panatseya-2001-bulgari', NULL, '2020-08-21 08:43:01', '2020-08-21 08:43:01'),
(261, 'Novarex Co,Ltd - Hàn Quốc', 'novarex-coltd-han-quoc', NULL, '2020-08-21 08:55:21', '2020-08-21 08:55:21'),
(262, 'Bio Health Pharmaceuticals PTY LTD - 12 Giffard Street Silver Water NSW 2128 Australia.', 'bio-health-pharmaceuticals-pty-ltd-12-giffard-street-silver-water-nsw-2128-australia', NULL, '2020-08-21 09:52:12', '2020-08-21 09:52:12'),
(264, 'Sanofi consumer healthcare, Australia', 'sanofi-consumer-healthcare-australia', NULL, '2020-08-21 09:59:29', '2020-08-21 09:59:29'),
(265, 'NTC S.R.L (Ý)', 'ntc-srl-y', NULL, '2020-08-21 10:08:44', '2020-08-21 10:08:44'),
(266, 'Erbex S.r.l Italy', 'erbex-srl-italy', NULL, '2020-08-21 10:13:38', '2020-08-21 10:13:38'),
(267, 'S.I.IT SRL Italy', 'siit-srl-italy', NULL, '2020-08-21 10:17:06', '2020-08-21 10:17:06'),
(268, 'Pharmalife Research Italy', 'pharmalife-research-italy', NULL, '2020-08-21 10:21:00', '2020-08-21 10:21:00'),
(269, 'S.I.IT HSF liquid S.r.l - Italy', 'siit-hsf-liquid-srl-italy', NULL, '2020-08-22 01:18:49', '2020-08-22 01:18:49'),
(270, 'Probiotical S.p.A Italy', 'probiotical-spa-italy', NULL, '2020-08-22 01:34:27', '2020-08-22 01:34:27'),
(271, 'Thương hiệu Laica - Italy', 'thuong-hieu-laica-italy', NULL, '2020-08-22 01:49:04', '2020-08-31 03:59:06'),
(272, 'Apipharma do.o.o - Croatia', 'apipharma-dooo-croatia', NULL, '2020-08-22 02:29:13', '2020-08-22 02:29:13'),
(273, 'Đan Viện Thiên An', 'dan-vien-thien-an', NULL, '2020-08-22 02:39:24', '2020-08-22 02:39:24'),
(274, 'Công ty TNHH Sản Xuất Thương Mại và XNK Vina Towel Việt Nam', 'cong-ty-tnhh-san-xuat-thuong-mai-va-xnk-vina-towel-viet-nam', NULL, '2020-08-22 02:45:46', '2020-08-22 02:45:46'),
(275, 'Công ty TNHH Tân Thái Bình Dương', 'cong-ty-tnhh-tan-thai-binh-duong', NULL, '2020-08-22 02:46:04', '2020-08-22 02:46:04'),
(276, 'Union elechtronic  Co, Ltd', 'union-elechtronic-co-ltd', NULL, '2020-08-22 03:06:07', '2020-08-22 03:06:07'),
(277, 'Công ty Cổ phần Sữa Vinamilk Việt Nam', 'cong-ty-co-phan-sua-vinamilk-viet-nam', NULL, '2020-08-22 03:50:43', '2020-08-22 03:50:43'),
(278, 'Abbott Ireland, Cootehill, Co, Cavan', 'abbott-ireland-cootehill-co-cavan', NULL, '2020-08-22 04:37:57', '2020-08-22 04:37:57'),
(279, 'Nhà máy sản xuất TPCN- CÔNG TY CP DƯỢC PHẨM SANTEX', 'nha-may-san-xuat-tpcn-cong-ty-cp-duoc-pham-santex', NULL, '2020-08-25 01:28:04', '2020-08-25 01:28:04'),
(280, 'Công ty cổ phần dược Vật tư y tế Hà Nam - Việt Nam', 'cong-ty-co-phan-duoc-vat-tu-y-te-ha-nam-viet-nam', NULL, '2020-08-26 04:02:49', '2020-08-26 04:02:49'),
(281, 'SIIT S.R.L Italy', 'siit-srl-italy', NULL, '2020-08-31 03:46:48', '2020-08-31 03:46:48'),
(282, 'Ekuberg Pharma Italy', 'ekuberg-pharma-italy', NULL, '2020-08-31 04:02:09', '2020-08-31 04:02:09'),
(284, 'PJ.pharma', 'pjpharma', NULL, '2020-08-31 04:16:10', '2020-08-31 04:16:10'),
(285, 'Công ty TNHH Liên doanh HASAN - DERMAPHARM ( Việt Nam)', 'cong-ty-tnhh-lien-doanh-hasan-dermapharm-viet-nam', NULL, '2020-09-01 02:23:59', '2020-09-01 02:23:59'),
(286, 'Công ty  cổ phần DƯỢC Vật tư y tế HẢI DƯƠNG - Việt Nam', 'cong-ty-co-phan-duoc-vat-tu-y-te-hai-duong-viet-nam', NULL, '2020-09-01 03:24:22', '2020-09-01 03:29:28'),
(287, 'Công ty cổ phần dược phẩm Me Di Sun - Việt Nam', 'cong-ty-co-phan-duoc-pham-me-di-sun-viet-nam', NULL, '2020-09-01 03:46:28', '2020-09-01 03:46:28'),
(288, 'Công ty cổ phần US Pharma USA - Việt Nam', 'cong-ty-co-phan-us-pharma-usa-viet-nam', NULL, '2020-09-01 08:03:21', '2020-09-01 08:03:21'),
(289, 'Kobayashi (Nhật Bản)', 'kobayashi-nhat-ban', NULL, '2020-09-01 08:30:38', '2020-09-01 08:30:38'),
(290, 'Pharmacy Medicine - Úc', 'pharmacy-medicine-uc', NULL, '2020-09-01 09:09:24', '2020-09-01 09:09:24'),
(292, 'Catalent Australia Pty (Úc)', 'catalent-australia-pty-uc', NULL, '2020-09-03 03:24:08', '2020-09-03 03:24:08'),
(293, 'Ms Panacea Biotec Ltd - Ấn Độ', 'ms-panacea-biotec-ltd-an-do', NULL, '2020-09-03 03:53:17', '2020-09-03 03:53:17'),
(294, 'Aflofarm Farmacja Polska Sp. zo.o.	(Ba Lan)', 'aflofarm-farmacja-polska-sp-zooba-lan', NULL, '2020-09-03 07:47:39', '2020-09-03 07:47:39'),
(295, 'Swiss Energy', 'swiss-energy', NULL, '2020-11-29 18:34:13', '2020-11-29 18:34:13'),
(296, 'Mega Lifesciences', 'mega-lifesciences', NULL, '2020-11-29 18:41:39', '2020-11-29 18:41:39'),
(297, 'Holisti Care', 'holisti-care', NULL, '2020-11-29 19:33:20', '2020-11-29 19:33:20'),
(298, 'Welson Gingsen', 'welson-gingsen', NULL, '2020-11-29 19:50:29', '2020-11-29 19:50:29'),
(299, 'Solgar', 'solgar', NULL, '2020-11-29 20:00:51', '2020-11-29 20:00:51'),
(300, 'Hauora', 'hauora', NULL, '2020-11-29 20:14:46', '2020-11-29 20:14:46'),
(301, 'Pharmekal', 'pharmekal', NULL, '2020-11-29 21:44:15', '2020-11-29 21:44:15'),
(302, 'Lanui', 'lanui', NULL, '2020-11-29 21:51:58', '2020-11-29 21:51:58'),
(303, 'DHG Pharma', 'dhg-pharma', NULL, '2020-11-29 23:44:56', '2020-11-29 23:44:56'),
(304, 'Condition', 'condition', NULL, '2020-11-29 23:48:51', '2020-11-29 23:48:51'),
(305, 'SciTech Specialities - India', 'scitech-specialities-india', NULL, '2020-11-30 00:01:54', '2020-11-30 00:01:54'),
(306, 'Hoàng Mai Anh', 'hoang-mai-anh', NULL, '2020-12-10 21:49:47', '2020-12-10 21:49:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Đỏ', '#ff4040', NULL, NULL),
(2, 'Xanh', '#3399ff', NULL, NULL),
(3, 'Vàng', '#ffff66', NULL, NULL),
(4, 'Đen', '#101010', NULL, NULL),
(5, 'Xám', '#dddddd', NULL, NULL),
(6, 'Nâu', '#8b0000', NULL, NULL),
(7, 'Cam', '#ff7f50', NULL, NULL),
(8, 'Hồng', '#f6546a', NULL, NULL),
(9, 'Trắng', '#ffffff', NULL, NULL),
(10, 'Tím', '#ff80ed', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone_number`, `content`, `created_at`, `updated_at`) VALUES
(1, 'NguyenVietHa', '0793330769', 'rerer', '2024-04-30 11:39:28', '2024-04-30 11:39:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT 0.00,
  `money_payment_transactions` double(8,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `birthday`, `gender`, `phone_number`, `address`, `password`, `score_awards`, `money_payment_transactions`, `remember_token`, `status`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Tươi', '1997-08-13', 0, '0868563617', 'số 11a Ngõ 282 Nguyễn Huy Tưởng', '$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2', 18.00, 908.00, NULL, 1, '2023-03-13 02:13:26', '2023-12-18 16:06:29', NULL),
(2, 'Trần Thị Hằng', '1994-01-19', 0, '0914394493', 'Tây Mỗ Nam Từ Liêm Hà Nội', '$2y$10$3URPd2aMEgvp/2mRj15hce.SGoPoAEVRrGNRv7Bds0m8.MEI1Gv/y', 3.00, 159.00, NULL, 1, '2023-03-13 02:17:30', '2023-03-13 02:31:53', NULL),
(64, 'NguyenVietHa', '1990-08-30', 0, '0793330769', 'Hải Dương', '$2y$10$EgRKwJ5CbjQYBEcYuTbl7OnL/.v7BpxdbSJsLJ2QXbZHgbdWFmJ9O', 36.00, 1819.00, 'm8GYkeNlGkbn25pYTzUwpVf9DI3QZ5ULT8Ts3Dabl8jrmu7lWl76wVFs8XcT', 1, '2024-04-24 15:34:56', '2024-04-29 02:37:19', 'haviet1712@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `slug` longtext NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `slug`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'adidas', 'adidas', '2024-04-23 15:34:48', '2024-04-23 15:34:48'),
(2, 'Nike', 'nike', 'Nike', '2024-04-23 15:34:58', '2024-04-23 15:34:58'),
(3, 'Việt Nam', 'viet-nam', 'Việt Nam', '2024-04-23 15:35:22', '2024-04-23 15:35:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `product_id`, `size_id`, `name`, `slug`, `code`, `quantity`, `price`, `price_sale`, `status`, `created_at`, `updated_at`) VALUES
(237, 'ORD202404240001519MV', 571, 6, 'Áo kiểu cổ trụ thắt nơ tay cánh tiên', 'ao-kieu-co-tru-that-no-tay-canh-tien-1713891606', 'C0BVH104023STR', 1, 500.00, 400.00, 1, '2024-04-23 17:01:51', '2024-04-23 17:01:51'),
(238, 'ORD20240424223402TDH', 578, 5, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713892017', 'FAVT021424SHOLA', 1, 500.00, 400.00, 1, '2024-04-24 15:34:02', '2024-04-24 15:34:02'),
(239, 'ORD202404242235200HW', 577, 3, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713891989', 'FAVT021424SHO', 1, 500.00, 400.00, 1, '2024-04-24 15:35:20', '2024-04-24 15:35:20'),
(240, 'ORD202404282240242YT', 578, 3, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713892017', 'FAVT021424SHOLA', 1, 500.00, 400.00, 0, '2024-04-28 15:40:24', '2024-04-28 15:40:24'),
(241, 'ORD20240429093524XS5', 579, 3, 'Đầm babydoll tay dài cổ sơ mi', 'dam-babydoll-tay-dai-co-so-mi-1713892065', 'CBVH014824SDE', 1, 600.00, 404.00, 1, '2024-04-29 02:35:24', '2024-04-29 02:35:24'),
(242, 'ORD20240429093524XS5', 581, 4, 'Áo Polo Nam Cotton', 'ao-polo-nam-cotton-1714026323', 'APC24089', 1, 200.00, 199.00, 1, '2024-04-29 02:35:24', '2024-04-29 02:35:24'),
(243, 'ORD20240429093554MH2', 576, 3, 'Đầm midi linen 2 dây thắt nơ vai', 'dam-midi-linen-2-day-that-no-vai-1713891920', 'FAQH012424SNAN', 1, 500.00, 400.00, 1, '2024-04-29 02:35:54', '2024-04-29 02:35:54'),
(244, 'ORD20240429093703GAW', 568, 3, 'Đầm midi form suông sát nách thắt nơ lưng', 'dam-midi-form-suong-sat-nach-that-no-lung-1713886776', 'CBLH073023SDE', 1, 1000.00, 416.00, 1, '2024-04-29 02:37:03', '2024-04-29 02:37:03'),
(245, 'ORD202404290937319HF', 577, 3, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713891989', 'FAVT021424SHO', 1, 500.00, 400.00, 0, '2024-04-29 02:37:31', '2024-04-29 02:37:31'),
(246, 'ORD20240429100723SEJ', 578, 5, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713892017', 'FAVT021424SHOLA', 1, 500.00, 400.00, 1, '2024-04-29 03:07:23', '2024-04-29 03:07:23'),
(247, 'ORD20240429100744ZRH', 581, 1, 'Áo Polo Nam Cotton', 'ao-polo-nam-cotton-1714026323', 'APC24089', 2, 200.00, 199.00, 1, '2024-04-29 03:07:44', '2024-04-29 03:07:44'),
(248, 'ORD20240429102501W9R', 581, 4, 'Váy trẻ em - nữ cá tính', 'ao-polo-nam-cotton-1714026323', 'APC24089', 1, 200.00, 199.00, 0, '2024-04-29 03:25:01', '2024-04-29 03:25:01'),
(249, 'ORD20240429102501W9R', 577, 5, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713891989', 'FAVT021424SHO', 1, 500.00, 400.00, 0, '2024-04-29 03:25:01', '2024-04-29 03:25:01'),
(250, 'ORD20240429102501W9R', 570, 2, 'Quần short jean form basic 2 túi', 'quan-short-jean-form-basic-2-tui-1713890116', 'FAQJ041924XLDE', 1, 800.00, 590.00, 0, '2024-04-29 03:25:01', '2024-04-29 03:25:01'),
(251, 'ORD20240429104239DVP', 581, 4, 'Váy trẻ em - nữ cá tính', 'ao-polo-nam-cotton-1714026323', 'APC24089', 1, 200.00, 199.00, 1, '2024-04-29 03:42:39', '2024-04-29 03:42:39'),
(252, 'ORD20240429104239DVP', 577, 5, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713891989', 'FAVT021424SHO', 1, 500.00, 400.00, 1, '2024-04-29 03:42:39', '2024-04-29 03:42:39'),
(253, 'ORD20240429104239DVP', 570, 2, 'Quần short jean form basic 2 túi', 'quan-short-jean-form-basic-2-tui-1713890116', 'FAQJ041924XLDE', 1, 800.00, 590.00, 1, '2024-04-29 03:42:39', '2024-04-29 03:42:39'),
(254, 'ORD20240429172607PJR', 580, 4, 'Đầm babydoll tay dài cổ sơ mi', 'dam-babydoll-tay-dai-co-so-mi-1713892086', 'CBVH014824SKE', 1, 600.00, 404.00, 1, '2024-04-29 10:26:07', '2024-04-29 10:26:07'),
(255, 'ORD20240429173821U2H', 579, 3, 'Đầm babydoll tay dài cổ sơ mi', 'dam-babydoll-tay-dai-co-so-mi-1713892065', 'CBVH014824SDE', 1, 600.00, 404.00, 1, '2024-04-29 10:38:21', '2024-04-29 10:38:21'),
(256, 'ORD20240429173923KLD', 578, 6, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713892017', 'FAVT021424SHOLA', 1, 500.00, 400.00, 1, '2024-04-29 10:39:23', '2024-04-29 10:39:23'),
(257, 'ORD2024042918005917Q', 575, 5, 'Đầm midi linen 2 dây thắt nơ vai', 'dam-midi-linen-2-day-that-no-vai-1713891891', 'FAQH012424SLA', 3, 500.00, 400.00, 1, '2024-04-29 11:00:59', '2024-04-29 11:00:59'),
(258, 'ORD202404291818232ZP', 578, 6, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713892017', 'FAVT021424SHOLA', 1, 500.00, 400.00, 0, '2024-04-29 11:18:23', '2024-04-29 11:18:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `post_category_id` int(10) UNSIGNED NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `thumbnail`, `description`, `content`, `slug`, `admin_name`, `post_category_id`, `view_count`, `created_at`, `updated_at`) VALUES
(42, 'Nhận voucher giảm giá tháng 5', '171419833420240427131214QnYemvXxBYZtB5jRVDU5eyvIIg2b3xjDUS9ioJOj.jpg', 'Voucher giảm giá', '<p>Trong th&aacute;ng 5 n&agrave;y, ch&uacute;ng t&ocirc;i vui mừng th&ocirc;ng b&aacute;o về chương tr&igrave;nh khuyến m&atilde;i đặc biệt: &quot;Nhận Voucher Giảm Gi&aacute; Th&aacute;ng 5!&quot; Đ&acirc;y l&agrave; cơ hội tuyệt vời để bạn trải nghiệm c&aacute;c sản phẩm v&agrave; dịch vụ với mức gi&aacute; ưu đ&atilde;i, gi&uacute;p bạn tiết kiệm nhiều hơn khi mua sắm.</p>\r\n\r\n<h3>Chi tiết sự kiện:</h3>\r\n\r\n<ul>\r\n	<li><strong>Thời gian &aacute;p dụng:</strong> Từ ng&agrave;y 1/5 đến hết ng&agrave;y 31/5.</li>\r\n	<li><strong>Nội dung khuyến m&atilde;i:</strong> Mỗi kh&aacute;ch h&agrave;ng sẽ nhận được voucher giảm gi&aacute; khi tham gia mua sắm tại cửa h&agrave;ng hoặc trực tuyến. Voucher c&oacute; gi&aacute; trị giảm gi&aacute; từ 10% đến 30% t&ugrave;y theo gi&aacute; trị đơn h&agrave;ng.</li>\r\n</ul>\r\n\r\n<h3>L&agrave;m thế n&agrave;o để nhận voucher?</h3>\r\n\r\n<ul>\r\n	<li><strong>Mua h&agrave;ng trực tuyến:</strong> Khi bạn mua sắm tr&ecirc;n trang web của ch&uacute;ng t&ocirc;i trong thời gian diễn ra chương tr&igrave;nh, bạn sẽ tự động nhận được m&atilde; voucher giảm gi&aacute; sau khi ho&agrave;n tất đơn h&agrave;ng.</li>\r\n	<li><strong>Mua h&agrave;ng trực tiếp:</strong> Nếu bạn đến cửa h&agrave;ng của ch&uacute;ng t&ocirc;i, nh&acirc;n vi&ecirc;n sẽ cung cấp voucher giảm gi&aacute; tại quầy thanh to&aacute;n.</li>\r\n</ul>\r\n\r\n<h3>Điều kiện &aacute;p dụng:</h3>\r\n\r\n<ul>\r\n	<li>Voucher chỉ c&oacute; gi&aacute; trị trong th&aacute;ng 5.</li>\r\n	<li>Mỗi kh&aacute;ch h&agrave;ng chỉ được sử dụng một voucher cho mỗi đơn h&agrave;ng.</li>\r\n	<li>Voucher kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền mặt v&agrave; kh&ocirc;ng được &aacute;p dụng chung với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</li>\r\n</ul>\r\n\r\n<p>Đ&acirc;y l&agrave; cơ hội tuyệt vời để bạn mua sắm những sản phẩm y&ecirc;u th&iacute;ch với gi&aacute; hấp dẫn. H&atilde;y chia sẻ th&ocirc;ng tin về chương tr&igrave;nh &quot;Nhận Voucher Giảm Gi&aacute; Th&aacute;ng 5!&quot; với bạn b&egrave; v&agrave; gia đ&igrave;nh để c&ugrave;ng tận hưởng ưu đ&atilde;i n&agrave;y.</p>\r\n\r\n<p>Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o về chương tr&igrave;nh hoặc cần hỗ trợ th&ecirc;m, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua email hoặc số điện thoại hỗ trợ kh&aacute;ch h&agrave;ng. Ch&uacute;c bạn c&oacute; những trải nghiệm mua sắm tuyệt vời trong th&aacute;ng 5!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<form>\r\n<p>&nbsp;</p>\r\n</form>', 'nhan-voucher-giam-gia-thang-5-1714205630', 'Nguyễn Việt Hà', 14, 3, '2024-04-27 06:12:14', '2024-04-28 09:13:11'),
(43, 'Khai trương cơ sở mới tại Lê Duẩn', '171419993620240427133856SuVx07W9QoJe9WN6sCXd5hvIyu1JwmBVNBB5eXss.jpg', 'Khai trương cơ sở mới - Nhiều ưu đã đang chờ bạn!', '<p>Ch&uacute;ng t&ocirc;i vui mừng th&ocirc;ng b&aacute;o về việc khai trương hai cơ sở mới tại L&ecirc; Duẩn, mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những trải nghiệm mua sắm v&agrave; dịch vụ tốt nhất. Sự kiện n&agrave;y đ&aacute;nh dấu một bước tiến quan trọng trong việc mở rộng thương hiệu v&agrave; đ&aacute;p ứng nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng trong khu vực.</p>\r\n\r\n<h3>Chi tiết sự kiện khai trương:</h3>\r\n\r\n<ul>\r\n	<li><strong>Địa điểm mới:</strong> Đường L&ecirc; Duẩn, quận X, th&agrave;nh phố Y.</li>\r\n	<li><strong>Thời gian khai trương:</strong> Ng&agrave;y 15 th&aacute;ng 5, từ 9:00 s&aacute;ng đến 5:00 chiều.</li>\r\n	<li><strong>Hoạt động khai trương:</strong> Ch&uacute;ng t&ocirc;i sẽ tổ chức nhiều hoạt động hấp dẫn như ph&aacute;t voucher giảm gi&aacute;, qu&agrave; tặng miễn ph&iacute; cho kh&aacute;ch h&agrave;ng đầu ti&ecirc;n, v&agrave; c&aacute;c buổi tr&igrave;nh diễn nghệ thuật.</li>\r\n</ul>\r\n\r\n<h3>C&aacute;c dịch vụ v&agrave; sản phẩm tại cơ sở mới:</h3>\r\n\r\n<ul>\r\n	<li><strong>Mua sắm:</strong> Cả hai cơ sở mới đều cung cấp đa dạng sản phẩm từ c&aacute;c ng&agrave;nh h&agrave;ng kh&aacute;c nhau như thời trang, điện tử, mỹ phẩm, v&agrave; đồ gia dụng.</li>\r\n	<li><strong>Dịch vụ:</strong> Kh&aacute;ch h&agrave;ng sẽ được trải nghiệm c&aacute;c dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng tốt nhất, bao gồm hỗ trợ mua sắm, tư vấn sản phẩm, v&agrave; dịch vụ hậu m&atilde;i.</li>\r\n</ul>\r\n\r\n<h3>Ưu đ&atilde;i đặc biệt nh&acirc;n dịp khai trương:</h3>\r\n\r\n<ul>\r\n	<li><strong>Voucher giảm gi&aacute;:</strong> Kh&aacute;ch h&agrave;ng tham dự sự kiện khai trương sẽ nhận được voucher giảm gi&aacute; từ 10% đến 20% cho c&aacute;c đơn h&agrave;ng trong th&aacute;ng đầu ti&ecirc;n.</li>\r\n	<li><strong>Qu&agrave; tặng miễn ph&iacute;:</strong> Những kh&aacute;ch h&agrave;ng đầu ti&ecirc;n đến tham quan cơ sở mới sẽ nhận được qu&agrave; tặng đặc biệt.</li>\r\n	<li><strong>Bốc thăm tr&uacute;ng thưởng:</strong> Trong suốt sự kiện, ch&uacute;ng t&ocirc;i sẽ tổ chức bốc thăm tr&uacute;ng thưởng với nhiều giải thưởng hấp dẫn, bao gồm c&aacute;c sản phẩm v&agrave; dịch vụ cao cấp.</li>\r\n</ul>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất mong được ch&agrave;o đ&oacute;n bạn tại hai cơ sở mới tr&ecirc;n đường L&ecirc; Duẩn. Đ&acirc;y l&agrave; cơ hội tuyệt vời để bạn kh&aacute;m ph&aacute; những sản phẩm v&agrave; dịch vụ mới nhất, đồng thời tận hưởng c&aacute;c ưu đ&atilde;i đặc biệt nh&acirc;n dịp khai trương.</p>\r\n\r\n<p>Nếu bạn cần th&ecirc;m th&ocirc;ng tin hoặc hỗ trợ về sự kiện, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua email hoặc số điện thoại hỗ trợ kh&aacute;ch h&agrave;ng. H&atilde;y c&ugrave;ng tham gia sự kiện để c&oacute; những trải nghiệm đ&aacute;ng nhớ!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<form>&nbsp;</form>', 'khai-truong-co-so-moi-tai-le-duan-1714203704', 'Nguyễn Việt Hà', 13, 2, '2024-04-27 06:38:56', '2024-04-27 08:03:56'),
(44, 'Mẹo phối đồ cho hè này', '171420556120240427151241TJMqfnC1vUuIAUvO1AWfEC0WSHcDIWKnEAmzLUo3.jpg', 'Khám phá những tip phối đồ mới mẻ - bớt nhàm', '<p>M&ugrave;a h&egrave; đang đến, mang theo những ng&agrave;y nắng ấm v&agrave; những chuyến d&atilde; ngoại th&uacute; vị. Dưới đ&acirc;y l&agrave; một số mẹo phối đồ gi&uacute;p bạn lu&ocirc;n tự tin v&agrave; thoải m&aacute;i trong m&ugrave;a h&egrave; n&agrave;y:</p>\r\n\r\n<h3>1. Ưu ti&ecirc;n chất liệu nhẹ v&agrave; tho&aacute;ng m&aacute;t</h3>\r\n\r\n<p>Trong m&ugrave;a h&egrave;, việc chọn những loại vải tho&aacute;ng m&aacute;t như cotton, linen, hoặc rayon l&agrave; rất quan trọng. Những chất liệu n&agrave;y gi&uacute;p bạn cảm thấy dễ chịu, tr&aacute;nh b&iacute; b&aacute;ch v&agrave; tạo sự th&ocirc;ng tho&aacute;ng cho l&agrave;n da.</p>\r\n\r\n<h3>2. M&agrave;u sắc s&aacute;ng v&agrave; họa tiết tươi mới</h3>\r\n\r\n<p>M&ugrave;a h&egrave; l&agrave; thời điểm tuyệt vời để thử nghiệm c&aacute;c m&agrave;u sắc s&aacute;ng như trắng, v&agrave;ng, xanh pastel, hoặc hồng nhạt. Những m&agrave;u sắc n&agrave;y gi&uacute;p bạn tr&ocirc;ng tươi trẻ v&agrave; m&aacute;t mẻ hơn. Họa tiết hoa, sọc ngang, v&agrave; họa tiết nhiệt đới cũng l&agrave; lựa chọn phổ biến cho m&ugrave;a h&egrave;.</p>\r\n\r\n<h3>3. Layering nhẹ nh&agrave;ng</h3>\r\n\r\n<p>D&ugrave; m&ugrave;a h&egrave; n&oacute;ng bức, bạn vẫn c&oacute; thể tạo hiệu ứng layering (phối nhiều lớp) bằng c&aacute;ch sử dụng &aacute;o kho&aacute;c nhẹ hoặc cardigan mỏng. Điều n&agrave;y kh&ocirc;ng chỉ tăng th&ecirc;m phong c&aacute;ch m&agrave; c&ograve;n gi&uacute;p bạn ứng ph&oacute; với sự thay đổi thời tiết khi đi từ ngo&agrave;i trời v&agrave;o trong nh&agrave;.</p>\r\n\r\n<h3>4. Đồ bơi v&agrave; trang phục dạo biển</h3>\r\n\r\n<p>Nếu bạn đi biển hoặc bơi lội, h&atilde;y chọn những bộ đồ bơi c&oacute; m&agrave;u sắc rực rỡ v&agrave; ph&ugrave; hợp với d&aacute;ng người. &Aacute;o kho&aacute;c kimono hoặc &aacute;o cho&agrave;ng nhẹ l&agrave; sự lựa chọn tuyệt vời khi đi từ b&atilde;i biển đến qu&aacute;n c&agrave; ph&ecirc; hoặc nh&agrave; h&agrave;ng.</p>\r\n\r\n<h3>5. Gi&agrave;y d&eacute;p thoải m&aacute;i</h3>\r\n\r\n<p>Gi&agrave;y d&eacute;p thoải m&aacute;i l&agrave; điều kh&ocirc;ng thể thiếu trong m&ugrave;a h&egrave;. H&atilde;y chọn c&aacute;c loại d&eacute;p sandal, d&eacute;p xỏ ng&oacute;n, hoặc gi&agrave;y thể thao nhẹ để di chuyển dễ d&agrave;ng v&agrave; giữ cho đ&ocirc;i ch&acirc;n lu&ocirc;n thoải m&aacute;i.</p>\r\n\r\n<h3>6. Phụ kiện hợp l&yacute;</h3>\r\n\r\n<p>Phụ kiện c&oacute; thể tạo điểm nhấn cho trang phục m&ugrave;a h&egrave; của bạn. N&oacute;n rộng v&agrave;nh, k&iacute;nh m&aacute;t, v&agrave; t&uacute;i x&aacute;ch nhẹ nh&agrave;ng l&agrave; những phụ kiện kh&ocirc;ng thể thiếu. H&atilde;y thử đeo những chiếc v&ograve;ng tay, v&ograve;ng cổ hoặc khuy&ecirc;n tai c&oacute; m&agrave;u sắc tươi s&aacute;ng để tăng th&ecirc;m sự th&uacute; vị cho trang phục của bạn.</p>\r\n\r\n<h3>7. Lu&ocirc;n mang theo kem chống nắng</h3>\r\n\r\n<p>D&ugrave; bạn đi đ&acirc;u, kem chống nắng l&agrave; vật dụng kh&ocirc;ng thể thiếu trong m&ugrave;a h&egrave;. H&atilde;y đảm bảo rằng bạn lu&ocirc;n mang theo kem chống nắng để bảo vệ l&agrave;n da khỏi tia UV c&oacute; hại.</p>\r\n\r\n<p>Bằng c&aacute;ch &aacute;p dụng những mẹo phối đồ n&agrave;y, bạn sẽ sẵn s&agrave;ng tận hưởng m&ugrave;a h&egrave; một c&aacute;ch thời trang v&agrave; thoải m&aacute;i. H&atilde;y tự tin thể hiện phong c&aacute;ch của bạn v&agrave; tận hưởng những khoảnh khắc tuyệt vời trong m&ugrave;a h&egrave; n&agrave;y!</p>', 'meo-phoi-do-cho-he-nay-1714205561', 'Nguyễn Việt Hà', 15, 1, '2024-04-27 08:12:41', '2024-05-05 07:55:14'),
(45, 'Mẹo luôn giữ quần áo luôn mới', '171420618720240427152307w5F2NXmaOz7wGbJkbFe7oZTUyLXbVx2Pzyyn3etu.png', 'Quần áo của bạn nhanh cũ ư ! Hãy đọc bài viết này để biết các mẹo hay giúp ích bạn.', '<p>Để giữ quần &aacute;o của bạn lu&ocirc;n mới v&agrave; bền l&acirc;u, cần phải chăm s&oacute;c v&agrave; bảo quản đ&uacute;ng c&aacute;ch. Dưới đ&acirc;y l&agrave; một số mẹo gi&uacute;p bạn duy tr&igrave; quần &aacute;o lu&ocirc;n trong t&igrave;nh trạng tốt nhất:</p>\r\n\r\n<h3>1. Đọc kỹ nh&atilde;n m&aacute;c</h3>\r\n\r\n<p>Trước khi giặt quần &aacute;o, h&atilde;y lu&ocirc;n đọc nh&atilde;n m&aacute;c để biết c&aacute;ch chăm s&oacute;c th&iacute;ch hợp. C&aacute;c k&yacute; hiệu tr&ecirc;n nh&atilde;n m&aacute;c sẽ cho bạn biết liệu quần &aacute;o c&oacute; thể giặt m&aacute;y, giặt tay, hay cần giặt kh&ocirc;, cũng như nhiệt độ v&agrave; chế độ ủi.</p>\r\n\r\n<h3>2. Ph&acirc;n loại quần &aacute;o trước khi giặt</h3>\r\n\r\n<p>H&atilde;y ph&acirc;n loại quần &aacute;o theo m&agrave;u sắc v&agrave; loại vải trước khi giặt. Điều n&agrave;y gi&uacute;p tr&aacute;nh t&igrave;nh trạng m&agrave;u đậm l&agrave;m loang m&agrave;u v&agrave;o quần &aacute;o m&agrave;u s&aacute;ng, v&agrave; ngăn c&aacute;c loại vải kh&aacute;c nhau g&acirc;y hư hỏng cho nhau.</p>\r\n\r\n<h3>3. Sử dụng chất tẩy rửa nhẹ</h3>\r\n\r\n<p>Sử dụng chất tẩy rửa nhẹ nh&agrave;ng để bảo vệ m&agrave;u sắc v&agrave; cấu tr&uacute;c của vải. Tr&aacute;nh d&ugrave;ng qu&aacute; nhiều chất tẩy rửa v&igrave; n&oacute; c&oacute; thể g&acirc;y hại cho quần &aacute;o v&agrave; l&agrave;m hỏng m&aacute;y giặt.</p>\r\n\r\n<h3>4. Giặt đ&uacute;ng nhiệt độ</h3>\r\n\r\n<p>Đảm bảo giặt quần &aacute;o ở nhiệt độ ph&ugrave; hợp. Nhiệt độ cao c&oacute; thể g&acirc;y co r&uacute;t v&agrave; mất m&agrave;u, trong khi giặt ở nhiệt độ thấp sẽ bảo vệ vải v&agrave; giữ cho m&agrave;u sắc tươi mới hơn.</p>\r\n\r\n<h3>5. Hạn chế sử dụng m&aacute;y sấy</h3>\r\n\r\n<p>M&aacute;y sấy c&oacute; thể l&agrave;m quần &aacute;o co r&uacute;t v&agrave; mất h&igrave;nh dạng. Nếu c&oacute; thể, h&atilde;y phơi quần &aacute;o tự nhi&ecirc;n, tr&aacute;nh &aacute;nh nắng trực tiếp để giữ cho m&agrave;u sắc v&agrave; cấu tr&uacute;c vải được bảo to&agrave;n.</p>\r\n\r\n<h3>6. Sử dụng t&uacute;i giặt cho quần &aacute;o nhạy cảm</h3>\r\n\r\n<p>C&aacute;c loại quần &aacute;o như &aacute;o len, &aacute;o dệt kim, hoặc đồ l&oacute;t n&ecirc;n được giặt trong t&uacute;i giặt để tr&aacute;nh bị k&eacute;o gi&atilde;n hoặc hư hỏng do ma s&aacute;t với c&aacute;c vật dụng kh&aacute;c trong m&aacute;y giặt.</p>\r\n\r\n<h3>7. Xử l&yacute; vết bẩn ngay lập tức</h3>\r\n\r\n<p>Khi quần &aacute;o bị vấy bẩn, h&atilde;y xử l&yacute; ngay lập tức bằng c&aacute;ch thấm nhẹ vết bẩn v&agrave; sử dụng chất tẩy vết bẩn chuy&ecirc;n dụng. Tr&aacute;nh ch&agrave; x&aacute;t mạnh để kh&ocirc;ng l&agrave;m hỏng vải.</p>\r\n\r\n<h3>8. Bảo quản đ&uacute;ng c&aacute;ch</h3>\r\n\r\n<p>H&atilde;y cất giữ quần &aacute;o trong tủ kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t. D&ugrave;ng m&oacute;c treo quần &aacute;o c&oacute; đệm để tr&aacute;nh l&agrave;m hỏng vai &aacute;o hoặc l&agrave;m biến dạng quần &aacute;o.</p>\r\n\r\n<h3>9. Xoay v&ograve;ng quần &aacute;o</h3>\r\n\r\n<p>Để tr&aacute;nh quần &aacute;o bị m&agrave;i m&ograve;n do sử dụng qu&aacute; thường xuy&ecirc;n, h&atilde;y xoay v&ograve;ng quần &aacute;o của bạn. Thay đổi trang phục mỗi ng&agrave;y sẽ gi&uacute;p quần &aacute;o &iacute;t bị hao m&ograve;n hơn.</p>\r\n\r\n<h3>10. Đầu tư v&agrave;o quần &aacute;o chất lượng</h3>\r\n\r\n<p>Cuối c&ugrave;ng, đầu tư v&agrave;o quần &aacute;o chất lượng sẽ gi&uacute;p ch&uacute;ng bền l&acirc;u hơn. Những sản phẩm tốt thường được l&agrave;m từ vật liệu cao cấp v&agrave; c&oacute; độ bền cao hơn.</p>\r\n\r\n<p>Những mẹo tr&ecirc;n sẽ gi&uacute;p bạn giữ quần &aacute;o lu&ocirc;n trong t&igrave;nh trạng tốt nhất, gi&uacute;p bạn tiết kiệm thời gian v&agrave; tiền bạc trong việc mua sắm v&agrave; chăm s&oacute;c quần &aacute;o mới.</p>', 'meo-luon-giu-quan-ao-luon-moi-1714206187', 'Nguyễn Việt Hà', 16, 0, '2024-04-27 08:23:07', '2024-04-27 08:23:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_id` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `sort_id`, `slug`, `created_at`, `updated_at`) VALUES
(13, 'Sự kiện tháng 5', 1, 'su-kien-thang-5', '2024-04-27 06:07:26', '2024-04-27 08:04:30'),
(14, 'Giảm giá - Sale off', 0, 'giam-gia-sale-off', '2024-04-27 07:12:37', '2024-04-27 07:12:37'),
(15, 'Tip  phối đồ', 2, 'tip-phoi-do', '2024-04-27 07:12:54', '2024-04-27 08:19:19'),
(16, 'Mẹo vặt với quần áo', 3, 'meo-vat-voi-quan-ao', '2024-04-27 08:20:23', '2024-04-27 08:20:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 44, 8, '2024-04-27 08:12:41', '2024-04-27 08:12:41'),
(2, 42, 8, '2024-04-27 08:13:50', '2024-04-27 08:13:50'),
(3, 45, 8, '2024-04-27 08:23:07', '2024-04-27 08:23:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_id` int(10) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `maintain` longtext DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `price_prime` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `bought` int(11) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `color_id` int(10) UNSIGNED NOT NULL,
  `is_main` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `code`, `product_category_id`, `manufacturer_id`, `description`, `maintain`, `image`, `price_prime`, `price`, `price_sale`, `quantity`, `admin_id`, `bought`, `view_count`, `status`, `color_id`, `is_main`, `created_at`, `updated_at`) VALUES
(566, 'Đầm midi form suông sát nách thắt nơ lưng', 'dam-midi-form-suong-sat-nach-that-no-lung-1713886623', 'CBLH073023SLA', 1, 2, '<p>-&nbsp;Đầm midi form su&ocirc;ng s&aacute;t n&aacute;ch thắt nơ lưng.</p>\r\n\r\n<p>-&nbsp;Chất liệu sheer tơ tho&aacute;ng m&aacute;t, c&oacute; độ nhăn &iacute;t, bề mặt chất liệu mịn, chất rũ nhẹ v&agrave; độ bền cao.</p>\r\n\r\n<p>- Ph&ugrave; hợp mặc đi l&agrave;m, đi chơi, dạo phố, c&agrave; ph&ecirc; cuối tuần c&ugrave;ng bạn b&egrave;.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171388662320240423223703Th3PNIvc2oRRVFats0do95Qy7qJk4P0xcDzdAFrF.webp', 200.00, 1000.00, 416.00, 100, 1, 0, 2, 1, 2, 1, '2024-04-23 15:37:03', '2024-04-23 16:45:56'),
(567, 'Đầm midi form suông sát nách thắt nơ lưng', 'dam-midi-form-suong-sat-nach-that-no-lung-1713886676', 'CBLH073023SHO', 1, 2, '<p>-&nbsp;Đầm midi form su&ocirc;ng s&aacute;t n&aacute;ch thắt nơ lưng.</p>\r\n\r\n<p>-&nbsp;Chất liệu sheer tơ tho&aacute;ng m&aacute;t, c&oacute; độ nhăn &iacute;t, bề mặt chất liệu mịn, chất rũ nhẹ v&agrave; độ bền cao.</p>\r\n\r\n<p>- Ph&ugrave; hợp mặc đi l&agrave;m, đi chơi, dạo phố, c&agrave; ph&ecirc; cuối tuần c&ugrave;ng bạn b&egrave;.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171388667620240423223756yL2O8RDVyfNJRXxWz332pYZafWxonpi0Ja00cZMY.webp', 200.00, 1000.00, 416.00, 100, 1, 0, 1, 1, 8, 0, '2024-04-23 15:37:56', '2024-04-23 16:13:58'),
(568, 'Đầm midi form suông sát nách thắt nơ lưng', 'dam-midi-form-suong-sat-nach-that-no-lung-1713886776', 'CBLH073023SDE', 1, 2, '<p>-&nbsp;Đầm midi form su&ocirc;ng s&aacute;t n&aacute;ch thắt nơ lưng.</p>\r\n\r\n<p>-&nbsp;Chất liệu sheer tơ tho&aacute;ng m&aacute;t, c&oacute; độ nhăn &iacute;t, bề mặt chất liệu mịn, chất rũ nhẹ v&agrave; độ bền cao.</p>\r\n\r\n<p>- Ph&ugrave; hợp mặc đi l&agrave;m, đi chơi, dạo phố, c&agrave; ph&ecirc; cuối tuần c&ugrave;ng bạn b&egrave;.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171388677620240423223936QlPwd8EAwFHshi8rO3p5xM7z8AqS5PUseHlSBNsI.webp', 200.00, 1000.00, 416.00, 99, 1, 1, 3, 1, 4, 0, '2024-04-23 15:39:36', '2024-04-29 02:36:58'),
(569, 'Quần short jean form basic 2 túi', 'quan-short-jean-form-basic-2-tui-1713890074', 'CBVH104023STR', 1, 3, '<p>-&nbsp;Đầm midi form su&ocirc;ng s&aacute;t n&aacute;ch thắt nơ lưng.</p>\r\n\r\n<p>-&nbsp;Chất liệu sheer tơ tho&aacute;ng m&aacute;t, c&oacute; độ nhăn &iacute;t, bề mặt chất liệu mịn, chất rũ nhẹ v&agrave; độ bền cao.</p>\r\n\r\n<p>- Ph&ugrave; hợp mặc đi l&agrave;m, đi chơi, dạo phố, c&agrave; ph&ecirc; cuối tuần c&ugrave;ng bạn b&egrave;.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389150020240423235820drc8ojdjtPnbI6wWnHA3itJDkS3qbMjsYa7qx2PC.webp', 200.00, 500.00, 355.00, 100, 1, 0, 3, 1, 7, 1, '2024-04-23 16:34:34', '2024-04-29 03:20:06'),
(570, 'Quần short jean form basic 2 túi', 'quan-short-jean-form-basic-2-tui-1713890116', 'FAQJ041924XLDE', 1, 1, '<p>-&nbsp;Đầm midi form su&ocirc;ng s&aacute;t n&aacute;ch thắt nơ lưng.</p>\r\n\r\n<p>-&nbsp;Chất liệu sheer tơ tho&aacute;ng m&aacute;t, c&oacute; độ nhăn &iacute;t, bề mặt chất liệu mịn, chất rũ nhẹ v&agrave; độ bền cao.</p>\r\n\r\n<p>- Ph&ugrave; hợp mặc đi l&agrave;m, đi chơi, dạo phố, c&agrave; ph&ecirc; cuối tuần c&ugrave;ng bạn b&egrave;.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389011620240423233516XnPjTDBGC4n23UuMDc8YpgdqMkRy4HcXPcNYHice.webp', 200.00, 800.00, 590.00, 99, 1, 0, 1, 1, 4, 0, '2024-04-23 16:35:16', '2024-04-23 17:40:38'),
(571, 'Áo kiểu cổ trụ thắt nơ tay cánh tiên', 'ao-kieu-co-tru-that-no-tay-canh-tien-1713891606', 'C0BVH104023STR', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389160620240424000006xCoK8ejOb1g6iznsOVRxeyqRRKrV3KE5PFoYUY3A.webp', 355.00, 500.00, 400.00, 19, 1, 1, 2, 1, 9, 1, '2024-04-23 17:00:06', '2024-04-23 17:40:30'),
(572, 'Áo kiểu cổ trụ thắt nơ tay cánh tiên', 'ao-kieu-co-tru-that-no-tay-canh-tien-1713891681', 'CBVH104023SDE', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389168120240424000121qFHdKwiEgDyQRjHMsZ4H2Li45S2EmtSPBrWiMhkc.webp', 355.00, 500.00, 400.00, 20, 1, 0, 1, 1, 4, 1, '2024-04-23 17:01:21', '2024-04-23 17:01:29'),
(573, 'Áo kiểu cổ trụ thắt nơ tay cánh tiên', 'ao-kieu-co-tru-that-no-tay-canh-tien-1713891811', 'CBVH104023SCA01', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389181120240424000331QSiE2OeGkao9bPCi3n16Qr7F8wiCEB6TtpMuGbmw.webp', 355.00, 500.00, 400.00, 20, 1, 0, 1, 1, 7, 1, '2024-04-23 17:03:31', '2024-04-23 17:40:57'),
(574, 'Đầm midi linen 2 dây thắt nơ vai', 'dam-midi-linen-2-day-that-no-vai-1713891857', 'FAQH012424SHO', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '17138918572024042400041767kPseWRA24p8zQCu5INcJ4YKKEFNMFj7rATsngY.webp', 355.00, 500.00, 400.00, 20, 1, 0, 0, 1, 8, 1, '2024-04-23 17:04:17', '2024-04-23 17:04:17'),
(575, 'Đầm midi linen 2 dây thắt nơ vai', 'dam-midi-linen-2-day-that-no-vai-1713891891', 'FAQH012424SLA', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '1713891891202404240004515oUP1lPuOX9NRrDnUbrGm4hso9v5DoqY487Oi5zg.webp', 355.00, 500.00, 400.00, 17, 1, 0, 1, 1, 2, 0, '2024-04-23 17:04:51', '2024-04-23 17:34:15'),
(576, 'Đầm midi linen 2 dây thắt nơ vai', 'dam-midi-linen-2-day-that-no-vai-1713891920', 'FAQH012424SNAN', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389192020240424000520ExHnchu1So5IsCfJ1DHCT5nCf3ayVcLTB0vK0gMb.webp', 355.00, 500.00, 400.00, 19, 1, 1, 2, 1, 6, 1, '2024-04-23 17:05:20', '2024-04-29 02:35:49'),
(577, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713891989', 'FAVT021424SHO', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389198920240424000629sp6F4fauqhUAIRKnezhZmKdfjWmyiFoeInx1qRYX.jpg', 355.00, 500.00, 400.00, 18, 1, 1, 3, 1, 8, 1, '2024-04-23 17:06:29', '2024-04-29 03:20:00'),
(578, 'Áo cardigan phối viền thắt nơ', 'ao-cardigan-phoi-vien-that-no-1713892017', 'FAVT021424SHOLA', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389201720240424000657RAHoy1gKg2edfp3NmMbpU6lTRLtzZAomaGZBatBC.jpg', 355.00, 500.00, 400.00, 17, 1, 1, 7, 1, 2, 1, '2024-04-23 17:06:57', '2024-04-29 11:18:15'),
(579, 'Đầm babydoll tay dài cổ sơ mi', 'dam-babydoll-tay-dai-co-so-mi-1713892065', 'CBVH014824SDE', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '171389206520240424000745gTMrIdfmTEkhaImDiRgYBzkY4pKQB3JRru6cZYRQ.webp', 285.00, 600.00, 404.00, 17, 1, 1, 3, 1, 4, 1, '2024-04-23 17:07:45', '2024-04-29 10:38:15'),
(580, 'Đầm babydoll tay dài cổ sơ mi', 'dam-babydoll-tay-dai-co-so-mi-1713892086', 'CBVH014824SKE', 1, 3, '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '<p>- Giặt tay để tr&aacute;nh bay m&agrave;u hoặc x&ugrave; l&ocirc;ng, ủi nhiệt độ b&igrave;nh thường.</p>\r\n\r\n<p>- Kh&ocirc;ng vắt hoặc xoắn mạnh v&igrave; điều n&agrave;y c&oacute; thể g&acirc;y ra c&aacute;c nếp nhăn v&agrave; ảnh hưởng đến độ bền, cấu tr&uacute;c của vải.</p>\r\n\r\n<p>-&nbsp;Phơi, ủi mặt tr&aacute;i sản phẩm.</p>', '17138921362024042400085664wd0OSPncVuhFpMDq9wgOWbWQKc7NhhPvlKqJCR.webp', 285.00, 600.00, 404.00, 19, 1, 0, 4, 1, 9, 1, '2024-04-23 17:08:06', '2024-04-29 11:00:47'),
(581, 'Váy trẻ em - nữ cá tính', 'ao-polo-nam-cotton-1714026323', 'APC24089', 3, 1, '<h1>Thiết Kế Can Phối Lịch L&atilde;m</h1>', NULL, '171435654320240429090903NljPmIPJvQDIoUHZifUYlCVOWdKQ7k6E0jqEVX8K.jpg', 150.00, 200.00, 199.00, 96, 1, 1, 5, 1, 2, 1, '2024-04-25 06:25:23', '2024-04-29 03:10:47'),
(582, 'Áo thun trơn FIT', 'ao-thun-tron-fit-1714894720', '57E3464', 2, 2, '<p>&Aacute;o thun nam cổ tr&ograve;n, tay ngắn, kiểu d&aacute;ng Slim fit, form cơ bản.</p>\r\n\r\n<p>Chất liệu thun cao cấp, mang đến cho bạn nam sự trẻ trung, năng động nhưng cũng kh&ocirc;ng k&eacute;m phần hiện đại</p>', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p><strong>* C&aacute;c sản phẩm thuộc d&ograve;ng cao cấp (Senora) v&agrave; &aacute;o kho&aacute;c (dạ, tweed,&nbsp;l&ocirc;ng, phao) chỉ giặt kh&ocirc;,&nbsp;tuyệt đối kh&ocirc;ng giặt ướt.</strong></p>', '171489517020240505144610xsE8uDQpnwbgs77c8RKlyXwLnM9M4nEe8t135lmi.jpg', 200.00, 350.00, 320.00, 10, 1, 0, 0, 1, 9, 1, '2024-05-05 07:38:40', '2024-05-05 07:48:41'),
(583, 'Áo thun nam DRX', 'ao-thun-nam-drx-1714894997', '57E3025', 2, 3, '<p>&Aacute;o thun cổ tr&ograve;n, tay ngắn. D&aacute;ng xu&ocirc;ng. In h&igrave;nh v&agrave; chữ mặt trước.</p>\r\n\r\n<p>Mang phong c&aacute;ch khỏe khoắn, năng động với chất liệu thun co gi&atilde;n v&agrave; thấm h&uacute;t mồ h&ocirc;i tốt l&agrave; 1 team kh&ocirc;ng thể thiếu trong tủ đồ m&ugrave;a h&egrave; của mọi gia đ&igrave;nh. &Aacute;o c&oacute; độ co gi&atilde;n tốt, bền chắc, tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i. Họa tiết in trẻ trung, nổi bật v&ocirc; c&ugrave;ng bắt mắt, l&agrave; điểm nhấn cho chiếc &aacute;o th&ecirc;m phần ấn tượng hơn.</p>', NULL, '1714895236202405051447162lKRQUZvB6diSBaZZCicH922vOTvnB1ZpIhEKDJi.jpg', 250.00, 300.00, 270.00, 20, 1, 0, 0, 1, 7, 1, '2024-05-05 07:43:17', '2024-05-05 07:47:16'),
(584, 'Balo da trơn', 'balo-da-tron-1714895486', '51A1351', 4, 1, '<p>Balo da PU. Đ&oacute;ng mở bằng kh&oacute;a k&eacute;o kim loại. C&oacute; một quai cầm tay v&agrave; hai quai đeo vai c&oacute; thể điều chỉnh ở ph&iacute;a sau.&nbsp;</p>', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p><strong>* C&aacute;c sản phẩm thuộc d&ograve;ng cao cấp (Senora) v&agrave; &aacute;o kho&aacute;c (dạ, tweed,&nbsp;l&ocirc;ng, phao) chỉ giặt kh&ocirc;,&nbsp;tuyệt đối kh&ocirc;ng giặt ướt.</strong></p>\r\n\r\n<p>* Vải dệt kim: sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai gi&atilde;n.</p>\r\n\r\n<p>* Vải voan, lụa, chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc;, tuytsi, kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;, tuytsi, kaki c&oacute;&nbsp;phối m&agrave;u tương phản hay trang tr&iacute; voan, lụa, đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans. Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt, đ&oacute;ng khuy, k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u, tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u, ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh, n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ, vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u, n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton, kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng, m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y, giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>', '171489548620240505145126tofctXNZQRqgmnq0jRdeDD2eYiQuy7H3R1QzlXCc.jpg', 250.00, 300.00, 280.00, 10, 1, 0, 0, 1, 5, 1, '2024-05-05 07:51:26', '2024-05-05 07:51:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `slug` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Nữ', 'nu', '2023-05-25 09:50:50', '2024-04-23 15:07:21'),
(2, 'Nam', 'nam', '2023-06-23 02:52:17', '2023-06-23 02:54:11'),
(3, 'Trẻ em', 'tre-em', '2023-06-23 02:55:02', '2023-06-23 02:56:12'),
(4, 'Sản phẩm đặc biệt', 'san-pham-dac-biet', '2023-06-23 02:55:59', '2023-09-18 14:55:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 568, 1, '2024-04-23 15:39:36', '2024-04-23 15:39:36'),
(2, 568, 2, '2024-04-23 15:39:36', '2024-04-23 15:39:36'),
(3, 568, 3, '2024-04-23 15:39:36', '2024-04-23 15:39:36'),
(4, 568, 4, '2024-04-23 15:39:36', '2024-04-23 15:39:36'),
(5, 566, 1, '2024-04-23 15:40:41', '2024-04-23 15:40:41'),
(6, 566, 3, '2024-04-23 15:40:41', '2024-04-23 15:40:41'),
(7, 566, 2, '2024-04-23 15:40:41', '2024-04-23 15:40:41'),
(8, 566, 4, '2024-04-23 15:40:41', '2024-04-23 15:40:41'),
(9, 567, 1, '2024-04-23 16:13:58', '2024-04-23 16:13:58'),
(10, 567, 3, '2024-04-23 16:13:58', '2024-04-23 16:13:58'),
(11, 567, 4, '2024-04-23 16:13:58', '2024-04-23 16:13:58'),
(16, 570, 1, '2024-04-23 16:35:16', '2024-04-23 16:35:16'),
(17, 570, 2, '2024-04-23 16:35:16', '2024-04-23 16:35:16'),
(18, 570, 3, '2024-04-23 16:35:16', '2024-04-23 16:35:16'),
(19, 570, 4, '2024-04-23 16:35:16', '2024-04-23 16:35:16'),
(29, 569, 1, '2024-04-23 16:58:50', '2024-04-23 16:58:50'),
(30, 569, 2, '2024-04-23 16:58:50', '2024-04-23 16:58:50'),
(31, 569, 3, '2024-04-23 16:58:50', '2024-04-23 16:58:50'),
(32, 569, 4, '2024-04-23 16:58:50', '2024-04-23 16:58:50'),
(33, 571, 1, '2024-04-23 17:00:06', '2024-04-23 17:00:06'),
(34, 571, 3, '2024-04-23 17:00:06', '2024-04-23 17:00:06'),
(35, 571, 5, '2024-04-23 17:00:06', '2024-04-23 17:00:06'),
(36, 571, 6, '2024-04-23 17:00:06', '2024-04-23 17:00:06'),
(37, 572, 1, '2024-04-23 17:01:21', '2024-04-23 17:01:21'),
(38, 572, 3, '2024-04-23 17:01:21', '2024-04-23 17:01:21'),
(39, 572, 5, '2024-04-23 17:01:21', '2024-04-23 17:01:21'),
(40, 572, 6, '2024-04-23 17:01:21', '2024-04-23 17:01:21'),
(41, 573, 1, '2024-04-23 17:03:31', '2024-04-23 17:03:31'),
(42, 573, 3, '2024-04-23 17:03:31', '2024-04-23 17:03:31'),
(43, 573, 5, '2024-04-23 17:03:31', '2024-04-23 17:03:31'),
(44, 573, 6, '2024-04-23 17:03:31', '2024-04-23 17:03:31'),
(45, 574, 1, '2024-04-23 17:04:17', '2024-04-23 17:04:17'),
(46, 574, 3, '2024-04-23 17:04:17', '2024-04-23 17:04:17'),
(47, 574, 5, '2024-04-23 17:04:17', '2024-04-23 17:04:17'),
(48, 574, 6, '2024-04-23 17:04:17', '2024-04-23 17:04:17'),
(49, 575, 1, '2024-04-23 17:04:51', '2024-04-23 17:04:51'),
(50, 575, 3, '2024-04-23 17:04:52', '2024-04-23 17:04:52'),
(51, 575, 5, '2024-04-23 17:04:52', '2024-04-23 17:04:52'),
(52, 575, 6, '2024-04-23 17:04:52', '2024-04-23 17:04:52'),
(53, 576, 1, '2024-04-23 17:05:20', '2024-04-23 17:05:20'),
(54, 576, 3, '2024-04-23 17:05:20', '2024-04-23 17:05:20'),
(55, 576, 5, '2024-04-23 17:05:20', '2024-04-23 17:05:20'),
(56, 576, 6, '2024-04-23 17:05:20', '2024-04-23 17:05:20'),
(57, 577, 1, '2024-04-23 17:06:29', '2024-04-23 17:06:29'),
(58, 577, 3, '2024-04-23 17:06:29', '2024-04-23 17:06:29'),
(59, 577, 5, '2024-04-23 17:06:29', '2024-04-23 17:06:29'),
(60, 577, 6, '2024-04-23 17:06:29', '2024-04-23 17:06:29'),
(61, 578, 1, '2024-04-23 17:06:57', '2024-04-23 17:06:57'),
(62, 578, 3, '2024-04-23 17:06:57', '2024-04-23 17:06:57'),
(63, 578, 5, '2024-04-23 17:06:57', '2024-04-23 17:06:57'),
(64, 578, 6, '2024-04-23 17:06:57', '2024-04-23 17:06:57'),
(76, 580, 1, '2024-04-23 17:34:15', '2024-04-23 17:34:15'),
(77, 580, 3, '2024-04-23 17:34:15', '2024-04-23 17:34:15'),
(78, 580, 4, '2024-04-23 17:34:15', '2024-04-23 17:34:15'),
(79, 579, 1, '2024-04-23 17:35:18', '2024-04-23 17:35:18'),
(80, 579, 2, '2024-04-23 17:35:18', '2024-04-23 17:35:18'),
(81, 579, 3, '2024-04-23 17:35:18', '2024-04-23 17:35:18'),
(82, 579, 4, '2024-04-23 17:35:18', '2024-04-23 17:35:18'),
(110, 581, 2, '2024-04-29 03:10:47', '2024-04-29 03:10:47'),
(111, 581, 3, '2024-04-29 03:10:47', '2024-04-29 03:10:47'),
(112, 581, 4, '2024-04-29 03:10:47', '2024-04-29 03:10:47'),
(127, 583, 1, '2024-05-05 07:47:16', '2024-05-05 07:47:16'),
(128, 583, 2, '2024-05-05 07:47:16', '2024-05-05 07:47:16'),
(129, 583, 3, '2024-05-05 07:47:16', '2024-05-05 07:47:16'),
(130, 583, 4, '2024-05-05 07:47:16', '2024-05-05 07:47:16'),
(134, 582, 1, '2024-05-05 07:48:41', '2024-05-05 07:48:41'),
(135, 582, 3, '2024-05-05 07:48:41', '2024-05-05 07:48:41'),
(136, 582, 4, '2024-05-05 07:48:41', '2024-05-05 07:48:41'),
(137, 584, 3, '2024-05-05 07:51:26', '2024-05-05 07:51:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', NULL, NULL),
(2, 'M', NULL, NULL),
(3, 'L', NULL, NULL),
(4, 'XL', NULL, NULL),
(5, 'XXL', NULL, NULL),
(6, 'XXXL', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(8, 'sự kiện mới', 'su-kien-moi', '2024-04-27 07:22:53', '2024-04-27 07:22:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `customer_notes` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT 0.00,
  `admin_id_status_shipped` int(10) UNSIGNED DEFAULT NULL,
  `admin_id_status_delivered` int(10) UNSIGNED DEFAULT NULL,
  `admin_id_status_cancel` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `customer_id`, `name`, `phone_number`, `address`, `customer_notes`, `notes`, `amount`, `score_awards`, `admin_id_status_shipped`, `admin_id_status_delivered`, `admin_id_status_cancel`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ORD202404240001519MV', NULL, 'Nguyễn Văn A', '0351234567', 'Hà Nội', 'Giao vào buổi sáng', NULL, 400.00, 0.00, 1, 1, NULL, 2, '2024-04-23 17:02:34', '2024-04-29 01:21:09'),
(2, 'ORD20240424223402TDH', NULL, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 400.00, 0.00, 1, 1, NULL, 2, '2024-04-24 15:34:13', '2024-04-29 01:21:08'),
(3, 'ORD202404242235200HW', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 400.00, 0.00, 1, 1, NULL, 2, '2024-04-24 15:35:23', '2024-04-29 01:21:06'),
(4, 'ORD20240429093524XS5', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 603.00, 0.00, 1, 1, NULL, 2, '2024-04-29 02:35:29', '2024-04-29 02:36:51'),
(5, 'ORD20240429093554MH2', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 400.00, 0.00, 1, 1, NULL, 2, '2024-04-29 02:35:57', '2024-04-29 02:36:50'),
(6, 'ORD20240429093703GAW', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 416.00, 0.00, 1, 1, NULL, 2, '2024-04-29 02:37:06', '2024-04-29 02:37:19'),
(7, 'ORD202404290937319HF', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, 'địa chỉ không đúng', 400.00, 0.00, NULL, NULL, 1, 3, '2024-04-29 02:37:32', '2024-04-29 02:37:53'),
(8, 'ORD20240429100723SEJ', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 400.00, 0.00, NULL, NULL, NULL, 0, '2024-04-29 03:07:26', '2024-04-29 03:07:26'),
(9, 'ORD20240429100744ZRH', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 398.00, 0.00, 18, NULL, NULL, 1, '2024-04-29 03:07:49', '2024-04-29 03:08:12'),
(10, 'ORD20240429104239DVP', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 1189.00, 0.00, NULL, NULL, NULL, 0, '2024-04-29 03:42:42', '2024-04-29 03:42:42'),
(11, 'ORD20240429172607PJR', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 404.00, 0.00, NULL, NULL, NULL, 0, '2024-04-29 10:26:09', '2024-04-29 10:26:09'),
(12, 'ORD20240429173821U2H', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, 'Lỗi hệ thống đã xảy ra', 404.00, 0.00, NULL, NULL, NULL, 3, '2024-04-29 10:38:23', '2024-04-29 10:38:23'),
(13, 'ORD20240429173923KLD', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 400.00, 0.00, NULL, NULL, NULL, 0, '2024-04-29 10:39:25', '2024-04-29 10:39:25'),
(14, 'ORD2024042918005917Q', 64, 'NguyenVietHa', '0793330769', 'Hải Dương', NULL, NULL, 1200.00, 0.00, NULL, NULL, NULL, 0, '2024-04-29 11:01:01', '2024-04-29 11:01:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variant_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `variants`
--

INSERT INTO `variants` (`id`, `product_id`, `variant_product_id`, `created_at`, `updated_at`) VALUES
(1, 566, 567, '2024-04-23 15:40:41', '2024-04-23 15:40:41'),
(2, 566, 568, '2024-04-23 15:40:41', '2024-04-23 15:40:41'),
(5, 569, 570, '2024-04-23 16:58:50', '2024-04-23 16:58:50'),
(6, 580, 575, '2024-04-23 17:34:15', '2024-04-23 17:34:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_name_unique` (`name`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`,`phone_number`),
  ADD UNIQUE KEY `customers_phone_number_unique` (`phone_number`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `posts_ibfk_1` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `post_tags_ibfk_2` (`tag_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `product_category_id` (`product_category_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id_unique` (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `admin_id_status_shipped` (`admin_id_status_shipped`),
  ADD KEY `admin_id_status_delivered` (`admin_id_status_delivered`),
  ADD KEY `admin_id_status_cancel` (`admin_id_status_cancel`);

--
-- Chỉ mục cho bảng `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `variant_product_id` (`variant_product_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `wishlists_ibfk_1` (`customer_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `admins` (`name`);

--
-- Các ràng buộc cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`);

--
-- Các ràng buộc cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_size_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  ADD CONSTRAINT `product_size_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`admin_id_status_shipped`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`admin_id_status_delivered`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `transactions_ibfk_5` FOREIGN KEY (`admin_id_status_cancel`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `transactions_ibfk_6` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_fk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
