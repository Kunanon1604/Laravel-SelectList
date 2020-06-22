-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 03:50 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `ref_province_id` int(11) NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `ref_province_id`, `district_name`, `postcode`, `created_at`, `updated_at`) VALUES
(1, 1, 'บางกะปิ', 10240, NULL, NULL),
(2, 1, 'สายไหม', 10220, NULL, NULL),
(3, 2, 'ลำลูกกา', 10550, NULL, NULL),
(4, 2, 'ธัญบุรี', 10550, NULL, NULL),
(5, 1, 'วังทองหลาง', 10310, NULL, NULL),
(6, 1, 'มีนบุรี', 10510, NULL, NULL),
(7, 3, 'บางปะอิน', 13160, NULL, NULL),
(8, 3, 'นครหลวง', 13260, NULL, NULL),
(9, 4, 'บ้านบึง', 20170, NULL, NULL),
(10, 4, 'สัตหีบ', 20180, NULL, NULL),
(11, 5, 'พระประแดง', 10130, NULL, NULL),
(12, 5, 'บางพลี', 10540, NULL, NULL),
(13, 6, 'มวกเหล็ก', 18180, NULL, NULL),
(14, 6, 'เมืองสระบุรี', 18000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_15_085648_create_province_table', 1),
(2, '2020_06_15_085820_create_dictrict_table', 1),
(3, '2020_06_15_085906_create_subdictrict_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `province_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`, `created_at`, `updated_at`) VALUES
(1, 'กรุงเทพมหานคร', NULL, NULL),
(2, 'ปทุมธานี', NULL, NULL),
(3, 'พระนครศรีอยุธา', NULL, NULL),
(4, 'ชลบุรี', NULL, NULL),
(5, 'สมุทรปราการ', NULL, NULL),
(6, 'สระบุรี', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict`
--

CREATE TABLE `subdistrict` (
  `sub_district_id` bigint(20) UNSIGNED NOT NULL,
  `ref_district_id` int(11) NOT NULL,
  `sub_district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistrict`
--

INSERT INTO `subdistrict` (`sub_district_id`, `ref_district_id`, `sub_district_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'คลองถนน', NULL, NULL),
(2, 3, 'คลองหก', NULL, NULL),
(3, 1, 'คลองจั่น', NULL, NULL),
(4, 1, 'หัวหมาก', NULL, NULL),
(5, 5, 'วังทองหลาง', NULL, NULL),
(6, 5, 'พลับพลา', NULL, NULL),
(7, 6, 'บางชัน', NULL, NULL),
(8, 6, 'คันนายาว', NULL, NULL),
(9, 4, 'รังสิต', NULL, NULL),
(10, 4, 'บึงน้ำรักษ์', NULL, NULL),
(11, 3, 'คูคต', NULL, NULL),
(12, 3, 'บึงคำพร้อย', NULL, NULL),
(13, 2, 'ออเงิน', NULL, NULL),
(14, 2, 'สายไหม', NULL, NULL),
(15, 7, 'คลองจิก', NULL, NULL),
(16, 7, 'บางประแดง', NULL, NULL),
(17, 7, 'บ้านโพ', NULL, NULL),
(18, 8, 'คลองสะแก', NULL, NULL),
(19, 8, 'ท่าช้าง', NULL, NULL),
(20, 8, 'นครหลวง', NULL, NULL),
(21, 9, 'บ้านบึง', NULL, NULL),
(22, 9, 'หนองบอนแดง', NULL, NULL),
(23, 10, 'พลูตาหลวง', NULL, NULL),
(24, 10, 'สัตหีบ', NULL, NULL),
(25, 11, 'สำโรง', NULL, NULL),
(26, 11, 'บางน้ำผึ้ง', NULL, NULL),
(27, 12, 'ราชาเทวะ', NULL, NULL),
(28, 12, 'บางเสาธง', NULL, NULL),
(29, 13, 'มวกเหล็ก', NULL, NULL),
(30, 13, 'มิตรภาพ', NULL, NULL),
(31, 14, 'โคกสว่าง', NULL, NULL),
(32, 14, 'ปากข้าวสาร', NULL, NULL),
(33, 1, 'บางกะปิ', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `subdistrict`
--
ALTER TABLE `subdistrict`
  ADD PRIMARY KEY (`sub_district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subdistrict`
--
ALTER TABLE `subdistrict`
  MODIFY `sub_district_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
