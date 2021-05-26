-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql.pos.joyeeta.shop
-- Generation Time: May 24, 2021 at 04:47 AM
-- Server version: 5.7.28-log
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_joyeeta_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2019-01-20 09:59:06'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2019-01-20 09:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 03:30:50', '2019-01-02 03:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 03:57:12', '2019-01-02 03:57:12'),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, NULL, '2020-02-03 09:57:30', '2020-02-03 09:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mahbub', 'aks.jpg', 'Joyeeta Foundation', '31123', 'mahbub@gmail.com', '01884-552517', 'Rapa Plaza', 'Dhaka', 'Dhaka', '1209', 'Bangladesh', 1, '2018-05-12 21:49:30', '2021-05-09 09:36:42'),
(2, 'tariq', NULL, 'big tree', NULL, 'tariq@bigtree.com', '321312', 'khulshi', 'chittagong', NULL, NULL, NULL, 1, '2018-05-12 21:57:54', '2018-06-15 00:07:11'),
(3, 'test', NULL, 'test', NULL, 'test@test.com', '3211', 'erewrwqre', 'afsf', NULL, NULL, NULL, 0, '2018-05-30 02:38:58', '2018-05-30 02:39:57'),
(5, 'modon', 'mogaTel.jpg', 'mogaTel', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 1, '2018-09-01 03:59:54', '2018-10-07 02:35:51'),
(6, 'a', NULL, 'a', NULL, 'a@a.com', 'q', 'q', 'q', NULL, NULL, NULL, 0, '2018-10-07 02:33:39', '2018-10-07 02:34:18'),
(7, 'a', NULL, 'a', NULL, 'a@a.com', 'a', 'a', 'a', NULL, NULL, NULL, 0, '2018-10-07 02:34:36', '2018-10-07 02:36:07'),
(8, 'x', 'x.png', 'x', NULL, 'x@x.com', 'x', 'x', 'x', NULL, NULL, NULL, 0, '2019-03-18 11:02:42', '2021-05-07 07:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'HP', 'HP.jpg', 1, '2018-05-12 09:06:14', '2019-03-02 05:32:21'),
(4, 'samsung', 'samsung.jpg', 1, '2018-05-12 09:08:41', '2018-07-04 03:38:37'),
(5, 'Apple', 'Apple.jpg', 1, '2018-08-31 23:34:49', '2018-12-06 03:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', 9, 1, '2018-05-12 03:27:25', '2019-03-01 15:07:21'),
(2, 'electronics', NULL, 1, '2018-05-12 03:35:57', '2019-03-01 15:07:21'),
(3, 'computer', 2, 1, '2018-05-12 03:36:08', '2019-04-10 04:16:06'),
(4, 'toy', NULL, 1, '2018-05-23 22:57:48', '2019-03-01 15:09:27'),
(7, 'jacket', NULL, 0, '2018-05-27 22:39:51', '2018-05-27 22:40:48'),
(9, 'food', NULL, 1, '2018-06-25 01:21:40', '2018-09-03 03:41:28'),
(10, 'anda', NULL, 0, '2018-08-28 23:36:31', '2018-08-28 23:37:34'),
(11, 'anda', NULL, 0, '2018-08-28 23:48:06', '2018-08-28 23:53:22'),
(12, 'accessories', NULL, 1, '2018-12-04 23:28:53', '2019-04-10 04:17:03'),
(14, 'nn', NULL, 0, '2019-04-10 04:22:30', '2019-04-10 05:38:47'),
(15, 'nm', NULL, 0, '2019-04-10 04:22:36', '2019-04-10 05:41:43'),
(16, 'desktop', 3, 1, '2020-03-11 10:42:33', '2020-03-11 10:42:33'),
(17, 'Ledis Item', NULL, 1, '2021-04-11 22:32:11', '2021-04-11 22:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 3, '2020-03-31', 1, 1, '2018-10-25 22:38:50', '2020-03-11 10:46:41'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 02:59:26', '2019-03-02 05:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', NULL, 'kajir deuri', 'chittagong', NULL, NULL, 'bd', 190, 1631.25, 1, '2018-05-12 10:00:48', '2021-05-20 18:40:31'),
(2, 2, 'moinul', 'lioncoders', NULL, '+8801200000001', NULL, 'jamalkhan', 'chittagong', NULL, NULL, 'bd', 100, 1390.25, 1, '2018-05-12 10:04:51', '2021-05-22 22:01:01'),
(3, 3, 'tariq', 'big tree', NULL, '3424', NULL, 'khulshi', 'chittagong', NULL, NULL, 'bd', NULL, 151.2, 1, '2018-05-12 10:07:52', '2021-05-20 06:06:28'),
(4, 1, 'test', NULL, NULL, '4234', NULL, 'frwerw', 'qwerwqr', NULL, NULL, NULL, NULL, NULL, 0, '2018-05-30 01:35:28', '2018-05-30 01:37:38'),
(8, 1, 'anwar', 'smart it', 'anwar@smartit.com', '32321', NULL, 'nasirabad', 'chittagong', NULL, NULL, 'bd', NULL, NULL, 0, '2018-09-01 03:26:13', '2018-09-01 03:29:55'),
(11, 1, 'walk-in-customer', NULL, NULL, '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, NULL, 365840.85, 1, '2018-09-02 01:30:54', '2021-05-25 00:22:22'),
(15, 1, 's', NULL, NULL, '2', NULL, 's', '3e', NULL, NULL, NULL, NULL, NULL, 0, '2018-11-05 04:00:39', '2018-11-08 03:37:08'),
(16, 1, 'asas', NULL, NULL, '2121', NULL, 'dasd', 'asdd', NULL, NULL, NULL, NULL, NULL, 0, '2018-12-01 00:07:53', '2018-12-03 21:55:46'),
(17, 1, 'Md Noor Islam Salman', NULL, 'noorislamsalman@gmail.com', '01746182842', NULL, '2nd Floor, house#4, Baitus Salam Housing LTD, Zigatola, Dhanmondi', 'Dhaka', NULL, NULL, NULL, NULL, 1246.44, 1, '2021-04-08 23:36:03', '2021-05-20 18:25:06'),
(18, 1, '01834106010', NULL, NULL, '46546', NULL, 'hihih', 'hyuu', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-19 20:55:27', '2021-05-19 20:55:27'),
(19, 1, 'shakil', NULL, NULL, '0174998779', NULL, 'mirpur', 'dhaka', NULL, NULL, NULL, NULL, 1790.1, 1, '2021-05-19 21:12:59', '2021-05-22 20:00:51'),
(20, 1, 'shakil', NULL, NULL, '01749998779', NULL, 'mirpur', 'dhaka', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-20 02:21:48', '2021-05-20 02:21:48'),
(21, 1, 'rifat', NULL, NULL, '01704231113', NULL, 'mohammadpur', 'dhaka', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-20 19:28:49', '2021-05-20 19:28:49'),
(22, 1, 'moon', NULL, NULL, '01733576060', NULL, 'mohammadpur', 'dhaka', NULL, NULL, NULL, NULL, 5590.05, 1, '2021-05-20 20:09:22', '2021-05-22 22:24:28'),
(23, 1, 'admin', NULL, NULL, '017448556511', NULL, 'joshhor', 'rajshahi', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-21 18:18:49', '2021-05-21 18:18:49'),
(24, 1, 'yyas', NULL, NULL, '017894562', NULL, 'olypur', 'cap-aynawabgong', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-21 19:52:09', '2021-05-21 19:52:09'),
(25, 1, 'rapa', NULL, NULL, '01553599755', NULL, 'rongpur', 'rongpur', NULL, NULL, NULL, NULL, 512500, 1, '2021-05-21 20:28:10', '2021-05-22 19:20:59'),
(26, 1, 'rani', NULL, NULL, '01557100996', NULL, 'purbacal', 'dhaka', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-21 20:34:30', '2021-05-21 20:34:30'),
(27, 1, 'tipu', NULL, NULL, '01720182019', NULL, 'joshhor', 'rajshahi', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-22 17:32:12', '2021-05-22 17:32:12'),
(28, 1, 'yara', NULL, NULL, '0175595653', NULL, 'yarui', 'shylat', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-22 18:58:45', '2021-05-22 18:58:45'),
(29, 1, 'rapa', NULL, NULL, '01788596532', NULL, 'lalmatiya', 'dhaka', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-22 19:11:07', '2021-05-22 19:11:07'),
(30, 1, 'morsalin', NULL, NULL, '018506475862', NULL, 'gulsan', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, '2021-05-24 22:34:11', '2021-05-24 22:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 08:09:36', '2019-03-02 06:01:35'),
(2, 'distributor', '-10', 1, '2018-05-12 08:12:14', '2019-03-02 06:02:12'),
(3, 'reseller', '5', 1, '2018-05-12 08:12:26', '2018-05-30 01:18:14'),
(4, 'test', '12', 0, '2018-05-30 01:17:16', '2018-05-30 01:17:57'),
(5, 'test', '0', 0, '2018-08-03 09:10:27', '2018-08-03 09:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20180808-044431', 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', NULL, NULL, '3', '2018-08-08 10:44:55', '2018-11-06 04:59:06'),
(2, 'dr-20181106-105936', 88, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2018-11-06 04:59:43', '2018-11-06 05:10:38'),
(3, 'dr-20181106-111321', 79, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '3', '2018-11-06 05:13:25', '2018-11-06 05:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 05:16:47', '2018-12-27 10:40:23'),
(2, 'xyz', 1, '2018-12-27 10:28:47', '2018-12-27 10:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-25 22:48:23', '2018-08-26 01:18:55'),
(3, 100, 2, 1, NULL, '2018-08-26 00:53:16', '2018-08-26 21:42:39'),
(4, 50, 1, 1, NULL, '2018-09-04 22:56:19', '2018-09-04 22:56:19'),
(5, 50, 1, 1, NULL, '2018-09-10 00:08:40', '2018-09-10 00:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `disburse_lists`
--

CREATE TABLE `disburse_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `batch_id` varchar(50) DEFAULT NULL,
  `disburse_id` varchar(50) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `photos` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disburse_lists`
--

INSERT INTO `disburse_lists` (`id`, `batch_id`, `disburse_id`, `warehouse_id`, `paid_amount`, `comment`, `photos`, `created_at`, `updated_at`) VALUES
(1, '1090521120540', '1090521120540', 1, 300, NULL, '1090521120540-2021-05-10-609906c5a56be.jpg', '2021-05-10 23:11:17', '2021-05-10 23:11:17'),
(2, '1090521120540', '1090521120540', 1, 300, NULL, '1090521120540-2021-05-10-60990c9bb467a.jpg', '2021-05-10 23:36:11', '2021-05-10 23:36:11'),
(3, '1090521120540', '1090521120540', 1, 300, NULL, '1090521120540-2021-05-10-6099101fbb5cc.jpg', '2021-05-10 23:51:11', '2021-05-10 23:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 00:48:37', '2019-03-02 06:50:23'),
(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-30 22:20:51', '2019-01-03 00:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(2, 'er-20180817-012254', 1, 2, 1, 1, 150, 'first expense...', '2018-08-17 07:22:54', '2018-08-17 07:44:13'),
(3, 'er-20180817-014241', 1, 1, 1, 1, 125, 'second expense...', '2018-08-17 07:42:41', '2018-08-17 07:43:50'),
(4, 'er-20181022-043609', 2, 1, 1, 1, 1000, NULL, '2018-10-22 10:36:09', '2018-10-22 10:36:09'),
(5, 'er-20181101-050207', 2, 2, 1, 1, 1000, NULL, '2018-10-31 23:02:07', '2018-10-31 23:02:07'),
(6, 'er-20181101-050231', 2, 1, 1, 1, 550, NULL, '2018-10-31 23:02:31', '2018-10-31 23:02:31'),
(7, 'er-20181105-091913', 1, 1, 1, 1, 2000, NULL, '2018-11-05 03:19:13', '2018-11-05 03:19:13'),
(8, 'er-20181105-091929', 2, 2, 1, 1, 1000, NULL, '2018-11-05 03:19:29', '2018-11-05 03:19:29'),
(9, 'er-20190101-063342', 2, 1, 1, 1, 100, NULL, '2019-01-01 00:33:42', '2019-01-01 00:33:42'),
(10, 'er-20190103-070018', 2, 2, 1, 9, 2000, NULL, '2019-01-03 01:00:18', '2019-01-03 01:00:18'),
(11, 'er-20190209-104656', 2, 2, 1, 1, 500, NULL, '2019-02-09 04:46:56', '2019-02-09 04:46:56'),
(12, 'er-20190209-104716', 2, 1, 1, 1, 400, NULL, '2019-02-09 04:47:16', '2019-02-09 04:47:16'),
(14, 'er-20190303-104142', 2, 2, 1, 1, 250, 'jjj', '2019-03-03 04:41:42', '2019-03-20 09:17:16'),
(15, 'er-20190404-095645', 2, 1, 1, 1, 200, NULL, '2019-04-04 03:56:45', '2019-04-04 03:56:45'),
(16, 'er-20190528-103306', 2, 1, 1, 1, 560, NULL, '2019-05-28 04:33:06', '2019-05-28 04:33:06'),
(17, 'er-20190528-103325', 2, 2, 1, 1, 600, NULL, '2019-05-28 04:33:25', '2019-05-28 04:33:25'),
(19, 'er-20190613-101955', 2, 2, 1, 1, 800, NULL, '2019-06-13 04:19:55', '2019-06-13 04:19:55'),
(20, 'er-20191019-033149', 2, 1, 1, 1, 300, NULL, '2019-10-19 09:31:49', '2019-10-19 09:31:49'),
(21, 'er-20191222-023508', 2, 1, 1, 1, 550, NULL, '2019-12-22 08:35:08', '2019-12-22 08:35:08'),
(22, 'er-20200101-022304', 2, 2, 1, 1, 500, NULL, '2020-01-01 08:23:04', '2020-01-01 08:23:04'),
(23, 'er-20200204-105938', 1, 1, 1, 1, 400, NULL, '2020-02-04 16:59:38', '2020-02-04 16:59:38'),
(24, 'er-20200204-105957', 1, 2, 1, 1, 350, NULL, '2020-02-04 16:59:57', '2020-02-04 16:59:57'),
(25, 'er-20200406-075239', 2, 2, 1, 1, 750, NULL, '2020-04-06 13:52:39', '2020-04-06 13:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '16718342', 'washing', 1, '2018-08-16 00:32:48', '2019-03-02 07:02:07'),
(2, '60128975', 'electric bill', 1, '2018-08-16 00:39:18', '2018-08-16 00:39:18'),
(3, '83954970', 'test', 0, '2018-08-16 00:50:28', '2018-08-16 00:51:40'),
(4, '1234', 'snacks', 1, '2018-09-01 02:40:04', '2018-09-01 02:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `staff_access`, `date_format`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'Joyeeta POS', 'images (3).jpg', 'BDT', 'own', 'd/m/Y', 'default.css', '2018-07-06 06:13:11', '2021-05-07 05:08:19', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 400, 1, NULL, '2020-12-31', 1, 1, '2018-08-18 01:57:40', '2019-11-10 13:06:01'),
(2, '0452297501931931', 370, 100, 2, NULL, '2020-12-31', 1, 1, '2018-08-18 02:46:43', '2019-11-10 12:56:28'),
(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-18 22:38:21', '2018-08-18 22:38:28'),
(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:16:28', '2018-09-30 00:17:21'),
(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:18:49', '2018-09-30 00:20:20'),
(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 03:12:41', '2018-10-07 03:12:55'),
(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 00:23:22', '2018-10-23 00:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-24 23:08:29', '2018-08-24 23:08:29'),
(2, 1, 200, 1, '2018-08-24 23:08:50', '2018-08-24 23:08:50'),
(3, 1, 100, 1, '2018-09-04 23:50:41', '2018-09-04 23:50:41'),
(4, 1, 50, 1, '2018-09-04 23:51:38', '2018-09-04 23:51:38'),
(5, 1, 50, 1, '2018-09-04 23:53:36', '2018-09-04 23:53:36'),
(6, 2, 50, 1, '2018-09-04 23:54:34', '2018-09-04 23:54:34'),
(7, 5, 10, 1, '2018-09-30 00:19:48', '2018-09-30 00:19:48'),
(8, 5, 10, 1, '2018-09-30 00:20:04', '2018-09-30 00:20:04'),
(9, 2, 100, 1, '2018-10-07 03:13:05', '2018-10-07 03:13:05'),
(10, 1, 200, 1, '2018-10-07 03:13:39', '2018-10-07 03:13:39'),
(11, 1, 300, 1, '2018-10-23 00:22:49', '2018-10-23 00:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_transfers`
--

INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 13:18:52', '2020-02-28 13:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('foujiamoon55@gmail.com', '$2y$10$bO9t6mdvi3x9XZmos6SC1.pVQTiapkEByWE2t2T0hwB3v9arO32te', '2021-05-18 05:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(33, 'spr-20180809-055453', 1, NULL, 2, 1, 1000, 0, 'Cash', NULL, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(34, 'spr-20180809-055553', 1, NULL, 2, 1, 1200, 0, 'Cheque', NULL, '2018-08-08 23:55:53', '2018-08-08 23:56:36'),
(35, 'spr-20180809-063214', 1, NULL, 3, 1, 897, 0, 'Cheque', NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(36, 'spr-20180825-034836', 1, NULL, 4, 1, 100, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(39, 'spr-20180825-083634', 1, NULL, 4, 1, 200, 0, 'Gift Card', NULL, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(41, 'spr-20180826-094836', 1, NULL, 6, 1, 20, 0, 'Deposit', '20 bucks paid', '2018-08-26 03:48:36', '2018-08-26 21:42:13'),
(42, 'spr-20180827-073545', 1, NULL, 7, 1, 880, 0, 'Cash', NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(43, 'ppr-20180830-071637', 1, 13, NULL, 1, 100, 0, 'Cash', '100 bucks paid...', '2018-08-30 01:16:37', '2018-08-30 01:16:37'),
(44, 'ppr-20180830-090718', 1, 13, NULL, 1, 200, 0, 'Cheque', NULL, '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(46, 'spr-20180902-053954', 1, NULL, 8, 1, 3529.8, 0, 'Cash', 'fully paid', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(49, 'spr-20180903-033314', 1, NULL, 9, 1, 20, 0, 'Deposit', 'fully paid', '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(50, 'spr-20180903-050138', 1, NULL, 10, 1, 200, 0, 'Gift Card', '50 bucks due...', '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(51, 'spr-20180903-100821', 1, NULL, 11, 1, 5500, 0, 'Cheque', NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(53, 'ppr-20180903-101524', 1, 16, NULL, 1, 1750, 0, 'Cheque', NULL, '2018-09-03 04:15:24', '2018-10-06 01:09:20'),
(78, 'spr-20180926-092105', 1, NULL, 31, 1, 560, 0, 'Cash', NULL, '2018-09-26 03:21:05', '2018-09-26 03:21:05'),
(79, 'spr-20181006-065017', 1, NULL, 30, 1, 100, 0, 'Cheque', NULL, '2018-10-06 00:50:17', '2018-10-06 00:51:55'),
(80, 'spr-20181006-065222', 1, NULL, 30, 1, 20, 0, 'Cash', NULL, '2018-10-06 00:52:22', '2018-10-06 00:52:22'),
(82, 'ppr-20181006-070935', 1, 16, NULL, 1, 1600, 0, 'Cash', NULL, '2018-10-06 01:09:35', '2018-10-06 01:09:35'),
(83, 'spr-20181010-041636', 1, NULL, 41, 1, 461, 0, 'Cash', NULL, '2018-10-09 22:16:36', '2018-10-09 22:16:36'),
(84, 'spr-20181010-053456', 1, NULL, 42, 1, 440, 0, 'Cash', NULL, '2018-10-09 23:34:56', '2018-10-09 23:34:56'),
(91, 'spr-20181021-065338', 1, NULL, 55, 1, 250, 0, 'Cash', NULL, '2018-10-21 00:53:38', '2018-10-21 00:53:38'),
(92, 'spr-20181021-082618', 1, NULL, 57, 1, 575.2, 0, 'Cash', NULL, '2018-10-21 02:26:18', '2018-10-21 02:26:18'),
(93, 'spr-20181022-032730', 1, NULL, 58, 1, 1220, 0, 'Cash', NULL, '2018-10-22 09:27:30', '2018-10-22 09:27:30'),
(104, 'spr-20181023-071548', 11, NULL, 73, 1, 5500, 0, 'Cash', NULL, '2018-10-23 01:15:48', '2018-10-23 01:15:48'),
(105, 'spr-20181023-071648', 1, NULL, 74, 1, 2320, 0, 'Cash', NULL, '2018-10-23 01:16:48', '2018-10-23 01:16:48'),
(126, 'spr-20181101-050033', 1, NULL, 75, 1, 7678, 0, 'Cash', NULL, '2018-10-31 23:00:33', '2018-10-31 23:00:33'),
(127, 'spr-20181101-050130', 1, NULL, 76, 1, 1424, 0, 'Cash', NULL, '2018-10-31 23:01:30', '2018-11-08 03:44:51'),
(129, 'spr-20181105-091523', 1, NULL, 79, 1, 14454, 0, 'Cash', NULL, '2018-11-05 03:15:23', '2018-11-05 03:15:23'),
(130, 'spr-20181105-092002', 1, NULL, 80, 1, 2500, 0, 'Cash', NULL, '2018-11-05 03:20:02', '2018-11-05 03:20:02'),
(131, 'ppr-20181105-092128', 1, 24, NULL, 1, 15950, 0, 'Cash', NULL, '2018-11-05 03:21:28', '2018-11-05 03:21:28'),
(137, 'spr-20181105-095952', 1, NULL, 86, 1, 1100, 0, 'Cash', NULL, '2018-11-05 03:59:52', '2018-11-05 03:59:52'),
(138, 'spr-20181105-100310', 1, NULL, 88, 1, 1100, 0, 'Cash', NULL, '2018-11-05 04:03:10', '2018-11-05 04:03:10'),
(139, 'spr-20181126-020534', 1, NULL, 94, 1, 120, 0, 'Cash', NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(140, 'spr-20181128-071515', 1, NULL, 96, 1, 132, 0, 'Cash', NULL, '2018-11-28 01:15:15', '2018-11-28 01:15:15'),
(141, 'spr-20181201-060524', 1, NULL, 97, 1, 200, 300, 'Cash', NULL, '2018-12-01 00:05:24', '2018-12-04 00:21:05'),
(148, 'ppr-20181204-065932', 1, 23, NULL, 1, 500, 500, 'Cash', NULL, '2018-12-04 00:59:32', '2018-12-04 00:59:44'),
(149, 'ppr-20181205-053443', 1, 25, NULL, 1, 4450, 550, 'Cash', NULL, '2018-12-04 23:34:43', '2018-12-04 23:34:43'),
(150, 'spr-20181205-053608', 1, NULL, 98, 1, 800, 200, 'Cash', NULL, '2018-12-04 23:36:08', '2018-12-04 23:36:08'),
(151, 'spr-20181205-053724', 1, NULL, 99, 1, 800, 0, 'Cash', NULL, '2018-12-04 23:37:24', '2018-12-04 23:37:24'),
(152, 'spr-20181208-062032', 1, NULL, 101, 1, 100, 400, 'Cash', NULL, '2018-12-08 00:20:32', '2018-12-11 03:19:39'),
(157, 'ppr-20181220-063439', 1, 27, NULL, 1, 10, 0, 'Cash', NULL, '2018-12-20 00:34:39', '2018-12-20 00:35:01'),
(159, 'spr-20181224-045832', 1, NULL, 103, 1, 120, 0, 'Cash', NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(160, 'spr-20190101-054544', 1, NULL, 105, 1, 21, 0, 'Cash', NULL, '2018-12-31 23:45:44', '2018-12-31 23:45:44'),
(161, 'spr-20190101-091040', 1, NULL, 106, 1, 860, 0, 'Cash', NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 'spr-20190103-065627', 1, NULL, 107, 1, 5040, 960, 'Cash', NULL, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 'spr-20190120-035824', 1, NULL, 108, 1, 120, 0, 'Cash', NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(164, 'ppr-20190129-100302', 9, 36, NULL, 1, 650, 350, 'Cash', NULL, '2019-01-29 04:03:02', '2019-01-29 04:03:02'),
(165, 'ppr-20190129-100324', 9, 34, NULL, 1, 2860, 140, 'Cash', NULL, '2019-01-29 04:03:24', '2019-01-29 04:03:24'),
(166, 'spr-20190129-101451', 9, NULL, 109, 1, 540, 460, 'Cash', NULL, '2019-01-29 04:14:51', '2019-01-29 04:14:51'),
(167, 'spr-20190129-115048', 9, NULL, 110, 1, 1700, 300, 'Cash', NULL, '2019-01-29 05:50:48', '2019-01-29 05:50:48'),
(168, 'spr-20190131-110839', 9, NULL, 111, 1, 271, 0, 'Cash', NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(169, 'spr-20190202-104045', 1, NULL, 112, 1, 440, 0, 'Cash', NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(170, 'spr-20190202-114117', 1, NULL, 113, 1, 350, 0, 'Cash', NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(171, 'spr-20190205-030454', 1, NULL, 114, 1, 440, 0, 'Cash', NULL, '2019-02-05 09:04:54', '2019-02-05 09:04:54'),
(176, 'ppr-20190207-125418', 1, 35, NULL, 1, 50, 50, 'Cash', NULL, '2019-02-07 06:54:18', '2019-02-07 07:05:23'),
(178, 'ppr-20190207-010640', 1, 35, NULL, 1, 50, 50, 'Cheque', NULL, '2019-02-07 07:06:40', '2019-02-07 07:07:04'),
(179, 'spr-20190207-010915', 1, NULL, 120, 1, 50, 50, 'Cash', NULL, '2019-02-07 07:09:15', '2019-02-07 07:09:15'),
(180, 'spr-20190209-104816', 1, NULL, 121, 1, 1272, 728, 'Cash', NULL, '2019-02-09 04:48:16', '2019-02-09 04:48:16'),
(181, 'ppr-20190209-104940', 1, 38, NULL, 1, 1660, 0, 'Cash', NULL, '2019-02-09 04:49:40', '2019-02-09 04:49:40'),
(182, 'ppr-20190209-104959', 1, 39, NULL, 1, 973.5, 0, 'Cash', NULL, '2019-02-09 04:49:59', '2019-02-09 04:49:59'),
(183, 'spr-20190219-023214', 1, NULL, 123, 1, 440, 0, 'Cash', NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(189, 'spr-20190303-104010', 1, NULL, 127, 1, 2500, 0, 'Cash', NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(190, 'ppr-20190303-104046', 1, 40, NULL, 1, 100, 0, 'Cash', NULL, '2019-03-03 04:40:46', '2019-03-03 04:40:46'),
(191, 'ppr-20190303-104222', 1, 37, NULL, 1, 4000, 0, 'Cash', NULL, '2019-03-03 04:42:22', '2019-03-03 04:42:22'),
(192, 'ppr-20190303-104414', 1, 41, NULL, 1, 1000, 0, 'Cash', NULL, '2019-03-03 04:44:14', '2019-03-03 04:44:14'),
(193, 'spr-20190404-095555', 1, NULL, 128, 1, 560, 0, 'Cash', NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(194, 'ppr-20190404-095910', 1, 42, NULL, 1, 300, 200, 'Cash', NULL, '2019-04-04 03:59:10', '2019-04-13 10:52:38'),
(195, 'spr-20190404-095937', 1, NULL, 129, 1, 120, 0, 'Cash', NULL, '2019-04-04 03:59:37', '2019-04-04 03:59:37'),
(196, 'spr-20190421-122124', 1, NULL, 130, 1, 586, 0, 'Cash', NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(197, 'spr-20190528-103229', 1, NULL, 131, 1, 2890, 0, 'Cash', NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(198, 'ppr-20190613-101351', 1, 37, NULL, 1, 2390, 0, 'Cash', NULL, '2019-06-13 04:13:51', '2019-06-13 04:13:51'),
(199, 'spr-20190613-101637', 1, NULL, 132, 1, 840, 0, 'Cash', NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(200, 'ppr-20190613-101713', 1, 43, NULL, 1, 1000, 0, 'Cash', NULL, '2019-06-13 04:17:13', '2019-06-13 04:17:13'),
(201, 'spr-20190613-101752', 1, NULL, 133, 1, 2700, 0, 'Cash', NULL, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(202, 'ppr-20191019-032925', 1, 43, NULL, 1, 3290, 710, 'Cash', NULL, '2019-10-19 09:29:25', '2019-10-19 09:29:25'),
(203, 'spr-20191019-033028', 1, NULL, 134, 1, 2940, 60, 'Cash', NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(205, 'spr-20191103-114044', 1, NULL, 139, 1, 488, 12, 'Cash', NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(206, 'ppr-20191103-114222', 1, 46, NULL, 1, 200, 0, 'Cash', NULL, '2019-11-03 05:42:22', '2019-11-03 05:42:22'),
(211, 'spr-20191109-074131', 1, NULL, 144, 1, 1220, 0, 'Cash', NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(216, 'ppr-20191111-103911', 1, 49, NULL, 1, 5000, 0, 'Cheque', NULL, '2019-11-11 04:39:11', '2019-11-11 04:39:11'),
(217, 'spr-20191111-104008', 1, NULL, 147, 1, 2220, 780, 'Cash', NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(222, 'spr-20191203-115128', 1, NULL, 163, 1, 3, 0, 'Cash', NULL, '2019-12-03 05:51:28', '2019-12-03 05:51:28'),
(227, 'ppr-20191204-111124', 1, 57, NULL, 1, 220, 280, 'Cash', NULL, '2019-12-04 17:11:24', '2019-12-04 17:11:24'),
(228, 'spr-20191205-092712', 1, NULL, 173, 1, 621, 0, 'Cash', NULL, '2019-12-05 03:27:12', '2019-12-05 03:27:12'),
(239, 'spr-20191222-104058', 1, NULL, 187, 1, 288, 212, 'Cash', NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(241, 'spr-20191223-125946', 1, NULL, 190, 1, 1100, 400, 'Cash', NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(244, 'ppr-20200101-010750', 1, 61, NULL, 1, 60, 0, 'Cash', NULL, '2020-01-01 07:07:50', '2020-01-01 07:07:50'),
(246, 'spr-20200101-022028', 1, NULL, 193, 1, 1100, 400, 'Cash', NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(247, 'ppr-20200101-022131', 1, 59, NULL, 1, 6, 0, 'Cash', NULL, '2020-01-01 08:21:31', '2020-01-01 08:21:31'),
(248, 'ppr-20200101-022137', 1, 58, NULL, 1, 4, 0, 'Cash', NULL, '2020-01-01 08:21:37', '2020-01-01 08:21:37'),
(249, 'ppr-20200101-022144', 1, 56, NULL, 1, 2, 0, 'Cash', NULL, '2020-01-01 08:21:44', '2020-01-01 08:21:44'),
(250, 'ppr-20200101-022152', 1, 55, NULL, 1, 4, 0, 'Cash', NULL, '2020-01-01 08:21:52', '2020-01-01 08:21:52'),
(251, 'ppr-20200101-022225', 1, 49, NULL, 1, 2000, 0, 'Cash', NULL, '2020-01-01 08:22:25', '2020-01-01 08:22:25'),
(252, 'spr-20200102-043947', 1, NULL, 194, 1, 892, 108, 'Cash', NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(258, 'spr-20200203-035256', 1, NULL, 201, 1, 120, 880, 'Cash', NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(259, 'spr-20200204-105853', 1, NULL, 202, 1, 1400, 100, 'Cash', NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(260, 'ppr-20200204-110050', 1, 67, NULL, 1, 300, 0, 'Cash', NULL, '2020-02-04 17:00:50', '2020-02-04 17:00:50'),
(261, 'spr-20200302-115414', 1, NULL, 203, 1, 350, 150, 'Cash', NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(262, 'spr-20200302-115741', 1, NULL, 204, 1, 40, 10, 'Cash', NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(263, 'ppr-20200302-115811', 1, 70, NULL, 1, 50, 0, 'Cash', NULL, '2020-03-02 05:58:11', '2020-03-02 05:58:11'),
(264, 'ppr-20200302-115820', 1, 69, NULL, 1, 50, 0, 'Cash', NULL, '2020-03-02 05:58:20', '2020-03-02 05:58:20'),
(265, 'spr-20200311-044642', 1, NULL, 205, 1, 352, 148, 'Cash', NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(266, 'ppr-20200406-073823', 1, 71, NULL, 1, 2000, 1000, 'Cash', 'First Payment', '2020-04-06 13:38:23', '2020-04-06 13:38:55'),
(267, 'spr-20200406-074024', 1, NULL, 207, 1, 500, 500, 'Cash', NULL, '2020-04-06 13:40:24', '2020-04-06 13:40:24'),
(268, 'spr-20200406-074201', 1, NULL, 207, 1, 144, 56, 'Cash', NULL, '2020-04-06 13:42:01', '2020-04-06 13:42:01'),
(269, 'spr-20210411-024948', 1, NULL, 208, 1, 440, 60, 'Cash', NULL, '2021-04-11 20:49:48', '2021-04-11 20:49:48'),
(270, 'spr-20210506-040639', 1, NULL, 209, 1, 2, 0, 'Cash', NULL, '2021-05-06 22:06:39', '2021-05-06 22:06:39'),
(271, 'spr-20210506-041026', 1, NULL, 210, 1, 144, 0, 'Cash', NULL, '2021-05-06 22:10:26', '2021-05-06 22:10:26'),
(272, 'spr-20210506-065754', 1, NULL, 211, 1, 167, 333, 'Cash', NULL, '2021-05-07 00:57:54', '2021-05-07 00:57:54'),
(273, 'ppr-20210506-083625', 1, 74, NULL, 1, 1250, 0, 'Cash', NULL, '2021-05-07 02:36:25', '2021-05-07 02:36:25'),
(274, 'ppr-20210506-083735', 1, 73, NULL, 1, 1344, 0, 'Cash', NULL, '2021-05-07 02:37:35', '2021-05-07 02:37:35'),
(275, 'ppr-20210508-015907', 1, 75, NULL, 1, 1000, 0, 'Cash', NULL, '2021-05-08 08:59:07', '2021-05-08 08:59:07'),
(276, 'ppr-20210508-020000', 1, 76, NULL, 1, 360, 0, 'Cash', NULL, '2021-05-08 09:00:00', '2021-05-08 09:00:00'),
(277, 'spr-20210508-020333', 1, NULL, 213, 1, 146, 54, 'Cash', NULL, '2021-05-08 09:03:33', '2021-05-08 09:03:33'),
(278, 'ppr-20210508-020644', 1, 77, NULL, 1, 2400, 0, 'Cash', NULL, '2021-05-08 09:06:44', '2021-05-08 09:06:44'),
(279, 'spr-20210508-020649', 1, NULL, 215, 1, 358, 142, 'Cash', NULL, '2021-05-08 09:06:49', '2021-05-08 09:06:49'),
(280, 'ppr-20210508-020905', 1, 78, NULL, 1, 100, 0, 'Cash', NULL, '2021-05-08 09:09:05', '2021-05-08 09:09:05'),
(281, 'spr-20210508-021107', 1, NULL, 216, 1, 522, 78, 'Cash', NULL, '2021-05-08 09:11:07', '2021-05-08 09:11:07'),
(282, 'spr-20210508-023157', 1, NULL, 217, 1, 272, 228, 'Cash', NULL, '2021-05-08 09:31:57', '2021-05-08 09:31:57'),
(283, 'spr-20210509-015547', 1, NULL, 218, 1, 146, 354, 'Cash', NULL, '2021-05-09 08:55:47', '2021-05-09 08:55:47'),
(284, 'spr-20210509-015629', 1, NULL, 219, 1, 23.46, 26.54, 'Cash', NULL, '2021-05-09 08:56:29', '2021-05-09 08:56:29'),
(285, 'spr-20210509-015712', 1, NULL, 220, 1, 148.19, 1.8100000000000023, 'Cash', NULL, '2021-05-09 08:57:12', '2021-05-09 08:57:12'),
(286, 'spr-20210509-020729', 1, NULL, 221, 1, 148.92, 1.0800000000000125, 'Cash', NULL, '2021-05-09 09:07:29', '2021-05-09 09:07:29'),
(287, 'spr-20210509-023357', 1, NULL, 222, 1, 248.88, 51.120000000000005, 'Cash', NULL, '2021-05-09 09:33:57', '2021-05-09 09:33:57'),
(288, 'spr-20210517-120534', 1, NULL, 223, 1, 148.92, 151.08, 'Cash', NULL, '2021-05-17 07:05:34', '2021-05-17 07:05:34'),
(289, 'ppr-20210517-122034', 1, 80, NULL, 1, 1500, 0, 'Cash', NULL, '2021-05-17 19:20:34', '2021-05-17 19:20:34'),
(290, 'ppr-20210517-122516', 1, 81, NULL, 1, 200, 0, 'Cash', NULL, '2021-05-17 19:25:16', '2021-05-17 19:25:16'),
(291, 'spr-20210517-123952', 1, NULL, 224, 1, 243.6, 256.4, 'Cash', NULL, '2021-05-17 19:39:52', '2021-05-17 19:39:52'),
(292, 'spr-20210517-125428', 1, NULL, 225, 1, 122.4, 1877.6, 'Cash', NULL, '2021-05-17 19:54:28', '2021-05-17 19:54:28'),
(293, 'spr-20210517-012215', 1, NULL, 226, 1, 121.8, 878.2, 'Cash', NULL, '2021-05-17 20:22:15', '2021-05-17 20:22:15'),
(294, 'ppr-20210517-024305', 1, 82, NULL, 1, 1100, 0, 'Cash', NULL, '2021-05-17 21:43:05', '2021-05-17 21:43:05'),
(295, 'ppr-20210517-074119', 1, 83, NULL, 1, 8, 0, 'Cash', NULL, '2021-05-18 02:41:19', '2021-05-18 02:41:19'),
(296, 'spr-20210517-080109', 1, NULL, 228, 1, 146, 364, 'Cash', NULL, '2021-05-18 03:01:09', '2021-05-18 03:01:09'),
(297, 'spr-20210517-080357', 1, NULL, 229, 1, 144, 0, 'Cash', NULL, '2021-05-18 03:03:57', '2021-05-18 03:03:57'),
(298, 'spr-20210517-085013', 1, NULL, 233, 1, 146, 0, 'Deposit', NULL, '2021-05-18 03:50:13', '2021-05-18 03:50:13'),
(299, 'spr-20210517-085230', 1, NULL, 234, 1, 146, 0, 'Deposit', '1211313131', '2021-05-18 03:52:30', '2021-05-18 03:52:30'),
(300, 'spr-20210517-093511', 1, NULL, 235, 1, 3, 0, 'Deposit', NULL, '2021-05-18 04:35:11', '2021-05-18 04:35:11'),
(301, 'ppr-20210519-010851', 1, 84, NULL, 1, 2500, 0, 'Cash', NULL, '2021-05-19 20:08:51', '2021-05-19 20:08:51'),
(302, 'ppr-20210519-011718', 1, 85, NULL, 1, 5000, 0, 'Credit Card', NULL, '2021-05-19 20:17:18', '2021-05-19 20:17:18'),
(303, 'spr-20210519-012659', 1, NULL, 236, 1, 21.32, 0, 'Deposit', NULL, '2021-05-19 20:26:59', '2021-05-19 20:26:59'),
(304, 'spr-20210519-012753', 1, NULL, 237, 1, 2537.5, 0, 'Deposit', NULL, '2021-05-19 20:27:53', '2021-05-19 20:27:53'),
(305, 'spr-20210519-013346', 1, NULL, 238, 1, 2500, 0, 'Deposit', '4987730018813064', '2021-05-19 20:33:46', '2021-05-19 20:33:46'),
(306, 'spr-20210519-014355', 1, NULL, 239, 1, 2500, 0, 'Deposit', '498773001813064', '2021-05-19 20:43:55', '2021-05-19 20:43:55'),
(307, 'spr-20210519-014722', 1, NULL, 240, 1, 2550, 0, 'Deposit', '49871223155200', '2021-05-19 20:47:22', '2021-05-19 20:47:22'),
(308, 'spr-20210519-014814', 1, NULL, 241, 1, 2500, 0, 'Deposit', 'uytuygfujyg', '2021-05-19 20:48:14', '2021-05-19 20:48:14'),
(309, 'spr-20210519-021041', 1, NULL, 242, 1, 2550, 0, 'Deposit', '2415520564123554', '2021-05-19 21:10:41', '2021-05-19 21:10:41'),
(310, 'spr-20210519-022812', 1, NULL, 243, 1, 566.1, 0, 'Deposit', '414715525855225', '2021-05-19 21:28:12', '2021-05-19 21:28:12'),
(311, 'spr-20210519-024638', 1, NULL, 244, 1, 5665.08, 0, 'Deposit', '48255845641', '2021-05-19 21:46:38', '2021-05-19 21:46:38'),
(312, 'spr-20210519-032954', 1, NULL, 245, 1, 3060, 0, 'Deposit', '4525625645523', '2021-05-19 22:29:54', '2021-05-19 22:29:54'),
(313, 'spr-20210519-034240', 1, NULL, 246, 1, 1230, 0, 'Deposit', '451241512414', '2021-05-19 22:42:40', '2021-05-19 22:42:40'),
(314, 'spr-20210519-035658', 1, NULL, 247, 1, 8053.92, 0, 'Deposit', '32225522525', '2021-05-19 22:56:58', '2021-05-19 22:56:58'),
(315, 'spr-20210519-040918', 1, NULL, 248, 1, 8053.92, 0, 'Deposit', '85582655156', '2021-05-19 23:09:18', '2021-05-19 23:09:18'),
(316, 'spr-20210519-041657', 1, NULL, 249, 1, 803.76, 0, 'Deposit', '5544556455', '2021-05-19 23:16:57', '2021-05-19 23:16:57'),
(317, 'spr-20210519-074537', 1, NULL, 250, 1, 12240, 0, 'Deposit', '34578876654', '2021-05-20 02:45:37', '2021-05-20 02:45:37'),
(318, 'spr-20210519-083313', 1, NULL, 251, 1, 571.2, 0, 'Deposit', '34344555554', '2021-05-20 03:33:13', '2021-05-20 03:33:13'),
(319, 'spr-20210519-105807', 1, NULL, 252, 1, 144, 0, 'Deposit', NULL, '2021-05-20 05:58:07', '2021-05-20 05:58:07'),
(320, 'spr-20210519-110628', 9, NULL, 253, 1, 151.2, 0, 'Deposit', '46554464', '2021-05-20 06:06:28', '2021-05-20 06:06:28'),
(321, 'spr-20210519-111031', 1, NULL, 254, 1, 144, 0, 'Deposit', '131313', '2021-05-20 06:10:31', '2021-05-20 06:10:31'),
(322, 'spr-20210520-072712', 1, NULL, 255, 1, 1020, 0, 'Deposit', NULL, '2021-05-20 14:27:12', '2021-05-20 14:27:12'),
(323, 'ppr-20210520-072957', 1, 106, NULL, 3, 1000, 0, 'Cash', NULL, '2021-05-20 14:29:57', '2021-05-20 14:29:57'),
(324, 'ppr-20210520-072959', 1, 106, NULL, 3, 1000, 0, 'Cash', NULL, '2021-05-20 14:29:59', '2021-05-20 14:29:59'),
(325, 'ppr-20210520-072959', 1, 106, NULL, 3, 1000, 0, 'Cash', NULL, '2021-05-20 14:29:59', '2021-05-20 14:29:59'),
(326, 'ppr-20210520-073000', 1, 106, NULL, 3, 1000, 0, 'Cash', NULL, '2021-05-20 14:30:00', '2021-05-20 14:30:00'),
(327, 'ppr-20210520-073000', 1, 106, NULL, 3, 1000, 0, 'Cash', NULL, '2021-05-20 14:30:00', '2021-05-20 14:30:00'),
(328, 'spr-20210520-110346', 1, NULL, 256, 1, 761.25, 0, 'Deposit', '3362969585', '2021-05-20 18:03:46', '2021-05-20 18:03:46'),
(329, 'spr-20210520-111035', 1, NULL, 257, 1, 690.54, 0, 'Deposit', '5568876245256', '2021-05-20 18:10:35', '2021-05-20 18:10:35'),
(330, 'spr-20210520-112506', 1, NULL, 258, 1, 555.9, 0, 'Deposit', '4666', '2021-05-20 18:25:06', '2021-05-20 18:25:06'),
(331, 'spr-20210520-114031', 1, NULL, 259, 1, 850, 0, 'Deposit', '5536252', '2021-05-20 18:40:31', '2021-05-20 18:40:31'),
(332, 'spr-20210520-120758', 1, NULL, 260, 1, 1522.5, 0, 'Deposit', '234567890', '2021-05-20 19:07:58', '2021-05-20 19:07:58'),
(333, 'spr-20210520-125017', 1, NULL, 261, 1, 5666.1, 0, 'Deposit', '1234567865', '2021-05-20 19:50:17', '2021-05-20 19:50:17'),
(334, 'spr-20210520-125907', 1, NULL, 262, 1, 1230, 0, 'Deposit', '1234567890', '2021-05-20 19:59:07', '2021-05-20 19:59:07'),
(335, 'spr-20210520-090844', 1, NULL, 263, 1, 15225, 0, 'Deposit', '23456776543', '2021-05-21 04:08:44', '2021-05-21 04:08:44'),
(336, 'spr-20210521-105933', 1, NULL, 264, 1, 25000, 0, 'Deposit', '123456789', '2021-05-21 17:59:33', '2021-05-21 17:59:33'),
(337, 'spr-20210521-110201', 1, NULL, 265, 1, 1224, 0, 'Deposit', '45653445', '2021-05-21 18:02:01', '2021-05-21 18:02:01'),
(338, 'spr-20210521-110202', 1, NULL, 266, 1, 1224, 0, 'Deposit', '45653445', '2021-05-21 18:02:02', '2021-05-21 18:02:02'),
(339, 'spr-20210521-110203', 1, NULL, 267, 1, 1224, 0, 'Deposit', '45653445', '2021-05-21 18:02:03', '2021-05-21 18:02:03'),
(340, 'spr-20210521-112019', 1, NULL, 268, 1, 450, 0, 'Deposit', '56416333\r\n5', '2021-05-21 18:20:19', '2021-05-21 18:20:19'),
(341, 'spr-20210521-113054', 1, NULL, 269, 1, 563.33, 0, 'Deposit', '789555755767', '2021-05-21 18:30:54', '2021-05-21 18:30:54'),
(342, 'spr-20210521-113657', 1, NULL, 270, 1, 5666.1, 0, 'Deposit', '4156251252', '2021-05-21 18:36:57', '2021-05-21 18:36:57'),
(343, 'spr-20210521-114441', 1, NULL, 271, 1, 791.7, 0, 'Deposit', '45612332225', '2021-05-21 18:44:41', '2021-05-21 18:44:41'),
(344, 'spr-20210521-120603', 1, NULL, 272, 1, 1230, 0, 'Deposit', '215320252', '2021-05-21 19:06:03', '2021-05-21 19:06:03'),
(345, 'spr-20210521-121959', 1, NULL, 273, 1, 3396.6, 0, 'Deposit', '22542325', '2021-05-21 19:19:59', '2021-05-21 19:19:59'),
(346, 'spr-20210521-015922', 1, NULL, 274, 1, 255, 0, 'Deposit', '23414668', '2021-05-21 20:59:22', '2021-05-21 20:59:22'),
(347, 'spr-20210521-020536', 1, NULL, 275, 1, 204, 0, 'Deposit', '25125215', '2021-05-21 21:05:36', '2021-05-21 21:05:36'),
(348, 'spr-20210521-023116', 1, NULL, 276, 1, 913.5, 0, 'Deposit', '122255221', '2021-05-21 21:31:16', '2021-05-21 21:31:16'),
(349, 'spr-20210521-033351', 1, NULL, 277, 1, 1224, 0, 'Deposit', '25125812558', '2021-05-21 22:33:51', '2021-05-21 22:33:51'),
(350, 'spr-20210522-103502', 1, NULL, 278, 1, 363, 0, 'Deposit', '41323453212', '2021-05-22 17:35:02', '2021-05-22 17:35:02'),
(351, 'spr-20210522-104722', 1, NULL, 279, 1, 1224, 0, 'Deposit', '012452151', '2021-05-22 17:47:22', '2021-05-22 17:47:22'),
(352, 'spr-20210522-110430', 1, NULL, 280, 1, 761.25, 0, 'Deposit', '045436551', '2021-05-22 18:04:30', '2021-05-22 18:04:30'),
(353, 'spr-20210522-111840', 1, NULL, 281, 1, 1015, 0, 'Deposit', '1241541215', '2021-05-22 18:18:40', '2021-05-22 18:18:40'),
(354, 'spr-20210522-113845', 1, NULL, 282, 1, 101500, 0, 'Deposit', '86446465552', '2021-05-22 18:38:45', '2021-05-22 18:38:45'),
(355, 'spr-20210522-122059', 1, NULL, 283, 1, 512500, 0, 'Deposit', '1254796666', '2021-05-22 19:20:59', '2021-05-22 19:20:59'),
(356, 'spr-20210522-122431', 1, NULL, 284, 1, 1030.22, 0, 'Deposit', '2255414145', '2021-05-22 19:24:31', '2021-05-22 19:24:31'),
(357, 'spr-20210522-122958', 1, NULL, 285, 1, 121.8, 0, 'Deposit', '122525225', '2021-05-22 19:29:58', '2021-05-22 19:29:58'),
(358, 'ppr-20210522-123600', 1, 156, NULL, 1, 120000, 0, 'Cash', NULL, '2021-05-22 19:36:00', '2021-05-22 19:36:00'),
(359, 'ppr-20210522-124717', 1, 157, NULL, 1, 7770, 0, 'Cash', NULL, '2021-05-22 19:47:17', '2021-05-22 19:47:17'),
(360, 'spr-20210522-125053', 1, NULL, 286, 1, 1020, 0, 'Deposit', '13454364736', '2021-05-22 19:50:53', '2021-05-22 19:50:53'),
(361, 'ppr-20210522-125909', 1, 158, NULL, 1, 120000, 0, 'Cash', NULL, '2021-05-22 19:59:09', '2021-05-22 19:59:09'),
(362, 'spr-20210522-010051', 1, NULL, 287, 1, 1224, 0, 'Deposit', '125525252', '2021-05-22 20:00:51', '2021-05-22 20:00:51'),
(363, 'ppr-20210522-010857', 1, 159, NULL, 1, 75000, 0, 'Cash', NULL, '2021-05-22 20:08:57', '2021-05-22 20:08:57'),
(364, 'spr-20210522-011047', 1, NULL, 288, 1, 761.25, 0, 'Deposit', '4563333333', '2021-05-22 20:10:47', '2021-05-22 20:10:47'),
(365, 'spr-20210522-012202', 1, NULL, 289, 1, 510, 0, 'Deposit', '155765745', '2021-05-22 20:22:02', '2021-05-22 20:22:02'),
(366, 'ppr-20210522-015911', 1, 162, NULL, 1, 20000, 0, 'Cash', NULL, '2021-05-22 20:59:11', '2021-05-22 20:59:11'),
(367, 'ppr-20210522-020137', 1, 163, NULL, 1, 2178, 0, 'Cash', NULL, '2021-05-22 21:01:37', '2021-05-22 21:01:37'),
(368, 'ppr-20210522-024151', 1, 164, NULL, 1, 2500, 0, 'Cash', NULL, '2021-05-22 21:41:51', '2021-05-22 21:41:51'),
(369, 'spr-20210522-024654', 1, NULL, 292, 1, 121.8, 0, 'Deposit', '12554222', '2021-05-22 21:46:54', '2021-05-22 21:46:54'),
(370, 'spr-20210522-024802', 1, NULL, 293, 1, 144, 0, 'Deposit', NULL, '2021-05-22 21:48:02', '2021-05-22 21:48:02'),
(371, 'ppr-20210522-025508', 1, 165, NULL, 1, 120, 0, 'Cash', NULL, '2021-05-22 21:55:08', '2021-05-22 21:55:08'),
(372, 'spr-20210522-025553', 1, NULL, 294, 1, 121.8, 0, 'Deposit', '01225225241525', '2021-05-22 21:55:53', '2021-05-22 21:55:53'),
(373, 'ppr-20210522-030017', 1, 166, NULL, 1, 1500, 0, 'Cash', NULL, '2021-05-22 22:00:17', '2021-05-22 22:00:17'),
(374, 'spr-20210522-030101', 1, NULL, 295, 1, 1370.25, 0, 'Deposit', '1252221515661', '2021-05-22 22:01:01', '2021-05-22 22:01:01'),
(375, 'ppr-20210522-031558', 1, 161, NULL, 1, 78000, 0, 'Cash', NULL, '2021-05-22 22:15:58', '2021-05-22 22:15:58'),
(376, 'ppr-20210522-031608', 1, 160, NULL, 1, 500, 0, 'Cash', NULL, '2021-05-22 22:16:08', '2021-05-22 22:16:08'),
(377, 'ppr-20210522-032114', 1, 168, NULL, 1, 1500, 0, 'Cash', NULL, '2021-05-22 22:21:14', '2021-05-22 22:21:14'),
(378, 'spr-20210522-032428', 1, NULL, 297, 1, 535.05, 0, 'Deposit', '45525412353', '2021-05-22 22:24:28', '2021-05-22 22:24:28'),
(379, 'ppr-20210522-032653', 1, 169, NULL, 1, 5500, 0, 'Cash', NULL, '2021-05-22 22:26:53', '2021-05-22 22:26:53'),
(380, 'ppr-20210522-032701', 1, 167, NULL, 1, 522, 0, 'Cash', NULL, '2021-05-22 22:27:01', '2021-05-22 22:27:01'),
(381, 'ppr-20210522-035029', 1, 170, NULL, 1, 6250, 0, 'Cash', NULL, '2021-05-22 22:50:29', '2021-05-22 22:50:29'),
(382, 'spr-20210522-043705', 1, NULL, 301, 1, 304.5, 0, 'Deposit', '23426156', '2021-05-22 23:37:05', '2021-05-22 23:37:05'),
(383, 'ppr-20210522-084031', 1, 172, NULL, 1, 100, 0, 'Cash', NULL, '2021-05-23 03:40:31', '2021-05-23 03:40:31'),
(384, 'spr-20210522-084125', 1, NULL, 302, 1, 121.8, 0, 'Deposit', '384759899887', '2021-05-23 03:41:25', '2021-05-23 03:41:25'),
(385, 'ppr-20210522-084716', 1, 173, NULL, 1, 100, 0, 'Cash', NULL, '2021-05-23 03:47:16', '2021-05-23 03:47:16'),
(386, 'ppr-20210523-104954', 1, 174, NULL, 1, 1784, 0, 'Cash', NULL, '2021-05-23 17:49:54', '2021-05-23 17:49:54'),
(387, 'ppr-20210523-110036', 1, 176, NULL, 1, 350, 0, 'Cash', NULL, '2021-05-23 18:00:36', '2021-05-23 18:00:36'),
(388, 'spr-20210523-110351', 1, NULL, 308, 1, 355.25, 0, 'Deposit', '789654123', '2021-05-23 18:03:51', '2021-05-23 18:03:51'),
(389, 'spr-20210523-121016', 1, NULL, 311, 1, 2774.4, 0, 'Deposit', '154523662', '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(390, 'spr-20210523-122737', 1, NULL, 314, 1, 1504.23, 0, 'Deposit', '351331625654', '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(391, 'spr-20210523-122754', 1, NULL, 315, 1, 1504.23, 0, 'Deposit', '351331625654', '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(392, 'spr-20210523-122833', 1, NULL, 316, 1, 272.34, 0, 'Deposit', '351331625654', '2021-05-23 19:28:33', '2021-05-23 19:28:33'),
(393, 'spr-20210523-123133', 1, NULL, 317, 1, 272.34, 0, 'Deposit', '351331625654', '2021-05-23 19:31:33', '2021-05-23 19:31:33'),
(394, 'spr-20210523-011209', 1, NULL, 320, 1, 2682.6, 0, 'Deposit', '545262252', '2021-05-23 20:12:09', '2021-05-23 20:12:09'),
(395, 'spr-20210523-011234', 1, NULL, 321, 1, 400, 0, 'Deposit', NULL, '2021-05-23 20:12:34', '2021-05-23 20:12:34'),
(396, 'ppr-20210523-025523', 1, 179, NULL, 1, 100, 0, 'Cash', NULL, '2021-05-23 21:55:23', '2021-05-23 21:55:23'),
(397, 'spr-20210523-025733', 1, NULL, 327, 1, 146.16, 0, 'Deposit', '23255252525', '2021-05-23 21:57:33', '2021-05-23 21:57:33'),
(398, 'spr-20210523-030234', 1, NULL, 329, 1, 2472.48, 0, 'Deposit', '2125425548', '2021-05-23 22:02:34', '2021-05-23 22:02:34'),
(399, 'spr-20210523-031816', 1, NULL, 330, 1, 2064.51, 0, 'Deposit', '13638558966', '2021-05-23 22:18:16', '2021-05-23 22:18:16'),
(400, 'ppr-20210524-104018', 1, 180, NULL, 1, 1200, 0, 'Cash', NULL, '2021-05-24 17:40:18', '2021-05-24 17:40:18'),
(401, 'spr-20210524-104045', 1, NULL, 333, 1, 1218, 0, 'Deposit', '1250250251221', '2021-05-24 17:40:45', '2021-05-24 17:40:45'),
(402, 'spr-20210524-110333', 1, NULL, 334, 1, 2374.56, 0, 'Deposit', '121225421212121', '2021-05-24 18:03:33', '2021-05-24 18:03:33'),
(403, 'spr-20210524-112332', 1, NULL, 337, 1, 122.4, 0, 'Deposit', '1225748565', '2021-05-24 18:23:32', '2021-05-24 18:23:32'),
(404, 'spr-20210524-113424', 1, NULL, 339, 1, 121.8, 0, 'Deposit', '1246653123', '2021-05-24 18:34:24', '2021-05-24 18:34:24'),
(405, 'spr-20210524-113822', 1, NULL, 343, 1, 1561, 0, 'Deposit', '4544554211', '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(406, 'ppr-20210524-114434', 1, 181, NULL, 1, 120, 0, 'Cash', NULL, '2021-05-24 18:44:34', '2021-05-24 18:44:34'),
(407, 'spr-20210524-124422', 1, NULL, 344, 1, 507.5, 0, 'Deposit', '123564566496', '2021-05-24 19:44:22', '2021-05-24 19:44:22'),
(408, 'spr-20210524-124529', 1, NULL, 345, 1, 510, 0, 'Deposit', '63633222223', '2021-05-24 19:45:29', '2021-05-24 19:45:29'),
(409, 'spr-20210524-124717', 1, NULL, 346, 1, 507.5, 0, 'Deposit', '2122235023256', '2021-05-24 19:47:17', '2021-05-24 19:47:17'),
(410, 'spr-20210524-124810', 1, NULL, 347, 1, 507.5, 0, 'Deposit', '333332033', '2021-05-24 19:48:10', '2021-05-24 19:48:10'),
(411, 'spr-20210524-010623', 1, NULL, 348, 1, 1065.75, 0, 'Deposit', '124569870', '2021-05-24 20:06:23', '2021-05-24 20:06:23'),
(412, 'ppr-20210524-011542', 1, 183, NULL, 1, 2000, 0, 'Cash', NULL, '2021-05-24 20:15:42', '2021-05-24 20:15:42'),
(413, 'spr-20210524-011552', 1, NULL, 350, 1, 507.5, 0, 'Deposit', '1233233212', '2021-05-24 20:15:52', '2021-05-24 20:15:52'),
(414, 'spr-20210524-011605', 1, NULL, 351, 1, 2000, 0, 'Deposit', '1202325025', '2021-05-24 20:16:05', '2021-05-24 20:16:05'),
(415, 'spr-20210524-012146', 1, NULL, 352, 1, 5075, 0, 'Deposit', '212012312', '2021-05-24 20:21:46', '2021-05-24 20:21:46'),
(416, 'spr-20210524-013921', 1, NULL, 355, 1, 2915.08, 0, 'Deposit', '12123255556', '2021-05-24 20:39:21', '2021-05-24 20:39:21'),
(417, 'ppr-20210524-014038', 1, 185, NULL, 1, 60000, 0, 'Cash', NULL, '2021-05-24 20:40:38', '2021-05-24 20:40:38'),
(418, 'ppr-20210524-021206', 1, 186, NULL, 1, 2000, 0, 'Cash', NULL, '2021-05-24 21:12:06', '2021-05-24 21:12:06'),
(419, 'spr-20210524-021341', 1, NULL, 357, 1, 2000, 0, 'Deposit', '1421525232', '2021-05-24 21:13:41', '2021-05-24 21:13:41'),
(420, 'spr-20210524-022259', 1, NULL, 358, 1, 4013.7, 0, 'Deposit', '122522022200', '2021-05-24 21:22:59', '2021-05-24 21:22:59'),
(421, 'ppr-20210524-023201', 1, 187, NULL, 1, 30000, 0, 'Cash', NULL, '2021-05-24 21:32:01', '2021-05-24 21:32:01'),
(422, 'spr-20210524-023254', 1, NULL, 360, 1, 30600, 0, 'Deposit', '102020200121', '2021-05-24 21:32:54', '2021-05-24 21:32:54'),
(423, 'ppr-20210524-023648', 1, 184, NULL, 1, 2872, 0, 'Cash', NULL, '2021-05-24 21:36:48', '2021-05-24 21:36:48'),
(424, 'ppr-20210524-023657', 1, 182, NULL, 1, 1050, 0, 'Cash', NULL, '2021-05-24 21:36:57', '2021-05-24 21:36:57'),
(425, 'ppr-20210524-023705', 1, 178, NULL, 1, 150, 0, 'Cash', NULL, '2021-05-24 21:37:05', '2021-05-24 21:37:05'),
(426, 'ppr-20210524-023720', 1, 177, NULL, 1, 140, 0, 'Cash', NULL, '2021-05-24 21:37:20', '2021-05-24 21:37:20'),
(427, 'ppr-20210524-023738', 1, 175, NULL, 1, 70000, 0, 'Cash', NULL, '2021-05-24 21:37:38', '2021-05-24 21:37:38'),
(428, 'ppr-20210524-025415', 1, 188, NULL, 1, 2500, 0, 'Cash', NULL, '2021-05-24 21:54:15', '2021-05-24 21:54:15'),
(429, 'spr-20210524-025506', 1, NULL, 361, 1, 2499, 0, 'Deposit', '22132131200', '2021-05-24 21:55:06', '2021-05-24 21:55:06'),
(430, 'spr-20210524-032631', 1, NULL, 364, 1, 1674.84, 0, 'Deposit', '02123121212310', '2021-05-24 22:26:31', '2021-05-24 22:26:31'),
(431, 'ppr-20210524-034037', 1, 191, NULL, 1, 8200, 0, 'Cash', NULL, '2021-05-24 22:40:37', '2021-05-24 22:40:37'),
(432, 'spr-20210524-035345', 1, NULL, 367, 1, 54810, 0, 'Deposit', '0232302322', '2021-05-24 22:53:45', '2021-05-24 22:53:45'),
(433, 'spr-20210524-035759', 1, NULL, 368, 1, 6044.32, 0, 'Deposit', '987654123', '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(434, 'spr-20210524-035833', 1, NULL, 369, 1, 146.16, 0, 'Deposit', '987654123', '2021-05-24 22:58:33', '2021-05-24 22:58:33'),
(435, 'ppr-20210524-041805', 1, 193, NULL, 1, 2000, 0, 'Cash', NULL, '2021-05-24 23:18:05', '2021-05-24 23:18:05'),
(436, 'ppr-20210524-045953', 1, 195, NULL, 1, 2500, 0, 'Cash', NULL, '2021-05-24 23:59:53', '2021-05-24 23:59:53'),
(437, 'spr-20210524-050030', 1, NULL, 371, 1, 2537.5, 0, 'Deposit', '12542522522252', '2021-05-25 00:00:30', '2021-05-25 00:00:30'),
(438, 'spr-20210524-050308', 1, NULL, 372, 1, 112.75, 0, 'Deposit', '546336636', '2021-05-25 00:03:08', '2021-05-25 00:03:08'),
(439, 'spr-20210524-051829', 1, NULL, 373, 1, 110, 0, 'Deposit', '665232\r\n22\r\n666', '2021-05-25 00:18:29', '2021-05-25 00:18:29'),
(440, 'spr-20210524-051830', 1, NULL, 374, 1, 110, 0, 'Deposit', '546534232', '2021-05-25 00:18:30', '2021-05-25 00:18:30'),
(441, 'spr-20210524-052218', 1, NULL, 376, 1, 112.75, 0, 'Deposit', '02254888888886', '2021-05-25 00:22:18', '2021-05-25 00:22:18'),
(442, 'spr-20210524-052222', 1, NULL, 377, 1, 112.75, 0, 'Deposit', '02254888888886', '2021-05-25 00:22:22', '2021-05-25 00:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
(1, 19, '23425235235', '2018-07-01 03:09:48', '2018-07-01 03:09:48'),
(2, 24, '3123123123', '2018-07-10 01:21:32', '2018-07-10 01:21:32'),
(3, 31, '767867678', '2018-08-08 10:36:22', '2018-08-08 10:36:22'),
(4, 34, '3123412', '2018-08-08 23:55:54', '2018-08-08 23:55:54'),
(5, 35, '7765', '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(6, 44, '3124142412', '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(7, 51, '6576764646', '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(8, 53, '111111111', '2018-09-03 04:15:24', '2018-09-03 04:15:24'),
(9, 79, '1111', '2018-10-06 00:51:55', '2018-10-06 00:51:55'),
(10, 147, '221133', '2018-12-04 00:58:35', '2018-12-04 00:58:35'),
(11, 175, '1111', '2019-02-07 06:38:23', '2019-02-07 06:38:23'),
(12, 176, '1111', '2019-02-07 06:54:59', '2019-02-07 06:54:59'),
(13, 178, '420', '2019-02-07 07:07:04', '2019-02-07 07:07:04'),
(14, 216, '12344321', '2019-11-11 04:39:11', '2019-11-11 04:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
(1, 36, 2, '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(4, 39, 1, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(6, 50, 1, '2018-09-02 23:01:38', '2018-09-02 23:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2018-12-31 23:52:31', '2018-12-31 23:52:31'),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', NULL, '2019-12-04 17:38:02', '2019-12-04 17:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32'),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59'),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2021-05-19 21:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mouse', '63920719', 'standard', 'C39', 4, 3, 1, 1, 1, '320', '400', 209, 20, 1, '350', '2018-07-01', '2018-07-31', 1, 1, 'toponemouse.jpg', NULL, NULL, 1, NULL, NULL, NULL, '<p style=@text-align: center;@>11:11:30 AM<img src=@https://pbs.twimg.com/profile_images/900037286879838208/sZhajgua_400x400.jpg@ alt=@lioncoders@ width=@400@ height=@400@ /><span style=@background-color: #ccffff;@>hello world<br /></span></p>', 0, '2018-05-12 22:23:03', '2021-04-12 07:03:50'),
(2, 'mango', '72782608', 'standard', 'C128', NULL, 1, 1, 3, 2, '8', '12', 2975, 100, NULL, NULL, NULL, NULL, 2, 2, 'mango.jpg', NULL, NULL, 1, NULL, NULL, NULL, '', 1, '2018-05-12 22:38:31', '2021-05-24 22:58:33'),
(3, 'Earphone', '85415108', 'standard', 'C128', 4, 2, 1, 1, 1, '200', '250', 183, 25, 1, '220', '2018-05-13', '2018-05-31', NULL, 1, 'airphonesamsung.jpg', NULL, NULL, 1, NULL, NULL, NULL, '<p>Earphone with good <strong>sound quality.</strong></p>', 0, '2018-05-12 22:39:55', '2021-05-08 09:31:57'),
(4, 'lychee', '38314290', 'standard', 'C128', NULL, 1, 1, 1, 1, '1', '2', 230, 50, NULL, NULL, NULL, NULL, NULL, 1, 'lychee.jpg', NULL, NULL, 1, NULL, NULL, NULL, '<p style=@text-align: center;@><em>sweet lychee from <strong>kalipur</strong>, bashkhali</em></p>', 1, '2018-05-23 22:54:56', '2021-05-24 22:57:59'),
(5, 'Baby doll', '31261512', 'standard', 'C128', 3, 4, 1, 1, 1, '100', '120', 140, 50, 1, '100', '2020-02-28', '2020-02-29', NULL, 1, 'lalacrybabydoll.jpg,1572515542825e4e2e433-e29b-4ca1-abb2-aad995574f2a_1.e4dc9f20c1d8b2999d66556ae0aa1600.jpeg', NULL, NULL, 1, NULL, NULL, NULL, '', 0, '2018-05-23 22:58:20', '2021-04-12 07:06:28'),
(6, 'test', '78041363', 'standard', 'C128', NULL, 2, 1, 1, 1, '12', '21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-27 23:50:25', '2018-05-27 23:53:24'),
(10, 'potato', '212132', 'standard', 'C128', NULL, 9, 7, 7, 7, '10', '22', 119, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'potato.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2018-06-25 01:34:53', '2021-05-08 09:31:57'),
(13, 'Joy', '40624536', 'digital', 'C128', NULL, 3, 0, 0, 0, '0', '21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ldms.jpg,1620300301621images (6).jpeg,1620300412423images (6).jpeg', '1532330693.JPG', NULL, 1, NULL, NULL, NULL, '<p style=@text-align: justify;@>Amazon Prime 1 Month<br />Price: 300tk</p>\r\n<p>User Ability: Max 2 Mobile User<br />Duration: 1 Month<br />Package: Premium</p>', 1, '2018-07-23 01:09:29', '2021-05-06 23:27:19'),
(14, 'ni', '40237871', 'standard', 'C128', NULL, 9, 8, 8, 8, '55', '56', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-07-31 22:36:51', '2018-07-31 22:41:48'),
(15, 'edawe', 'awd', 'standard', 'C128', NULL, 1, 4, 4, 4, '312', '132', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-05 01:26:19', '2018-08-05 01:27:03'),
(16, 'weq', 'eqw', 'digital', 'C128', NULL, 2, 0, 0, 0, '0', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '1533454125.jpg', NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-05 01:28:45', '2018-08-05 01:29:23'),
(17, 'et', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, '12', '21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-06 04:25:43', '2018-08-06 04:27:41'),
(18, 'wre', 'wre', 'standard', 'C128', NULL, 1, 4, 4, 4, '3', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-06 04:45:42', '2018-08-06 04:57:41'),
(19, 'ewr', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, '3', '23', 0, NULL, 1, NULL, '2018-08-06', '2018-08-10', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-06 05:41:46', '2019-11-28 05:16:47'),
(20, 'dim', '4234', 'standard', 'C128', NULL, 10, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-28 23:37:07', '2018-08-28 23:43:18'),
(21, 'dim', '1', 'standard', 'C128', NULL, 11, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-28 23:49:27', '2018-08-28 23:53:21'),
(22, 'Ledis Item', '97103461', 'standard', 'C128', 5, 17, 1, 1, 1, '800', '1000', 24, 20, NULL, NULL, NULL, NULL, 1, 1, 'iphoneX.jpg,16181372530061617526627053Batik-Saree.jpg,16181372899181617526627053Batik-Saree.jpg', NULL, NULL, 1, NULL, NULL, NULL, '', 1, '2018-09-03 04:05:17', '2021-05-24 22:57:59'),
(23, 'qwq', '1237920612311a', 'standard', 'C39', NULL, 2, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-09-10 23:53:18', '2018-09-10 23:56:04'),
(24, 'chocolate', '84802317', 'standard', 'C128', NULL, 9, 1, 1, 1, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', 0, '2018-09-15 21:42:01', '2018-09-15 22:10:43'),
(25, 'Woolen Sweater', '72100265', 'standard', 'C128', NULL, 17, 1, 1, 1, '500', '1000', 27, 50, NULL, NULL, NULL, NULL, 1, 1, 'SamsungGalaxyS9.jpg,1618167667094ulen.jpg,1618167725552ulen.jpg', NULL, NULL, 1, NULL, NULL, NULL, '', 1, '2018-10-23 01:13:22', '2021-05-24 22:57:59'),
(26, 'Samsung Set', '39053411', 'combo', 'C128', 4, 2, 0, 0, 0, '0', '1250', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, '3,25', '1,1', '250,1000', '', 0, '2018-11-19 03:59:06', '2021-04-12 06:52:38'),
(27, 'mixed fruit juice', '24805187', 'combo', 'C128', NULL, 9, 0, 0, 0, '0', '16', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, '4,2', '3,1', '2,10', '', 0, '2018-11-19 09:39:26', '2018-11-24 22:35:51'),
(28, 'ssaaa', 'sasas', 'standard', 'C128', NULL, 2, 1, 1, 2, '1', '2', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-11-20 04:14:12', '2018-11-20 04:34:02'),
(29, 'testcloth', '16055884', 'standard', 'C128', NULL, 4, 10, 10, 10, '10', '15', 0, NULL, NULL, NULL, '2018-11-29', NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-11-29 03:49:25', '2019-03-01 15:09:27'),
(30, 'Polo Shirt', '53467102', 'standard', 'C128', NULL, 12, 1, 1, 1, '50', '100', 14, 10, NULL, NULL, NULL, NULL, NULL, 1, 'PoloShirt.jpg', NULL, NULL, 1, NULL, NULL, NULL, '', 1, '2018-12-04 23:29:43', '2021-05-24 22:57:59'),
(31, 'Shoe', '90471412', 'standard', 'C128', NULL, 12, 1, 1, 1, '250', '300', 19, 10, NULL, NULL, NULL, NULL, NULL, 1, 'Shoe.jpg', NULL, NULL, 1, NULL, NULL, NULL, '', 1, '2018-12-04 23:33:09', '2021-05-24 22:57:59'),
(32, 'Toothpaste', '859875003032', 'standard', 'C128', NULL, 12, 1, 1, 1, '5', '10', 30, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1572759415477product-page-fresh-breath.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2018-12-18 23:56:08', '2019-11-11 04:28:59'),
(33, 'tissue', '8941161008066', 'standard', 'C128', NULL, 12, 1, 1, 1, '10', '20', 41, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2018-12-23 23:33:58', '2019-11-03 05:39:49'),
(48, 'T-shirt', '93475396', 'standard', 'C128', NULL, 12, 1, 1, 1, '2', '3', 39, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1577165120189220px-Blue_Tshirt.jpg', NULL, 1, 0, NULL, NULL, NULL, '', 1, '2019-11-21 07:03:04', '2021-05-24 18:03:33'),
(49, 'Cold Pressed Extra Virgin Coconut', '39053411', 'standard', 'C128', NULL, 17, 1, 1, 1, '35', '1250', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '16181672325171617526627053Batik-Saree.jpg,1618168257421cold-pressed-extra-virgin-coconut-oil.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-04-12 06:54:42', '2021-05-24 20:39:05'),
(50, 'Gold Plated Jhumka', '85415108', 'standard', 'C128', NULL, 17, 1, 1, 1, '27', '200', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1618167544818LQER00009_717__1042212469-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-04-12 06:59:25', '2021-04-12 06:59:25'),
(51, 'Chingri Korolla', '63920719', 'standard', 'C128', NULL, 17, 1, 1, 1, '303', '400', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1618167901178IMG_20200818_202015.jpg', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-04-12 07:05:39', '2021-04-12 07:09:43'),
(52, 'সফ্ট কাতান শাড়ি', '32703342', 'standard', 'C128', NULL, 4, 1, 1, 1, '3000', '10000', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, '16181681280841617524580169842.jpg,1620299148915IMG_20210502_045849-scaled.jpg,1620299210098IMG_20210502_045849-scaled.jpg,1620299273362IMG_20210502_045849-scaled.jpg', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-04-12 07:08:57', '2021-05-24 19:38:40'),
(53, 'Jojo', '77788889844', 'standard', 'C128', NULL, 1, 1, 1, 1, '120', '108', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '1620300975968images (6).jpeg,1620301016668received_818655038734666.jpeg', NULL, NULL, 0, NULL, NULL, NULL, '', 0, '2021-05-06 23:36:23', '2021-05-08 09:06:49'),
(54, 'New pro', '77788889844', 'standard', 'C128', 5, 4, 1, 1, 1, '120', '100', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-06 23:47:29', '2021-05-06 23:47:29'),
(55, 'Test Shirt', '80202104', 'standard', 'C128', NULL, 17, 1, 1, 1, '100', '120', 7, 2, NULL, NULL, NULL, NULL, NULL, 1, '1621229767289download.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-17 18:39:57', '2021-05-17 20:22:15'),
(56, 'Test Product', '51650697', 'standard', 'C128', NULL, 12, 1, 1, 1, '100', '100', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1621230379995Marchent-Product.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-17 18:47:29', '2021-05-23 20:12:34'),
(57, 'Sharee', '71750692', 'standard', 'C128', NULL, 4, 1, 1, 1, '777', '1000', 0, 8, NULL, NULL, '2021-05-17', NULL, NULL, 1, '1621238465648Marchent-Product.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-17 21:05:35', '2021-05-17 21:05:35'),
(58, 'Rifat', '06214042', 'standard', 'C128', 3, 2, 1, 1, 1, '777', '1000', 9, 9, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-17 21:09:59', '2021-05-22 19:50:53'),
(59, 'Mugdho Honey Glass', '13406031', 'standard', 'C128', NULL, 9, 1, 1, 1, '100', '100', 11, 2, NULL, NULL, NULL, NULL, NULL, 1, '1621240692838W-300-px-1609741806911_Mugmjpg.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mugdho Honey- 100gm<br />Contains natural vitamins and minerals<br />Helps in weight management</p>', 1, '2021-05-17 21:39:17', '2021-05-23 21:56:40'),
(60, 'admin', '19730145', 'standard', 'C128', 4, 4, 1, 1, 1, '10', '10', 0, 20, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-19 19:30:21', '2021-05-24 20:37:19'),
(61, 'bag', '47510542', 'standard', 'C128', NULL, 4, 1, 1, 1, '33', '55', 64, 8, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 19:43:21', '2021-05-23 20:19:46'),
(62, 'jamdani three piece', '38293408', 'standard', 'C128', NULL, 17, 1, 1, 1, '2500', '2500', 18, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 19:50:55', '2021-05-24 20:21:46'),
(63, 'bed sheet', '21560933', 'standard', 'C128', NULL, 17, 1, 1, 1, '1000', '1000', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 20:18:57', '2021-05-19 20:18:57'),
(64, '3pic(A5)', '91402352', 'standard', 'C128', NULL, 17, 1, 1, 1, '100', '110', 6, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-19 20:22:01', '2021-05-25 00:35:51'),
(65, '3pic', '10344236', 'standard', 'C128', NULL, 17, 1, 1, 1, '100', '100', 0, 50, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-19 20:22:01', '2021-05-24 22:49:32'),
(66, 'palaju', '98357790', 'standard', 'C128', NULL, 17, 1, 1, 1, '1000', '1200', 0, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 20:46:20', '2021-05-19 20:46:20'),
(67, 'paijama', '19101357', 'standard', 'C128', NULL, 17, 1, 1, 1, '120', '150', 0, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 20:53:19', '2021-05-19 20:53:19'),
(68, 'three piece', '39013471', 'standard', 'C128', NULL, 17, 1, 1, 1, '2500', '2500', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 21:05:25', '2021-05-19 21:05:25'),
(69, 'plazu', '73921269', 'standard', 'C128', NULL, 17, 1, 1, 1, '2500', '2500', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 21:08:16', '2021-05-19 21:10:41'),
(70, 'kurti', '57802963', 'standard', 'C128', NULL, 17, 1, 1, 1, '555', '555', 1, 17, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 21:18:31', '2021-05-19 21:28:12'),
(71, 'lehenga', '55407280', 'standard', 'C128', NULL, 17, 1, 1, 1, '5554', '5554', 1, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 21:36:46', '2021-05-19 21:46:38'),
(72, 'bed cover', '50933362', 'standard', 'C128', NULL, 17, 1, 1, 1, '1600', '1600', 0, 8, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:19:15', '2021-05-19 22:19:15'),
(73, 'Table cover', '78233938', 'standard', 'C128', NULL, 12, 1, 1, 1, '1700', '1700', 4, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:24:37', '2021-05-19 22:30:04'),
(74, 'payjama', '53067288', 'standard', 'C128', NULL, 4, 1, 1, 1, '3000', '3000', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:25:31', '2021-05-19 22:29:54'),
(75, 'sari', '53126319', 'standard', 'C128', NULL, 17, 1, 1, 1, '5555', '5555', 1, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:36:03', '2021-05-19 22:38:52'),
(76, 'hijab', '64310631', 'standard', 'C128', NULL, 17, 1, 1, 1, '500', '500', 0, 25, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:39:00', '2021-05-19 22:39:00'),
(77, 'bed shit', '06134968', 'standard', 'C128', NULL, 4, 1, 1, 1, '1200', '1200', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:39:29', '2021-05-19 22:42:40'),
(78, 'shirt', '43968630', 'standard', 'C128', NULL, 17, 1, 1, 1, '7894', '7896', 0, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 22:46:13', '2021-05-19 23:09:18'),
(79, 'panjabi', '41649050', 'standard', 'C128', NULL, 17, 1, 1, 1, '788', '788', 0, 18, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-19 23:14:55', '2021-05-19 23:16:57'),
(80, 'pant', '38380159', 'standard', 'C128', NULL, 17, 1, 1, 1, '600', '600', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 02:18:46', '2021-05-20 02:18:46'),
(81, 'mobile', '71039832', 'standard', 'C128', NULL, 2, 1, 1, 1, '12000', '12000', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 02:42:30', '2021-05-20 02:45:37'),
(82, 'mangoo', '28879160', 'standard', 'C128', NULL, 1, 7, 7, 7, '560', '560', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 03:26:02', '2021-05-20 03:33:13'),
(83, 'jama', '01484526', 'standard', 'C128', NULL, 17, 1, 1, 1, '1000', '1000', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 14:22:25', '2021-05-20 14:27:12'),
(84, 'three pices', '03973512', 'standard', 'C128', NULL, 17, 1, 1, 1, '750', '750', 4, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-20 17:54:13', '2021-05-24 20:29:26'),
(85, 'skaf', '83540312', 'standard', 'C128', NULL, 17, 1, 1, 1, '677', '677', 0, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 18:08:02', '2021-05-20 18:10:35'),
(86, 'borka', '96540953', 'standard', 'C128', NULL, 17, 1, 1, 1, '545', '545', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-20 18:22:17', '2021-05-23 19:49:31'),
(87, 'four piece', '20457859', 'standard', 'C128', NULL, 17, 1, 1, 1, '850', '850', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 18:38:02', '2021-05-20 18:40:31'),
(88, 'ytuygfhy', '85020673', 'standard', 'C128', NULL, 17, 1, 1, 1, '450', '450', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 18:57:49', '2021-05-20 18:57:49'),
(89, 'hghjjk', '90053543', 'standard', 'C128', NULL, 4, 4, 4, 4, '450', '450', 1, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 19:03:49', '2021-05-20 19:06:47'),
(90, 'banana', '18093667', 'standard', 'C128', NULL, 9, 1, 1, 1, '1500', '1500', 0, 8, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 19:04:29', '2021-05-20 19:07:58'),
(91, 'ukkij', '11383900', 'standard', 'C128', NULL, 12, 1, 1, 1, '4556', '4562', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 19:10:55', '2021-05-20 19:11:45'),
(92, 'ganji', '25241633', 'standard', 'C128', NULL, 17, 1, 1, 1, '4556', '4562', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 19:22:32', '2021-05-20 19:23:48'),
(93, 'jacket', '39105432', 'standard', 'C128', NULL, 4, 1, 1, 1, '5555', '5555', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, '1621493254949Lighthouse.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 19:48:10', '2021-05-20 19:50:17'),
(94, '5pices', '92519136', 'standard', 'C128', NULL, 17, 1, 1, 1, '750', '750', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-20 19:52:05', '2021-05-24 20:35:08'),
(95, 'apple', '21412706', 'standard', 'C128', NULL, 1, 7, 7, 7, '1200', '1200', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-20 19:56:54', '2021-05-24 18:27:27'),
(96, 'oven cover', '63291780', 'standard', 'C128', NULL, 12, 1, 1, 1, '520', '520', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, '1621494217067IMG_20210520_122745.jpg,1621494229198IMG_20210520_123341.jpg,1621494235800IMG_20210502_045849-scaled.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 20:04:27', '2021-05-20 20:04:27'),
(97, 'cover set', '89531210', 'standard', 'C128', NULL, 12, 1, 1, 1, '555', '555', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-20 20:19:22', '2021-05-23 19:46:49'),
(98, 'cador', '69800329', 'standard', 'C128', NULL, 17, 1, 1, 1, '500', '500', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 20:32:54', '2021-05-20 20:32:54'),
(99, 'soft katan  shree', '12989617', 'standard', 'C128', NULL, 17, 1, 1, 1, '5556', '5556', 0, 7, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 20:38:37', '2021-05-20 20:38:37'),
(100, 'blanket', '42201103', 'standard', 'C128', NULL, 12, 1, 1, 1, '850', '850', 1, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 20:46:03', '2021-05-20 20:46:55'),
(101, 'licy', '83405320', 'standard', 'C128', NULL, 1, 7, 7, 7, '110', '110', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-20 20:54:44', '2021-05-20 20:55:28'),
(102, 'lyche', '28696389', 'standard', 'C128', NULL, 1, 7, 7, 7, '15000', '15000', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 04:06:24', '2021-05-21 04:08:44'),
(103, 'Balis cover', '33152096', 'standard', 'C128', NULL, 17, 1, 1, 1, '775', '775', 1, 9, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 04:21:27', '2021-05-21 04:24:15'),
(104, 'noksi katha', '96635504', 'standard', 'C128', NULL, 17, 1, 1, 1, '5000', '5000', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '1621571978432IMG_20210520_123113_145.JPG', NULL, NULL, NULL, NULL, NULL, NULL, '<p>This is noksi katha</p>', 1, '2021-05-21 17:40:25', '2021-05-21 17:40:25'),
(105, 'telivisson', '30609930', 'standard', 'C128', NULL, 2, 1, 1, 1, '25000', '25000', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 17:56:19', '2021-05-21 17:59:33'),
(106, 'katha', '62950729', 'standard', 'C128', NULL, 17, 1, 1, 1, '1200', '1200', -2, 5, NULL, NULL, NULL, NULL, NULL, 1, '1621573057892IMG_20210520_123113_145.JPG', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 17:57:57', '2021-05-21 18:02:03'),
(107, 'tv', '71089125', 'standard', 'C128', NULL, 2, 1, 1, 1, '450', '450', 5, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 18:16:35', '2021-05-21 18:20:19'),
(108, 'freedge', '60819271', 'standard', 'C128', NULL, 2, 1, 1, 1, '555', '555', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 18:29:19', '2021-05-21 18:30:54'),
(109, 'monitor', '57132992', 'standard', 'C128', NULL, 2, 1, 1, 1, '5555', '5555', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 18:36:02', '2021-05-21 18:36:57'),
(110, 'light', '96179219', 'standard', 'C128', NULL, 2, 1, 1, 1, '780', '780', 98, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 18:40:57', '2021-05-24 20:21:46'),
(111, 'under pant', '73388956', 'standard', 'C128', NULL, 17, 1, 1, 1, '70', '70', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 18:57:56', '2021-05-21 18:57:56'),
(112, 'lungi', '53701281', 'standard', 'C128', NULL, 17, 1, 1, 1, '454', '454', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 18:59:59', '2021-05-21 19:00:55'),
(113, 'under', '02316041', 'standard', 'C128', NULL, 4, 4, 4, 4, '70', '70', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:02:34', '2021-05-21 19:02:34'),
(114, 'mouse', '58703406', 'standard', 'C128', NULL, 2, 1, 1, 1, '1200', '1200', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:03:39', '2021-05-21 19:06:03'),
(115, 'mouse', '58703406', 'standard', 'C128', NULL, 2, 1, 1, 1, '1200', '1200', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:03:39', '2021-05-21 19:03:39'),
(116, 'skerte', '44903830', 'standard', 'C128', NULL, 17, 1, 1, 1, '9595', '9595', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:13:33', '2021-05-21 19:15:15'),
(117, 'coconut', '07281095', 'standard', 'C128', NULL, 1, 7, 7, 7, '520', '520', 9, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:17:10', '2021-05-24 21:56:49'),
(118, 'unifrom', '12370219', 'standard', 'C128', NULL, 17, 1, 1, 1, '450', '450', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:20:35', '2021-05-21 19:20:35'),
(119, 'lock ring', '83241273', 'standard', 'C128', NULL, 12, 1, 1, 1, '20', '20', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 19:26:06', '2021-05-21 19:26:06'),
(120, '7 pices', '22515330', 'standard', 'C128', NULL, 17, 1, 1, 1, '200', '200', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-21 19:47:07', '2021-05-24 20:36:13'),
(121, 'baby froge', '05685360', 'standard', 'C128', NULL, 17, 1, 1, 1, '500', '500', 32, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:08:49', '2021-05-24 22:21:18'),
(122, 'maksi', '41962621', 'standard', 'C128', NULL, 17, 1, 1, 1, '80', '80', 0, 8, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:16:14', '2021-05-21 20:16:14'),
(123, 'sprots set', '61238294', 'standard', 'C128', NULL, 4, 1, 1, 1, '1300', '1300', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:19:14', '2021-05-21 20:19:14'),
(124, 'baby toy', '62863591', 'standard', 'C128', NULL, 4, 1, 1, 1, '600', '600', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:25:39', '2021-05-21 20:26:45'),
(125, 'mat', '27933227', 'standard', 'C128', NULL, 12, 1, 1, 1, '21', '21', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:31:29', '2021-05-21 20:33:09'),
(126, 'koti', '71592925', 'standard', 'C128', NULL, 17, 1, 1, 1, '363', '363', 1, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:37:20', '2021-05-22 17:35:02'),
(127, 'oven proff', '99309082', 'standard', 'C128', NULL, 2, 1, 1, 1, '650', '650', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:45:42', '2021-05-21 20:47:05'),
(128, 'jaynamaj', '61954814', 'standard', 'C128', NULL, 12, 1, 1, 1, '250', '250', 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 20:57:22', '2021-05-21 20:59:22'),
(129, 'musk', '01387195', 'standard', 'C128', NULL, 4, 1, 1, 1, '200', '200', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 21:04:25', '2021-05-21 21:05:36'),
(130, 'tupi', '86987204', 'standard', 'C128', NULL, 2, 1, 1, 1, '500', '500', 1, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 21:25:28', '2021-05-21 21:26:08'),
(131, 'water', '22936608', 'standard', 'C128', NULL, 4, 1, 1, 1, '900', '900', 0, 6, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 21:30:17', '2021-05-21 21:31:16'),
(132, 'cap', '73340826', 'standard', 'C128', NULL, 12, 1, 1, 1, '55', '55', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 21:33:33', '2021-05-24 22:23:36'),
(133, 'genji', '20883532', 'standard', 'C128', NULL, 4, 1, 1, 1, '1200', '1200', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-21 22:31:04', '2021-05-21 22:33:51'),
(134, 'koyi', '92704858', 'standard', 'C128', NULL, 17, 1, 1, 1, '145', '145', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 17:29:50', '2021-05-22 17:29:50'),
(135, 'umbreela', '76948605', 'standard', 'C128', NULL, 4, 1, 1, 1, '1200', '1200', 100, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 17:46:24', '2021-05-22 19:35:41'),
(136, 'black barry', '42409335', 'standard', 'C128', NULL, 1, 4, 4, 4, '750', '750', 0, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 17:57:44', '2021-05-22 18:04:30'),
(137, 'lungii', '40993300', 'standard', 'C128', NULL, 4, 1, 1, 1, '1000', '1000', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 18:17:27', '2021-05-22 18:18:39'),
(138, 'papy', '79546816', 'standard', 'C128', NULL, 1, 1, 1, 1, '100000', '100000', 0, 580, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 18:36:29', '2021-05-22 18:38:45'),
(139, 'door mat', '40201923', 'standard', 'C128', NULL, 12, 1, 1, 1, '600', '600', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 18:47:33', '2021-05-22 18:47:33'),
(140, 'panjabi set', '75299613', 'standard', 'C128', NULL, 17, 1, 1, 1, '8000', '8000', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 18:57:08', '2021-05-22 19:03:05'),
(141, 'kajol', '60823577', 'standard', 'C128', NULL, 4, 1, 1, 1, '20', '20', 0, 50, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 19:05:35', '2021-05-22 19:05:35'),
(142, 'porda', '46103592', 'standard', 'C128', NULL, 12, 1, 1, 1, '520', '520', 0, 6, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 19:14:21', '2021-05-22 19:14:21'),
(143, 'computer', '33226854', 'standard', 'C128', NULL, 3, 1, 1, 1, '500000', '500000', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 19:15:50', '2021-05-22 19:20:59'),
(144, 'cocola', '42692120', 'standard', 'C128', NULL, 12, 7, 7, 7, '120', '120', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 19:28:30', '2021-05-22 19:29:58'),
(145, 'Sharee (A2)', '50067601', 'standard', 'C128', NULL, 17, 1, 1, 1, '1200', '1200', 99, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-22 19:56:03', '2021-05-22 20:00:51'),
(146, 'sari(a4)', '96210923', 'standard', 'C128', NULL, 17, 1, 1, 1, '750', '750', 99, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 20:05:19', '2021-05-22 20:10:47'),
(147, 'Cover(A6)', '73510309', 'standard', 'C128', NULL, 12, 1, 1, 1, '500', '500', 0, 15, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-22 20:12:35', '2021-05-23 19:03:21'),
(148, 'three piece(A5)', '61781294', 'standard', 'C128', NULL, 12, 1, 1, 1, '1200', '1200', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 21:40:25', '2021-05-22 21:40:25'),
(149, 'bottle', '62374065', 'standard', 'C128', NULL, 4, 1, 1, 1, '120', '120', 0, 15, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 21:53:51', '2021-05-22 21:55:53'),
(150, 'Monitor(A6)', '19761464', 'standard', 'C128', NULL, 2, 1, 1, 1, '1500', '1500', 2, 125, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 21:59:28', '2021-05-23 22:02:34'),
(151, '7 pices(A7)', '32296843', 'standard', 'C128', NULL, 17, 1, 1, 1, '522', '522', 0, 20, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-22 22:19:17', '2021-05-24 20:39:20'),
(152, 'pen', '50411227', 'standard', 'C128', NULL, 12, 1, 1, 1, '1500', '1500', 0, 15, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-22 22:20:19', '2021-05-22 22:26:42'),
(153, 'aircondition', '14598182', 'standard', 'C128', NULL, 12, 1, 1, 1, '70000', '70000', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-23 17:55:03', '2021-05-24 18:30:48'),
(154, 'jackfruit', '02980210', 'standard', 'C128', NULL, 1, 7, 7, 7, '350', '350', 0, 45, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-23 17:59:03', '2021-05-23 18:03:51'),
(155, 'air condition', '16209027', 'standard', 'C128', NULL, 12, 1, 1, 1, '25000', '25000', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-23 18:07:07', '2021-05-24 20:43:44'),
(156, 'Cover(A2)', '38927298', 'standard', 'C128', NULL, 17, 1, 1, 1, '140', '140', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-23 19:37:00', '2021-05-23 19:39:08'),
(157, 'blackberry', '10197913', 'standard', 'C128', NULL, 1, 7, 7, 7, '150', '150', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-23 21:14:20', '2021-05-24 20:45:59'),
(158, 'vegitable', '36684275', 'standard', 'C128', NULL, 1, 7, 7, 7, '1230', '1230', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-23 21:51:19', '2021-05-23 21:51:19'),
(159, 'Mous(A2)', '10925960', 'standard', 'C128', NULL, 2, 1, 1, 1, '1200', '1200', 0, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 17:39:46', '2021-05-24 17:40:45'),
(160, 'sharee(A1)', '31001497', 'standard', 'C128', NULL, 17, 1, 1, 1, '500', '500', 0, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 17:53:55', '2021-05-24 17:53:55'),
(161, 'hijab(A2)', '22951983', 'standard', 'C128', NULL, 17, 1, 1, 1, '200', '200', 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 18:04:23', '2021-05-24 18:04:23'),
(162, 'coco', '57898134', 'standard', 'C128', NULL, 9, 1, 1, 1, '120', '120', -1, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 18:26:27', '2021-05-24 18:34:24'),
(163, 'sare', '91704115', 'standard', 'C128', NULL, 17, 1, 1, 1, '1050', '1050', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 20:03:09', '2021-05-24 20:06:23'),
(164, 'Mobile (A8)', '98094472', 'standard', 'C128', NULL, 2, 1, 1, 1, '2000', '2000', 0, 30, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 20:13:16', '2021-05-24 20:13:16'),
(165, 'monitorrr', '65002096', 'standard', 'C128', NULL, 2, 1, 1, 1, '2000', '2000', 0, 300, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 20:15:06', '2021-05-24 20:16:05'),
(166, 'handwash', '15832089', 'standard', 'C128', NULL, 17, 1, 1, 1, '1850', '1850', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-05-24 20:35:30', '2021-05-24 20:43:09'),
(167, 'paper', '15209309', 'standard', 'C128', NULL, 4, 1, 1, 1, '3000', '3000', 19, 40, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 20:39:44', '2021-05-24 22:49:57'),
(168, 'nbvcn', '92077010', 'standard', 'C128', NULL, 3, 1, 1, 1, '2000', '2000', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 21:11:01', '2021-05-24 21:13:41'),
(169, 'Scner machine', '53139904', 'standard', 'C128', NULL, 2, 1, 1, 1, '30000', '30000', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 21:31:12', '2021-05-24 21:32:54'),
(170, 'Sharee(A4)', '31044970', 'standard', 'C128', NULL, 17, 1, 1, 1, '2500', '2500', 0, 25, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 21:52:44', '2021-05-24 21:55:06'),
(171, 'naksi katha (A2)', '15043802', 'standard', 'C128', NULL, 12, 1, 1, 1, '4500', '4500', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 21:59:50', '2021-05-24 21:59:50'),
(172, 'Doll', '12935454', 'standard', 'C128', NULL, 4, 1, 1, 1, '120', '120', -1, 12, NULL, NULL, NULL, NULL, NULL, 1, '1621848486899Screenshot_1.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 22:30:24', '2021-05-24 23:02:47'),
(173, 'Grameen', '73379554', 'standard', 'C128', NULL, 12, 7, 7, 7, '8200', '8200', 1, 150, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 22:39:59', '2021-05-24 22:40:27'),
(174, 'laptop', '87053935', 'standard', 'C128', NULL, 2, 1, 1, 1, '9000', '9000', 14, 30, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 22:51:29', '2021-05-24 22:53:45'),
(175, 'nmhnjnm', '01063709', 'standard', 'C128', NULL, 17, 1, 1, 1, '2000', '2000', 2, 20, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 23:17:32', '2021-05-24 23:21:14'),
(176, 'bag(A7)', '85173228', 'standard', 'C128', NULL, 12, 1, 1, 1, '455', '455', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 23:24:57', '2021-05-24 23:24:57'),
(177, 'llllll', '94230187', 'standard', 'C128', NULL, 16, 1, 1, 1, '5000', '5000', 0, 14, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 23:55:15', '2021-05-24 23:55:15'),
(178, 'sharee(D11)', '59138498', 'standard', 'C128', NULL, 17, 1, 1, 1, '5820', '5820', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 23:58:16', '2021-05-24 23:58:16'),
(179, 'katan sharee', '03399427', 'standard', 'C128', NULL, 17, 1, 1, 1, '2500', '2500', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-05-24 23:59:19', '2021-05-25 00:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `variant_id`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(59, 12, 4, NULL, 200, 200, 1, 1, 0, 0, 0, 200, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(60, 12, 5, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(66, 13, 2, NULL, 100, 100, 3, 166.96, 0, 15, 2504.35, 19200, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(67, 13, 3, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(68, 13, 1, NULL, 150, 150, 1, 320, 0, 10, 4800, 52800, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(69, 13, 10, NULL, 60, 60, 7, 10, 0, 0, 0, 600, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(70, 14, 1, NULL, 100, 100, 1, 320, 0, 10, 3200, 35200, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(71, 14, 2, NULL, 50, 50, 3, 166.96, 0, 15, 1252.17, 9600, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(72, 14, 3, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(73, 14, 5, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(74, 14, 10, NULL, 50, 50, 7, 10, 0, 0, 0, 500, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(76, 15, 22, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-03 04:06:46', '2018-09-03 04:06:46'),
(87, 16, 22, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-20 09:09:12', '2018-09-20 09:09:12'),
(89, 18, 4, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(90, 19, 4, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(91, 20, 25, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:21', '2018-10-23 01:14:21'),
(93, 21, 25, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:58', '2018-10-23 01:14:58'),
(94, 22, 22, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(96, 23, 22, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-03 03:23:52', '2018-11-03 03:23:52'),
(97, 24, 22, NULL, 15, 15, 1, 800, 0, 10, 1200, 13200, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(98, 24, 25, NULL, 5, 5, 1, 500, 0, 10, 250, 2750, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(99, 25, 31, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(100, 25, 30, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(101, 26, 31, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(102, 26, 30, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(104, 27, 32, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-18 23:57:41', '2018-12-18 23:57:41'),
(112, 33, 33, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-24 03:04:21', '2018-12-24 03:04:21'),
(113, 34, 25, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(114, 34, 22, NULL, 2, 2, 1, 800, 0, 10, 160, 1760, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(115, 35, 31, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(116, 35, 30, NULL, 2, 2, 1, 50, 0, 0, 0, 100, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(117, 36, 30, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(118, 36, 31, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(121, 39, 1, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(122, 39, 2, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(123, 38, 32, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(124, 38, 25, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(125, 37, 33, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:46:22', '2019-02-09 04:46:22'),
(126, 37, 25, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(127, 37, 22, NULL, 6, 6, 1, 800, 0, 10, 480, 5280, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(128, 40, 33, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-03-03 04:39:17', '2019-03-03 04:39:17'),
(129, 41, 33, NULL, 5, 5, 1, 10, 0, 0, 0, 50, '2019-03-03 04:43:58', '2019-03-03 04:43:58'),
(130, 41, 1, NULL, 10, 10, 1, 320, 0, 10, 320, 3520, '2019-03-03 04:43:59', '2019-03-03 04:43:59'),
(133, 42, 30, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(134, 42, 31, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(135, 43, 25, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-06-13 04:16:00', '2019-06-13 04:16:00'),
(136, 43, 22, NULL, 3, 3, 1, 800, 0, 10, 240, 2640, '2019-06-13 04:16:01', '2019-06-13 04:16:01'),
(137, 44, 25, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(138, 44, 22, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2019-10-19 09:31:20', '2019-10-19 09:31:20'),
(140, 46, 33, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(141, 46, 32, NULL, 10, 10, 1, 5, 0, 0, 0, 50, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(142, 47, 1, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(143, 47, 2, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(144, 48, 4, NULL, 100, 100, 1, 1, 0, 0, 0, 100, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(149, 49, 22, NULL, 10, 10, 1, 800, 0, 10, 800, 8800, '2019-11-11 04:28:59', '2019-11-11 04:28:59'),
(158, 55, 48, 3, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 16:28:35', '2019-11-27 16:28:35'),
(159, 55, 48, 2, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 16:28:35', '2019-11-27 16:28:35'),
(161, 57, 3, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2019-12-04 17:07:49', '2019-12-04 17:07:49'),
(162, 58, 48, 2, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 04:21:10', '2019-12-05 04:21:10'),
(163, 58, 48, 3, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 04:21:10', '2019-12-05 04:21:10'),
(169, 59, 48, 3, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(170, 59, 48, 2, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(171, 59, 48, 5, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(174, 56, 48, 2, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 13:27:16', '2019-12-21 13:27:16'),
(178, 61, 48, 3, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(179, 61, 48, 2, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(180, 61, 48, 5, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(181, 62, 25, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-01-01 08:24:02', '2020-01-01 08:24:02'),
(209, 67, 31, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2020-02-04 17:00:41', '2020-02-04 17:00:41'),
(210, 67, 30, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2020-02-04 17:00:41', '2020-02-04 17:00:41'),
(212, 69, 4, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 05:55:10', '2020-03-02 05:55:10'),
(213, 70, 4, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 05:56:03', '2020-03-02 05:56:03'),
(214, 71, 25, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(215, 71, 31, NULL, 5, 5, 1, 250, 0, 0, 0, 1250, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(216, 71, 30, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(217, 72, 22, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2021-05-07 02:32:41', '2021-05-07 02:32:41'),
(218, 73, 2, NULL, 7, 7, 3, 166.96, 0, 15, 175.3, 1344, '2021-05-07 02:34:49', '2021-05-07 02:34:49'),
(219, 74, 31, NULL, 5, 5, 1, 250, 0, 0, 0, 1250, '2021-05-07 02:36:03', '2021-05-07 02:36:03'),
(220, 75, 3, NULL, 5, 5, 1, 200, 0, 0, 0, 1000, '2021-05-08 08:58:55', '2021-05-08 08:58:55'),
(221, 76, 53, NULL, 3, 3, 1, 120, 0, 0, 0, 360, '2021-05-08 08:59:42', '2021-05-08 08:59:42'),
(222, 77, 3, NULL, 12, 12, 1, 200, 0, 0, 0, 2400, '2021-05-08 09:06:33', '2021-05-08 09:06:33'),
(223, 78, 10, NULL, 10, 10, 7, 10, 0, 0, 0, 100, '2021-05-08 09:08:54', '2021-05-08 09:08:54'),
(224, 79, 56, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-05-17 19:18:14', '2021-05-17 19:18:14'),
(225, 80, 55, NULL, 10, 10, 1, 100, 0, 0, 0, 1000, '2021-05-17 19:19:48', '2021-05-17 19:19:48'),
(226, 80, 56, NULL, 5, 5, 1, 100, 0, 0, 0, 500, '2021-05-17 19:19:48', '2021-05-17 19:19:48'),
(227, 81, 55, NULL, 2, 1, 1, 100, 0, 0, 0, 200, '2021-05-17 19:24:55', '2021-05-17 19:24:55'),
(228, 82, 59, NULL, 11, 11, 1, 100, 0, 0, 0, 1100, '2021-05-17 21:42:45', '2021-05-17 21:42:45'),
(229, 83, 48, 3, 4, 4, 1, 2, 0, 0, 0, 8, '2021-05-18 02:30:48', '2021-05-18 02:30:48'),
(230, 84, 62, NULL, 1, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 19:56:52', '2021-05-19 19:56:52'),
(231, 85, 62, NULL, 2, 1, 1, 2500, 0, 0, 0, 5000, '2021-05-19 20:10:54', '2021-05-19 20:10:54'),
(232, 86, 62, NULL, 2, 1, 1, 2500, 0, 0, 0, 5000, '2021-05-19 20:20:58', '2021-05-19 20:20:58'),
(233, 87, 62, NULL, 2, 1, 1, 2500, 0, 0, 0, 5000, '2021-05-19 20:21:16', '2021-05-19 20:21:16'),
(234, 88, 62, NULL, 21, 21, 1, 2500, 0, 0, 0, 52500, '2021-05-19 20:32:07', '2021-05-19 20:32:07'),
(235, 89, 69, NULL, 1, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 21:09:38', '2021-05-19 21:09:38'),
(236, 90, 70, NULL, 1, 1, 1, 555, 0, 0, 0, 555, '2021-05-19 21:21:57', '2021-05-19 21:21:57'),
(237, 91, 70, NULL, 1, 1, 1, 555, 0, 0, 0, 555, '2021-05-19 21:23:27', '2021-05-19 21:23:27'),
(238, 92, 71, NULL, 1, 1, 1, 5554, 0, 0, 0, 5554, '2021-05-19 21:39:46', '2021-05-19 21:39:46'),
(239, 93, 71, NULL, 1, 1, 1, 5554, 0, 0, 0, 5554, '2021-05-19 21:42:51', '2021-05-19 21:42:51'),
(240, 94, 73, NULL, 1, 1, 1, 1700, 0, 0, 0, 1700, '2021-05-19 22:26:21', '2021-05-19 22:26:21'),
(241, 95, 74, NULL, 1, 1, 1, 3000, 0, 0, 0, 3000, '2021-05-19 22:28:57', '2021-05-19 22:28:57'),
(242, 96, 73, NULL, 1, 1, 1, 1700, 0, 0, 0, 1700, '2021-05-19 22:30:02', '2021-05-19 22:30:02'),
(243, 97, 73, NULL, 1, 1, 1, 1700, 0, 0, 0, 1700, '2021-05-19 22:30:03', '2021-05-19 22:30:03'),
(244, 98, 73, NULL, 1, 1, 1, 1700, 0, 0, 0, 1700, '2021-05-19 22:30:04', '2021-05-19 22:30:04'),
(245, 99, 75, NULL, 1, 1, 1, 5555, 0, 0, 0, 5555, '2021-05-19 22:38:52', '2021-05-19 22:38:52'),
(246, 100, 77, NULL, 1, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-19 22:41:43', '2021-05-19 22:41:43'),
(247, 101, 78, NULL, 1, 1, 1, 7894, 0, 0, 0, 7894, '2021-05-19 22:48:46', '2021-05-19 22:48:46'),
(248, 102, 78, NULL, 1, 1, 1, 7894, 0, 0, 0, 7894, '2021-05-19 23:07:31', '2021-05-19 23:07:31'),
(249, 103, 79, NULL, 1, 1, 1, 788, 0, 0, 0, 788, '2021-05-19 23:15:57', '2021-05-19 23:15:57'),
(250, 104, 81, NULL, 1, 1, 1, 12000, 0, 0, 0, 12000, '2021-05-20 02:44:06', '2021-05-20 02:44:06'),
(251, 105, 82, NULL, 1, 1, 7, 560, 0, 0, 0, 560, '2021-05-20 03:27:40', '2021-05-20 03:27:40'),
(252, 106, 83, NULL, 1, 1, 1, 1000, 0, 0, 0, 1000, '2021-05-20 14:24:25', '2021-05-20 14:24:25'),
(253, 107, 84, NULL, 1, 1, 1, 750, 0, 0, 0, 750, '2021-05-20 17:58:25', '2021-05-20 17:58:25'),
(254, 108, 85, NULL, 1, 1, 1, 677, 0, 0, 0, 677, '2021-05-20 18:09:16', '2021-05-20 18:09:16'),
(255, 109, 86, NULL, 1, 1, 1, 545, 0, 0, 0, 545, '2021-05-20 18:23:54', '2021-05-20 18:23:54'),
(256, 110, 87, NULL, 1, 1, 1, 850, 0, 0, 0, 850, '2021-05-20 18:38:53', '2021-05-20 18:38:53'),
(257, 111, 89, NULL, 1, 1, 4, 450, 0, 0, 0, 450, '2021-05-20 19:06:47', '2021-05-20 19:06:47'),
(258, 112, 90, NULL, 1, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-20 19:06:59', '2021-05-20 19:06:59'),
(259, 113, 91, NULL, 1, 1, 1, 4556, 0, 0, 0, 4556, '2021-05-20 19:11:45', '2021-05-20 19:11:45'),
(260, 114, 92, NULL, 1, 1, 1, 4556, 0, 0, 0, 4556, '2021-05-20 19:23:48', '2021-05-20 19:23:48'),
(261, 115, 93, NULL, 1, 1, 1, 5555, 0, 0, 0, 5555, '2021-05-20 19:49:10', '2021-05-20 19:49:10'),
(262, 116, 95, NULL, 1, 1, 7, 1200, 0, 0, 0, 1200, '2021-05-20 19:58:04', '2021-05-20 19:58:04'),
(263, 117, 100, NULL, 2, 1, 1, 850, 0, 0, 0, 1700, '2021-05-20 20:46:55', '2021-05-20 20:46:55'),
(264, 118, 101, NULL, 1, 1, 7, 110, 0, 0, 0, 110, '2021-05-20 20:55:28', '2021-05-20 20:55:28'),
(265, 119, 102, NULL, 1, 1, 7, 15000, 0, 0, 0, 15000, '2021-05-21 04:07:37', '2021-05-21 04:07:37'),
(266, 120, 103, NULL, 1, 1, 1, 775, 0, 0, 0, 775, '2021-05-21 04:24:15', '2021-05-21 04:24:15'),
(267, 121, 105, NULL, 1, 1, 1, 25000, 0, 0, 0, 25000, '2021-05-21 17:58:22', '2021-05-21 17:58:22'),
(268, 122, 106, NULL, 1, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 17:59:46', '2021-05-21 17:59:46'),
(269, 123, 107, NULL, 6, 6, 1, 450, 0, 0, 0, 2700, '2021-05-21 18:18:41', '2021-05-21 18:18:41'),
(270, 124, 108, NULL, 1, 1, 1, 555, 0, 0, 0, 555, '2021-05-21 18:30:03', '2021-05-21 18:30:03'),
(271, 125, 109, NULL, 1, 1, 1, 5555, 0, 0, 0, 5555, '2021-05-21 18:36:31', '2021-05-21 18:36:31'),
(272, 126, 110, NULL, 1, 1, 1, 780, 0, 0, 0, 780, '2021-05-21 18:41:55', '2021-05-21 18:41:55'),
(273, 127, 112, NULL, 1, 1, 1, 454, 0, 0, 0, 454, '2021-05-21 19:00:55', '2021-05-21 19:00:55'),
(274, 128, 114, NULL, 1, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 19:04:15', '2021-05-21 19:04:15'),
(275, 129, 116, NULL, 2, 1, 1, 9595, 0, 0, 0, 19190, '2021-05-21 19:15:15', '2021-05-21 19:15:15'),
(276, 130, 117, NULL, 12, 12, 7, 520, 0, 0, 0, 6240, '2021-05-21 19:18:36', '2021-05-21 19:18:36'),
(277, 130, 110, NULL, 1, 1, 1, 780, 0, 0, 0, 780, '2021-05-21 19:18:36', '2021-05-21 19:18:36'),
(278, 130, 84, NULL, 1, 1, 1, 750, 0, 0, 0, 750, '2021-05-21 19:18:36', '2021-05-21 19:18:36'),
(279, 130, 31, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2021-05-21 19:18:36', '2021-05-21 19:18:36'),
(280, 131, 120, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2021-05-21 19:47:59', '2021-05-21 19:47:59'),
(281, 132, 121, NULL, 1, 1, 1, 500, 0, 0, 0, 500, '2021-05-21 20:09:35', '2021-05-21 20:09:35'),
(282, 133, 124, NULL, 1, 1, 1, 600, 0, 0, 0, 600, '2021-05-21 20:26:45', '2021-05-21 20:26:45'),
(283, 134, 125, NULL, 1, 1, 1, 21, 0, 0, 0, 21, '2021-05-21 20:33:09', '2021-05-21 20:33:09'),
(284, 135, 126, NULL, 1, 1, 1, 363, 0, 0, 0, 363, '2021-05-21 20:38:42', '2021-05-21 20:38:42'),
(285, 136, 127, NULL, 1, 1, 1, 650, 0, 0, 0, 650, '2021-05-21 20:47:05', '2021-05-21 20:47:05'),
(286, 137, 128, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2021-05-21 20:58:02', '2021-05-21 20:58:02'),
(287, 138, 129, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2021-05-21 21:05:03', '2021-05-21 21:05:03'),
(288, 139, 130, NULL, 1, 1, 1, 500, 0, 0, 0, 500, '2021-05-21 21:26:08', '2021-05-21 21:26:08'),
(289, 140, 131, NULL, 1, 1, 1, 900, 0, 0, 0, 900, '2021-05-21 21:30:44', '2021-05-21 21:30:44'),
(290, 141, 132, NULL, 1, 1, 1, 55, 0, 0, 0, 55, '2021-05-21 21:36:29', '2021-05-21 21:36:29'),
(291, 142, 132, NULL, 1, 1, 1, 55, 0, 0, 0, 55, '2021-05-21 21:37:35', '2021-05-21 21:37:35'),
(292, 143, 132, NULL, 1, 1, 1, 55, 0, 0, 0, 55, '2021-05-21 21:37:58', '2021-05-21 21:37:58'),
(293, 144, 132, NULL, 1, 1, 1, 55, 0, 0, 0, 55, '2021-05-21 21:38:02', '2021-05-21 21:38:02'),
(294, 145, 132, NULL, 1, 1, 1, 55, 0, 0, 0, 55, '2021-05-21 21:38:03', '2021-05-21 21:38:03'),
(295, 146, 133, NULL, 1, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 22:33:06', '2021-05-21 22:33:06'),
(296, 147, 126, NULL, 1, 1, 1, 363, 0, 0, 0, 363, '2021-05-22 17:31:16', '2021-05-22 17:31:16'),
(297, 148, 135, NULL, 1, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-22 17:46:48', '2021-05-22 17:46:48'),
(298, 149, 136, NULL, 1, 1, 4, 750, 0, 0, 0, 750, '2021-05-22 17:58:47', '2021-05-22 17:58:47'),
(299, 150, 137, NULL, 1, 1, 1, 1000, 0, 0, 0, 1000, '2021-05-22 18:18:05', '2021-05-22 18:18:05'),
(300, 151, 138, NULL, 1, 1, 1, 100000, 0, 0, 0, 100000, '2021-05-22 18:37:05', '2021-05-22 18:37:05'),
(301, 152, 140, NULL, 1, 1, 1, 8000, 0, 0, 0, 8000, '2021-05-22 18:57:50', '2021-05-22 18:57:50'),
(302, 153, 140, NULL, 1, 1, 1, 8000, 0, 0, 0, 8000, '2021-05-22 19:03:05', '2021-05-22 19:03:05'),
(303, 154, 143, NULL, 1, 1, 1, 500000, 0, 0, 0, 500000, '2021-05-22 19:16:35', '2021-05-22 19:16:35'),
(304, 155, 144, NULL, 1, 1, 7, 120, 0, 0, 0, 120, '2021-05-22 19:29:05', '2021-05-22 19:29:05'),
(305, 156, 135, NULL, 100, 100, 1, 1200, 0, 0, 0, 120000, '2021-05-22 19:35:41', '2021-05-22 19:35:41'),
(306, 157, 58, NULL, 10, 10, 1, 777, 0, 0, 0, 7770, '2021-05-22 19:46:50', '2021-05-22 19:46:50'),
(307, 158, 145, NULL, 100, 100, 1, 1200, 0, 0, 0, 120000, '2021-05-22 19:58:54', '2021-05-22 19:58:54'),
(308, 159, 146, NULL, 100, 100, 1, 750, 0, 0, 0, 75000, '2021-05-22 20:07:22', '2021-05-22 20:07:22'),
(309, 160, 147, NULL, 1, 1, 1, 500, 0, 0, 0, 500, '2021-05-22 20:19:07', '2021-05-22 20:19:07'),
(310, 161, 110, NULL, 100, 100, 1, 780, 0, 0, 0, 78000, '2021-05-22 20:41:20', '2021-05-22 20:41:20'),
(311, 162, 121, NULL, 40, 40, 1, 500, 0, 0, 0, 20000, '2021-05-22 20:58:50', '2021-05-22 20:58:50'),
(312, 163, 61, NULL, 66, 66, 1, 33, 0, 0, 0, 2178, '2021-05-22 21:01:09', '2021-05-22 21:01:09'),
(313, 164, 64, NULL, 25, 25, 1, 100, 0, 0, 0, 2500, '2021-05-22 21:41:42', '2021-05-22 21:41:42'),
(314, 165, 149, NULL, 1, 1, 1, 120, 0, 0, 0, 120, '2021-05-22 21:54:58', '2021-05-22 21:54:58'),
(315, 166, 150, NULL, 1, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-22 22:00:06', '2021-05-22 22:00:06'),
(316, 167, 151, NULL, 1, 1, 1, 522, 0, 0, 0, 522, '2021-05-22 22:19:58', '2021-05-22 22:19:58'),
(317, 168, 152, NULL, 1, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-22 22:21:06', '2021-05-22 22:21:06'),
(318, 169, 152, NULL, 1, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-22 22:26:42', '2021-05-22 22:26:42'),
(319, 169, 150, NULL, 1, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-22 22:26:42', '2021-05-22 22:26:42'),
(320, 169, 62, NULL, 1, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-22 22:26:42', '2021-05-22 22:26:42'),
(321, 170, 150, NULL, 2, 2, 1, 1500, 0, 0, 0, 3000, '2021-05-22 22:50:10', '2021-05-22 22:50:10'),
(322, 170, 84, NULL, 3, 3, 1, 750, 0, 0, 0, 2250, '2021-05-22 22:50:10', '2021-05-22 22:50:10'),
(323, 170, 121, NULL, 2, 2, 1, 500, 0, 0, 0, 1000, '2021-05-22 22:50:10', '2021-05-22 22:50:10'),
(324, 171, 64, NULL, 3, 3, 1, 100, 0, 0, 0, 300, '2021-05-22 22:55:01', '2021-05-22 22:55:01'),
(325, 171, 121, NULL, 3, 3, 1, 500, 0, 0, 0, 1500, '2021-05-22 22:55:01', '2021-05-22 22:55:01'),
(326, 171, 110, NULL, 3, 3, 1, 780, 0, 0, 0, 2340, '2021-05-22 22:55:01', '2021-05-22 22:55:01'),
(327, 172, 64, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 03:40:15', '2021-05-23 03:40:15'),
(328, 173, 64, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 03:46:58', '2021-05-23 03:46:58'),
(329, 174, 22, NULL, 1, 1, 1, 800, 0, 1.5, 12, 812, '2021-05-23 17:49:42', '2021-05-23 17:49:42'),
(330, 174, 110, NULL, 1, 1, 1, 780, 0, 0, 0, 780, '2021-05-23 17:49:42', '2021-05-23 17:49:42'),
(331, 174, 2, NULL, 1, 1, 3, 188.24, 0, 2, 3.76, 192, '2021-05-23 17:49:42', '2021-05-23 17:49:42'),
(332, 175, 153, NULL, 1, 1, 1, 70000, 0, 0, 0, 70000, '2021-05-23 17:55:48', '2021-05-23 17:55:48'),
(333, 176, 154, NULL, 1, 1, 7, 350, 0, 0, 0, 350, '2021-05-23 18:00:05', '2021-05-23 18:00:05'),
(334, 177, 156, NULL, 1, 1, 1, 140, 0, 0, 0, 140, '2021-05-23 19:39:08', '2021-05-23 19:39:08'),
(335, 178, 157, NULL, 1, 1, 7, 150, 0, 0, 0, 150, '2021-05-23 21:15:14', '2021-05-23 21:15:14'),
(336, 179, 59, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 21:55:08', '2021-05-23 21:55:08'),
(337, 180, 159, NULL, 1, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-24 17:40:10', '2021-05-24 17:40:10'),
(338, 181, 162, NULL, 1, 1, 1, 120, 0, 0, 0, 120, '2021-05-24 18:28:59', '2021-05-24 18:28:59'),
(339, 182, 163, NULL, 1, 1, 1, 1050, 0, 0, 0, 1050, '2021-05-24 20:03:55', '2021-05-24 20:03:55'),
(340, 183, 165, NULL, 1, 1, 1, 2000, 0, 0, 0, 2000, '2021-05-24 20:15:35', '2021-05-24 20:15:35'),
(341, 184, 166, NULL, 1, 1, 1, 1850, 0, 0, 0, 1850, '2021-05-24 20:37:28', '2021-05-24 20:37:28'),
(342, 184, 121, NULL, 1, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 20:37:28', '2021-05-24 20:37:28'),
(343, 184, 151, NULL, 1, 1, 1, 522, 0, 0, 0, 522, '2021-05-24 20:37:28', '2021-05-24 20:37:28'),
(344, 185, 167, NULL, 20, 20, 1, 3000, 0, 0, 0, 60000, '2021-05-24 20:40:29', '2021-05-24 20:40:29'),
(345, 186, 168, NULL, 1, 1, 1, 2000, 0, 0, 0, 2000, '2021-05-24 21:11:46', '2021-05-24 21:11:46'),
(346, 187, 169, NULL, 1, 1, 1, 30000, 0, 0, 0, 30000, '2021-05-24 21:31:48', '2021-05-24 21:31:48'),
(347, 188, 170, NULL, 1, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-24 21:54:05', '2021-05-24 21:54:05'),
(348, 189, 64, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-05-24 22:21:18', '2021-05-24 22:21:18'),
(349, 189, 121, NULL, 1, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 22:21:18', '2021-05-24 22:21:18'),
(350, 189, 132, NULL, 1, 1, 1, 55, 0, 0, 0, 55, '2021-05-24 22:21:18', '2021-05-24 22:21:18'),
(351, 190, 172, NULL, 1, 1, 1, 120, 0, 0, 0, 120, '2021-05-24 22:31:39', '2021-05-24 22:31:39'),
(352, 191, 173, NULL, 1, 1, 7, 8200, 0, 0, 0, 8200, '2021-05-24 22:40:27', '2021-05-24 22:40:27'),
(353, 192, 174, NULL, 20, 20, 1, 9000, 0, 0, 0, 180000, '2021-05-24 22:52:22', '2021-05-24 22:52:22'),
(354, 193, 175, NULL, 1, 1, 1, 2000, 0, 0, 0, 2000, '2021-05-24 23:17:54', '2021-05-24 23:17:54'),
(355, 194, 175, NULL, 1, 1, 1, 2000, 0, 0, 0, 2000, '2021-05-24 23:21:14', '2021-05-24 23:21:14'),
(356, 195, 179, NULL, 1, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-24 23:59:44', '2021-05-24 23:59:44'),
(357, 196, 64, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-05-25 00:30:41', '2021-05-25 00:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, 1, 2, 5030, 10, 15, 754.5, 5784.5, '2018-08-08 23:52:50', '2018-08-28 00:09:57'),
(3, 1, 4, NULL, 50, 1, 1.5, 25, 10, 7.5, 82.5, '2018-08-08 23:53:25', '2018-08-28 00:34:36'),
(4, 1, 2, NULL, 6, 1, 9.55, 0, 10, 5.73, 63, '2018-08-28 01:03:48', '2018-08-28 01:07:07'),
(5, 2, 10, NULL, 2.5, 7, 22, 0, 0, 0, 55, '2018-09-03 22:02:58', '2018-09-20 10:37:41'),
(6, 2, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-09-03 22:02:58', '2018-09-03 22:02:58'),
(7, 3, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-23 00:12:49', '2019-12-21 06:41:37'),
(19, 3, 48, 2, 1, 1, 13, 0, 0, 0, 13, '2019-12-07 08:50:02', '2019-12-21 06:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(3, 2, 4, NULL, 20, 1, 2, 0, 0, 0, 40, NULL, NULL),
(4, 3, 10, NULL, 2, 7, 22, 0, 0, 0, 44, NULL, '2018-10-07 02:19:40'),
(6, 5, 3, NULL, 1, 1, 250, 0, 0, 0, 250, NULL, '2018-12-25 22:16:08'),
(12, 6, 1, NULL, 1, 1, 400, 0, 10, 40, 440, NULL, NULL),
(23, 11, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-12-24 05:20:29', '2019-12-24 05:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-08-08 10:36:23', '2018-08-08 11:13:27'),
(3, 1, 5, NULL, 2, 1, 115, 10, 0, 0, 230, '2018-08-08 11:13:28', '2018-08-08 11:13:28'),
(4, 2, 1, NULL, 10, 1, 420, 0, 10, 420, 4620, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(5, 2, 4, NULL, 50, 1, 2.1, 0, 0, 0, 105, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(6, 2, 2, NULL, 3, 2, 109.57, 0, 15, 49.3, 378, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(7, 3, 4, NULL, 20, 1, 2.1, 0, 0, 0, 42, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(8, 3, 5, NULL, 5, 1, 126, 0, 0, 0, 630, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(9, 3, 3, NULL, 1, 1, 225, 0, 0, 0, 225, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(10, 4, 1, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-08-24 21:48:37', '2018-08-24 21:48:37'),
(12, 6, 13, NULL, 1, 0, 18.9, 0, 0, 0, 18.9, '2018-08-26 03:48:36', '2018-08-26 05:48:05'),
(13, 7, 1, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(14, 8, 5, NULL, 2, 2, 1440, 0, 10, 288, 3168, '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(15, 9, 4, NULL, 10, 1, 2, 0, 0, 0, 20, '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(16, 10, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-09-02 23:01:39', '2018-09-02 23:01:39'),
(17, 11, 22, NULL, 5, 1, 1000, 0, 10, 500, 5500, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(18, 12, 22, NULL, 10, 1, 1050, 0, 10, 1050, 11550, '2018-09-03 04:10:33', '2018-09-03 04:10:33'),
(46, 29, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-09-09 03:38:41', '2018-09-09 03:38:41'),
(47, 30, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-09-09 22:57:06', '2018-09-20 09:12:38'),
(48, 31, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(49, 31, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(50, 32, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 03:55:48', '2018-10-04 03:55:48'),
(51, 33, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 04:00:23', '2018-10-04 04:00:23'),
(57, 37, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-07 00:46:05', '2018-10-07 00:46:05'),
(58, 38, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 00:47:19', '2018-10-07 00:47:19'),
(61, 40, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 01:13:12', '2018-10-07 01:13:12'),
(62, 41, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(63, 41, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(64, 42, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-09 23:34:51', '2018-10-09 23:34:51'),
(65, 43, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-15 21:34:35', '2018-10-15 21:34:35'),
(78, 55, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-21 00:53:34', '2018-10-21 00:53:34'),
(80, 57, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-21 02:26:12', '2018-10-21 02:26:12'),
(81, 57, 13, NULL, 2, 0, 21, 0, 0, 0, 42, '2018-10-21 02:26:13', '2018-10-21 02:26:13'),
(82, 58, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-22 09:27:24', '2018-10-22 09:27:24'),
(83, 58, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-10-22 09:27:24', '2018-10-22 09:27:24'),
(101, 73, 25, NULL, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-23 01:15:43', '2018-10-23 01:15:43'),
(102, 73, 22, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-23 01:15:44', '2018-10-23 01:15:44'),
(103, 74, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(104, 74, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(105, 74, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(106, 75, 2, NULL, 3, 2, 104.35, 0, 15, 46.96, 360, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(107, 75, 22, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(108, 75, 25, NULL, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(109, 75, 1, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(110, 75, 5, NULL, 2, 1, 120, 0, 0, 0, 240, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(111, 76, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-31 23:01:26', '2018-11-03 03:28:56'),
(112, 76, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-31 23:01:27', '2018-11-03 03:28:56'),
(113, 76, 13, NULL, 4, 0, 21, 0, 0, 0, 84, '2018-10-31 23:01:27', '2018-11-03 03:28:56'),
(117, 79, 1, NULL, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(118, 79, 2, NULL, 7, 2, 104.35, 0, 15, 109.57, 840, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(119, 79, 3, NULL, 7, 1, 250, 0, 0, 0, 1750, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(120, 79, 4, NULL, 7, 1, 2, 0, 0, 0, 14, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(121, 79, 22, NULL, 8, 1, 1000, 0, 10, 800, 8800, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(122, 79, 13, NULL, 10, 0, 21, 0, 0, 0, 210, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(123, 79, 5, NULL, 9, 1, 120, 0, 0, 0, 1080, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(124, 80, 2, NULL, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(125, 80, 3, NULL, 2, 1, 250, 0, 0, 0, 500, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(126, 80, 1, NULL, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(132, 86, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 03:59:48', '2018-11-05 03:59:48'),
(134, 88, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 04:02:58', '2018-11-05 04:02:58'),
(142, 94, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(143, 95, 5, NULL, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(144, 95, 5, NULL, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(145, 96, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-28 01:15:09', '2018-11-28 01:15:09'),
(146, 97, 2, NULL, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-12-01 00:05:18', '2018-12-01 00:05:18'),
(147, 97, 10, NULL, 1, 7, 22, 0, 0, 0, 22, '2018-12-01 00:05:18', '2018-12-01 00:05:18'),
(148, 98, 30, NULL, 2, 1, 100, 0, 0, 0, 200, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(149, 98, 31, NULL, 2, 1, 300, 0, 0, 0, 600, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(150, 99, 30, NULL, 2, 1, 100, 0, 0, 0, 200, '2018-12-04 23:37:19', '2018-12-04 23:37:19'),
(151, 99, 31, NULL, 2, 1, 300, 0, 0, 0, 600, '2018-12-04 23:37:20', '2018-12-04 23:37:20'),
(153, 101, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2018-12-08 00:20:26', '2018-12-08 00:20:26'),
(155, 103, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(156, 104, 33, NULL, 4, 1, 2, 0, 0, 0, 8, '2018-12-24 03:15:27', '2018-12-24 21:55:23'),
(157, 104, 26, NULL, 2, 0, 1250, 0, 0, 0, 2500, '2018-12-24 21:47:54', '2018-12-24 21:55:23'),
(158, 105, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-12-31 23:45:38', '2018-12-31 23:45:38'),
(159, 106, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(160, 106, 3, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(161, 106, 5, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 107, 3, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 107, 5, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(164, 107, 22, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(165, 107, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(166, 107, 1, NULL, 2, 1, 400, 0, 10, 80, 880, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(167, 107, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(168, 108, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(169, 109, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(170, 109, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(171, 110, 31, NULL, 2, 1, 300, 0, 0, 0, 600, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(172, 110, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(173, 111, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(174, 111, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(175, 112, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(176, 113, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(177, 113, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(178, 114, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-05 09:04:45', '2019-02-05 09:04:45'),
(183, 118, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 05:15:42', '2019-02-07 05:15:42'),
(185, 120, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 05:40:37', '2019-02-07 05:40:37'),
(186, 121, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(187, 121, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(188, 121, 4, NULL, 10, 1, 2, 0, 0, 0, 20, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(189, 121, 13, NULL, 2, 0, 21, 0, 0, 0, 42, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(190, 121, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(191, 121, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(192, 121, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(194, 123, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(198, 127, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(199, 127, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(200, 127, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(201, 128, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(202, 128, 2, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(203, 129, 5, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-04-04 03:59:37', '2019-04-11 04:50:16'),
(204, 130, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(205, 130, 2, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(206, 130, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(207, 131, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(208, 131, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(209, 131, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(210, 131, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(211, 132, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(212, 132, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(213, 132, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(214, 133, 3, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-06-13 04:17:51', '2019-06-13 04:17:51'),
(215, 133, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(216, 133, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(217, 134, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(218, 134, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(219, 134, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(220, 134, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(224, 138, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2019-10-31 06:29:37', '2019-10-31 06:29:37'),
(225, 139, 2, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(226, 139, 4, NULL, 100, 1, 2, 0, 0, 0, 200, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(236, 144, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(237, 144, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(241, 147, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(242, 147, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(243, 147, 4, NULL, 10, 1, 2, 0, 0, 0, 20, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(282, 172, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-12-03 09:46:31', '2019-12-03 09:46:31'),
(283, 173, 3, NULL, 1, 1, 225, 0, 0, 0, 225, '2019-12-04 17:19:40', '2019-12-04 17:19:40'),
(284, 173, 1, NULL, 1, 1, 360, 0, 10, 36, 396, '2019-12-04 17:19:40', '2019-12-04 17:19:40'),
(306, 187, 2, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(308, 190, 22, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(312, 193, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(313, 194, 1, NULL, 2, 1, 400, 0, 10, 80, 880, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(314, 194, 2, NULL, 1, 1, 10.43, 0, 15, 1.57, 12, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(323, 201, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(324, 202, 25, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(325, 202, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(326, 203, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(327, 203, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(328, 204, 4, NULL, 20, 1, 2, 0, 0, 0, 40, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(329, 205, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(330, 206, 5, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-03-11 10:52:30', '2020-03-11 10:54:04'),
(331, 207, 30, NULL, 2, 1, 100, 0, 0, 0, 200, '2020-04-06 13:40:24', '2020-04-06 13:41:11'),
(332, 207, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2020-04-06 13:40:24', '2020-04-06 13:41:11'),
(333, 207, 2, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2020-04-06 13:41:11', '2020-04-06 13:41:11'),
(334, 208, 1, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-04-11 20:49:48', '2021-04-11 20:49:48'),
(335, 209, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-06 22:06:39', '2021-05-06 22:06:39'),
(336, 210, 2, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-05-06 22:10:26', '2021-05-06 22:10:26'),
(337, 211, 2, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-05-07 00:57:54', '2021-05-07 00:57:54'),
(338, 211, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-07 00:57:54', '2021-05-07 00:57:54'),
(339, 211, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-07 00:57:54', '2021-05-07 00:57:54'),
(340, 213, 2, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-05-08 09:03:33', '2021-05-08 09:03:33'),
(341, 213, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-08 09:03:33', '2021-05-08 09:03:33'),
(342, 215, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-05-08 09:06:49', '2021-05-08 09:06:49'),
(343, 215, 53, NULL, 1, 1, 108, 0, 0, 0, 108, '2021-05-08 09:06:49', '2021-05-08 09:06:49'),
(344, 216, 3, NULL, 2, 1, 250, 0, 0, 0, 500, '2021-05-08 09:11:07', '2021-05-08 09:11:07'),
(345, 216, 10, NULL, 1, 7, 22, 0, 0, 0, 22, '2021-05-08 09:11:07', '2021-05-08 09:11:07'),
(346, 217, 3, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-05-08 09:31:57', '2021-05-08 09:31:57'),
(347, 217, 10, NULL, 1, 7, 22, 0, 0, 0, 22, '2021-05-08 09:31:57', '2021-05-08 09:31:57'),
(348, 218, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-09 08:55:47', '2021-05-09 08:55:47'),
(349, 218, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-09 08:55:47', '2021-05-09 08:55:47'),
(350, 219, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-09 08:56:29', '2021-05-09 08:56:29'),
(351, 219, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-09 08:56:29', '2021-05-09 08:56:29'),
(352, 220, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-09 08:57:12', '2021-05-09 08:57:12'),
(353, 220, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-09 08:57:12', '2021-05-09 08:57:12'),
(354, 221, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-09 09:07:28', '2021-05-09 09:07:28'),
(355, 221, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-09 09:07:29', '2021-05-09 09:07:29'),
(356, 222, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-09 09:33:57', '2021-05-09 09:33:57'),
(357, 222, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-09 09:33:57', '2021-05-09 09:33:57'),
(358, 223, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-17 07:05:34', '2021-05-17 07:05:34'),
(359, 223, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-17 07:05:34', '2021-05-17 07:05:34'),
(360, 224, 55, NULL, 2, 1, 120, 0, 0, 0, 240, '2021-05-17 19:39:52', '2021-05-17 19:39:52'),
(361, 225, 55, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-17 19:54:28', '2021-05-17 19:54:28'),
(362, 226, 55, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-17 20:22:15', '2021-05-17 20:22:15'),
(363, 227, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:00:25', '2021-05-18 03:00:25'),
(364, 228, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-18 03:01:09', '2021-05-18 03:01:09'),
(365, 228, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:01:09', '2021-05-18 03:01:09'),
(366, 229, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:03:57', '2021-05-18 03:03:57'),
(367, 230, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:46:54', '2021-05-18 03:46:54'),
(368, 230, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-18 03:46:54', '2021-05-18 03:46:54'),
(369, 231, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:48:26', '2021-05-18 03:48:26'),
(370, 231, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-18 03:48:26', '2021-05-18 03:48:26'),
(371, 232, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:49:09', '2021-05-18 03:49:09'),
(372, 233, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:50:13', '2021-05-18 03:50:13'),
(373, 233, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-18 03:50:13', '2021-05-18 03:50:13'),
(374, 234, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-18 03:52:30', '2021-05-18 03:52:30'),
(375, 234, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-18 03:52:30', '2021-05-18 03:52:30'),
(376, 235, 48, 3, 1, 1, 3, 0, 0, 0, 3, '2021-05-18 04:35:11', '2021-05-18 04:35:11'),
(377, 236, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-19 20:26:59', '2021-05-19 20:26:59'),
(378, 237, 62, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 20:27:53', '2021-05-19 20:27:53'),
(379, 238, 62, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 20:33:46', '2021-05-19 20:33:46'),
(380, 239, 62, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 20:43:55', '2021-05-19 20:43:55'),
(381, 240, 62, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 20:47:22', '2021-05-19 20:47:22'),
(382, 241, 62, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 20:48:14', '2021-05-19 20:48:14'),
(383, 242, 69, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-19 21:10:41', '2021-05-19 21:10:41'),
(384, 243, 70, NULL, 1, 1, 555, 0, 0, 0, 555, '2021-05-19 21:28:12', '2021-05-19 21:28:12'),
(385, 244, 71, NULL, 1, 1, 5554, 0, 0, 0, 5554, '2021-05-19 21:46:38', '2021-05-19 21:46:38'),
(386, 245, 74, NULL, 1, 1, 3000, 0, 0, 0, 3000, '2021-05-19 22:29:54', '2021-05-19 22:29:54'),
(387, 246, 77, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-19 22:42:40', '2021-05-19 22:42:40'),
(388, 247, 78, NULL, 1, 1, 7896, 0, 0, 0, 7896, '2021-05-19 22:56:58', '2021-05-19 22:56:58'),
(389, 248, 78, NULL, 1, 1, 7896, 0, 0, 0, 7896, '2021-05-19 23:09:18', '2021-05-19 23:09:18'),
(390, 249, 79, NULL, 1, 1, 788, 0, 0, 0, 788, '2021-05-19 23:16:57', '2021-05-19 23:16:57'),
(391, 250, 81, NULL, 1, 1, 12000, 0, 0, 0, 12000, '2021-05-20 02:45:37', '2021-05-20 02:45:37'),
(392, 251, 82, NULL, 1, 7, 560, 0, 0, 0, 560, '2021-05-20 03:33:13', '2021-05-20 03:33:13'),
(393, 252, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-20 05:58:07', '2021-05-20 05:58:07'),
(394, 253, 2, NULL, 1, 2, 148.24, 0, 2, 2.96, 151.2, '2021-05-20 06:06:28', '2021-05-20 06:06:28'),
(395, 254, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-20 06:10:31', '2021-05-20 06:10:31'),
(396, 255, 83, NULL, 1, 1, 1000, 0, 0, 0, 1000, '2021-05-20 14:27:12', '2021-05-20 14:27:12'),
(397, 256, 84, NULL, 1, 1, 750, 0, 0, 0, 750, '2021-05-20 18:03:45', '2021-05-20 18:03:45'),
(398, 257, 85, NULL, 1, 1, 677, 0, 0, 0, 677, '2021-05-20 18:10:35', '2021-05-20 18:10:35'),
(399, 258, 86, NULL, 1, 1, 545, 0, 0, 0, 545, '2021-05-20 18:25:06', '2021-05-20 18:25:06'),
(400, 259, 87, NULL, 1, 1, 850, 0, 0, 0, 850, '2021-05-20 18:40:31', '2021-05-20 18:40:31'),
(401, 260, 90, NULL, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-20 19:07:58', '2021-05-20 19:07:58'),
(402, 261, 93, NULL, 1, 1, 5555, 0, 0, 0, 5555, '2021-05-20 19:50:17', '2021-05-20 19:50:17'),
(403, 262, 95, NULL, 1, 7, 1200, 0, 0, 0, 1200, '2021-05-20 19:59:07', '2021-05-20 19:59:07'),
(404, 263, 102, NULL, 1, 7, 15000, 0, 0, 0, 15000, '2021-05-21 04:08:44', '2021-05-21 04:08:44'),
(405, 264, 105, NULL, 1, 1, 25000, 0, 0, 0, 25000, '2021-05-21 17:59:33', '2021-05-21 17:59:33'),
(406, 265, 106, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 18:02:01', '2021-05-21 18:02:01'),
(407, 266, 106, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 18:02:02', '2021-05-21 18:02:02'),
(408, 267, 106, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 18:02:03', '2021-05-21 18:02:03'),
(409, 268, 107, NULL, 1, 1, 450, 0, 0, 0, 450, '2021-05-21 18:20:19', '2021-05-21 18:20:19'),
(410, 269, 108, NULL, 1, 1, 555, 0, 0, 0, 555, '2021-05-21 18:30:54', '2021-05-21 18:30:54'),
(411, 270, 109, NULL, 1, 1, 5555, 0, 0, 0, 5555, '2021-05-21 18:36:57', '2021-05-21 18:36:57'),
(412, 271, 110, NULL, 1, 1, 780, 0, 0, 0, 780, '2021-05-21 18:44:41', '2021-05-21 18:44:41'),
(413, 272, 114, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 19:06:03', '2021-05-21 19:06:03'),
(414, 273, 117, NULL, 1, 7, 520, 0, 0, 0, 520, '2021-05-21 19:19:59', '2021-05-21 19:19:59'),
(415, 273, 25, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-21 19:19:59', '2021-05-21 19:19:59'),
(416, 273, 110, NULL, 1, 1, 780, 0, 0, 0, 780, '2021-05-21 19:19:59', '2021-05-21 19:19:59'),
(417, 273, 22, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-21 19:19:59', '2021-05-21 19:19:59'),
(418, 274, 128, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-05-21 20:59:22', '2021-05-21 20:59:22'),
(419, 275, 129, NULL, 1, 1, 200, 0, 0, 0, 200, '2021-05-21 21:05:36', '2021-05-21 21:05:36'),
(420, 276, 131, NULL, 1, 1, 900, 0, 0, 0, 900, '2021-05-21 21:31:16', '2021-05-21 21:31:16'),
(421, 277, 133, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-21 22:33:51', '2021-05-21 22:33:51'),
(422, 278, 126, NULL, 1, 1, 363, 0, 0, 0, 363, '2021-05-22 17:35:02', '2021-05-22 17:35:02'),
(423, 279, 135, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-22 17:47:22', '2021-05-22 17:47:22'),
(424, 280, 136, NULL, 1, 4, 750, 0, 0, 0, 750, '2021-05-22 18:04:30', '2021-05-22 18:04:30'),
(425, 281, 137, NULL, 1, 1, 1000, 0, 0, 0, 1000, '2021-05-22 18:18:39', '2021-05-22 18:18:39'),
(426, 282, 138, NULL, 1, 1, 100000, 0, 0, 0, 100000, '2021-05-22 18:38:45', '2021-05-22 18:38:45'),
(427, 283, 143, NULL, 1, 1, 500000, 0, 0, 0, 500000, '2021-05-22 19:20:59', '2021-05-22 19:20:59'),
(428, 284, 22, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-22 19:24:31', '2021-05-22 19:24:31'),
(429, 285, 144, NULL, 1, 7, 120, 0, 0, 0, 120, '2021-05-22 19:29:58', '2021-05-22 19:29:58'),
(430, 286, 58, NULL, 1, 1, 1000, 0, 0, 0, 1000, '2021-05-22 19:50:53', '2021-05-22 19:50:53'),
(431, 287, 145, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-22 20:00:51', '2021-05-22 20:00:51'),
(432, 288, 146, NULL, 1, 1, 750, 0, 0, 0, 750, '2021-05-22 20:10:47', '2021-05-22 20:10:47'),
(433, 289, 147, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-22 20:22:02', '2021-05-22 20:22:02'),
(434, 292, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-22 21:46:54', '2021-05-22 21:46:54'),
(435, 293, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-22 21:48:02', '2021-05-22 21:48:02'),
(436, 294, 149, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-22 21:55:53', '2021-05-22 21:55:53'),
(437, 295, 150, NULL, 1, 1, 1350, 0, 0, 0, 1350, '2021-05-22 22:01:01', '2021-05-22 22:01:01'),
(438, 297, 151, NULL, 1, 1, 522, 0, 0, 0, 522, '2021-05-22 22:24:28', '2021-05-22 22:24:28'),
(439, 298, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-22 23:33:37', '2021-05-22 23:33:37'),
(440, 299, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-22 23:34:16', '2021-05-22 23:34:16'),
(441, 300, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-22 23:34:37', '2021-05-22 23:34:37'),
(442, 301, 30, NULL, 3, 1, 100, 0, 0, 0, 300, '2021-05-22 23:37:05', '2021-05-22 23:37:05'),
(443, 302, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-23 03:41:25', '2021-05-23 03:41:25'),
(444, 303, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-23 03:44:16', '2021-05-23 03:44:16'),
(445, 304, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-23 03:44:30', '2021-05-23 03:44:30'),
(446, 308, 154, NULL, 1, 7, 350, 0, 0, 0, 350, '2021-05-23 18:03:51', '2021-05-23 18:03:51'),
(447, 309, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-23 18:12:58', '2021-05-23 18:12:58'),
(448, 311, 2, NULL, 2, 2, 141.18, 0, 2, 5.65, 288, '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(449, 311, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(450, 311, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(451, 311, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(452, 311, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(453, 314, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(454, 314, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(455, 314, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(456, 314, 22, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(457, 314, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(458, 315, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(459, 315, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(460, 315, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(461, 315, 22, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(462, 315, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(463, 316, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-23 19:28:33', '2021-05-23 19:28:33'),
(464, 316, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-23 19:28:33', '2021-05-23 19:28:33'),
(465, 316, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-23 19:28:33', '2021-05-23 19:28:33'),
(466, 316, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 19:28:33', '2021-05-23 19:28:33'),
(467, 317, 13, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-05-23 19:31:32', '2021-05-23 19:31:32'),
(468, 317, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-23 19:31:32', '2021-05-23 19:31:32'),
(469, 317, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-23 19:31:32', '2021-05-23 19:31:32'),
(470, 317, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 19:31:33', '2021-05-23 19:31:33'),
(471, 320, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-23 20:12:09', '2021-05-23 20:12:09'),
(472, 320, 31, NULL, 2, 1, 300, 0, 0, 0, 600, '2021-05-23 20:12:09', '2021-05-23 20:12:09'),
(473, 321, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-05-23 20:12:34', '2021-05-23 20:12:34'),
(474, 321, 56, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-23 20:12:34', '2021-05-23 20:12:34'),
(475, 327, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-23 21:57:33', '2021-05-23 21:57:33'),
(476, 328, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-23 22:00:12', '2021-05-23 22:00:12'),
(477, 329, 110, NULL, 1, 1, 780, 0, 0, 0, 780, '2021-05-23 22:02:34', '2021-05-23 22:02:34'),
(478, 329, 150, NULL, 1, 1, 1500, 0, 0, 0, 1500, '2021-05-23 22:02:34', '2021-05-23 22:02:34'),
(479, 329, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-23 22:02:34', '2021-05-23 22:02:34'),
(480, 330, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-23 22:18:16', '2021-05-23 22:18:16'),
(481, 330, 4, NULL, 2, 1, 2, 0, 0, 0, 4, '2021-05-23 22:18:16', '2021-05-23 22:18:16'),
(482, 333, 159, NULL, 1, 1, 1200, 0, 0, 0, 1200, '2021-05-24 17:40:45', '2021-05-24 17:40:45'),
(483, 334, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-24 18:03:33', '2021-05-24 18:03:33'),
(484, 334, 2, NULL, 2, 2, 141.18, 0, 2, 5.65, 288, '2021-05-24 18:03:33', '2021-05-24 18:03:33'),
(485, 334, 4, NULL, 2, 1, 2, 0, 0, 0, 4, '2021-05-24 18:03:33', '2021-05-24 18:03:33'),
(486, 334, 48, 3, 2, 1, 3, 0, 0, 0, 6, '2021-05-24 18:03:33', '2021-05-24 18:03:33'),
(487, 337, 64, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-24 18:23:32', '2021-05-24 18:23:32'),
(488, 339, 162, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-24 18:34:24', '2021-05-24 18:34:24'),
(489, 342, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(490, 342, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(491, 342, 22, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(492, 342, 25, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(493, 342, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(494, 342, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(495, 343, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(496, 343, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(497, 343, 25, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(498, 343, 30, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(499, 343, 31, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(500, 344, 121, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 19:44:22', '2021-05-24 19:44:22'),
(501, 345, 121, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 19:45:29', '2021-05-24 19:45:29'),
(502, 346, 121, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 19:47:17', '2021-05-24 19:47:17'),
(503, 347, 121, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 19:48:10', '2021-05-24 19:48:10'),
(504, 348, 163, NULL, 1, 1, 1050, 0, 0, 0, 1050, '2021-05-24 20:06:23', '2021-05-24 20:06:23'),
(505, 350, 121, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 20:15:52', '2021-05-24 20:15:52'),
(506, 351, 165, NULL, 1, 1, 2000, 0, 0, 0, 2000, '2021-05-24 20:16:05', '2021-05-24 20:16:05'),
(507, 352, 62, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-24 20:21:46', '2021-05-24 20:21:46'),
(508, 352, 110, NULL, 2, 1, 780, 0, 0, 0, 1560, '2021-05-24 20:21:46', '2021-05-24 20:21:46'),
(509, 352, 22, NULL, 1, 1, 1000, 0, 1.5, 15, 1015, '2021-05-24 20:21:46', '2021-05-24 20:21:46'),
(510, 354, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-24 20:37:53', '2021-05-24 20:37:53'),
(511, 355, 166, NULL, 1, 1, 1850, 0, 0, 0, 1850, '2021-05-24 20:39:20', '2021-05-24 20:39:20'),
(512, 355, 151, NULL, 1, 1, 522, 0, 0, 0, 522, '2021-05-24 20:39:20', '2021-05-24 20:39:20'),
(513, 355, 121, NULL, 1, 1, 500, 0, 0, 0, 500, '2021-05-24 20:39:20', '2021-05-24 20:39:20'),
(514, 357, 168, NULL, 1, 1, 2000, 0, 0, 0, 2000, '2021-05-24 21:13:41', '2021-05-24 21:13:41'),
(515, 358, 2, NULL, 2, 2, 141.18, 0, 2, 5.65, 288, '2021-05-24 21:22:59', '2021-05-24 21:22:59'),
(516, 358, 4, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-24 21:22:59', '2021-05-24 21:22:59'),
(517, 358, 31, NULL, 2, 1, 300, 0, 0, 0, 600, '2021-05-24 21:22:59', '2021-05-24 21:22:59'),
(518, 358, 22, NULL, 3, 1, 1000, 0, 1.5, 45, 3045, '2021-05-24 21:22:59', '2021-05-24 21:22:59'),
(519, 359, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-24 21:28:20', '2021-05-24 21:28:20'),
(520, 360, 169, NULL, 1, 1, 30000, 0, 0, 0, 30000, '2021-05-24 21:32:54', '2021-05-24 21:32:54'),
(521, 361, 170, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-24 21:55:06', '2021-05-24 21:55:06'),
(522, 364, 2, NULL, 3, 2, 141.18, 0, 2, 8.47, 432, '2021-05-24 22:26:31', '2021-05-24 22:26:31'),
(523, 364, 30, NULL, 3, 1, 100, 0, 0, 0, 300, '2021-05-24 22:26:31', '2021-05-24 22:26:31'),
(524, 364, 4, NULL, 5, 1, 2, 0, 0, 0, 10, '2021-05-24 22:26:31', '2021-05-24 22:26:31'),
(525, 364, 31, NULL, 3, 1, 300, 0, 0, 0, 900, '2021-05-24 22:26:31', '2021-05-24 22:26:31'),
(526, 367, 174, NULL, 6, 1, 9000, 0, 0, 0, 54000, '2021-05-24 22:53:45', '2021-05-24 22:53:45'),
(527, 368, 31, NULL, 4, 1, 300, 0, 0, 0, 1200, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(528, 368, 30, NULL, 3, 1, 100, 0, 0, 0, 300, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(529, 368, 4, NULL, 31, 1, 2, 0, 0, 0, 62, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(530, 368, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(531, 368, 13, NULL, 9, 0, 21, 0, 0, 0, 189, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(532, 368, 22, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(533, 368, 25, NULL, 2, 1, 1000, 0, 1.5, 30, 2030, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(534, 369, 2, NULL, 1, 2, 141.18, 0, 2, 2.82, 144, '2021-05-24 22:58:33', '2021-05-24 22:58:33'),
(535, 371, 179, NULL, 1, 1, 2500, 0, 0, 0, 2500, '2021-05-25 00:00:30', '2021-05-25 00:00:30'),
(536, 372, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-25 00:03:08', '2021-05-25 00:03:08'),
(537, 373, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-25 00:18:29', '2021-05-25 00:18:29'),
(538, 374, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-25 00:18:30', '2021-05-25 00:18:30'),
(539, 375, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-25 00:20:52', '2021-05-25 00:20:52'),
(540, 376, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-25 00:22:18', '2021-05-25 00:22:18'),
(541, 377, 64, NULL, 1, 1, 110, 0, 0, 0, 110, '2021-05-25 00:22:22', '2021-05-25 00:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transfer`
--

INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `variant_id`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 100, 1, 1, 0, 0, 100, '2018-08-08 11:17:10', '2018-12-24 22:16:55'),
(7, 6, 48, 3, 1, 1, 2, 0, 0, 2, '2019-12-05 13:55:04', '2019-12-05 14:09:42'),
(11, 8, 5, NULL, 10, 1, 100, 0, 0, 1000, '2020-01-22 06:30:59', '2020-01-22 06:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
(3, 48, 3, 1, 'S-93475396', NULL, 14, '2019-11-21 07:03:04', '2021-05-24 18:03:33'),
(5, 48, 5, 3, 'L-93475396', 50, 11, '2019-11-24 06:07:20', '2020-03-16 14:08:26'),
(6, 48, 2, 2, 'M-93475396', 10, 14, '2019-11-24 07:17:07', '2020-01-10 11:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `variant_id`, `warehouse_id`, `qty`, `created_at`, `updated_at`) VALUES
(10, '1', NULL, 1, 136.5, '2018-08-08 08:30:12', '2020-01-17 05:11:26'),
(11, '2', NULL, 1, 1332, '2018-08-08 08:30:12', '2021-05-23 21:57:33'),
(12, '3', NULL, 1, 104, '2018-08-08 08:30:13', '2020-02-26 06:16:35'),
(13, '5', NULL, 1, 77, '2018-08-08 08:30:13', '2020-03-11 10:54:04'),
(14, '4', NULL, 1, 170, '2018-08-08 09:16:09', '2021-05-17 07:05:34'),
(15, '4', NULL, 2, 62, '2018-08-08 11:16:15', '2021-05-24 22:57:59'),
(16, '2', NULL, 2, 1487, '2018-08-08 11:26:49', '2021-05-24 22:58:33'),
(17, '1', NULL, 2, 72.5, '2018-08-08 11:33:33', '2021-04-11 20:49:48'),
(18, '3', NULL, 2, 68, '2018-08-08 23:47:23', '2020-03-02 05:54:14'),
(19, '5', NULL, 2, 63, '2018-08-08 23:48:36', '2020-02-03 09:52:56'),
(20, '10', NULL, 1, 50, '2018-08-08 23:49:29', '2019-12-04 05:49:14'),
(21, '10', NULL, 2, 61, '2018-08-08 23:49:55', '2018-12-01 00:05:18'),
(22, '22', NULL, 1, 23, '2018-09-03 04:06:09', '2021-05-21 19:19:59'),
(23, '22', NULL, 2, 0, '2018-09-03 04:07:14', '2021-05-24 22:57:59'),
(24, '24', NULL, 2, 0, '2018-09-15 21:49:30', '2018-09-15 21:50:49'),
(25, '25', NULL, 1, 13, '2018-10-23 01:14:21', '2021-05-21 19:19:59'),
(26, '25', NULL, 2, 15, '2018-10-23 01:14:41', '2021-05-24 22:57:59'),
(27, '31', NULL, 1, 14, '2018-12-04 23:34:30', '2021-05-23 20:12:34'),
(28, '30', NULL, 1, 12, '2018-12-04 23:34:30', '2021-05-22 23:37:05'),
(29, '31', NULL, 2, 0, '2018-12-04 23:35:08', '2021-05-24 22:57:59'),
(30, '30', NULL, 2, 2, '2018-12-04 23:35:08', '2021-05-24 22:57:59'),
(31, '32', NULL, 1, 10, '2018-12-18 23:57:16', '2019-02-09 04:45:23'),
(32, '32', NULL, 2, 20, '2018-12-18 23:57:41', '2019-11-11 04:28:59'),
(33, '33', NULL, 1, 16, '2018-12-24 00:38:40', '2019-03-03 04:39:17'),
(34, '33', NULL, 2, 25, '2019-02-09 04:21:38', '2019-11-03 05:39:49'),
(35, '48', 3, 1, 6, '2019-11-25 14:23:02', '2021-05-18 02:30:48'),
(36, '48', 2, 1, 3, '2019-11-26 06:47:42', '2020-01-10 11:10:24'),
(37, '48', 3, 2, 8, '2019-11-26 08:12:08', '2021-05-24 18:03:33'),
(38, '48', 2, 2, 11, '2019-11-26 08:12:08', '2020-01-10 11:22:06'),
(39, '48', 5, 1, 1, '2019-12-21 10:18:51', '2020-01-10 11:10:24'),
(40, '48', 5, 2, 10, '2019-12-22 08:36:39', '2020-03-16 14:08:26'),
(41, '22', NULL, 13, 1, '2021-05-07 02:32:41', '2021-05-07 02:32:41'),
(42, '2', NULL, 9, 168, '2021-05-07 02:34:49', '2021-05-07 02:34:49'),
(43, '31', NULL, 10, 5, '2021-05-07 02:36:03', '2021-05-07 02:36:03'),
(44, '3', NULL, 11, 5, '2021-05-08 08:58:55', '2021-05-08 08:58:55'),
(45, '53', NULL, 12, 2, '2021-05-08 08:59:42', '2021-05-08 09:06:49'),
(46, '3', NULL, 12, 8, '2021-05-08 09:06:33', '2021-05-08 09:31:57'),
(47, '10', NULL, 12, 8, '2021-05-08 09:08:54', '2021-05-08 09:31:57'),
(48, '56', NULL, 1, 0, '2021-05-17 19:18:14', '2021-05-23 20:12:34'),
(49, '55', NULL, 2, 7, '2021-05-17 19:19:48', '2021-05-17 20:22:15'),
(50, '56', NULL, 2, 5, '2021-05-17 19:19:48', '2021-05-17 19:19:48'),
(51, '59', NULL, 1, 12, '2021-05-17 21:42:45', '2021-05-23 21:55:08'),
(52, '62', NULL, 1, 20, '2021-05-19 19:56:52', '2021-05-19 20:48:14'),
(53, '69', NULL, 1, 0, '2021-05-19 21:09:38', '2021-05-19 21:10:41'),
(54, '70', NULL, 8, 1, '2021-05-19 21:21:57', '2021-05-19 21:21:57'),
(55, '70', NULL, 2, 0, '2021-05-19 21:23:27', '2021-05-19 21:28:12'),
(56, '71', NULL, 1, 1, '2021-05-19 21:39:46', '2021-05-19 21:46:38'),
(57, '73', NULL, 8, 1, '2021-05-19 22:26:21', '2021-05-19 22:26:21'),
(58, '74', NULL, 2, 0, '2021-05-19 22:28:57', '2021-05-19 22:29:54'),
(59, '73', NULL, 1, 3, '2021-05-19 22:30:02', '2021-05-19 22:30:04'),
(60, '75', NULL, 1, 1, '2021-05-19 22:38:52', '2021-05-19 22:38:52'),
(61, '77', NULL, 2, 0, '2021-05-19 22:41:43', '2021-05-19 22:42:40'),
(62, '78', NULL, 1, 0, '2021-05-19 22:48:46', '2021-05-19 23:09:18'),
(63, '79', NULL, 2, 0, '2021-05-19 23:15:57', '2021-05-19 23:16:57'),
(64, '81', NULL, 2, 0, '2021-05-20 02:44:05', '2021-05-20 02:45:37'),
(65, '82', NULL, 10, 0, '2021-05-20 03:27:40', '2021-05-20 03:33:13'),
(66, '83', NULL, 8, 0, '2021-05-20 14:24:25', '2021-05-20 14:27:12'),
(67, '84', NULL, 2, 0, '2021-05-20 17:58:25', '2021-05-20 18:03:45'),
(68, '85', NULL, 1, 0, '2021-05-20 18:09:16', '2021-05-20 18:10:35'),
(69, '86', NULL, 10, 0, '2021-05-20 18:23:54', '2021-05-20 18:25:06'),
(70, '87', NULL, 13, 0, '2021-05-20 18:38:53', '2021-05-20 18:40:31'),
(71, '89', NULL, 12, 1, '2021-05-20 19:06:47', '2021-05-20 19:06:47'),
(72, '90', NULL, 9, 0, '2021-05-20 19:06:59', '2021-05-20 19:07:58'),
(73, '91', NULL, 10, 1, '2021-05-20 19:11:45', '2021-05-20 19:11:45'),
(74, '92', NULL, 11, 1, '2021-05-20 19:23:48', '2021-05-20 19:23:48'),
(75, '93', NULL, 1, 0, '2021-05-20 19:49:10', '2021-05-20 19:50:17'),
(76, '95', NULL, 2, 0, '2021-05-20 19:58:04', '2021-05-20 19:59:07'),
(77, '100', NULL, 9, 1, '2021-05-20 20:46:55', '2021-05-20 20:46:55'),
(78, '101', NULL, 8, 1, '2021-05-20 20:55:28', '2021-05-20 20:55:28'),
(79, '102', NULL, 7, 0, '2021-05-21 04:07:37', '2021-05-21 04:08:44'),
(80, '103', NULL, 9, 1, '2021-05-21 04:24:15', '2021-05-21 04:24:15'),
(81, '105', NULL, 2, 0, '2021-05-21 17:58:22', '2021-05-21 17:59:33'),
(82, '106', NULL, 7, -2, '2021-05-21 17:59:45', '2021-05-21 18:02:03'),
(83, '107', NULL, 8, 5, '2021-05-21 18:18:41', '2021-05-21 18:20:19'),
(84, '108', NULL, 1, 0, '2021-05-21 18:30:03', '2021-05-21 18:30:54'),
(85, '109', NULL, 1, 0, '2021-05-21 18:36:31', '2021-05-21 18:36:57'),
(86, '110', NULL, 10, 103, '2021-05-21 18:41:55', '2021-05-22 22:55:01'),
(87, '112', NULL, 10, 1, '2021-05-21 19:00:55', '2021-05-21 19:00:55'),
(88, '114', NULL, 1, 0, '2021-05-21 19:04:15', '2021-05-21 19:06:03'),
(89, '116', NULL, 8, 1, '2021-05-21 19:15:15', '2021-05-21 19:15:15'),
(90, '117', NULL, 1, 11, '2021-05-21 19:18:36', '2021-05-21 19:19:59'),
(91, '110', NULL, 1, 0, '2021-05-21 19:18:36', '2021-05-21 19:19:59'),
(92, '84', NULL, 1, 1, '2021-05-21 19:18:36', '2021-05-21 19:18:36'),
(93, '120', NULL, 7, 1, '2021-05-21 19:47:59', '2021-05-21 19:47:59'),
(94, '121', NULL, 11, 39, '2021-05-21 20:09:35', '2021-05-24 19:48:10'),
(95, '124', NULL, 19, 1, '2021-05-21 20:26:45', '2021-05-21 20:26:45'),
(96, '125', NULL, 21, 1, '2021-05-21 20:33:09', '2021-05-21 20:33:09'),
(97, '126', NULL, 1, 1, '2021-05-21 20:38:42', '2021-05-21 20:38:42'),
(98, '127', NULL, 7, 1, '2021-05-21 20:47:05', '2021-05-21 20:47:05'),
(99, '128', NULL, 13, 0, '2021-05-21 20:58:02', '2021-05-21 20:59:22'),
(100, '129', NULL, 1, 0, '2021-05-21 21:05:03', '2021-05-21 21:05:36'),
(101, '130', NULL, 8, 1, '2021-05-21 21:26:08', '2021-05-21 21:26:08'),
(102, '131', NULL, 1, 0, '2021-05-21 21:30:44', '2021-05-21 21:31:16'),
(103, '132', NULL, 2, 6, '2021-05-21 21:36:29', '2021-05-24 22:21:18'),
(104, '133', NULL, 1, 0, '2021-05-21 22:33:06', '2021-05-21 22:33:51'),
(105, '126', NULL, 8, 0, '2021-05-22 17:31:16', '2021-05-22 17:35:02'),
(106, '135', NULL, 1, 100, '2021-05-22 17:46:48', '2021-05-22 19:35:41'),
(107, '136', NULL, 7, 0, '2021-05-22 17:58:47', '2021-05-22 18:04:30'),
(108, '137', NULL, 1, 0, '2021-05-22 18:18:05', '2021-05-22 18:18:39'),
(109, '138', NULL, 8, 0, '2021-05-22 18:37:05', '2021-05-22 18:38:45'),
(110, '140', NULL, 7, 2, '2021-05-22 18:57:50', '2021-05-22 19:03:05'),
(111, '143', NULL, 10, 0, '2021-05-22 19:16:35', '2021-05-22 19:20:59'),
(112, '144', NULL, 1, 0, '2021-05-22 19:29:05', '2021-05-22 19:29:58'),
(113, '58', NULL, 8, 9, '2021-05-22 19:46:50', '2021-05-22 19:50:53'),
(114, '145', NULL, 8, 99, '2021-05-22 19:58:54', '2021-05-22 20:00:51'),
(115, '146', NULL, 9, 99, '2021-05-22 20:07:22', '2021-05-22 20:10:47'),
(116, '147', NULL, 10, 0, '2021-05-22 20:19:07', '2021-05-22 20:22:02'),
(117, '61', NULL, 1, 66, '2021-05-22 21:01:09', '2021-05-22 21:01:09'),
(118, '64', NULL, 1, 16, '2021-05-22 21:41:42', '2021-05-25 00:22:22'),
(119, '149', NULL, 1, 0, '2021-05-22 21:54:58', '2021-05-22 21:55:53'),
(120, '150', NULL, 1, 0, '2021-05-22 22:00:06', '2021-05-22 22:01:01'),
(121, '151', NULL, 11, 0, '2021-05-22 22:19:58', '2021-05-22 22:24:28'),
(122, '152', NULL, 16, 1, '2021-05-22 22:21:06', '2021-05-22 22:21:06'),
(123, '152', NULL, 2, 1, '2021-05-22 22:26:42', '2021-05-22 22:26:42'),
(124, '150', NULL, 2, 0, '2021-05-22 22:26:42', '2021-05-23 22:02:34'),
(125, '62', NULL, 2, 0, '2021-05-22 22:26:42', '2021-05-24 20:21:46'),
(126, '150', NULL, 11, 2, '2021-05-22 22:50:10', '2021-05-22 22:50:10'),
(127, '84', NULL, 11, 3, '2021-05-22 22:50:10', '2021-05-22 22:50:10'),
(128, '64', NULL, 10, 0, '2021-05-22 22:55:01', '2021-05-23 22:00:12'),
(129, '121', NULL, 10, 2, '2021-05-22 22:55:01', '2021-05-24 20:15:52'),
(130, '110', NULL, 2, -2, '2021-05-23 17:49:42', '2021-05-24 20:21:46'),
(131, '153', NULL, 12, 1, '2021-05-23 17:55:48', '2021-05-23 17:55:48'),
(132, '154', NULL, 13, 0, '2021-05-23 18:00:05', '2021-05-23 18:03:51'),
(133, '156', NULL, 13, 1, '2021-05-23 19:39:08', '2021-05-23 19:39:08'),
(134, '157', NULL, 8, 1, '2021-05-23 21:15:14', '2021-05-23 21:15:14'),
(135, '159', NULL, 1, 0, '2021-05-24 17:40:10', '2021-05-24 17:40:45'),
(136, '162', NULL, 11, 0, '2021-05-24 18:28:59', '2021-05-24 18:34:24'),
(137, '163', NULL, 10, 0, '2021-05-24 20:03:55', '2021-05-24 20:06:23'),
(138, '165', NULL, 1, 0, '2021-05-24 20:15:35', '2021-05-24 20:16:05'),
(139, '166', NULL, 12, 0, '2021-05-24 20:37:28', '2021-05-24 20:39:20'),
(140, '121', NULL, 12, 0, '2021-05-24 20:37:28', '2021-05-24 20:39:20'),
(141, '151', NULL, 12, 0, '2021-05-24 20:37:28', '2021-05-24 20:39:20'),
(142, '167', NULL, 14, 20, '2021-05-24 20:40:29', '2021-05-24 20:40:29'),
(143, '168', NULL, 15, 0, '2021-05-24 21:11:46', '2021-05-24 21:13:41'),
(144, '169', NULL, 19, 0, '2021-05-24 21:31:48', '2021-05-24 21:32:54'),
(145, '170', NULL, 2, 0, '2021-05-24 21:54:05', '2021-05-24 21:55:06'),
(146, '64', NULL, 2, 1, '2021-05-24 22:21:18', '2021-05-24 22:21:18'),
(147, '121', NULL, 2, 1, '2021-05-24 22:21:18', '2021-05-24 22:21:18'),
(148, '172', NULL, 9, 1, '2021-05-24 22:31:39', '2021-05-24 22:31:39'),
(149, '173', NULL, 35, 1, '2021-05-24 22:40:27', '2021-05-24 22:40:27'),
(150, '174', NULL, 8, 14, '2021-05-24 22:52:22', '2021-05-24 22:53:45'),
(151, '175', NULL, 1, 2, '2021-05-24 23:17:54', '2021-05-24 23:21:14'),
(152, '179', NULL, 13, 0, '2021-05-24 23:59:44', '2021-05-25 00:00:30'),
(153, '64', NULL, 76, 1, '2021-05-25 00:30:41', '2021-05-25 00:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(12, 'pr-20180808-051614', 1, 2, 3, 2, 300, 0, 0, 10200, 0, 0, 0, 0, 10200, 0, 1, 1, NULL, NULL, '2018-08-08 11:16:14', '2018-09-22 02:53:24'),
(13, 'pr-20180809-054723', 1, 2, 3, 4, 410, 0, 7304.35, 92600, 10, 9260, 0, 500, 102360, 300, 1, 1, NULL, NULL, '2018-08-08 23:47:23', '2018-08-30 03:07:18'),
(14, 'pr-20180809-012348', 1, 1, 1, 5, 400, 0, 4452.17, 75300, 10, 7480, 500, 1000, 83280, 0, 1, 1, NULL, NULL, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(15, 'pr-20180903-100609', 1, 1, 1, 1, 20, 0, 1600, 17600, 0, 0, 0, 100, 17700, 0, 1, 1, NULL, NULL, '2018-09-03 04:06:09', '2018-10-07 22:11:24'),
(16, 'pr-20180903-100714', 1, 2, 3, 1, 20, 0, 1600, 17600, 0, 0, 0, 150, 17750, 3350, 1, 1, NULL, NULL, '2018-09-03 04:07:14', '2018-10-07 00:57:36'),
(18, 'pr-20181022-042625', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(19, 'pr-20181022-042652', 1, 2, 3, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(20, 'pr-20181023-071420', 11, 1, 1, 1, 15, 0, 750, 8250, 0, 0, NULL, NULL, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 01:14:20', '2018-10-23 01:14:20'),
(21, 'pr-20181023-071441', 11, 2, 3, 1, 15, 0, 750, 8250, 0, 0, 0, 0, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 01:14:41', '2018-10-23 01:14:58'),
(22, 'pr-20181101-045903', 1, 1, 1, 1, 5, 0, 400, 4400, 0, 0, NULL, NULL, 4400, 0, 1, 1, NULL, NULL, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(23, 'pr-20181101-045928', 1, 2, 3, 1, 5, 0, 400, 4400, 10, 430, 100, 0, 4730, 500, 1, 1, NULL, NULL, '2018-10-31 22:59:28', '2018-12-04 01:01:34'),
(24, 'pr-20181105-091819', 1, 2, 1, 2, 20, 0, 1450, 15950, 0, 0, NULL, NULL, 15950, 15950, 1, 2, NULL, NULL, '2018-11-05 03:18:19', '2018-11-05 03:21:27'),
(25, 'pr-20181205-053429', 1, 1, 1, 2, 30, 0, 0, 4500, 0, 0, 100, 50, 4450, 4450, 1, 2, NULL, NULL, '2018-12-04 23:34:29', '2018-12-04 23:34:43'),
(26, 'pr-20181205-053508', 1, 2, 3, 2, 30, 0, 0, 4500, 0, 0, NULL, NULL, 4500, 0, 1, 1, NULL, NULL, '2018-12-04 23:35:08', '2018-12-10 00:20:52'),
(27, 'pr-20181219-055716', 1, 2, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 10, 1, 2, NULL, NULL, '2018-12-18 23:57:16', '2018-12-20 00:34:39'),
(33, 'pr-20181224-063840', 1, 1, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, NULL, NULL, '2018-12-24 00:38:40', '2018-12-24 03:04:21'),
(34, 'pr-20190103-070123', 1, 1, 1, 2, 4, 0, 260, 2860, 0, 0, NULL, NULL, 2860, 2860, 1, 2, NULL, NULL, '2019-01-03 01:01:23', '2019-01-29 04:03:24'),
(35, 'pr-20190129-095448', 9, 1, 1, 2, 4, 0, 0, 600, 0, 0, NULL, NULL, 600, 100, 1, 1, NULL, NULL, '2019-01-29 03:54:48', '2019-02-07 07:06:40'),
(36, 'pr-20190129-095558', 9, 2, 1, 2, 5, 0, 0, 650, 0, 0, NULL, NULL, 650, 650, 1, 2, NULL, NULL, '2019-01-29 03:55:58', '2019-01-29 04:03:02'),
(37, 'pr-20190209-102138', 1, 2, 1, 3, 18, 0, 580, 6390, 0, 0, 0, 0, 6390, 6390, 1, 2, NULL, NULL, '2019-02-09 04:21:38', '2019-06-13 04:13:51'),
(38, 'pr-20190209-102208', 1, 1, 1, 2, 13, 0, 150, 1660, 0, 0, 0, 0, 1660, 1660, 1, 2, NULL, NULL, '2019-02-09 04:22:08', '2019-02-09 04:49:40'),
(39, 'pr-20190209-104413', 1, 1, 1, 2, 3, 10, 63, 885, 10, 88.5, NULL, NULL, 973.5, 973.5, 1, 2, NULL, NULL, '2019-02-09 04:44:13', '2019-02-09 04:49:59'),
(40, 'pr-20190303-103917', 1, 1, 1, 1, 10, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2019-03-03 04:39:17', '2019-03-03 04:40:46'),
(41, 'pr-20190303-104358', 1, 2, NULL, 2, 15, 0, 320, 3570, 0, 0, NULL, NULL, 3570, 1000, 1, 1, NULL, NULL, '2019-03-03 04:43:58', '2019-04-13 11:02:41'),
(42, 'pr-20190404-095757', 1, 1, 3, 2, 2, 0, 0, 300, 0, 0, 0, 0, 300, 300, 1, 2, NULL, NULL, '2019-04-04 03:57:57', '2019-04-13 13:50:08'),
(43, 'pr-20190613-101600', 1, 2, 1, 2, 6, 0, 390, 4290, 0, 0, NULL, NULL, 4290, 4290, 1, 2, NULL, NULL, '2019-06-13 04:16:00', '2019-10-19 09:29:25'),
(44, 'pr-20191019-033119', 1, 2, 3, 2, 2, 0, 130, 1430, 0, 0, NULL, NULL, 1430, 0, 1, 1, NULL, NULL, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(46, 'pr-20191103-113949', 1, 2, 3, 2, 20, 0, 0, 150, 0, 0, NULL, 50, 200, 200, 1, 2, NULL, NULL, '2019-11-03 05:39:49', '2019-11-03 05:42:22'),
(47, 'pr-20191109-112510', 1, 1, NULL, 2, 3, 10, 63, 885, 0, 0, NULL, 66, 951, 0, 1, 1, NULL, NULL, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(48, 'pr-20191110-070221', 1, 2, NULL, 1, 100, 0, 0, 100, 0, 0, NULL, 40, 140, 0, 1, 1, NULL, NULL, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(49, 'pr-20191111-102155', 1, 2, 1, 1, 10, 0, 800, 8800, 0, 0, 0, 50, 8850, 7000, 1, 1, NULL, NULL, '2019-11-11 04:21:55', '2020-01-01 08:22:25'),
(55, 'pr-20191127-102835', 1, 1, NULL, 2, 2, 0, 0, 4, 0, 0, NULL, NULL, 4, 4, 1, 2, NULL, NULL, '2019-11-27 16:28:35', '2020-01-01 08:21:52'),
(56, 'pr-20191127-102906', 1, 2, NULL, 1, 1, 0, 0, 2, 0, 0, 0, 0, 2, 2, 1, 2, NULL, NULL, '2019-11-27 16:29:06', '2020-01-01 08:21:44'),
(57, 'pr-20191204-110749', 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, NULL, 20, 220, 220, 1, 2, NULL, NULL, '2019-12-04 17:07:49', '2019-12-04 17:11:24'),
(58, 'pr-20191205-102110', 1, 1, 1, 2, 2, 0, 0, 4, 0, 0, 0, 0, 4, 4, 1, 2, NULL, NULL, '2019-12-05 04:21:10', '2020-01-01 08:21:37'),
(59, 'pr-20191221-041851', 1, 1, NULL, 3, 3, 0, 0, 6, 0, 0, 0, 0, 6, 6, 1, 2, NULL, NULL, '2019-12-21 10:18:51', '2020-01-01 08:21:31'),
(61, 'pr-20200101-010631', 1, 2, 1, 3, 30, 0, 0, 60, 0, 0, NULL, NULL, 60, 60, 1, 2, NULL, NULL, '2020-01-01 07:06:31', '2020-01-01 07:07:50'),
(62, 'pr-20200101-022402', 1, 2, NULL, 1, 3, 0, 150, 1650, 0, 0, NULL, NULL, 1650, 0, 1, 1, NULL, NULL, '2020-01-01 08:24:02', '2020-01-01 08:24:02'),
(67, 'pr-20200204-110041', 1, 2, 1, 2, 2, 0, 0, 300, 0, 0, NULL, NULL, 300, 300, 1, 2, NULL, NULL, '2020-02-04 17:00:41', '2020-02-04 17:00:50'),
(69, 'pr-20200302-115510', 1, 2, NULL, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 50, 1, 2, NULL, NULL, '2020-03-02 05:55:10', '2020-03-02 05:58:20'),
(70, 'pr-20200302-115603', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 50, 1, 2, NULL, NULL, '2020-03-02 05:56:03', '2020-03-02 05:58:11'),
(71, 'pr-20200406-073512', 1, 2, 3, 3, 11, 0, 150, 3050, 10, 305, NULL, NULL, 3355, 2000, 1, 1, NULL, NULL, '2020-04-06 13:35:12', '2020-04-06 13:38:23'),
(72, 'pr-20210506-083241', 1, 13, NULL, 1, 1, 0, 80, 880, 0, 0, NULL, NULL, 880, 0, 1, 1, NULL, NULL, '2021-05-07 02:32:41', '2021-05-07 02:32:41'),
(73, 'pr-20210506-083449', 1, 9, 1, 1, 7, 0, 175.3, 1344, 0, 0, NULL, NULL, 1344, 1344, 1, 2, NULL, NULL, '2021-05-07 02:34:49', '2021-05-07 02:37:35'),
(74, 'pr-20210506-083603', 1, 10, NULL, 1, 5, 0, 0, 1250, 0, 0, NULL, NULL, 1250, 1250, 1, 2, NULL, NULL, '2021-05-07 02:36:03', '2021-05-07 02:36:25'),
(75, 'pr-20210508-015855', 1, 11, NULL, 1, 5, 0, 0, 1000, 0, 0, NULL, NULL, 1000, 1000, 1, 2, NULL, NULL, '2021-05-08 08:58:55', '2021-05-08 08:59:07'),
(76, 'pr-20210508-015942', 1, 12, NULL, 1, 3, 0, 0, 360, 0, 0, NULL, NULL, 360, 360, 1, 2, NULL, NULL, '2021-05-08 08:59:42', '2021-05-08 09:00:00'),
(77, 'pr-20210508-020633', 1, 12, NULL, 1, 12, 0, 0, 2400, 0, 0, NULL, NULL, 2400, 2400, 1, 2, NULL, NULL, '2021-05-08 09:06:33', '2021-05-08 09:06:44'),
(78, 'pr-20210508-020854', 1, 12, 1, 1, 10, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2021-05-08 09:08:54', '2021-05-08 09:09:05'),
(79, 'pr-20210517-121814', 1, 1, 1, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 0, 1, 1, NULL, NULL, '2021-05-17 19:18:14', '2021-05-17 19:18:14'),
(80, 'pr-20210517-121948', 1, 2, 3, 2, 15, 0, 0, 1500, 0, 0, NULL, NULL, 1500, 1500, 1, 2, NULL, NULL, '2021-05-17 19:19:48', '2021-05-17 19:20:34'),
(81, 'pr-20210517-122454', 1, 2, 1, 1, 2, 0, 0, 200, 0, 0, NULL, NULL, 200, 200, 1, 2, NULL, NULL, '2021-05-17 19:24:54', '2021-05-17 19:25:16'),
(82, 'pr-20210517-024245', 1, 1, 1, 1, 11, 0, 0, 1100, 0, 0, NULL, NULL, 1100, 1100, 1, 2, NULL, NULL, '2021-05-17 21:42:45', '2021-05-17 21:43:05'),
(83, 'pr-20210517-073048', 1, 1, NULL, 1, 4, 0, 0, 8, 0, 0, NULL, NULL, 8, 8, 1, 2, NULL, NULL, '2021-05-18 02:30:48', '2021-05-18 02:41:19'),
(84, 'pr-20210519-125652', 1, 1, 1, 1, 1, 0, 0, 2500, 0, 0, NULL, NULL, 2500, 2500, 1, 2, NULL, NULL, '2021-05-19 19:56:52', '2021-05-19 20:08:51'),
(85, 'pr-20210519-011054', 1, 1, 3, 1, 2, 0, 0, 5000, 0, 0, NULL, NULL, 5000, 5000, 1, 2, NULL, NULL, '2021-05-19 20:10:54', '2021-05-19 20:17:18'),
(86, 'pr-20210519-012058', 1, 1, 3, 1, 2, 0, 0, 5000, 0, 0, NULL, NULL, 5000, 0, 1, 1, NULL, NULL, '2021-05-19 20:20:58', '2021-05-19 20:20:58'),
(87, 'pr-20210519-012116', 1, 1, 3, 1, 2, 0, 0, 5000, 0, 0, NULL, NULL, 5000, 0, 1, 1, NULL, NULL, '2021-05-19 20:21:16', '2021-05-19 20:21:16'),
(88, 'pr-20210519-013207', 1, 1, 1, 1, 21, 0, 0, 52500, 0, 0, NULL, NULL, 52500, 0, 1, 1, NULL, NULL, '2021-05-19 20:32:07', '2021-05-19 20:32:07'),
(89, 'pr-20210519-020938', 1, 1, 1, 1, 1, 0, 0, 2500, 0, 0, NULL, NULL, 2500, 0, 1, 1, NULL, NULL, '2021-05-19 21:09:38', '2021-05-19 21:09:38'),
(90, 'pr-20210519-022157', 1, 8, 3, 1, 1, 0, 0, 555, 0, 0, NULL, NULL, 555, 0, 1, 1, NULL, NULL, '2021-05-19 21:21:57', '2021-05-19 21:21:57'),
(91, 'pr-20210519-022327', 1, 2, 3, 1, 1, 0, 0, 555, 0, 0, NULL, NULL, 555, 0, 1, 1, NULL, NULL, '2021-05-19 21:23:27', '2021-05-19 21:23:27'),
(92, 'pr-20210519-023946', 1, 1, NULL, 1, 1, 0, 0, 5554, 0, 0, NULL, NULL, 5554, 0, 1, 1, NULL, NULL, '2021-05-19 21:39:46', '2021-05-19 21:39:46'),
(93, 'pr-20210519-024251', 1, 1, 1, 1, 1, 0, 0, 5554, 0, 0, NULL, NULL, 5554, 0, 1, 1, NULL, NULL, '2021-05-19 21:42:51', '2021-05-19 21:42:51'),
(94, 'pr-20210519-032621', 1, 8, NULL, 1, 1, 0, 0, 1700, 0, 0, NULL, NULL, 1700, 0, 1, 1, NULL, NULL, '2021-05-19 22:26:21', '2021-05-19 22:26:21'),
(95, 'pr-20210519-032857', 1, 2, 1, 1, 1, 0, 0, 3000, 0, 0, NULL, NULL, 3000, 0, 1, 1, NULL, NULL, '2021-05-19 22:28:57', '2021-05-19 22:28:57'),
(96, 'pr-20210519-033002', 1, 1, NULL, 1, 1, 0, 0, 1700, 0, 0, NULL, NULL, 1700, 0, 1, 1, NULL, NULL, '2021-05-19 22:30:02', '2021-05-19 22:30:02'),
(97, 'pr-20210519-033003', 1, 1, NULL, 1, 1, 0, 0, 1700, 0, 0, NULL, NULL, 1700, 0, 1, 1, NULL, NULL, '2021-05-19 22:30:03', '2021-05-19 22:30:03'),
(98, 'pr-20210519-033004', 1, 1, NULL, 1, 1, 0, 0, 1700, 0, 0, NULL, NULL, 1700, 0, 1, 1, NULL, NULL, '2021-05-19 22:30:04', '2021-05-19 22:30:04'),
(99, 'pr-20210519-033852', 1, 1, NULL, 1, 1, 0, 0, 5555, 0, 0, NULL, NULL, 5555, 0, 1, 1, NULL, NULL, '2021-05-19 22:38:52', '2021-05-19 22:38:52'),
(100, 'pr-20210519-034143', 1, 2, 1, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 0, 1, 1, NULL, NULL, '2021-05-19 22:41:43', '2021-05-19 22:41:43'),
(101, 'pr-20210519-034846', 1, 1, NULL, 1, 1, 0, 0, 7894, 0, 0, NULL, NULL, 7894, 0, 1, 1, NULL, NULL, '2021-05-19 22:48:46', '2021-05-19 22:48:46'),
(102, 'pr-20210519-040731', 1, 1, 1, 1, 1, 0, 0, 7894, 0, 0, NULL, NULL, 7894, 0, 1, 1, NULL, NULL, '2021-05-19 23:07:31', '2021-05-19 23:07:31'),
(103, 'pr-20210519-041557', 1, 2, 3, 1, 1, 0, 0, 788, 0, 0, NULL, NULL, 788, 0, 1, 1, NULL, NULL, '2021-05-19 23:15:57', '2021-05-19 23:15:57'),
(104, 'pr-20210519-074405', 1, 2, 1, 1, 1, 0, 0, 12000, 0, 0, NULL, NULL, 12000, 0, 1, 1, NULL, NULL, '2021-05-20 02:44:05', '2021-05-20 02:44:05'),
(105, 'pr-20210519-082740', 1, 10, 3, 1, 1, 0, 0, 560, 0, 0, NULL, NULL, 560, 0, 1, 1, NULL, NULL, '2021-05-20 03:27:40', '2021-05-20 03:27:40'),
(106, 'pr-20210520-072425', 1, 8, 3, 1, 1, 0, 0, 1000, 0, 0, NULL, NULL, 1000, 5000, 1, 1, NULL, NULL, '2021-05-20 14:24:25', '2021-05-20 14:30:00'),
(107, 'pr-20210520-105825', 1, 2, NULL, 1, 1, 0, 0, 750, 0, 0, NULL, NULL, 750, 0, 1, 1, NULL, NULL, '2021-05-20 17:58:25', '2021-05-20 17:58:25'),
(108, 'pr-20210520-110916', 1, 1, 1, 1, 1, 0, 0, 677, 0, 0, NULL, NULL, 677, 0, 1, 1, NULL, NULL, '2021-05-20 18:09:16', '2021-05-20 18:09:16'),
(109, 'pr-20210520-112354', 1, 10, 1, 1, 1, 0, 0, 545, 0, 0, NULL, NULL, 545, 0, 1, 1, NULL, NULL, '2021-05-20 18:23:54', '2021-05-20 18:23:54'),
(110, 'pr-20210520-113853', 1, 13, 1, 1, 1, 0, 0, 850, 0, 0, NULL, NULL, 850, 0, 1, 1, NULL, NULL, '2021-05-20 18:38:53', '2021-05-20 18:38:53'),
(111, 'pr-20210520-120647', 1, 12, NULL, 1, 1, 0, 0, 450, 0, 0, NULL, NULL, 450, 0, 1, 1, NULL, NULL, '2021-05-20 19:06:47', '2021-05-20 19:06:47'),
(112, 'pr-20210520-120659', 1, 9, 1, 1, 1, 0, 0, 1500, 0, 0, NULL, NULL, 1500, 0, 1, 1, NULL, NULL, '2021-05-20 19:06:59', '2021-05-20 19:06:59'),
(113, 'pr-20210520-121145', 1, 10, 1, 1, 1, 0, 0, 4556, 0, 0, NULL, NULL, 4556, 0, 1, 1, NULL, NULL, '2021-05-20 19:11:45', '2021-05-20 19:11:45'),
(114, 'pr-20210520-122348', 1, 11, NULL, 1, 1, 0, 0, 4556, 0, 0, NULL, NULL, 4556, 0, 1, 1, NULL, NULL, '2021-05-20 19:23:48', '2021-05-20 19:23:48'),
(115, 'pr-20210520-124909', 1, 1, 1, 1, 1, 0, 0, 5555, 0, 0, NULL, NULL, 5555, 0, 1, 1, NULL, NULL, '2021-05-20 19:49:09', '2021-05-20 19:49:09'),
(116, 'pr-20210520-125804', 1, 2, 1, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 0, 1, 1, NULL, NULL, '2021-05-20 19:58:04', '2021-05-20 19:58:04'),
(117, 'pr-20210520-014655', 1, 9, 1, 1, 2, 0, 0, 1700, 0, 0, NULL, NULL, 1700, 0, 1, 1, NULL, NULL, '2021-05-20 20:46:55', '2021-05-20 20:46:55'),
(118, 'pr-20210520-015528', 1, 8, 1, 1, 1, 0, 0, 110, 0, 0, NULL, NULL, 110, 0, 1, 1, NULL, NULL, '2021-05-20 20:55:28', '2021-05-20 20:55:28'),
(119, 'pr-20210520-090737', 1, 7, 3, 1, 1, 0, 0, 15000, 0, 0, NULL, NULL, 15000, 0, 1, 1, NULL, NULL, '2021-05-21 04:07:37', '2021-05-21 04:07:37'),
(120, 'pr-20210520-092414', 1, 9, 1, 1, 1, 0, 0, 775, 0, 0, NULL, NULL, 775, 0, 1, 1, NULL, NULL, '2021-05-21 04:24:14', '2021-05-21 04:24:14'),
(121, 'pr-20210521-105822', 1, 2, 3, 1, 1, 0, 0, 25000, 0, 0, NULL, NULL, 25000, 0, 1, 1, NULL, NULL, '2021-05-21 17:58:22', '2021-05-21 17:58:22'),
(122, 'pr-20210521-105945', 1, 7, 1, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 0, 1, 1, NULL, NULL, '2021-05-21 17:59:45', '2021-05-21 17:59:45'),
(123, 'pr-20210521-111841', 1, 8, NULL, 1, 6, 0, 0, 2700, 0, 0, NULL, NULL, 2700, 0, 1, 1, NULL, NULL, '2021-05-21 18:18:41', '2021-05-21 18:18:41'),
(124, 'pr-20210521-113003', 1, 1, 3, 1, 1, 0, 0, 555, 0, 0, NULL, NULL, 555, 0, 1, 1, NULL, NULL, '2021-05-21 18:30:03', '2021-05-21 18:30:03'),
(125, 'pr-20210521-113631', 1, 1, 1, 1, 1, 0, 0, 5555, 0, 0, NULL, NULL, 5555, 0, 1, 1, NULL, NULL, '2021-05-21 18:36:31', '2021-05-21 18:36:31'),
(126, 'pr-20210521-114154', 1, 10, 1, 1, 1, 0, 0, 780, 0, 0, NULL, NULL, 780, 0, 1, 1, NULL, NULL, '2021-05-21 18:41:54', '2021-05-21 18:41:54'),
(127, 'pr-20210521-120055', 1, 10, 1, 1, 1, 0, 0, 454, 0, 0, NULL, NULL, 454, 0, 1, 1, NULL, NULL, '2021-05-21 19:00:55', '2021-05-21 19:00:55'),
(128, 'pr-20210521-120415', 1, 1, 1, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 0, 1, 1, NULL, NULL, '2021-05-21 19:04:15', '2021-05-21 19:04:15'),
(129, 'pr-20210521-121515', 1, 8, 1, 1, 2, 0, 0, 19190, 0, 0, NULL, NULL, 19190, 0, 1, 1, NULL, NULL, '2021-05-21 19:15:15', '2021-05-21 19:15:15'),
(130, 'pr-20210521-121836', 1, 1, 1, 4, 15, 0, 0, 8020, 0, 0, NULL, NULL, 8020, 0, 1, 1, NULL, NULL, '2021-05-21 19:18:36', '2021-05-21 19:18:36'),
(131, 'pr-20210521-124759', 1, 7, 1, 1, 1, 0, 0, 200, 0, 0, NULL, NULL, 200, 0, 1, 1, NULL, NULL, '2021-05-21 19:47:59', '2021-05-21 19:47:59'),
(132, 'pr-20210521-010935', 1, 11, 1, 1, 1, 0, 0, 500, 0, 0, NULL, NULL, 500, 0, 1, 1, NULL, NULL, '2021-05-21 20:09:35', '2021-05-21 20:09:35'),
(133, 'pr-20210521-012645', 1, 19, 1, 1, 1, 0, 0, 600, 0, 0, NULL, NULL, 600, 0, 1, 1, NULL, NULL, '2021-05-21 20:26:45', '2021-05-21 20:26:45'),
(134, 'pr-20210521-013309', 1, 21, 3, 1, 1, 0, 0, 21, 0, 0, NULL, NULL, 21, 0, 1, 1, NULL, NULL, '2021-05-21 20:33:09', '2021-05-21 20:33:09'),
(135, 'pr-20210521-013842', 1, 1, 3, 1, 1, 0, 0, 363, 0, 0, NULL, NULL, 363, 0, 1, 1, NULL, NULL, '2021-05-21 20:38:42', '2021-05-21 20:38:42'),
(136, 'pr-20210521-014705', 1, 7, 3, 1, 1, 0, 0, 650, 0, 0, NULL, NULL, 650, 0, 1, 1, NULL, NULL, '2021-05-21 20:47:05', '2021-05-21 20:47:05'),
(137, 'pr-20210521-015802', 1, 13, 3, 1, 1, 0, 0, 250, 0, 0, NULL, NULL, 250, 0, 1, 1, NULL, NULL, '2021-05-21 20:58:02', '2021-05-21 20:58:02'),
(138, 'pr-20210521-020503', 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, NULL, NULL, 200, 0, 1, 1, NULL, NULL, '2021-05-21 21:05:03', '2021-05-21 21:05:03'),
(139, 'pr-20210521-022608', 1, 8, 3, 1, 1, 0, 0, 500, 0, 0, NULL, NULL, 500, 0, 1, 1, NULL, NULL, '2021-05-21 21:26:08', '2021-05-21 21:26:08'),
(140, 'pr-20210521-023043', 1, 1, 1, 1, 1, 0, 0, 900, 0, 0, NULL, NULL, 900, 0, 1, 1, NULL, NULL, '2021-05-21 21:30:43', '2021-05-21 21:30:43'),
(141, 'pr-20210521-023629', 1, 2, 3, 1, 1, 0, 0, 55, 0, 0, NULL, NULL, 55, 0, 1, 1, NULL, NULL, '2021-05-21 21:36:29', '2021-05-21 21:36:29'),
(142, 'pr-20210521-023735', 1, 2, 3, 1, 1, 0, 0, 55, 0, 0, NULL, NULL, 55, 0, 1, 1, NULL, NULL, '2021-05-21 21:37:35', '2021-05-21 21:37:35'),
(143, 'pr-20210521-023758', 1, 2, 3, 1, 1, 0, 0, 55, 0, 0, NULL, NULL, 55, 0, 1, 1, NULL, NULL, '2021-05-21 21:37:58', '2021-05-21 21:37:58'),
(144, 'pr-20210521-023802', 1, 2, 3, 1, 1, 0, 0, 55, 0, 0, NULL, NULL, 55, 0, 1, 1, NULL, NULL, '2021-05-21 21:38:02', '2021-05-21 21:38:02'),
(145, 'pr-20210521-023803', 1, 2, 3, 1, 1, 0, 0, 55, 0, 0, NULL, NULL, 55, 0, 1, 1, NULL, NULL, '2021-05-21 21:38:03', '2021-05-21 21:38:03'),
(146, 'pr-20210521-033306', 1, 1, 1, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 0, 1, 1, NULL, NULL, '2021-05-21 22:33:06', '2021-05-21 22:33:06'),
(147, 'pr-20210522-103116', 1, 8, 1, 1, 1, 0, 0, 363, 0, 0, NULL, NULL, 363, 0, 1, 1, NULL, NULL, '2021-05-22 17:31:16', '2021-05-22 17:31:16'),
(148, 'pr-20210522-104648', 1, 1, NULL, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 0, 1, 1, NULL, NULL, '2021-05-22 17:46:48', '2021-05-22 17:46:48'),
(149, 'pr-20210522-105847', 1, 7, 1, 1, 1, 0, 0, 750, 0, 0, NULL, NULL, 750, 0, 1, 1, NULL, NULL, '2021-05-22 17:58:47', '2021-05-22 17:58:47'),
(150, 'pr-20210522-111805', 1, 1, 1, 1, 1, 0, 0, 1000, 0, 0, NULL, NULL, 1000, 0, 1, 1, NULL, NULL, '2021-05-22 18:18:05', '2021-05-22 18:18:05'),
(151, 'pr-20210522-113705', 1, 8, 3, 1, 1, 0, 0, 100000, 0, 0, NULL, NULL, 100000, 0, 1, 1, NULL, NULL, '2021-05-22 18:37:05', '2021-05-22 18:37:05'),
(152, 'pr-20210522-115750', 1, 7, 3, 1, 1, 0, 0, 8000, 0, 0, NULL, NULL, 8000, 0, 1, 1, NULL, NULL, '2021-05-22 18:57:50', '2021-05-22 18:57:50'),
(153, 'pr-20210522-120305', 1, 7, 1, 1, 1, 0, 0, 8000, 0, 0, NULL, NULL, 8000, 0, 1, 1, NULL, NULL, '2021-05-22 19:03:05', '2021-05-22 19:03:05'),
(154, 'pr-20210522-121635', 1, 10, 3, 1, 1, 0, 0, 500000, 0, 0, NULL, NULL, 500000, 0, 1, 1, NULL, NULL, '2021-05-22 19:16:35', '2021-05-22 19:16:35'),
(155, 'pr-20210522-122905', 1, 1, 1, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 0, 1, 1, NULL, NULL, '2021-05-22 19:29:05', '2021-05-22 19:29:05'),
(156, 'pr-20210522-123541', 1, 1, NULL, 1, 100, 0, 0, 120000, 0, 0, NULL, NULL, 120000, 120000, 1, 2, NULL, NULL, '2021-05-22 19:35:41', '2021-05-22 19:36:00'),
(157, 'pr-20210522-124650', 1, 8, NULL, 1, 10, 0, 0, 7770, 0, 0, NULL, NULL, 7770, 7770, 1, 2, NULL, NULL, '2021-05-22 19:46:50', '2021-05-22 19:47:17'),
(158, 'pr-20210522-125854', 1, 8, NULL, 1, 100, 0, 0, 120000, 0, 0, NULL, NULL, 120000, 120000, 1, 2, NULL, NULL, '2021-05-22 19:58:54', '2021-05-22 19:59:09'),
(159, 'pr-20210522-010722', 1, 9, 1, 1, 100, 0, 0, 75000, 0, 0, NULL, NULL, 75000, 75000, 1, 2, NULL, NULL, '2021-05-22 20:07:22', '2021-05-22 20:08:57'),
(160, 'pr-20210522-011907', 1, 10, NULL, 1, 1, 0, 0, 500, 0, 0, NULL, NULL, 500, 500, 1, 2, NULL, NULL, '2021-05-22 20:19:07', '2021-05-22 22:16:08'),
(161, 'pr-20210522-014120', 1, 10, NULL, 1, 100, 0, 0, 78000, 0, 0, NULL, NULL, 78000, 78000, 1, 2, NULL, NULL, '2021-05-22 20:41:20', '2021-05-22 22:15:58'),
(162, 'pr-20210522-015850', 1, 11, NULL, 1, 40, 0, 0, 20000, 0, 0, NULL, NULL, 20000, 20000, 1, 2, NULL, NULL, '2021-05-22 20:58:50', '2021-05-22 20:59:11'),
(163, 'pr-20210522-020109', 1, 1, NULL, 1, 66, 0, 0, 2178, 0, 0, NULL, NULL, 2178, 2178, 1, 2, NULL, NULL, '2021-05-22 21:01:09', '2021-05-22 21:01:37'),
(164, 'pr-20210522-024142', 1, 1, 1, 1, 25, 0, 0, 2500, 0, 0, NULL, NULL, 2500, 2500, 1, 2, NULL, NULL, '2021-05-22 21:41:42', '2021-05-22 21:41:51'),
(165, 'pr-20210522-025458', 1, 1, 1, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 120, 1, 2, NULL, NULL, '2021-05-22 21:54:58', '2021-05-22 21:55:08'),
(166, 'pr-20210522-030006', 1, 1, 3, 1, 1, 0, 0, 1500, 0, 0, NULL, NULL, 1500, 1500, 1, 2, NULL, NULL, '2021-05-22 22:00:06', '2021-05-22 22:00:17'),
(167, 'pr-20210522-031958', 1, 11, NULL, 1, 1, 0, 0, 522, 0, 0, NULL, NULL, 522, 522, 1, 2, NULL, NULL, '2021-05-22 22:19:58', '2021-05-22 22:27:01'),
(168, 'pr-20210522-032106', 1, 16, 1, 1, 1, 0, 0, 1500, 0, 0, NULL, NULL, 1500, 1500, 1, 2, NULL, NULL, '2021-05-22 22:21:06', '2021-05-22 22:21:14'),
(169, 'pr-20210522-032642', 1, 2, 1, 3, 3, 0, 0, 5500, 0, 0, NULL, NULL, 5500, 5500, 1, 2, NULL, NULL, '2021-05-22 22:26:42', '2021-05-22 22:26:53'),
(170, 'pr-20210522-035010', 1, 11, 3, 3, 7, 0, 0, 6250, 0, 0, NULL, NULL, 6250, 6250, 1, 2, NULL, NULL, '2021-05-22 22:50:10', '2021-05-22 22:50:29'),
(171, 'pr-20210522-035501', 1, 10, NULL, 3, 9, 0, 0, 4140, 0, 0, NULL, NULL, 4140, 0, 1, 1, NULL, NULL, '2021-05-22 22:55:01', '2021-05-22 22:55:01'),
(172, 'pr-20210522-084015', 1, 1, 3, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2021-05-23 03:40:15', '2021-05-23 03:40:31'),
(173, 'pr-20210522-084658', 1, 1, 1, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2021-05-23 03:46:58', '2021-05-23 03:47:16'),
(174, 'pr-20210523-104942', 1, 2, 1, 3, 3, 0, 15.76, 1784, 0, 0, NULL, NULL, 1784, 1784, 1, 2, NULL, NULL, '2021-05-23 17:49:42', '2021-05-23 17:49:54'),
(175, 'pr-20210523-105548', 1, 12, 3, 1, 1, 0, 0, 70000, 0, 0, NULL, NULL, 70000, 70000, 1, 2, NULL, NULL, '2021-05-23 17:55:48', '2021-05-24 21:37:38'),
(176, 'pr-20210523-110005', 1, 13, 1, 1, 1, 0, 0, 350, 0, 0, NULL, NULL, 350, 350, 1, 2, NULL, NULL, '2021-05-23 18:00:05', '2021-05-23 18:00:36'),
(177, 'pr-20210523-123908', 1, 13, NULL, 1, 1, 0, 0, 140, 0, 0, NULL, NULL, 140, 140, 1, 2, NULL, NULL, '2021-05-23 19:39:08', '2021-05-24 21:37:20'),
(178, 'pr-20210523-021514', 1, 8, NULL, 1, 1, 0, 0, 150, 0, 0, NULL, NULL, 150, 150, 1, 2, NULL, NULL, '2021-05-23 21:15:14', '2021-05-24 21:37:05'),
(179, 'pr-20210523-025508', 1, 1, 1, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2021-05-23 21:55:08', '2021-05-23 21:55:23'),
(180, 'pr-20210524-104010', 1, 1, 3, 1, 1, 0, 0, 1200, 0, 0, NULL, NULL, 1200, 1200, 1, 2, NULL, NULL, '2021-05-24 17:40:10', '2021-05-24 17:40:18'),
(181, 'pr-20210524-112859', 1, 11, NULL, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 120, 1, 2, NULL, NULL, '2021-05-24 18:28:59', '2021-05-24 18:44:34'),
(182, 'pr-20210524-010355', 1, 10, NULL, 1, 1, 0, 0, 1050, 0, 0, NULL, NULL, 1050, 1050, 1, 2, NULL, NULL, '2021-05-24 20:03:55', '2021-05-24 21:36:57'),
(183, 'pr-20210524-011535', 1, 1, 1, 1, 1, 0, 0, 2000, 0, 0, NULL, NULL, 2000, 2000, 1, 2, NULL, NULL, '2021-05-24 20:15:35', '2021-05-24 20:15:42'),
(184, 'pr-20210524-013727', 1, 12, 3, 3, 3, 0, 0, 2872, 0, 0, NULL, NULL, 2872, 2872, 1, 2, NULL, NULL, '2021-05-24 20:37:27', '2021-05-24 21:36:48'),
(185, 'pr-20210524-014029', 1, 14, 3, 1, 20, 0, 0, 60000, 0, 0, NULL, NULL, 60000, 60000, 1, 2, NULL, NULL, '2021-05-24 20:40:29', '2021-05-24 20:40:38'),
(186, 'pr-20210524-021146', 1, 15, 1, 1, 1, 0, 0, 2000, 0, 0, NULL, NULL, 2000, 2000, 1, 2, NULL, NULL, '2021-05-24 21:11:46', '2021-05-24 21:12:06'),
(187, 'pr-20210524-023148', 1, 19, 1, 1, 1, 0, 0, 30000, 0, 0, NULL, NULL, 30000, 30000, 1, 2, NULL, NULL, '2021-05-24 21:31:48', '2021-05-24 21:32:01'),
(188, 'pr-20210524-025405', 1, 2, 1, 1, 1, 0, 0, 2500, 0, 0, NULL, NULL, 2500, 2500, 1, 2, NULL, NULL, '2021-05-24 21:54:05', '2021-05-24 21:54:15'),
(189, 'pr-20210524-032118', 1, 2, NULL, 3, 3, 0, 0, 655, 0, 0, NULL, NULL, 655, 0, 1, 1, NULL, NULL, '2021-05-24 22:21:18', '2021-05-24 22:21:18'),
(190, 'pr-20210524-033139', 1, 9, NULL, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 0, 1, 1, NULL, NULL, '2021-05-24 22:31:39', '2021-05-24 22:31:39'),
(191, 'pr-20210524-034027', 1, 35, 1, 1, 1, 0, 0, 8200, 0, 0, NULL, NULL, 8200, 8200, 1, 2, NULL, NULL, '2021-05-24 22:40:27', '2021-05-24 22:40:37'),
(192, 'pr-20210524-035222', 1, 8, 1, 1, 20, 0, 0, 180000, 0, 0, NULL, NULL, 180000, 0, 1, 1, NULL, NULL, '2021-05-24 22:52:22', '2021-05-24 22:52:22'),
(193, 'pr-20210524-041754', 1, 1, 3, 1, 1, 0, 0, 2000, 0, 0, NULL, NULL, 2000, 2000, 1, 2, NULL, NULL, '2021-05-24 23:17:54', '2021-05-24 23:18:05'),
(194, 'pr-20210524-042114', 1, 1, NULL, 1, 1, 0, 0, 2000, 0, 0, NULL, NULL, 2000, 0, 1, 1, NULL, NULL, '2021-05-24 23:21:14', '2021-05-24 23:21:14'),
(195, 'pr-20210524-045944', 1, 13, 1, 1, 1, 0, 0, 2500, 0, 0, NULL, NULL, 2500, 2500, 1, 2, NULL, NULL, '2021-05-24 23:59:44', '2021-05-24 23:59:53'),
(196, 'pr-20210524-053041', 1, 76, NULL, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 0, 1, 1, NULL, NULL, '2021-05-25 00:30:41', '2021-05-25 00:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_product_return`
--

INSERT INTO `purchase_product_return` (`id`, `return_id`, `product_id`, `variant_id`, `qty`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 1, 1, 200, 0, 0, 0, 200, NULL, '2019-12-07 11:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, NULL, 'first quotation...', '2018-08-08 23:52:50', '2018-09-04 03:32:16'),
(2, 'qr-20180904-040257', 1, 1, NULL, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, NULL, NULL, '2018-09-03 22:02:57', '2018-09-21 07:05:57'),
(3, 'qr-20181023-061249', 9, 1, 3, 11, 1, 2, 2, 0, 40, 453, 0, 0, 0, 0, 453, 2, NULL, NULL, '2018-10-23 00:12:49', '2019-12-21 06:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(2, 'rr-20180809-055834', 1, 1, 1, 1, 1, 1, 20, 0, 0, 40, 10, 4, 44, NULL, NULL, NULL, '2018-08-08 23:58:34', '2018-08-08 23:58:34'),
(3, 'rr-20180828-045527', 1, 1, 2, 1, 1, 1, 2, 0, 0, 44, 0, 0, 44, NULL, NULL, NULL, '2018-08-27 22:55:27', '2018-09-20 11:03:47'),
(5, 'rr-20181007-082129', 1, 11, 2, 2, 1, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2018-10-07 02:21:29', '2018-12-25 22:16:08'),
(6, 'rr-20190101-090630', 9, 1, 1, 1, 1, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2019-01-01 03:06:30', '2019-01-01 03:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_purchases`
--

INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'prr-20190101-090759', 3, 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, 200, NULL, NULL, NULL, '2019-01-01 03:07:59', '2019-12-07 11:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05'),
(2, 'Owner', 'Owner of shop...', 'web', 1, '2018-10-22 02:38:13', '2018-10-22 02:38:13'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27'),
(5, 'Operator', 'The operator of the shop...', 'web', 1, '2021-05-07 06:50:46', '2021-05-07 06:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(12, 4),
(13, 4),
(20, 4),
(21, 4),
(24, 4),
(25, 4),
(28, 4),
(29, 4),
(63, 4),
(64, 4),
(8, 5),
(9, 5),
(10, 5),
(11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'sr-20180808-043622', 1, 1, 1, 1, 2, 3, 10, 15.65, 350, 380, 10, 30, 50, NULL, NULL, 50, 1, 2, NULL, 0, 'ukgjkgjkgkj', 'gjkgjkgkujg', '2018-08-08 10:36:22', '2018-10-06 09:25:29'),
(2, 'sr-20180809-055453', 1, 3, 1, 1, 3, 63, 0, 469.3, 5103, 5503, 0, 0, 100, NULL, NULL, 500, 1, 2, NULL, 2200, NULL, NULL, '2018-08-08 23:54:53', '2018-08-08 23:56:35'),
(3, 'posr-20180809-063214', 1, 2, 2, 2, 3, 26, 0, 0, 897, 897, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 897, NULL, NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(4, 'sr-20180825-034836', 1, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 300, NULL, NULL, '2018-08-24 21:48:36', '2018-09-22 02:56:03'),
(6, 'sr-20180826-094836', 1, 2, 1, 2, 1, 1, 0, 0, 18.9, 20, 0, 0, 0, NULL, NULL, 1.1, 1, 4, NULL, 20, NULL, NULL, '2018-08-26 03:48:36', '2018-08-26 05:48:05'),
(7, 'sr-20180827-073545', 1, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(8, 'posr-20180902-053954', 1, 1, 1, 2, 1, 2, 0, 288, 3168, 3529.8, 10, 311.8, 50, NULL, NULL, 100, 1, 4, NULL, 3529.8, 'good customer', 'good customer', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(9, 'posr-20180903-033314', 1, 1, 2, 1, 1, 10, 0, 0, 20, 20, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 20, NULL, NULL, '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(10, 'posr-20180903-050138', 1, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(11, 'posr-20180903-100821', 1, 11, 2, 1, 1, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(12, 'sr-20180903-101026', 1, 3, 1, 5, 1, 10, 0, 1050, 11550, 11550, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-03 04:10:26', '2018-09-22 02:55:14'),
(29, 'sr-20180909-093841', 1, 1, 1, 1, 1, 1, 0, 0, 120, 132, 10, 12, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-09 03:38:41', '2018-10-06 02:36:52'),
(30, 'posr-20180910-045706', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2018-09-09 22:57:06', '2018-10-06 00:53:20'),
(31, 'posr-20180926-092059', 1, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 560, NULL, NULL, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(32, 'posr-20181004-095547', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 03:55:47', '2018-10-04 03:55:47'),
(33, 'posr-20181004-100022', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 04:00:22', '2018-10-04 04:00:22'),
(37, 'sr-20181007-064605', 1, 1, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:46:05', '2018-10-07 00:46:28'),
(38, 'posr-20181007-064719', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:47:19', '2018-10-07 03:17:02'),
(40, 'posr-20181007-071312', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 01:13:12', '2018-10-07 03:17:39'),
(41, 'posr-20181010-041621', 1, 1, 2, 1, 2, 2, 0, 40, 461, 461, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 461, NULL, NULL, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(42, 'posr-20181010-053450', 1, 1, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2018-10-09 23:34:50', '2018-10-09 23:34:50'),
(43, 'sr-20181016-033434', 1, 1, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, 'sss\r\nsss\r\ns', NULL, '2018-10-15 21:34:34', '2018-10-23 00:21:27'),
(55, 'posr-20181021-065334', 1, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-10-21 00:53:34', '2018-10-21 00:53:34'),
(57, 'posr-20181021-082612', 1, 11, 2, 1, 2, 3, 0, 40, 482, 575.2, 10, 43.2, 50, NULL, NULL, 100, 1, 4, NULL, 575.2, NULL, NULL, '2018-10-21 02:26:12', '2018-10-21 02:26:12'),
(58, 'posr-20181022-032723', 1, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2018-10-22 09:27:23', '2018-10-22 09:27:23'),
(73, 'posr-20181023-071543', 11, 11, 1, 5, 2, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-10-23 01:15:43', '2018-10-23 01:15:43'),
(74, 'posr-20181023-071644', 1, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2320, NULL, NULL, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(75, 'posr-20181101-050027', 1, 11, 2, 1, 5, 12, 0, 626.96, 6980, 7678, 10, 698, NULL, NULL, NULL, NULL, 1, 4, NULL, 7678, NULL, NULL, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(76, 'posr-20181101-050126', 1, 11, 2, 1, 3, 6, 0, 100, 1434, 1424, 0, 0, 10, NULL, NULL, 0, 1, 4, NULL, 1424, NULL, NULL, '2018-10-31 23:01:26', '2018-11-08 03:44:51'),
(79, 'posr-20181105-091516', 1, 11, 2, 1, 7, 52, 0, 1069.57, 14454, 14454, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 14454, NULL, NULL, '2018-11-05 03:15:16', '2018-11-05 03:15:16'),
(80, 'posr-20181105-091958', 1, 11, 2, 1, 3, 8, 0, 191.3, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(86, 'posr-20181105-095948', 1, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 03:59:48', '2018-11-05 03:59:48'),
(88, 'posr-20181105-100258', 1, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 04:02:58', '2018-11-05 04:02:58'),
(94, 'posr-20181126-020534', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(95, 'posr-20181127-093608', 1, 11, 2, 1, 1, 3, 0, 0, 360, 360, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(96, 'posr-20181128-071509', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 132, 10, 12, NULL, NULL, NULL, NULL, 1, 4, NULL, 132, NULL, NULL, '2018-11-28 01:15:09', '2018-11-28 01:15:09'),
(97, 'posr-20181201-060518', 1, 11, 2, 1, 2, 3, 0, 31.3, 262, 262, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-12-01 00:05:18', '2018-12-04 00:21:05'),
(98, 'posr-20181205-053558', 1, 11, 2, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(99, 'posr-20181205-053719', 1, 11, 1, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:37:19', '2018-12-04 23:37:19'),
(101, 'posr-20181208-062026', 1, 11, 2, 1, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2018-12-08 00:20:26', '2018-12-08 00:20:26'),
(103, 'posr-20181224-045832', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(104, 'sr-20181224-091527', 1, 1, 1, 2, 2, 6, 0, 0, 2508, 2518, 0, 0, 0, NULL, NULL, 10, 1, 2, NULL, NULL, NULL, NULL, '2018-12-24 03:15:27', '2018-12-24 21:55:23'),
(105, 'posr-20190101-054538', 1, 1, 2, 1, 1, 1, 0, 0, 21, 21, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 21, NULL, NULL, '2018-12-31 23:45:38', '2018-12-31 23:45:38'),
(106, 'posr-20190101-091040', 1, 11, 2, 1, 3, 5, 0, 15.65, 860, 860, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 860, NULL, NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(107, 'posr-20190103-065626', 1, 11, 2, 1, 6, 10, 0, 395.65, 5040, 5040, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5040, NULL, NULL, '2019-01-03 00:56:26', '2019-01-03 00:56:26'),
(108, 'posr-20190120-035824', 1, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(109, 'posr-20190129-101443', 9, 11, 1, 5, 2, 2, 0, 40, 540, 540, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(110, 'posr-20190129-115041', 9, 11, 1, 5, 2, 3, 0, 100, 1700, 1700, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1700, NULL, NULL, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(111, 'posr-20190131-110839', 9, 11, 1, 5, 2, 2, 0, 0, 271, 271, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 271, NULL, NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(112, 'posr-20190202-104045', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(113, 'posr-20190202-114117', 1, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(114, 'posr-20190205-030445', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-05 09:04:45', '2019-02-05 09:04:45'),
(118, 'posr-20190207-111542', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2019-02-07 05:15:42', '2019-02-07 05:15:42'),
(120, 'sr-20190207-114036', 1, 1, 1, 2, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 50, NULL, NULL, '2019-02-07 05:40:36', '2019-02-07 07:09:15'),
(121, 'posr-20190209-104814', 1, 11, 2, 1, 7, 17, 0, 55.65, 1272, 1272, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1272, NULL, NULL, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(123, 'posr-20190219-023214', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(127, 'posr-20190303-104010', 1, 11, 2, 1, 3, 3, 0, 200, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(128, 'posr-20190404-095555', 1, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(129, 'posr-20190404-095937', 1, 11, 2, 1, 1, 2, 0, 0, 240, 240, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2019-04-04 03:59:37', '2019-04-11 04:50:16'),
(130, 'posr-20190421-122124', 1, 11, 2, 1, 3, 3, 0, 58.78, 586, 586, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 586, NULL, NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(131, 'posr-20190528-103229', 1, 11, 2, 1, 4, 4, 0, 240, 2890, 2890, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2890, NULL, NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(132, 'posr-20190613-101637', 1, 11, 2, 1, 3, 3, 0, 40, 840, 840, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 840, NULL, NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(133, 'posr-20190613-101751', 1, 11, 2, 1, 3, 4, 0, 200, 2700, 2700, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2700, NULL, NULL, '2019-06-13 04:17:51', '2019-06-13 04:17:51'),
(134, 'posr-20191019-033028', 1, 11, 2, 1, 4, 4, 0, 240, 2940, 2940, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2940, NULL, NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(138, 'sr-20191031-122937', 1, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-31 06:29:37', '2019-10-31 06:29:37'),
(139, 'posr-20191103-114044', 1, 11, 2, 1, 2, 102, 0, 37.57, 488, 488, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 488, NULL, NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(144, 'posr-20191109-074131', 1, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 1220, NULL, NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(147, 'posr-20191111-104008', 1, 11, 2, 1, 3, 12, 0, 200, 2220, 2220, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2220, NULL, NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(172, 'posr-20191203-034631', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2019-12-03 09:46:31', '2019-12-03 09:46:31'),
(173, 'sr-20191204-111940', 1, 2, 1, 1, 2, 2, 0, 36, 621, 621, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 621, NULL, NULL, '2019-12-04 17:19:40', '2019-12-05 03:27:12'),
(187, 'posr-20191222-104058', 1, 11, 2, 1, 1, 2, 0, 37.57, 288, 288, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 288, NULL, NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(190, 'posr-20191223-125946', 1, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(193, 'posr-20200101-022028', 1, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(194, 'posr-20200102-043947', 1, 11, 2, 1, 2, 3, 0, 81.57, 892, 892, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 892, NULL, NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(201, 'posr-20200203-035256', 1, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(202, 'posr-20200204-105853', 1, 11, 2, 1, 2, 2, 0, 100, 1400, 1400, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(203, 'posr-20200302-115414', 1, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(204, 'posr-20200302-115741', 1, 11, 2, 1, 1, 20, 0, 0, 40, 40, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 40, NULL, NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(205, 'posr-20200311-044641', 1, 11, 2, 1, 1, 1, 0, 40, 440, 352, 0, 0, NULL, 1, 88, NULL, 1, 4, NULL, 352, NULL, NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(206, 'sr-20200311-045230', 1, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2020-03-11 10:52:30', '2020-03-11 10:54:04'),
(207, 'posr-20200406-074024', 1, 11, 2, 1, 3, 4, 0, 18.78, 644, 644, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 644, NULL, NULL, '2020-04-06 13:40:24', '2020-04-06 13:42:01'),
(208, 'posr-20210411-024948', 1, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-04-11 20:49:48', '2021-04-11 20:49:48'),
(209, 'posr-20210506-040639', 1, 11, 2, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-05-06 22:06:39', '2021-05-06 22:06:39'),
(210, 'posr-20210506-041026', 1, 11, 2, 1, 1, 1, 0, 18.78, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2021-05-06 22:10:26', '2021-05-06 22:10:26'),
(211, 'posr-20210506-065754', 1, 11, 2, 1, 3, 3, 0, 18.78, 167, 167, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 167, NULL, NULL, '2021-05-07 00:57:54', '2021-05-07 00:57:54'),
(212, 'posr-20210508-020052', 1, 11, 12, 1, 2, 2, 0, 0, 358, 358, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 358, NULL, NULL, '2021-05-08 09:00:52', '2021-05-08 09:00:52'),
(213, 'posr-20210508-020333', 1, 11, 2, 1, 2, 2, 0, 18.78, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-08 09:03:33', '2021-05-08 09:03:33'),
(214, 'posr-20210508-020525', 1, 11, 12, 1, 2, 2, 0, 0, 358, 358, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 358, NULL, NULL, '2021-05-08 09:05:25', '2021-05-08 09:05:25'),
(215, 'posr-20210508-020649', 1, 11, 12, 1, 2, 2, 0, 0, 358, 358, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 358, NULL, NULL, '2021-05-08 09:06:49', '2021-05-08 09:06:49'),
(216, 'posr-20210508-021107', 1, 11, 12, 1, 2, 3, 0, 0, 522, 522, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 522, NULL, NULL, '2021-05-08 09:11:07', '2021-05-08 09:11:07'),
(217, 'posr-20210508-023157', 1, 11, 12, 1, 2, 2, 0, 0, 272, 272, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 272, NULL, NULL, '2021-05-08 09:31:57', '2021-05-08 09:31:57'),
(218, 'posr-20210509-015547', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-09 08:55:47', '2021-05-09 08:55:47'),
(219, 'posr-20210509-015629', 1, 11, 2, 1, 2, 2, 0, 0, 23, 23.46, 2, 0.46, NULL, NULL, NULL, NULL, 1, 4, NULL, 23.46, NULL, NULL, '2021-05-09 08:56:29', '2021-05-09 08:56:29'),
(220, 'posr-20210509-015712', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 148.19, 1.5, 2.19, NULL, NULL, NULL, NULL, 1, 4, NULL, 148.19, NULL, NULL, '2021-05-09 08:57:12', '2021-05-09 08:57:12'),
(221, 'posr-20210509-020728', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 148.92, 2, 2.92, NULL, NULL, NULL, NULL, 1, 4, NULL, 148.92, NULL, NULL, '2021-05-09 09:07:28', '2021-05-09 09:07:28'),
(222, 'posr-20210509-023357', 1, 11, 2, 1, 2, 2, 0, 2.82, 244, 248.88, 2, 4.88, NULL, NULL, NULL, NULL, 1, 4, NULL, 248.88, NULL, NULL, '2021-05-09 09:33:57', '2021-05-09 09:33:57'),
(223, 'posr-20210517-120534', 1, 11, 1, 1, 2, 2, 0, 2.82, 146, 148.92, 2, 2.92, NULL, NULL, NULL, NULL, 1, 4, NULL, 148.92, NULL, NULL, '2021-05-17 07:05:34', '2021-05-17 07:05:34'),
(224, 'posr-20210517-123952', 1, 11, 2, 1, 1, 2, 0, 0, 240, 243.6, 1.5, 3.6, NULL, NULL, NULL, NULL, 1, 4, NULL, 243.6, NULL, NULL, '2021-05-17 19:39:52', '2021-05-17 19:39:52'),
(225, 'posr-20210517-125428', 1, 11, 2, 1, 1, 1, 0, 0, 120, 122.4, 2, 2.4, NULL, NULL, NULL, NULL, 1, 4, NULL, 122.4, NULL, NULL, '2021-05-17 19:54:28', '2021-05-17 19:54:28'),
(226, 'posr-20210517-012215', 1, 11, 2, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-17 20:22:15', '2021-05-17 20:22:15'),
(227, 'posr-20210517-080025', 1, 11, 2, 1, 1, 1, 0, 2.82, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2021-05-18 03:00:25', '2021-05-18 03:00:25'),
(228, 'posr-20210517-080109', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-18 03:01:09', '2021-05-18 03:01:09'),
(229, 'posr-20210517-080357', 1, 11, 2, 1, 1, 1, 0, 2.82, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2021-05-18 03:03:57', '2021-05-18 03:03:57'),
(230, 'posr-20210517-084654', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-18 03:46:54', '2021-05-18 03:46:54'),
(231, 'posr-20210517-084826', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-18 03:48:26', '2021-05-18 03:48:26'),
(232, 'posr-20210517-084909', 1, 11, 2, 1, 1, 1, 0, 2.82, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2021-05-18 03:49:09', '2021-05-18 03:49:09'),
(233, 'posr-20210517-085013', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, NULL, NULL, '2021-05-18 03:50:13', '2021-05-18 03:50:13'),
(234, 'posr-20210517-085230', 1, 11, 2, 1, 2, 2, 0, 2.82, 146, 146, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 146, 'fsfsfsf', NULL, '2021-05-18 03:52:30', '2021-05-18 03:52:30'),
(235, 'posr-20210517-093511', 1, 11, 2, 1, 1, 1, 0, 0, 3, 3, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 3, NULL, NULL, '2021-05-18 04:35:11', '2021-05-18 04:35:11'),
(236, 'posr-20210519-012659', 1, 11, 2, 1, 1, 1, 0, 0, 21, 21.32, 1.5, 0.32, NULL, NULL, NULL, NULL, 1, 4, NULL, 21.32, NULL, NULL, '2021-05-19 20:26:59', '2021-05-19 20:26:59'),
(237, 'posr-20210519-012753', 1, 11, 1, 1, 1, 1, 0, 0, 2500, 2537.5, 1.5, 37.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 2537.5, NULL, NULL, '2021-05-19 20:27:53', '2021-05-19 20:27:53'),
(238, 'posr-20210519-013346', 1, 11, 1, 1, 1, 1, 0, 0, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2021-05-19 20:33:46', '2021-05-19 20:33:46'),
(239, 'posr-20210519-014355', 1, 11, 1, 1, 1, 1, 0, 0, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2021-05-19 20:43:55', '2021-05-19 20:43:55'),
(240, 'posr-20210519-014722', 1, 11, 1, 1, 1, 1, 0, 0, 2500, 2550, 2, 50, NULL, NULL, NULL, NULL, 1, 4, NULL, 2550, NULL, NULL, '2021-05-19 20:47:22', '2021-05-19 20:47:22'),
(241, 'posr-20210519-014814', 1, 11, 1, 1, 1, 1, 0, 0, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2021-05-19 20:48:14', '2021-05-19 20:48:14'),
(242, 'posr-20210519-021041', 1, 11, 1, 1, 1, 1, 0, 0, 2500, 2550, 2, 50, NULL, NULL, NULL, NULL, 1, 4, NULL, 2550, NULL, NULL, '2021-05-19 21:10:41', '2021-05-19 21:10:41'),
(243, 'posr-20210519-022812', 1, 19, 2, 1, 1, 1, 0, 0, 555, 566.1, 2, 11.1, NULL, NULL, NULL, NULL, 1, 4, NULL, 566.1, NULL, NULL, '2021-05-19 21:28:12', '2021-05-19 21:28:12'),
(244, 'posr-20210519-024638', 1, 11, 1, 1, 1, 1, 0, 0, 5554, 5665.08, 2, 111.08, NULL, NULL, NULL, NULL, 1, 4, NULL, 5665.08, NULL, NULL, '2021-05-19 21:46:38', '2021-05-19 21:46:38'),
(245, 'posr-20210519-032954', 1, 11, 2, 1, 1, 1, 0, 0, 3000, 3060, 2, 60, NULL, NULL, NULL, NULL, 1, 4, NULL, 3060, NULL, NULL, '2021-05-19 22:29:54', '2021-05-19 22:29:54'),
(246, 'posr-20210519-034240', 1, 11, 2, 1, 1, 1, 0, 0, 1200, 1230, 2.5, 30, NULL, NULL, NULL, NULL, 1, 4, NULL, 1230, NULL, NULL, '2021-05-19 22:42:40', '2021-05-19 22:42:40'),
(247, 'posr-20210519-035658', 1, 11, 1, 1, 1, 1, 0, 0, 7896, 8053.92, 2, 157.92, NULL, NULL, NULL, NULL, 1, 4, NULL, 8053.92, NULL, NULL, '2021-05-19 22:56:58', '2021-05-19 22:56:58'),
(248, 'posr-20210519-040918', 1, 11, 1, 1, 1, 1, 0, 0, 7896, 8053.92, 2, 157.92, NULL, NULL, NULL, NULL, 1, 4, NULL, 8053.92, NULL, NULL, '2021-05-19 23:09:18', '2021-05-19 23:09:18'),
(249, 'posr-20210519-041657', 1, 11, 2, 1, 1, 1, 0, 0, 788, 803.76, 2, 15.76, NULL, NULL, NULL, NULL, 1, 4, NULL, 803.76, NULL, NULL, '2021-05-19 23:16:57', '2021-05-19 23:16:57'),
(250, 'posr-20210519-074537', 1, 11, 2, 1, 1, 1, 0, 0, 12000, 12240, 2, 240, NULL, NULL, NULL, NULL, 1, 4, NULL, 12240, NULL, NULL, '2021-05-20 02:45:37', '2021-05-20 02:45:37'),
(251, 'posr-20210519-083313', 1, 11, 10, 1, 1, 1, 0, 0, 560, 571.2, 2, 11.2, NULL, NULL, NULL, NULL, 1, 4, NULL, 571.2, NULL, NULL, '2021-05-20 03:33:13', '2021-05-20 03:33:13'),
(252, 'posr-20210519-105807', 1, 11, 1, 1, 1, 1, 0, 2.82, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2021-05-20 05:58:07', '2021-05-20 05:58:07'),
(253, 'posr-20210519-110628', 9, 3, 1, 2, 1, 1, 0, 2.96, 151.2, 151.2, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 151.2, NULL, NULL, '2021-05-20 06:06:28', '2021-05-20 06:06:28'),
(254, 'posr-20210519-111031', 1, 11, 1, 1, 1, 1, 0, 2.82, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2021-05-20 06:10:31', '2021-05-20 06:10:31'),
(255, 'posr-20210520-072712', 1, 11, 8, 1, 1, 1, 0, 0, 1000, 1020, 2, 20, NULL, NULL, NULL, NULL, 1, 4, NULL, 1020, NULL, NULL, '2021-05-20 14:27:12', '2021-05-20 14:27:12'),
(256, 'posr-20210520-110345', 1, 1, 2, 1, 1, 1, 0, 0, 750, 761.25, 1.5, 11.25, NULL, NULL, NULL, NULL, 1, 4, NULL, 761.25, NULL, NULL, '2021-05-20 18:03:45', '2021-05-20 18:03:45'),
(257, 'posr-20210520-111035', 1, 17, 1, 1, 1, 1, 0, 0, 677, 690.54, 2, 13.54, NULL, NULL, NULL, NULL, 1, 4, NULL, 690.54, NULL, NULL, '2021-05-20 18:10:35', '2021-05-20 18:10:35'),
(258, 'posr-20210520-112506', 1, 17, 10, 1, 1, 1, 0, 0, 545, 555.9, 2, 10.9, NULL, NULL, NULL, NULL, 1, 4, NULL, 555.9, NULL, NULL, '2021-05-20 18:25:06', '2021-05-20 18:25:06'),
(259, 'posr-20210520-114031', 1, 1, 13, 1, 1, 1, 0, 0, 850, 850, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 850, NULL, NULL, '2021-05-20 18:40:31', '2021-05-20 18:40:31'),
(260, 'posr-20210520-120758', 1, 11, 9, 1, 1, 1, 0, 0, 1500, 1522.5, 1.5, 22.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 1522.5, NULL, NULL, '2021-05-20 19:07:58', '2021-05-20 19:07:58'),
(261, 'posr-20210520-125017', 1, 11, 1, 1, 1, 1, 0, 0, 5555, 5666.1, 2, 111.1, NULL, NULL, NULL, NULL, 1, 4, NULL, 5666.1, NULL, NULL, '2021-05-20 19:50:17', '2021-05-20 19:50:17'),
(262, 'posr-20210520-125907', 1, 11, 2, 1, 1, 1, 0, 0, 1200, 1230, 2.5, 30, NULL, NULL, NULL, NULL, 1, 4, NULL, 1230, NULL, NULL, '2021-05-20 19:59:07', '2021-05-20 19:59:07'),
(263, 'posr-20210520-090844', 1, 11, 7, 1, 1, 1, 0, 0, 15000, 15225, 1.5, 225, NULL, NULL, NULL, NULL, 1, 4, NULL, 15225, NULL, NULL, '2021-05-21 04:08:44', '2021-05-21 04:08:44'),
(264, 'posr-20210521-105933', 1, 11, 2, 1, 1, 1, 0, 0, 25000, 25000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 25000, NULL, NULL, '2021-05-21 17:59:33', '2021-05-21 17:59:33'),
(265, 'posr-20210521-110201', 1, 22, 7, 1, 1, 1, 0, 0, 1200, 1224, 2, 24, NULL, NULL, NULL, NULL, 1, 4, NULL, 1224, NULL, NULL, '2021-05-21 18:02:01', '2021-05-21 18:02:01'),
(266, 'posr-20210521-110202', 1, 22, 7, 1, 1, 1, 0, 0, 1200, 1224, 2, 24, NULL, NULL, NULL, NULL, 1, 4, NULL, 1224, NULL, NULL, '2021-05-21 18:02:02', '2021-05-21 18:02:02'),
(267, 'posr-20210521-110203', 1, 22, 7, 1, 1, 1, 0, 0, 1200, 1224, 2, 24, NULL, NULL, NULL, NULL, 1, 4, NULL, 1224, NULL, NULL, '2021-05-21 18:02:03', '2021-05-21 18:02:03'),
(268, 'posr-20210521-112019', 1, 11, 8, 1, 1, 1, 0, 0, 450, 450, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 450, NULL, NULL, '2021-05-21 18:20:19', '2021-05-21 18:20:19'),
(269, 'posr-20210521-113054', 1, 11, 1, 1, 1, 1, 0, 0, 555, 563.33, 1.5, 8.32, NULL, NULL, NULL, NULL, 1, 4, NULL, 563.33, NULL, NULL, '2021-05-21 18:30:54', '2021-05-21 18:30:54'),
(270, 'posr-20210521-113657', 1, 11, 1, 1, 1, 1, 0, 0, 5555, 5666.1, 2, 111.1, NULL, NULL, NULL, NULL, 1, 4, NULL, 5666.1, NULL, NULL, '2021-05-21 18:36:57', '2021-05-21 18:36:57'),
(271, 'posr-20210521-114441', 1, 11, 10, 1, 1, 1, 0, 0, 780, 791.7, 1.5, 11.7, NULL, NULL, NULL, NULL, 1, 4, NULL, 791.7, NULL, NULL, '2021-05-21 18:44:41', '2021-05-21 18:44:41'),
(272, 'posr-20210521-120603', 1, 11, 1, 1, 1, 1, 0, 0, 1200, 1230, 2.5, 30, NULL, NULL, NULL, NULL, 1, 4, NULL, 1230, NULL, NULL, '2021-05-21 19:06:03', '2021-05-21 19:06:03'),
(273, 'posr-20210521-121959', 1, 11, 1, 1, 4, 4, 0, 30, 3330, 3396.6, 2, 66.6, NULL, NULL, NULL, NULL, 1, 4, NULL, 3396.6, NULL, NULL, '2021-05-21 19:19:59', '2021-05-21 19:19:59'),
(274, 'posr-20210521-015922', 1, 11, 13, 1, 1, 1, 0, 0, 250, 255, 2, 5, NULL, NULL, NULL, NULL, 1, 4, NULL, 255, NULL, NULL, '2021-05-21 20:59:22', '2021-05-21 20:59:22'),
(275, 'posr-20210521-020536', 1, 11, 1, 1, 1, 1, 0, 0, 200, 204, 2, 4, NULL, NULL, NULL, NULL, 1, 4, NULL, 204, NULL, NULL, '2021-05-21 21:05:36', '2021-05-21 21:05:36'),
(276, 'posr-20210521-023116', 1, 11, 1, 1, 1, 1, 0, 0, 900, 913.5, 1.5, 13.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 913.5, NULL, NULL, '2021-05-21 21:31:16', '2021-05-21 21:31:16'),
(277, 'posr-20210521-033351', 1, 11, 1, 1, 1, 1, 0, 0, 1200, 1224, 2, 24, NULL, NULL, NULL, NULL, 1, 4, NULL, 1224, NULL, NULL, '2021-05-21 22:33:51', '2021-05-21 22:33:51'),
(278, 'posr-20210522-103502', 1, 22, 8, 1, 1, 1, 0, 0, 363, 363, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 363, NULL, NULL, '2021-05-22 17:35:02', '2021-05-22 17:35:02'),
(279, 'posr-20210522-104722', 1, 11, 1, 1, 1, 1, 0, 0, 1200, 1224, 2, 24, NULL, NULL, NULL, NULL, 1, 4, NULL, 1224, NULL, NULL, '2021-05-22 17:47:22', '2021-05-22 17:47:22'),
(280, 'posr-20210522-110430', 1, 11, 7, 1, 1, 1, 0, 0, 750, 761.25, 1.5, 11.25, NULL, NULL, NULL, NULL, 1, 4, NULL, 761.25, NULL, NULL, '2021-05-22 18:04:30', '2021-05-22 18:04:30'),
(281, 'posr-20210522-111839', 1, 11, 1, 1, 1, 1, 0, 0, 1000, 1015, 1.5, 15, NULL, NULL, NULL, NULL, 1, 4, NULL, 1015, NULL, NULL, '2021-05-22 18:18:39', '2021-05-22 18:18:39'),
(282, 'posr-20210522-113845', 1, 11, 8, 1, 1, 1, 0, 0, 100000, 101500, 1.5, 1500, NULL, NULL, NULL, NULL, 1, 4, NULL, 101500, NULL, NULL, '2021-05-22 18:38:45', '2021-05-22 18:38:45'),
(283, 'posr-20210522-122059', 1, 25, 10, 2, 1, 1, 0, 0, 500000, 512500, 2.5, 12500, NULL, NULL, NULL, NULL, 1, 4, NULL, 512500, NULL, NULL, '2021-05-22 19:20:59', '2021-05-22 19:20:59'),
(284, 'posr-20210522-122431', 1, 11, 2, 1, 1, 1, 0, 15, 1015, 1030.22, 1.5, 15.22, NULL, NULL, NULL, NULL, 1, 4, NULL, 1030.22, NULL, NULL, '2021-05-22 19:24:31', '2021-05-22 19:24:31'),
(285, 'posr-20210522-122958', 1, 11, 1, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-22 19:29:58', '2021-05-22 19:29:58'),
(286, 'posr-20210522-125053', 1, 22, 8, 1, 1, 1, 0, 0, 1000, 1020, 2, 20, NULL, NULL, NULL, NULL, 1, 4, NULL, 1020, 'gjhasgjhdhga', NULL, '2021-05-22 19:50:53', '2021-05-22 19:50:53'),
(287, 'posr-20210522-010051', 1, 19, 8, 1, 1, 1, 0, 0, 1200, 1224, 2, 24, NULL, NULL, NULL, NULL, 1, 4, NULL, 1224, NULL, NULL, '2021-05-22 20:00:51', '2021-05-22 20:00:51'),
(288, 'posr-20210522-011047', 1, 11, 9, 1, 1, 1, 0, 0, 750, 761.25, 1.5, 11.25, NULL, NULL, NULL, NULL, 1, 4, NULL, 761.25, 'qwertyijk,', NULL, '2021-05-22 20:10:47', '2021-05-22 20:10:47'),
(289, 'posr-20210522-012202', 1, 11, 10, 1, 1, 1, 0, 0, 500, 510, 2, 10, NULL, NULL, NULL, NULL, 1, 4, NULL, 510, NULL, NULL, '2021-05-22 20:22:02', '2021-05-22 20:22:02'),
(290, 'posr-20210522-015650', 1, 11, 11, 1, 2, 3, 0, 0, 504, 504, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 504, NULL, NULL, '2021-05-22 20:56:50', '2021-05-22 20:56:50'),
(291, 'posr-20210522-020249', 1, 11, 11, 1, 2, 2, 0, 0, 555, 555, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 555, NULL, NULL, '2021-05-22 21:02:49', '2021-05-22 21:02:49'),
(292, 'posr-20210522-024654', 1, 11, 1, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-22 21:46:54', '2021-05-22 21:46:54'),
(293, 'posr-20210522-024802', 1, 11, 1, 1, 1, 1, 0, 2.82, 144, 144, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 144, NULL, NULL, '2021-05-22 21:48:02', '2021-05-22 21:48:02'),
(294, 'posr-20210522-025553', 1, 11, 1, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-22 21:55:53', '2021-05-22 21:55:53'),
(295, 'posr-20210522-030101', 1, 2, 1, 1, 1, 1, 0, 0, 1350, 1370.25, 1.5, 20.25, NULL, NULL, NULL, NULL, 1, 4, NULL, 1370.25, NULL, NULL, '2021-05-22 22:01:01', '2021-05-22 22:01:01'),
(296, 'posr-20210522-032354', 1, 11, 1, 1, 4, 8, 0, 12, 8838, 9014.76, 2, 176.76, NULL, NULL, NULL, NULL, 1, 4, NULL, 9014.76, NULL, NULL, '2021-05-22 22:23:54', '2021-05-22 22:23:54'),
(297, 'posr-20210522-032428', 1, 22, 11, 1, 1, 1, 0, 0, 522, 535.05, 2.5, 13.05, NULL, NULL, NULL, NULL, 1, 4, NULL, 535.05, NULL, NULL, '2021-05-22 22:24:28', '2021-05-22 22:24:28'),
(298, 'posr-20210522-043337', 1, 11, 2, 1, 3, 4, 0, 30, 2910, 2968.2, 2, 58.2, NULL, NULL, NULL, NULL, 1, 4, NULL, 2968.2, NULL, NULL, '2021-05-22 23:33:37', '2021-05-22 23:33:37'),
(299, 'posr-20210522-043416', 1, 11, 2, 1, 3, 4, 0, 30, 2910, 2968.2, 2, 58.2, NULL, NULL, NULL, NULL, 1, 4, NULL, 2968.2, NULL, NULL, '2021-05-22 23:34:16', '2021-05-22 23:34:16'),
(300, 'posr-20210522-043437', 1, 11, 2, 1, 3, 4, 0, 30, 2910, 2968.2, 2, 58.2, NULL, NULL, NULL, NULL, 1, 4, NULL, 2968.2, NULL, NULL, '2021-05-22 23:34:37', '2021-05-22 23:34:37'),
(301, 'posr-20210522-043705', 1, 11, 1, 1, 1, 3, 0, 0, 300, 304.5, 1.5, 4.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 304.5, NULL, NULL, '2021-05-22 23:37:05', '2021-05-22 23:37:05'),
(302, 'posr-20210522-084125', 1, 11, 1, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-23 03:41:25', '2021-05-23 03:41:25'),
(303, 'posr-20210522-084416', 1, 11, 10, 1, 3, 3, 0, 0, 7182, 7289.73, 1.5, 107.73, NULL, NULL, NULL, NULL, 1, 4, NULL, 7289.73, NULL, NULL, '2021-05-23 03:44:16', '2021-05-23 03:44:16'),
(304, 'posr-20210522-084430', 1, 11, 10, 1, 3, 3, 0, 0, 7182, 7289.73, 1.5, 107.73, NULL, NULL, NULL, NULL, 1, 4, NULL, 7289.73, NULL, NULL, '2021-05-23 03:44:30', '2021-05-23 03:44:30'),
(305, 'posr-20210522-084901', 1, 19, 2, 1, 2, 2, 0, 0, 2620, 2672.4, 2, 52.4, NULL, NULL, NULL, NULL, 1, 4, NULL, 2672.4, NULL, NULL, '2021-05-23 03:49:01', '2021-05-23 03:49:01'),
(306, 'posr-20210523-104407', 1, 11, 2, 1, 3, 3, 0, 15, 1635, 1659.53, 1.5, 24.52, NULL, NULL, NULL, NULL, 1, 4, NULL, 1659.53, NULL, NULL, '2021-05-23 17:44:07', '2021-05-23 17:44:07'),
(307, 'posr-20210523-104643', 1, 11, 2, 1, 3, 3, 0, 15, 1635, 1659.53, 1.5, 24.52, NULL, NULL, NULL, NULL, 1, 4, NULL, 1659.53, NULL, NULL, '2021-05-23 17:46:43', '2021-05-23 17:46:43'),
(308, 'posr-20210523-110351', 1, 11, 13, 1, 1, 1, 0, 0, 350, 355.25, 1.5, 5.25, NULL, NULL, NULL, NULL, 1, 4, NULL, 355.25, NULL, NULL, '2021-05-23 18:03:51', '2021-05-23 18:03:51'),
(309, 'posr-20210523-111258', 1, 11, 1, 1, 3, 3, 0, 0, 1140, 1162.8, 2, 22.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 1162.8, NULL, NULL, '2021-05-23 18:12:58', '2021-05-23 18:12:58'),
(310, 'posr-20210523-120301', 1, 11, 2, 1, 3, 3, 0, 15, 1190, 1213.8, 2, 23.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 1213.8, NULL, NULL, '2021-05-23 19:03:01', '2021-05-23 19:03:01'),
(311, 'posr-20210523-121016', 1, 11, 2, 1, 5, 7, 0, 35.65, 2720, 2774.4, 2, 54.4, NULL, NULL, NULL, NULL, 1, 4, NULL, 2774.4, NULL, NULL, '2021-05-23 19:10:16', '2021-05-23 19:10:16'),
(312, 'posr-20210523-121417', 1, 11, 2, 1, 3, 3, 0, 15, 1635, 1667.7, 2, 32.7, NULL, NULL, NULL, NULL, 1, 4, NULL, 1667.7, NULL, NULL, '2021-05-23 19:14:17', '2021-05-23 19:14:17'),
(313, 'posr-20210523-122628', 1, 11, 13, 1, 3, 3, 0, 15, 2035, 2085.88, 2.5, 50.88, NULL, NULL, NULL, NULL, 1, 4, NULL, 2085.88, NULL, NULL, '2021-05-23 19:26:28', '2021-05-23 19:26:28'),
(314, 'posr-20210523-122737', 1, 11, 2, 1, 5, 5, 0, 17.82, 1482, 1504.23, 1.5, 22.23, NULL, NULL, NULL, NULL, 1, 4, NULL, 1504.23, NULL, NULL, '2021-05-23 19:27:37', '2021-05-23 19:27:37'),
(315, 'posr-20210523-122754', 1, 11, 2, 1, 5, 5, 0, 17.82, 1482, 1504.23, 1.5, 22.23, NULL, NULL, NULL, NULL, 1, 4, NULL, 1504.23, NULL, NULL, '2021-05-23 19:27:54', '2021-05-23 19:27:54'),
(316, 'posr-20210523-122833', 1, 11, 2, 1, 4, 4, 0, 2.82, 267, 272.34, 2, 5.34, NULL, NULL, NULL, NULL, 1, 4, NULL, 272.34, NULL, NULL, '2021-05-23 19:28:33', '2021-05-23 19:28:33'),
(317, 'posr-20210523-123132', 1, 11, 2, 1, 4, 4, 0, 2.82, 267, 272.34, 2, 5.34, NULL, NULL, NULL, NULL, 1, 4, NULL, 272.34, NULL, NULL, '2021-05-23 19:31:32', '2021-05-23 19:31:32'),
(318, 'posr-20210523-125752', 1, 11, 10, 1, 4, 5, 0, 15, 1645, 1677.9, 2, 32.9, NULL, NULL, NULL, NULL, 1, 4, NULL, 1677.9, NULL, NULL, '2021-05-23 19:57:52', '2021-05-23 19:57:52'),
(319, 'posr-20210523-010412', 1, 11, 1, 1, 3, 5, 0, 0, 4055, 4115.82, 1.5, 60.82, NULL, NULL, NULL, NULL, 1, 4, NULL, 4115.82, NULL, NULL, '2021-05-23 20:04:12', '2021-05-23 20:04:12'),
(320, 'posr-20210523-011209', 1, 11, 2, 1, 2, 4, 0, 30, 2630, 2682.6, 2, 52.6, NULL, NULL, NULL, NULL, 1, 4, NULL, 2682.6, NULL, NULL, '2021-05-23 20:12:09', '2021-05-23 20:12:09'),
(321, 'posr-20210523-011234', 1, 11, 1, 1, 2, 2, 0, 0, 400, 400, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 400, NULL, NULL, '2021-05-23 20:12:34', '2021-05-23 20:12:34'),
(322, 'posr-20210523-011453', 1, 11, 10, 1, 3, 3, 0, 0, 1075, 1091.13, 1.5, 16.13, NULL, NULL, NULL, NULL, 1, 4, NULL, 1091.13, NULL, NULL, '2021-05-23 20:14:53', '2021-05-23 20:14:53'),
(323, 'posr-20210523-011946', 1, 11, 13, 1, 2, 2, 0, 0, 195, 197.93, 1.5, 2.92, NULL, NULL, NULL, NULL, 1, 4, NULL, 197.93, NULL, NULL, '2021-05-23 20:19:46', '2021-05-23 20:19:46'),
(324, 'posr-20210523-012913', 1, 11, 13, 1, 5, 5, 0, 0, 71610, 73400.25, 2.5, 1790.25, NULL, NULL, NULL, NULL, 1, 4, NULL, 73400.25, NULL, NULL, '2021-05-23 20:29:13', '2021-05-23 20:29:13'),
(325, 'posr-20210523-022429', 1, 11, 1, 1, 3, 3, 0, 0, 70270, 71324.05, 1.5, 1054.05, NULL, NULL, NULL, NULL, 1, 4, NULL, 71324.05, NULL, NULL, '2021-05-23 21:24:29', '2021-05-23 21:24:29'),
(326, 'posr-20210523-025640', 1, 11, 9, 1, 2, 2, 0, 2.82, 244, 248.88, 2, 4.88, NULL, NULL, NULL, NULL, 1, 4, NULL, 248.88, NULL, NULL, '2021-05-23 21:56:40', '2021-05-23 21:56:40'),
(327, 'posr-20210523-025733', 1, 11, 1, 1, 1, 1, 0, 2.82, 144, 146.16, 1.5, 2.16, NULL, NULL, NULL, NULL, 1, 4, NULL, 146.16, NULL, NULL, '2021-05-23 21:57:33', '2021-05-23 21:57:33'),
(328, 'posr-20210523-030012', 1, 11, 10, 1, 4, 4, 0, 0, 70820, 70820, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 70820, NULL, NULL, '2021-05-23 22:00:12', '2021-05-23 22:00:12'),
(329, 'posr-20210523-030234', 1, 11, 2, 1, 3, 3, 0, 2.82, 2424, 2472.48, 2, 48.48, NULL, NULL, NULL, NULL, 1, 4, NULL, 2472.48, NULL, NULL, '2021-05-23 22:02:34', '2021-05-23 22:02:34'),
(330, 'posr-20210523-031815', 1, 11, 2, 1, 2, 4, 0, 30, 2034, 2064.51, 1.5, 30.51, NULL, NULL, NULL, NULL, 1, 4, NULL, 2064.51, NULL, NULL, '2021-05-23 22:18:15', '2021-05-23 22:18:15'),
(331, 'posr-20210524-103437', 1, 11, 2, 1, 3, 3, 0, 0, 622, 634.44, 2, 12.44, NULL, NULL, NULL, NULL, 1, 4, NULL, 634.44, NULL, NULL, '2021-05-24 17:34:37', '2021-05-24 17:34:37'),
(332, 'posr-20210524-103726', 1, 2, 9, 1, 3, 3, 0, 0, 1323, 1356.08, 2.5, 33.08, NULL, NULL, NULL, NULL, 1, 4, NULL, 1356.08, NULL, NULL, '2021-05-24 17:37:26', '2021-05-24 17:37:26'),
(333, 'posr-20210524-104045', 1, 11, 1, 1, 1, 1, 0, 0, 1200, 1218, 1.5, 18, NULL, NULL, NULL, NULL, 1, 4, NULL, 1218, NULL, NULL, '2021-05-24 17:40:45', '2021-05-24 17:40:45'),
(334, 'posr-20210524-110333', 1, 11, 2, 1, 4, 8, 0, 35.65, 2328, 2374.56, 2, 46.56, NULL, NULL, NULL, NULL, 1, 4, NULL, 2374.56, NULL, NULL, '2021-05-24 18:03:33', '2021-05-24 18:03:33'),
(335, 'posr-20210524-111359', 1, 11, 1, 1, 2, 2, 0, 0, 620, 632.4, 2, 12.4, NULL, NULL, NULL, NULL, 1, 4, NULL, 632.4, NULL, NULL, '2021-05-24 18:13:59', '2021-05-24 18:13:59'),
(336, 'posr-20210524-112019', 1, 11, 12, 1, 2, 2, 0, 0, 70120, 71171.8, 1.5, 1051.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 71171.8, NULL, NULL, '2021-05-24 18:20:19', '2021-05-24 18:20:19'),
(337, 'posr-20210524-112332', 1, 11, 1, 1, 1, 1, 0, 0, 120, 122.4, 2, 2.4, NULL, NULL, NULL, NULL, 1, 4, NULL, 122.4, NULL, NULL, '2021-05-24 18:23:32', '2021-05-24 18:23:32'),
(338, 'posr-20210524-113156', 1, 11, 2, 1, 2, 2, 0, 15, 1135, 1152.03, 1.5, 17.02, NULL, NULL, NULL, NULL, 1, 4, NULL, 1152.03, NULL, NULL, '2021-05-24 18:31:56', '2021-05-24 18:31:56'),
(339, 'posr-20210524-113424', 1, 11, 11, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-24 18:34:24', '2021-05-24 18:34:24'),
(340, 'posr-20210524-113445', 1, 11, 21, 1, 2, 2, 0, 0, 70120, 71171.8, 1.5, 1051.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 71171.8, NULL, NULL, '2021-05-24 18:34:45', '2021-05-24 18:34:45'),
(341, 'posr-20210524-113534', 1, 11, 21, 1, 6, 6, 0, 32.82, 2497, 2534.45, 1.5, 37.45, NULL, NULL, NULL, NULL, 1, 4, NULL, 2534.45, NULL, NULL, '2021-05-24 18:35:34', '2021-05-24 18:35:34'),
(342, 'posr-20210524-113756', 1, 11, 2, 1, 6, 6, 0, 32.82, 2576, 2640.4, 2.5, 64.4, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2021-05-24 18:37:56', '2021-05-24 18:37:56'),
(343, 'posr-20210524-113822', 1, 11, 2, 1, 5, 5, 0, 17.82, 1561, 1561, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1561, NULL, NULL, '2021-05-24 18:38:22', '2021-05-24 18:38:22'),
(344, 'posr-20210524-124422', 1, 11, 11, 1, 1, 1, 0, 0, 500, 507.5, 1.5, 7.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 507.5, NULL, NULL, '2021-05-24 19:44:22', '2021-05-24 19:44:22'),
(345, 'posr-20210524-124529', 1, 11, 11, 1, 1, 1, 0, 0, 500, 510, 2, 10, NULL, NULL, NULL, NULL, 1, 4, NULL, 510, NULL, NULL, '2021-05-24 19:45:29', '2021-05-24 19:45:29'),
(346, 'posr-20210524-124717', 1, 11, 11, 1, 1, 1, 0, 0, 500, 507.5, 1.5, 7.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 507.5, NULL, NULL, '2021-05-24 19:47:17', '2021-05-24 19:47:17'),
(347, 'posr-20210524-124810', 1, 11, 11, 1, 1, 1, 0, 0, 500, 507.5, 1.5, 7.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 507.5, NULL, NULL, '2021-05-24 19:48:10', '2021-05-24 19:48:10'),
(348, 'posr-20210524-010623', 1, 11, 10, 1, 1, 1, 0, 0, 1050, 1065.75, 1.5, 15.75, NULL, NULL, NULL, NULL, 1, 4, NULL, 1065.75, NULL, NULL, '2021-05-24 20:06:23', '2021-05-24 20:06:23'),
(349, 'posr-20210524-011330', 1, 11, 12, 1, 1, 1, 0, 0, 120, 121.8, 1.5, 1.8, NULL, NULL, NULL, NULL, 1, 4, NULL, 121.8, NULL, NULL, '2021-05-24 20:13:30', '2021-05-24 20:13:30'),
(350, 'posr-20210524-011552', 1, 11, 10, 1, 1, 1, 0, 0, 500, 507.5, 1.5, 7.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 507.5, NULL, NULL, '2021-05-24 20:15:52', '2021-05-24 20:15:52'),
(351, 'posr-20210524-011605', 1, 11, 1, 1, 1, 1, 0, 0, 2000, 2000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2000, NULL, NULL, '2021-05-24 20:16:05', '2021-05-24 20:16:05'),
(352, 'posr-20210524-012146', 1, 11, 2, 1, 3, 4, 0, 15, 5075, 5075, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 5075, NULL, NULL, '2021-05-24 20:21:46', '2021-05-24 20:21:46'),
(353, 'posr-20210524-012810', 1, 11, 1, 1, 3, 3, 0, 0, 1820, 1847.3, 1.5, 27.3, NULL, NULL, NULL, NULL, 1, 4, NULL, 1847.3, NULL, NULL, '2021-05-24 20:28:10', '2021-05-24 20:28:10'),
(354, 'posr-20210524-013753', 1, 11, 1, 1, 3, 3, 0, 0, 665, 678.3, 2, 13.3, NULL, NULL, NULL, NULL, 1, 4, NULL, 678.3, NULL, NULL, '2021-05-24 20:37:53', '2021-05-24 20:37:53'),
(355, 'posr-20210524-013920', 1, 11, 12, 1, 3, 3, 0, 0, 2872, 2915.08, 1.5, 43.08, NULL, NULL, NULL, NULL, 1, 4, NULL, 2915.08, NULL, NULL, '2021-05-24 20:39:20', '2021-05-24 20:39:20'),
(356, 'posr-20210524-015956', 1, 11, 2, 2, 2, 2, 0, 0, 575, 583.63, 1.5, 8.63, NULL, NULL, NULL, NULL, 1, 4, NULL, 583.63, NULL, NULL, '2021-05-24 20:59:56', '2021-05-24 20:59:56'),
(357, 'posr-20210524-021341', 1, 11, 15, 1, 1, 1, 0, 0, 2000, 2000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 2000, NULL, NULL, '2021-05-24 21:13:41', '2021-05-24 21:13:41'),
(358, 'posr-20210524-022259', 1, 11, 2, 1, 4, 8, 0, 50.65, 3935, 4013.7, 2, 78.7, NULL, NULL, NULL, NULL, 1, 4, NULL, 4013.7, NULL, NULL, '2021-05-24 21:22:59', '2021-05-24 21:22:59'),
(359, 'posr-20210524-022820', 1, 11, 1, 1, 4, 4, 0, 0, 3165, 3212.47, 1.5, 47.48, NULL, NULL, NULL, NULL, 1, 4, NULL, 3212.47, NULL, NULL, '2021-05-24 21:28:20', '2021-05-24 21:28:20'),
(360, 'posr-20210524-023254', 1, 11, 19, 1, 1, 1, 0, 0, 30000, 30600, 2, 600, NULL, NULL, NULL, NULL, 1, 4, NULL, 30600, NULL, NULL, '2021-05-24 21:32:54', '2021-05-24 21:32:54'),
(361, 'posr-20210524-025506', 1, 11, 2, 1, 1, 1, 0, 0, 2500, 2499, 2, 49, 50, NULL, NULL, NULL, 1, 4, NULL, 2499, NULL, NULL, '2021-05-24 21:55:06', '2021-05-24 21:55:06'),
(362, 'posr-20210524-025649', 1, 11, 8, 1, 3, 3, 0, 0, 1730, 1764.6, 2, 34.6, NULL, NULL, NULL, NULL, 1, 4, NULL, 1764.6, NULL, NULL, '2021-05-24 21:56:49', '2021-05-24 21:56:49'),
(363, 'posr-20210524-032336', 1, 11, 11, 1, 3, 3, 0, 0, 665, 678.3, 2, 13.3, NULL, NULL, NULL, NULL, 1, 4, NULL, 678.3, NULL, NULL, '2021-05-24 22:23:36', '2021-05-24 22:23:36'),
(364, 'posr-20210524-032631', 1, 11, 2, 1, 4, 14, 0, 8.47, 1642, 1674.84, 2, 32.84, NULL, NULL, NULL, NULL, 1, 4, NULL, 1674.84, NULL, NULL, '2021-05-24 22:26:31', '2021-05-24 22:26:31'),
(365, 'posr-20210524-034505', 1, 11, 10, 1, 3, 3, 0, 0, 3900, 3900, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 3900, NULL, NULL, '2021-05-24 22:45:05', '2021-05-24 22:45:05'),
(366, 'posr-20210524-034957', 1, 11, 2, 1, 2, 2, 0, 15, 4015, 4075.22, 1.5, 60.22, NULL, NULL, NULL, NULL, 1, 4, NULL, 4075.22, NULL, NULL, '2021-05-24 22:49:57', '2021-05-24 22:49:57'),
(367, 'posr-20210524-035345', 1, 11, 8, 1, 1, 6, 0, 0, 54000, 54810, 1.5, 810, NULL, NULL, NULL, NULL, 1, 4, NULL, 54810, NULL, NULL, '2021-05-24 22:53:45', '2021-05-24 22:53:45'),
(368, 'posr-20210524-035759', 1, 11, 2, 1, 7, 52, 0, 62.82, 5955, 6044.32, 1.5, 89.33, NULL, NULL, NULL, NULL, 1, 4, NULL, 6044.32, NULL, NULL, '2021-05-24 22:57:59', '2021-05-24 22:57:59'),
(369, 'posr-20210524-035833', 1, 11, 2, 1, 1, 1, 0, 2.82, 144, 146.16, 1.5, 2.16, NULL, NULL, NULL, NULL, 1, 4, NULL, 146.16, NULL, NULL, '2021-05-24 22:58:33', '2021-05-24 22:58:33'),
(370, 'posr-20210524-040247', 1, 11, 2, 1, 3, 3, 0, 0, 222, 225.33, 1.5, 3.33, NULL, NULL, NULL, NULL, 1, 4, NULL, 225.33, NULL, NULL, '2021-05-24 23:02:47', '2021-05-24 23:02:47'),
(371, 'posr-20210524-050030', 1, 11, 13, 1, 1, 1, 0, 0, 2500, 2537.5, 1.5, 37.5, NULL, NULL, NULL, NULL, 1, 4, NULL, 2537.5, NULL, NULL, '2021-05-25 00:00:30', '2021-05-25 00:00:30'),
(372, 'posr-20210524-050308', 1, 11, 1, 1, 1, 1, 0, 0, 110, 112.75, 2.5, 2.75, NULL, NULL, NULL, NULL, 1, 4, NULL, 112.75, NULL, NULL, '2021-05-25 00:03:08', '2021-05-25 00:03:08'),
(373, 'posr-20210524-051829', 1, 11, 1, 1, 1, 1, 0, 0, 110, 110, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 110, NULL, NULL, '2021-05-25 00:18:29', '2021-05-25 00:18:29'),
(374, 'posr-20210524-051830', 1, 11, 1, 1, 1, 1, 0, 0, 110, 110, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 110, NULL, NULL, '2021-05-25 00:18:30', '2021-05-25 00:18:30'),
(375, 'posr-20210524-052052', 1, 11, 1, 1, 1, 1, 0, 0, 110, 112.2, 2, 2.2, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2021-05-25 00:20:52', '2021-05-25 00:20:52'),
(376, 'posr-20210524-052218', 1, 11, 1, 1, 1, 1, 0, 0, 110, 112.75, 2.5, 2.75, NULL, NULL, NULL, NULL, 1, 4, NULL, 112.75, NULL, NULL, '2021-05-25 00:22:18', '2021-05-25 00:22:18'),
(377, 'posr-20210524-052222', 1, 11, 1, 1, 1, 1, 0, 0, 110, 112.75, 2.5, 2.75, NULL, NULL, NULL, NULL, 1, 4, NULL, 112.75, NULL, NULL, '2021-05-25 00:22:22', '2021-05-25 00:22:22'),
(378, 'posr-20210524-053453', 1, 11, 1, 1, 1, 1, 0, 0, 110, 112.75, 2.5, 2.75, NULL, NULL, NULL, NULL, 1, 4, NULL, 112.75, NULL, NULL, '2021-05-25 00:34:53', '2021-05-25 00:34:53'),
(379, 'posr-20210524-053551', 1, 11, 1, 1, 1, 1, 0, 0, 110, 111.65, 1.5, 1.65, NULL, NULL, NULL, NULL, 1, 4, NULL, 111.65, NULL, NULL, '2021-05-25 00:35:51', '2021-05-25 00:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `shop_sales`
--

CREATE TABLE `shop_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `wearhouse_id` int(10) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `total_quantity` varchar(50) NOT NULL,
  `paid_amount` varchar(50) NOT NULL,
  `is_disburse` varchar(50) NOT NULL DEFAULT '0',
  `batch_id` varchar(50) NOT NULL DEFAULT '0',
  `is_cancelled` varchar(50) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_sales`
--

INSERT INTO `shop_sales` (`id`, `sales_id`, `product_id`, `wearhouse_id`, `reference_no`, `total_quantity`, `paid_amount`, `is_disburse`, `batch_id`, `is_cancelled`, `created_at`, `updated_at`) VALUES
(1, 213, 2, 1, 'posr-20210508-020333', '144.00', '144.00', '0', '0', '0', '2021-05-07 20:03:33', '2021-05-07 20:03:33'),
(2, 213, 4, 1, 'posr-20210508-020333', '2.00', '2.00', '0', '0', '0', '2021-05-07 20:03:33', '2021-05-07 20:03:33'),
(3, 215, 3, 1, 'posr-20210508-020649', '250.00', '250.00', '0', '0', '0', '2021-05-07 20:06:49', '2021-05-07 20:06:49'),
(4, 215, 53, 12, 'posr-20210508-020649', '108.00', '108.00', '0', '0', '0', '2021-05-07 20:06:49', '2021-05-07 20:06:49'),
(5, 216, 3, 1, 'posr-20210508-021107', '500.00', '500.00', '0', '0', '0', '2021-05-07 20:11:07', '2021-05-07 20:11:07'),
(6, 216, 10, 1, 'posr-20210508-021107', '22.00', '22.00', '0', '0', '0', '2021-05-07 20:11:07', '2021-05-07 20:11:07'),
(7, 217, 3, 1, 'posr-20210508-023157', '250.00', '250.00', '0', '0', '0', '2021-05-07 20:31:57', '2021-05-07 20:31:57'),
(8, 217, 10, 1, 'posr-20210508-023157', '22.00', '22.00', '0', '0', '0', '2021-05-07 20:31:57', '2021-05-07 20:31:57'),
(9, 218, 2, 1, 'posr-20210509-015547', '144.00', '144.00', '0', '0', '0', '2021-05-08 19:55:47', '2021-05-08 19:55:47'),
(10, 218, 4, 1, 'posr-20210509-015547', '2.00', '2.00', '0', '0', '0', '2021-05-08 19:55:47', '2021-05-08 19:55:47'),
(11, 220, 2, 1, 'posr-20210509-015712', '144.00', '144.00', '0', '0', '0', '2021-05-08 19:57:13', '2021-05-08 19:57:13'),
(12, 220, 4, 1, 'posr-20210509-015712', '2.00', '2.00', '0', '0', '0', '2021-05-08 19:57:13', '2021-05-08 19:57:13'),
(13, 221, 2, 1, 'posr-20210509-020728', '144.00', '144.00', '0', '0', '0', '2021-05-08 20:07:29', '2021-05-08 20:07:29'),
(14, 221, 4, 1, 'posr-20210509-020728', '2.00', '2.00', '0', '0', '0', '2021-05-08 20:07:29', '2021-05-08 20:07:29'),
(15, 222, 2, 1, 'posr-20210509-023357', '144.00', '144.00', '0', '0', '0', '2021-05-08 20:33:57', '2021-05-08 20:33:57'),
(16, 222, 30, 1, 'posr-20210509-023357', '100.00', '100.00', '0', '0', '0', '2021-05-08 20:33:57', '2021-05-08 20:33:57'),
(17, 223, 2, 1, 'posr-20210517-120534', '144.00', '144.00', '0', '0', '0', '2021-05-16 18:05:34', '2021-05-16 18:05:34'),
(18, 223, 4, 1, 'posr-20210517-120534', '2.00', '2.00', '0', '0', '0', '2021-05-16 18:05:34', '2021-05-16 18:05:34'),
(19, 224, 55, 2, 'posr-20210517-123952', '240.00', '240.00', '0', '0', '0', '2021-05-17 06:39:52', '2021-05-22 08:17:17'),
(20, 225, 55, 2, 'posr-20210517-125428', '120.00', '120.00', '0', '0', '0', '2021-05-17 06:54:28', '2021-05-22 08:17:17'),
(21, 226, 55, 2, 'posr-20210517-012215', '120.00', '120.00', '0', '0', '0', '2021-05-17 07:22:15', '2021-05-22 08:17:17'),
(22, 227, 2, 1, 'posr-20210517-080025', '144.00', '144.00', '0', '0', '0', '2021-05-17 14:00:25', '2021-05-17 14:00:25'),
(23, 228, 4, 1, 'posr-20210517-080109', '2.00', '2.00', '0', '0', '0', '2021-05-17 14:01:09', '2021-05-17 14:01:09'),
(24, 228, 2, 1, 'posr-20210517-080109', '144.00', '144.00', '0', '0', '0', '2021-05-17 14:01:09', '2021-05-17 14:01:09'),
(25, 229, 2, 1, 'posr-20210517-080357', '144.00', '144.00', '0', '0', '0', '2021-05-17 14:03:57', '2021-05-17 14:03:57'),
(26, 233, 2, 1, 'posr-20210517-085013', '144.00', '144.00', '0', '0', '0', '2021-05-17 14:50:13', '2021-05-17 14:50:13'),
(27, 233, 4, 1, 'posr-20210517-085013', '2.00', '2.00', '0', '0', '0', '2021-05-17 14:50:13', '2021-05-17 14:50:13'),
(28, 234, 2, 1, 'posr-20210517-085230', '144.00', '144.00', '0', '0', '0', '2021-05-17 14:52:30', '2021-05-17 14:52:30'),
(29, 234, 4, 1, 'posr-20210517-085230', '2.00', '2.00', '0', '0', '0', '2021-05-17 14:52:30', '2021-05-17 14:52:30'),
(30, 235, 48, 1, 'posr-20210517-093511', '3.00', '3.00', '0', '0', '0', '2021-05-17 15:35:11', '2021-05-17 15:35:11'),
(31, 237, 62, 1, 'posr-20210519-012753', '2500.00', '2500.00', '0', '0', '0', '2021-05-19 07:27:53', '2021-05-19 07:27:53'),
(32, 238, 62, 1, 'posr-20210519-013346', '2500.00', '2500.00', '0', '0', '0', '2021-05-19 07:33:46', '2021-05-19 07:33:46'),
(33, 239, 62, 1, 'posr-20210519-014355', '2500.00', '2500.00', '0', '0', '0', '2021-05-19 07:43:55', '2021-05-19 07:43:55'),
(34, 240, 62, 1, 'posr-20210519-014722', '2500.00', '2500.00', '0', '0', '0', '2021-05-19 07:47:22', '2021-05-19 07:47:22'),
(35, 241, 62, 1, 'posr-20210519-014814', '2500.00', '2500.00', '0', '0', '0', '2021-05-19 07:48:14', '2021-05-19 07:48:14'),
(36, 242, 69, 1, 'posr-20210519-021041', '2500.00', '2500.00', '0', '0', '0', '2021-05-19 08:10:41', '2021-05-19 08:10:41'),
(37, 243, 70, 8, 'posr-20210519-022812', '555.00', '555.00', '0', '0', '0', '2021-05-19 08:28:12', '2021-05-19 08:28:12'),
(38, 244, 71, 1, 'posr-20210519-024638', '5554.00', '5554.00', '0', '0', '0', '2021-05-19 08:46:38', '2021-05-19 08:46:38'),
(39, 245, 74, 2, 'posr-20210519-032954', '3000.00', '3000.00', '0', '0', '0', '2021-05-19 09:29:54', '2021-05-22 08:17:17'),
(40, 246, 77, 2, 'posr-20210519-034240', '1200.00', '1200.00', '0', '0', '0', '2021-05-19 09:42:40', '2021-05-22 08:17:17'),
(41, 247, 78, 1, 'posr-20210519-035658', '7896.00', '7896.00', '0', '0', '0', '2021-05-19 09:56:58', '2021-05-19 09:56:58'),
(42, 248, 78, 1, 'posr-20210519-040918', '7896.00', '7896.00', '0', '0', '0', '2021-05-19 10:09:18', '2021-05-19 10:09:18'),
(43, 249, 79, 2, 'posr-20210519-041657', '788.00', '788.00', '0', '0', '0', '2021-05-19 10:16:57', '2021-05-22 08:17:17'),
(44, 250, 81, 2, 'posr-20210519-074537', '12000.00', '12000.00', '0', '0', '0', '2021-05-19 13:45:37', '2021-05-22 08:17:17'),
(45, 251, 82, 10, 'posr-20210519-083313', '560.00', '560.00', '0', '0', '0', '2021-05-19 14:33:13', '2021-05-19 14:33:13'),
(46, 252, 2, 1, 'posr-20210519-105807', '144.00', '144.00', '0', '0', '0', '2021-05-19 16:58:07', '2021-05-19 16:58:07'),
(47, 253, 2, 1, 'posr-20210519-110628', '151.20', '151.20', '0', '0', '0', '2021-05-19 17:06:28', '2021-05-19 17:06:28'),
(48, 254, 2, 1, 'posr-20210519-111031', '144.00', '144.00', '0', '0', '0', '2021-05-19 17:10:31', '2021-05-19 17:10:31'),
(49, 255, 83, 8, 'posr-20210520-072712', '1000.00', '1000.00', '0', '0', '0', '2021-05-20 01:27:12', '2021-05-20 01:27:12'),
(50, 256, 84, 2, 'posr-20210520-110345', '750.00', '750.00', '0', '0', '0', '2021-05-20 05:03:46', '2021-05-22 08:17:17'),
(51, 257, 85, 1, 'posr-20210520-111035', '677.00', '677.00', '0', '0', '0', '2021-05-20 05:10:35', '2021-05-20 05:10:35'),
(52, 258, 86, 10, 'posr-20210520-112506', '545.00', '545.00', '0', '0', '0', '2021-05-20 05:25:06', '2021-05-20 05:25:06'),
(53, 259, 87, 13, 'posr-20210520-114031', '850.00', '850.00', '0', '0', '0', '2021-05-20 05:40:31', '2021-05-20 05:40:31'),
(54, 260, 90, 9, 'posr-20210520-120758', '1500.00', '1500.00', '0', '0', '0', '2021-05-20 06:07:58', '2021-05-20 06:07:58'),
(55, 261, 93, 1, 'posr-20210520-125017', '5555.00', '5555.00', '0', '0', '0', '2021-05-20 06:50:17', '2021-05-20 06:50:17'),
(56, 262, 95, 2, 'posr-20210520-125907', '1200.00', '1200.00', '0', '0', '0', '2021-05-20 06:59:07', '2021-05-22 08:17:17'),
(57, 263, 102, 7, 'posr-20210520-090844', '15000.00', '15000.00', '0', '0', '0', '2021-05-20 15:08:44', '2021-05-20 15:08:44'),
(58, 264, 105, 2, 'posr-20210521-105933', '25000.00', '25000.00', '0', '0', '0', '2021-05-21 04:59:33', '2021-05-22 08:17:17'),
(59, 265, 106, 7, 'posr-20210521-110201', '1200.00', '1200.00', '0', '0', '0', '2021-05-21 05:02:01', '2021-05-21 05:02:01'),
(60, 266, 106, 7, 'posr-20210521-110202', '1200.00', '1200.00', '0', '0', '0', '2021-05-21 05:02:02', '2021-05-21 05:02:02'),
(61, 267, 106, 7, 'posr-20210521-110203', '1200.00', '1200.00', '0', '0', '0', '2021-05-21 05:02:03', '2021-05-21 05:02:03'),
(62, 268, 107, 8, 'posr-20210521-112019', '450.00', '450.00', '0', '0', '0', '2021-05-21 05:20:19', '2021-05-21 05:20:19'),
(63, 269, 108, 1, 'posr-20210521-113054', '555.00', '555.00', '0', '0', '0', '2021-05-21 05:30:54', '2021-05-21 05:30:54'),
(64, 270, 109, 1, 'posr-20210521-113657', '5555.00', '5555.00', '0', '0', '0', '2021-05-21 05:36:57', '2021-05-21 05:36:57'),
(65, 271, 110, 10, 'posr-20210521-114441', '780.00', '780.00', '0', '0', '0', '2021-05-21 05:44:41', '2021-05-21 05:44:41'),
(66, 272, 114, 1, 'posr-20210521-120603', '1200.00', '1200.00', '0', '0', '0', '2021-05-21 06:06:03', '2021-05-21 06:06:03'),
(67, 273, 117, 1, 'posr-20210521-121959', '520.00', '520.00', '0', '0', '0', '2021-05-21 06:19:59', '2021-05-21 06:19:59'),
(68, 273, 25, 1, 'posr-20210521-121959', '1015.00', '1015.00', '0', '0', '0', '2021-05-21 06:19:59', '2021-05-21 06:19:59'),
(69, 273, 110, 10, 'posr-20210521-121959', '780.00', '780.00', '0', '0', '0', '2021-05-21 06:19:59', '2021-05-21 06:19:59'),
(70, 273, 22, 1, 'posr-20210521-121959', '1015.00', '1015.00', '0', '0', '0', '2021-05-21 06:19:59', '2021-05-21 06:19:59'),
(71, 274, 128, 13, 'posr-20210521-015922', '250.00', '250.00', '0', '0', '0', '2021-05-21 07:59:22', '2021-05-21 07:59:22'),
(72, 275, 129, 1, 'posr-20210521-020536', '200.00', '200.00', '0', '0', '0', '2021-05-21 08:05:36', '2021-05-21 08:05:36'),
(73, 276, 131, 1, 'posr-20210521-023116', '900.00', '900.00', '0', '0', '0', '2021-05-21 08:31:16', '2021-05-21 08:31:16'),
(74, 277, 133, 1, 'posr-20210521-033351', '1200.00', '1200.00', '0', '0', '0', '2021-05-21 09:33:51', '2021-05-21 09:33:51'),
(75, 278, 126, 1, 'posr-20210522-103502', '363.00', '363.00', '0', '0', '0', '2021-05-22 04:35:02', '2021-05-22 04:35:02'),
(76, 279, 135, 1, 'posr-20210522-104722', '1200.00', '1200.00', '0', '0', '0', '2021-05-22 04:47:22', '2021-05-22 04:47:22'),
(77, 280, 136, 7, 'posr-20210522-110430', '750.00', '750.00', '0', '0', '0', '2021-05-22 05:04:30', '2021-05-22 05:04:30'),
(78, 281, 137, 1, 'posr-20210522-111839', '1000.00', '1000.00', '0', '0', '0', '2021-05-22 05:18:40', '2021-05-22 05:18:40'),
(79, 282, 138, 8, 'posr-20210522-113845', '100000.00', '100000.00', '0', '0', '0', '2021-05-22 05:38:45', '2021-05-22 05:38:45'),
(80, 283, 143, 10, 'posr-20210522-122059', '500000.00', '500000.00', '0', '0', '0', '2021-05-22 06:20:59', '2021-05-22 06:20:59'),
(81, 284, 22, 1, 'posr-20210522-122431', '1015.00', '1015.00', '0', '0', '0', '2021-05-22 06:24:31', '2021-05-22 06:24:31'),
(82, 285, 144, 1, 'posr-20210522-122958', '120.00', '120.00', '0', '0', '0', '2021-05-22 06:29:58', '2021-05-22 06:29:58'),
(83, 286, 58, 8, 'posr-20210522-125053', '1000.00', '1000.00', '0', '0', '0', '2021-05-22 06:50:53', '2021-05-22 06:50:53'),
(84, 287, 145, 8, 'posr-20210522-010051', '1200.00', '1200.00', '0', '0', '0', '2021-05-22 07:00:51', '2021-05-22 07:00:51'),
(85, 288, 146, 9, 'posr-20210522-011047', '750.00', '750.00', '0', '0', '0', '2021-05-22 07:10:47', '2021-05-22 07:10:47'),
(86, 289, 147, 10, 'posr-20210522-012202', '500.00', '500.00', '0', '0', '0', '2021-05-22 07:22:02', '2021-05-22 07:22:02'),
(87, 292, 64, 1, 'posr-20210522-024654', '120.00', '120.00', '0', '0', '0', '2021-05-22 08:46:54', '2021-05-22 08:46:54'),
(88, 293, 2, 1, 'posr-20210522-024802', '144.00', '144.00', '0', '0', '0', '2021-05-22 08:48:02', '2021-05-22 08:48:02'),
(89, 294, 149, 1, 'posr-20210522-025553', '120.00', '120.00', '0', '0', '0', '2021-05-22 08:55:53', '2021-05-22 08:55:53'),
(90, 295, 150, 1, 'posr-20210522-030101', '1350.00', '1350.00', '0', '0', '0', '2021-05-22 09:01:01', '2021-05-22 09:01:01'),
(91, 297, 151, 11, 'posr-20210522-032428', '522.00', '522.00', '0', '0', '0', '2021-05-22 09:24:28', '2021-05-22 09:24:28'),
(92, 301, 30, 1, 'posr-20210522-043705', '300.00', '300.00', '0', '0', '0', '2021-05-22 10:37:05', '2021-05-22 10:37:05'),
(93, 302, 64, 1, 'posr-20210522-084125', '120.00', '120.00', '0', '0', '0', '2021-05-22 14:41:25', '2021-05-22 14:41:25'),
(94, 308, 154, 13, 'posr-20210523-110351', '350.00', '350.00', '0', '0', '0', '2021-05-23 05:03:51', '2021-05-23 05:03:51'),
(95, 311, 2, 1, 'posr-20210523-121016', '288.00', '288.00', '0', '0', '0', '2021-05-23 06:10:16', '2021-05-23 06:10:16'),
(96, 311, 4, 1, 'posr-20210523-121016', '2.00', '2.00', '0', '0', '0', '2021-05-23 06:10:16', '2021-05-23 06:10:16'),
(97, 311, 22, 1, 'posr-20210523-121016', '2030.00', '2030.00', '0', '0', '0', '2021-05-23 06:10:16', '2021-05-23 06:10:16'),
(98, 311, 31, 1, 'posr-20210523-121016', '300.00', '300.00', '0', '0', '0', '2021-05-23 06:10:16', '2021-05-23 06:10:16'),
(99, 311, 30, 1, 'posr-20210523-121016', '100.00', '100.00', '0', '0', '0', '2021-05-23 06:10:16', '2021-05-23 06:10:16'),
(100, 314, 2, 1, 'posr-20210523-122737', '144.00', '144.00', '0', '0', '0', '2021-05-23 06:27:37', '2021-05-23 06:27:37'),
(101, 314, 4, 1, 'posr-20210523-122737', '2.00', '2.00', '0', '0', '0', '2021-05-23 06:27:37', '2021-05-23 06:27:37'),
(102, 315, 2, 1, 'posr-20210523-122754', '144.00', '144.00', '0', '0', '0', '2021-05-23 06:27:54', '2021-05-23 06:27:54'),
(103, 315, 4, 1, 'posr-20210523-122754', '2.00', '2.00', '0', '0', '0', '2021-05-23 06:27:54', '2021-05-23 06:27:54'),
(104, 320, 22, 1, 'posr-20210523-011209', '2030.00', '2030.00', '0', '0', '0', '2021-05-23 07:12:09', '2021-05-23 07:12:09'),
(105, 320, 31, 1, 'posr-20210523-011209', '600.00', '600.00', '0', '0', '0', '2021-05-23 07:12:09', '2021-05-23 07:12:09'),
(106, 321, 31, 1, 'posr-20210523-011234', '300.00', '300.00', '0', '0', '0', '2021-05-23 07:12:34', '2021-05-23 07:12:34'),
(107, 321, 56, 1, 'posr-20210523-011234', '100.00', '100.00', '0', '0', '0', '2021-05-23 07:12:34', '2021-05-23 07:12:34'),
(108, 327, 2, 1, 'posr-20210523-025733', '144.00', '144.00', '0', '0', '0', '2021-05-23 08:57:33', '2021-05-23 08:57:33'),
(109, 329, 110, 10, 'posr-20210523-030234', '780.00', '780.00', '0', '0', '0', '2021-05-23 09:02:34', '2021-05-23 09:02:34'),
(110, 329, 150, 1, 'posr-20210523-030234', '1500.00', '1500.00', '0', '0', '0', '2021-05-23 09:02:34', '2021-05-23 09:02:34'),
(111, 329, 2, 1, 'posr-20210523-030234', '144.00', '144.00', '0', '0', '0', '2021-05-23 09:02:34', '2021-05-23 09:02:34'),
(112, 330, 22, 1, 'posr-20210523-031815', '2030.00', '2030.00', '0', '0', '0', '2021-05-23 09:18:16', '2021-05-23 09:18:16'),
(113, 330, 4, 1, 'posr-20210523-031815', '4.00', '4.00', '0', '0', '0', '2021-05-23 09:18:16', '2021-05-23 09:18:16'),
(114, 333, 159, 1, 'posr-20210524-104045', '1200.00', '1200.00', '0', '0', '0', '2021-05-24 04:40:45', '2021-05-24 04:40:45'),
(115, 334, 22, 1, 'posr-20210524-110333', '2030.00', '2030.00', '0', '0', '0', '2021-05-24 05:03:33', '2021-05-24 05:03:33'),
(116, 334, 2, 1, 'posr-20210524-110333', '288.00', '288.00', '0', '0', '0', '2021-05-24 05:03:33', '2021-05-24 05:03:33'),
(117, 334, 4, 1, 'posr-20210524-110333', '4.00', '4.00', '0', '0', '0', '2021-05-24 05:03:33', '2021-05-24 05:03:33'),
(118, 334, 48, 1, 'posr-20210524-110333', '6.00', '6.00', '0', '0', '0', '2021-05-24 05:03:33', '2021-05-24 05:03:33'),
(119, 337, 64, 1, 'posr-20210524-112332', '120.00', '120.00', '0', '0', '0', '2021-05-24 05:23:32', '2021-05-24 05:23:32'),
(120, 339, 162, 11, 'posr-20210524-113424', '120.00', '120.00', '0', '0', '0', '2021-05-24 05:34:24', '2021-05-24 05:34:24'),
(121, 342, 2, 1, 'posr-20210524-113756', '144.00', '144.00', '0', '0', '0', '2021-05-24 05:37:56', '2021-05-24 05:37:56'),
(122, 342, 4, 1, 'posr-20210524-113756', '2.00', '2.00', '0', '0', '0', '2021-05-24 05:37:56', '2021-05-24 05:37:56'),
(123, 342, 22, 1, 'posr-20210524-113756', '1015.00', '1015.00', '0', '0', '0', '2021-05-24 05:37:56', '2021-05-24 05:37:56'),
(124, 342, 25, 1, 'posr-20210524-113756', '1015.00', '1015.00', '0', '0', '0', '2021-05-24 05:37:56', '2021-05-24 05:37:56'),
(125, 342, 30, 1, 'posr-20210524-113756', '100.00', '100.00', '0', '0', '0', '2021-05-24 05:37:56', '2021-05-24 05:37:56'),
(126, 342, 31, 1, 'posr-20210524-113756', '300.00', '300.00', '0', '0', '0', '2021-05-24 05:37:56', '2021-05-24 05:37:56'),
(127, 343, 2, 1, 'posr-20210524-113822', '144.00', '144.00', '0', '0', '0', '2021-05-24 05:38:22', '2021-05-24 05:38:22'),
(128, 343, 4, 1, 'posr-20210524-113822', '2.00', '2.00', '0', '0', '0', '2021-05-24 05:38:22', '2021-05-24 05:38:22'),
(129, 343, 25, 1, 'posr-20210524-113822', '1015.00', '1015.00', '0', '0', '0', '2021-05-24 05:38:22', '2021-05-24 05:38:22'),
(130, 343, 30, 1, 'posr-20210524-113822', '100.00', '100.00', '0', '0', '0', '2021-05-24 05:38:22', '2021-05-24 05:38:22'),
(131, 343, 31, 1, 'posr-20210524-113822', '300.00', '300.00', '0', '0', '0', '2021-05-24 05:38:22', '2021-05-24 05:38:22'),
(132, 344, 121, 11, 'posr-20210524-124422', '500.00', '500.00', '0', '0', '0', '2021-05-24 06:44:22', '2021-05-24 06:44:22'),
(133, 345, 121, 11, 'posr-20210524-124529', '500.00', '500.00', '0', '0', '0', '2021-05-24 06:45:29', '2021-05-24 06:45:29'),
(134, 346, 121, 11, 'posr-20210524-124717', '500.00', '500.00', '0', '0', '0', '2021-05-24 06:47:17', '2021-05-24 06:47:17'),
(135, 347, 121, 11, 'posr-20210524-124810', '500.00', '500.00', '0', '0', '0', '2021-05-24 06:48:10', '2021-05-24 06:48:10'),
(136, 348, 163, 10, 'posr-20210524-010623', '1050.00', '1050.00', '0', '0', '0', '2021-05-24 07:06:23', '2021-05-24 07:06:23'),
(137, 350, 121, 11, 'posr-20210524-011552', '500.00', '500.00', '0', '0', '0', '2021-05-24 07:15:52', '2021-05-24 07:15:52'),
(138, 351, 165, 1, 'posr-20210524-011605', '2000.00', '2000.00', '0', '0', '0', '2021-05-24 07:16:05', '2021-05-24 07:16:05'),
(139, 352, 62, 1, 'posr-20210524-012146', '2500.00', '2500.00', '0', '0', '0', '2021-05-24 07:21:46', '2021-05-24 07:21:46'),
(140, 352, 110, 10, 'posr-20210524-012146', '1560.00', '1560.00', '0', '0', '0', '2021-05-24 07:21:46', '2021-05-24 07:21:46'),
(141, 352, 22, 1, 'posr-20210524-012146', '1015.00', '1015.00', '0', '0', '0', '2021-05-24 07:21:46', '2021-05-24 07:21:46'),
(142, 355, 166, 12, 'posr-20210524-013920', '1850.00', '1850.00', '0', '0', '0', '2021-05-24 07:39:21', '2021-05-24 07:39:21'),
(143, 355, 151, 11, 'posr-20210524-013920', '522.00', '522.00', '0', '0', '0', '2021-05-24 07:39:21', '2021-05-24 07:39:21'),
(144, 355, 121, 11, 'posr-20210524-013920', '500.00', '500.00', '0', '0', '0', '2021-05-24 07:39:21', '2021-05-24 07:39:21'),
(145, 357, 168, 15, 'posr-20210524-021341', '2000.00', '2000.00', '0', '0', '0', '2021-05-24 08:13:41', '2021-05-24 08:13:41'),
(146, 358, 2, 1, 'posr-20210524-022259', '288.00', '288.00', '0', '0', '0', '2021-05-24 08:22:59', '2021-05-24 08:22:59'),
(147, 358, 4, 1, 'posr-20210524-022259', '2.00', '2.00', '0', '0', '0', '2021-05-24 08:22:59', '2021-05-24 08:22:59'),
(148, 358, 31, 1, 'posr-20210524-022259', '600.00', '600.00', '0', '0', '0', '2021-05-24 08:22:59', '2021-05-24 08:22:59'),
(149, 358, 22, 1, 'posr-20210524-022259', '3045.00', '3045.00', '0', '0', '0', '2021-05-24 08:22:59', '2021-05-24 08:22:59'),
(150, 360, 169, 19, 'posr-20210524-023254', '30000.00', '30000.00', '0', '0', '0', '2021-05-24 08:32:54', '2021-05-24 08:32:54'),
(151, 361, 170, 2, 'posr-20210524-025506', '2500.00', '2500.00', '0', '0', '0', '2021-05-24 08:55:06', '2021-05-24 08:55:06'),
(152, 364, 2, 1, 'posr-20210524-032631', '432.00', '432.00', '0', '0', '0', '2021-05-24 09:26:31', '2021-05-24 09:26:31'),
(153, 364, 30, 1, 'posr-20210524-032631', '300.00', '300.00', '0', '0', '0', '2021-05-24 09:26:31', '2021-05-24 09:26:31'),
(154, 364, 4, 1, 'posr-20210524-032631', '10.00', '10.00', '0', '0', '0', '2021-05-24 09:26:31', '2021-05-24 09:26:31'),
(155, 364, 31, 1, 'posr-20210524-032631', '900.00', '900.00', '0', '0', '0', '2021-05-24 09:26:31', '2021-05-24 09:26:31'),
(156, 367, 174, 8, 'posr-20210524-035345', '54000.00', '54000.00', '0', '0', '0', '2021-05-24 09:53:45', '2021-05-24 09:53:45'),
(157, 368, 31, 1, 'posr-20210524-035759', '1200.00', '1200.00', '0', '0', '0', '2021-05-24 09:57:59', '2021-05-24 09:57:59'),
(158, 368, 30, 1, 'posr-20210524-035759', '300.00', '300.00', '0', '0', '0', '2021-05-24 09:57:59', '2021-05-24 09:57:59'),
(159, 368, 4, 1, 'posr-20210524-035759', '62.00', '62.00', '0', '0', '0', '2021-05-24 09:57:59', '2021-05-24 09:57:59'),
(160, 368, 2, 1, 'posr-20210524-035759', '144.00', '144.00', '0', '0', '0', '2021-05-24 09:57:59', '2021-05-24 09:57:59'),
(161, 369, 2, 1, 'posr-20210524-035833', '144.00', '144.00', '0', '0', '0', '2021-05-24 09:58:33', '2021-05-24 09:58:33'),
(162, 371, 179, 13, 'posr-20210524-050030', '2500.00', '2500.00', '0', '0', '0', '2021-05-24 11:00:30', '2021-05-24 11:00:30'),
(163, 372, 64, 1, 'posr-20210524-050308', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:03:08', '2021-05-24 11:03:08'),
(164, 373, 64, 1, 'posr-20210524-051829', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:18:29', '2021-05-24 11:18:29'),
(165, 374, 64, 1, 'posr-20210524-051830', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:18:30', '2021-05-24 11:18:30'),
(166, 375, 64, 1, 'posr-20210524-052052', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:20:52', '2021-05-24 11:20:52'),
(167, 376, 64, 1, 'posr-20210524-052218', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:22:18', '2021-05-24 11:22:18'),
(168, 377, 64, 1, 'posr-20210524-052222', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:22:22', '2021-05-24 11:22:22'),
(169, 378, 64, 1, 'posr-20210524-053453', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:34:53', '2021-05-24 11:34:53'),
(170, 379, 64, 1, 'posr-20210524-053551', '110.00', '110.00', '0', '0', '0', '2021-05-24 11:35:51', '2021-05-24 11:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(1, 'scr-20190228-124939', 2, NULL, NULL, 1, 'full', '20190228-124939.csv', NULL, NULL, 0, '2019-02-28 06:49:39', '2019-02-28 06:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'abdullah', 'globaltouch.jpg', 'global touch', NULL, 'abdullah@globaltouch.com', '231231', 'fsdfs', 'fsdfs', NULL, NULL, 'bd', 1, '2018-05-12 22:06:34', '2019-12-21 10:58:47'),
(2, 'test', 'lion.jpg', 'lion', NULL, 'lion@gmail.com', '242', 'gfdg', 'fgd', NULL, NULL, NULL, 0, '2018-05-29 23:59:41', '2018-05-30 00:00:06'),
(3, 'ismail', NULL, 'techbd', NULL, 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'bangladesh', 1, '2018-07-20 04:34:17', '2018-07-20 04:34:17'),
(4, 'modon', 'mogaFruit.jpg', 'mogaFruit', NULL, 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', NULL, NULL, 'bd', 0, '2018-09-01 04:30:07', '2018-09-01 04:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'The City bank', 1.5, 1, '2018-05-12 09:58:30', '2021-05-09 08:53:15'),
(2, 'The Non City bank', 2, 1, '2018-05-12 09:58:43', '2021-05-09 08:53:53'),
(3, 'test', 6, 0, '2018-05-27 23:32:54', '2018-05-27 23:34:44'),
(4, 'Amex', 2.5, 1, '2018-09-01 00:58:57', '2021-05-09 08:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, NULL, NULL, '2018-08-08 11:17:10', '2018-12-24 22:16:55'),
(6, 'tr-20191205-075504', 1, 1, 1, 2, 1, 1, 0, 2, 0, 2, NULL, NULL, '2019-12-05 13:55:04', '2019-12-05 14:09:42'),
(8, 'tr-20200122-123058', 1, 1, 1, 2, 1, 10, 0, 1000, NULL, 1000, NULL, NULL, '2020-01-22 06:30:58', '2020-01-22 06:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'Piece', NULL, '*', 1, 1, '2018-05-12 02:27:46', '2018-08-17 21:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 09:57:05', '2018-05-12 09:57:05'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 09:57:45', '2020-03-11 10:36:59'),
(4, 'm', 'meter', NULL, '*', 1, 1, '2018-05-12 09:58:07', '2018-05-27 23:20:57'),
(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-27 23:20:20', '2018-05-27 23:20:25'),
(7, 'kg', 'kilogram', NULL, '*', 1, 1, '2018-06-25 00:49:26', '2018-06-25 00:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 22:35:51', '2018-07-31 22:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 00:06:28', '2018-09-01 00:06:28'),
(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 03:40:29', '2019-03-02 11:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'DJhJIjUodLWqnh1MEXB57vQWAzF3ycW7GI5gmEaQnegYMFI52ALFcOP82pla', '12112', 'Joyeeta', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2021-04-10 19:04:05'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, NULL, NULL, 1, 0, '2018-06-13 22:00:31', '2018-12-25 03:47:07'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, NULL, NULL, 0, 1, '2018-06-23 03:05:33', '2018-06-23 03:13:45'),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', NULL, '31231', NULL, 4, NULL, NULL, 0, 1, '2018-06-24 22:35:49', '2018-07-02 01:07:39'),
(9, 'staff', 'anda@gmail.com', '$2y$10$pe8H2LpcKrCoXcYnP5eziOwg3NXVnFtqSPO4zHuAAjKcjUEopMAv2', '133areCnV18TD7VlaKTXsbFwOmvxIPwEOuRTJoS48EHJnYpXfEMMtYYnNYLS', '3123', NULL, 4, 2, 1, 1, 0, '2018-07-02 01:08:08', '2021-05-20 05:49:56'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, NULL, NULL, 0, 0, '2018-09-07 23:44:48', '2018-09-07 23:44:48'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 02:47:56', '2018-10-23 02:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', NULL, 4, 2, 2, 0, 1, '2018-12-30 00:48:37', '2019-03-06 04:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', NULL, '1213', NULL, 1, NULL, NULL, 0, 1, '2019-01-03 00:08:31', '2019-03-03 04:02:29'),
(14, 'wenterbalen', 'wenterbalen@gmail.com', '$2y$10$1bivzizC9bfOHyRsSS7wQeDbhv2vN0vC3tHCkZ0p6TzD6B4Amt8gS', 'ZMjpgMQMo1pKVT9hyJjl3RaUFXSgzvjpKRHvxK6pgd13LUjzPKhOv8Y3Vcyj', '07801234567', 'aac.co', 1, 1, 1, 0, 0, '2021-04-25 23:19:23', '2021-04-25 23:19:23'),
(15, 'mahbub', 'mahbub@gmail.com', '$2y$10$is2DY8oFxRV8xrL0sMN6yuDZ8moCPUFlCP/MFfqevZ64uSQcoQDB2', 'vaegoE2W6iUIFDup6mOYLi88ovBX2Iqe77ilGg36ebHxCyWJzxNYcUEwgsc0', '01884552517', 'ekShop', 2, NULL, NULL, 1, 0, '2021-05-07 06:48:26', '2021-05-07 06:56:45'),
(16, 'Foujia', 'foujiamoon55@gmail.com', '$2y$10$Ce7DRZnGxuR3Rt292MfZaezUkY/4QW/ezHxuYo0r/YF7cml/RKH4u', 'ZUxTwgisoIqK79ZR2mjG6icvIsqWTwUbpDVewfbH986Bim49Hb7SbqpsnCxN', '01733516060', 'joyeeta', 1, 1, 14, 0, 0, '2021-05-18 03:32:18', '2021-05-18 03:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Medium', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(3, 'Small', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(5, 'Large', '2019-11-24 06:07:20', '2019-11-24 08:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A-01 বাঁচতে শেখা মহিলা উন্নয়ন সংস্থা', '01777338836', NULL, 'গোলন্দ, রাজবাড়ি', 1, '2018-05-12 07:51:44', '2021-04-11 20:45:12'),
(2, 'A-02 দৌলতপুর দুঃস্থ মহিলা সমিতি দৌলতপুর, ফাজিলখার হাট', '01718469308', NULL, 'পটিয়া, চট্টগ্রাম', 1, '2018-05-12 08:09:03', '2021-04-11 20:46:10'),
(3, 'test', NULL, NULL, 'dqwdeqw', 0, '2018-05-30 00:14:23', '2018-05-30 00:14:47'),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-08-31 22:53:26', '2018-08-31 22:54:48'),
(7, 'A-03 ফেডারেশন অব উইমেন এন্টারপ্রিনিয়াস এন্ড ইন্ডাস্ট্রি', '01195261002', NULL, 'বিজিআইসি টাওয়ার (৬- তলা) ৩৪ তোপখানা রোড, ঢাকা', 1, '2021-04-11 21:16:45', '2021-04-11 21:16:45'),
(8, 'A-04 দ্বীপ মহিলা  সংস্থা', '01732898626', NULL, 'বাগেরহাট', 1, '2021-04-11 21:18:53', '2021-04-11 21:18:53'),
(9, 'A-05 গোলাবাড়ী নারী কল্যাণ সংস্থা', '01711320578', NULL, 'হাজী এসকান্দার আলী খান সড়ক পাকদী, মাদারীপুর', 1, '2021-04-11 21:21:23', '2021-04-11 21:21:23'),
(10, 'A-06 গ্রামীণ আলো', '01716009392', NULL, 'সদর, বগুড়া', 1, '2021-04-11 21:23:40', '2021-04-11 21:23:40'),
(11, 'A-07 কুন্ডলবাগ  পূর্বপাড়া মহিলা  সমিতি', '01944449966', NULL, 'ঘোষবাগ, আশুলিয়া, ঢাকা', 1, '2021-04-11 21:25:05', '2021-04-11 21:25:05'),
(12, 'A-08 সর্দারপাড়া মহিলা ও শিশু উন্নয়ন সমিতি', '01718096742', NULL, 'শেখ হাটি সর্দারপাড়া, যশোর', 1, '2021-04-11 21:26:16', '2021-04-11 21:26:16'),
(13, 'A-09 সূর্যকন্যা নারী উন্নয়ন সমিতি', '01677124514', NULL, 'ঈশাখা রোড রথখোলা, কিশোরগঞ্জ', 1, '2021-04-11 21:28:11', '2021-04-11 21:28:11'),
(14, 'A-10 শহর মহিলা উন্নয়ন সংস্থা', '01716203982', NULL, 'খরমপুর, শেরপুর', 1, '2021-04-11 21:29:22', '2021-04-11 21:29:22'),
(15, 'A-11 নারী উন্নয়ন সংস্থা', '01715040562', NULL, 'আমঘাট রোড, টাঙ্গাইল', 1, '2021-04-11 21:31:02', '2021-04-11 21:31:02'),
(16, 'A-12 খেয়া মহিলা ও শিশু উন্নয়ন সংস্থা', '01721198033', NULL, '৭৩০, চোপদার পাড়া, বেজপাড়া, তালতলা, যশোর', 1, '2021-04-11 21:32:12', '2021-04-11 21:32:12'),
(17, 'A-13 লাকী মহিলা উন্নয়ন সমিতি', '01737588199', NULL, 'সৈয়দপুর, নীলফামারী', 1, '2021-04-11 21:33:13', '2021-04-11 21:33:13'),
(18, 'A-14 ঘোষবাগ মহিলা সমিতি', '01749514212', NULL, 'সাভার, নবীনগর, ঢাকা', 1, '2021-04-11 21:34:35', '2021-04-11 21:34:35'),
(19, 'A-15 নারী মৈত্রী', '01953590269', NULL, '৭৭/বি , মালিবাগ, চৌধুরীপাড়া, ঢাকা', 1, '2021-04-11 21:35:42', '2021-04-11 21:35:42'),
(20, 'A-16 উনিশ মহিলা কল্যাণ সংস্থা', '01731467774', NULL, '৪৬৫, পূর্ব কাজীপাড়া, মিরপুর, ঢাকা', 1, '2021-04-11 21:36:50', '2021-04-11 21:36:50'),
(21, 'A-17 রজনীগন্ধা মহিলা সমিতি', '01713773403', NULL, 'কানাইখালী, বাবুর, নাটোর', 1, '2021-04-11 21:37:51', '2021-04-11 21:37:51'),
(22, 'A-18 জামতৈল মহিলা সমিতি', '01676340194', NULL, 'সরকারপাড়া, জামালপুর', 1, '2021-04-11 21:38:39', '2021-04-11 21:38:39'),
(23, 'A-19 সুখী শাহাবাজপুর মহিলা সমিতি', '01724171283', NULL, 'গাজীপুর রোড, ভোলা পৌরসভা, ভোলা', 1, '2021-04-11 21:39:33', '2021-04-11 21:39:33'),
(24, 'A-20 অন্তরঙ্গ মহিলা সমিতি', '01713574290', NULL, 'গোয়ালন্দ বাজার স্টেশন সংলগ্ন, রাজবাড়ী', 1, '2021-04-11 21:40:27', '2021-04-11 21:40:27'),
(25, 'A-21 আলোর দিশারী মহিলা সংস্থা', '01727211905', NULL, 'গোয়ালন্দ, আরৎপট্টি, রাজবাড়ী', 1, '2021-04-11 21:42:11', '2021-04-11 21:42:11'),
(26, 'A-22 দুঃস্থ নারী জাগরণে কল্যাণ সমিতি', '01813136442', NULL, 'মহিলা কলেজ রোড, ব্রাহ্মণবাড়ীয়া', 1, '2021-04-11 21:43:09', '2021-04-11 21:43:09'),
(27, 'A-23 সচেতন সাহায্য সংস্থা', '01711612752', NULL, 'সীদ্বেশ্বরী রোড, শান্তিনগর, ঢাকা', 1, '2021-04-11 21:43:59', '2021-04-11 21:43:59'),
(28, 'A-24 মুসলিম নগর মহিলা উন্নয়ন সংস্থা', '01715027974', NULL, 'বাড়ী:১২, লেন:৪, পূর্ব কদমতলী, রায়ের বাগ, ঢাকা', 1, '2021-04-11 21:44:45', '2021-04-11 21:44:45'),
(29, 'A-25 বৈশাখী মহিলা উন্নয়ন সমিতি', '01953590269', NULL, 'পূর্ব টেংরী কলেজ রোড, ঈশ্বরদী, পাবনা', 1, '2021-04-11 21:45:37', '2021-04-11 21:45:37'),
(30, 'A-26 জাগো নারী মহিলা কল্যাণ সমিতি', '01190833332', NULL, 'ঈদগাহ রোড, পুরানথানা, কিশোরগঞ্জ', 1, '2021-04-11 21:46:24', '2021-04-11 21:46:24'),
(31, 'A-27  শহীদ  স্মৃতি মহিলা  সমিতি', '01819282631', NULL, 'বাঁশখালী, চট্টগ্রাম', 1, '2021-04-11 21:47:11', '2021-04-11 21:47:11'),
(32, 'A-28 রুপালি মহিলা উন্নয়ন সমিতি', '01717370994', NULL, 'বেড়া, পাবনা', 1, '2021-04-11 21:48:07', '2021-04-11 21:48:07'),
(33, 'A-29 উইমেন্স ইনসিয়েটিভ ফর ডেভেলপমেন্ট এডুকেশন', '01798499345', NULL, 'দরগ্রাম, উপ- সারুটিয়া মানিকগঞ্জ', 1, '2021-04-11 21:49:21', '2021-04-11 21:49:21'),
(34, 'A-30 মহিলা কল্যাণ সমিতি', '01752236897', NULL, 'দুগুলিয়া ,টাঙ্গাইল', 1, '2021-04-11 21:50:37', '2021-04-11 21:50:37'),
(35, 'A-31 নারী  সেবা সংঘ', '01815559829', NULL, '১৭/৮/২-বাবর রোড ,ব্লক -বি ,মোহাম্মদপুর  ঢাকা -১২০৭', 1, '2021-04-11 21:56:31', '2021-04-11 21:56:31'),
(36, 'A-32 পূর্নিমা  মহিলা  উন্নয়ন সমিতি', '01714321959', NULL, 'আজমপুর  চালাবন  শাহাকবীর মাজার রোড , ঢাকা -১২৩০', 1, '2021-04-11 21:57:40', '2021-04-11 21:57:40'),
(37, 'A-33 চান্দগাঁও মহিলা কল্যাণ সমিতি', '01822690212', NULL, 'নাজিরপাড়া ,সানাউল্লাহ গাজীবাড়ি ,চান্দগাঁও,চট্টগ্রাম', 1, '2021-04-11 21:58:31', '2021-04-11 21:58:31'),
(38, 'A34 রুপায়ন মহিলা উন্নয়ন সংস্থা রহমতগঞ্জ', '01717670712', NULL, '2 নং গলি, সিরাজগঞ্জ', 1, '2021-04-11 21:59:24', '2021-04-11 21:59:24'),
(39, 'A35 বৈশাখী মহিলা উন্নয়ন সংস্থা', '01712731490', NULL, 'দক্ষিণ  লালবাগ ,দিনাজপুর', 1, '2021-04-11 22:03:06', '2021-04-11 22:03:06'),
(40, 'A36 নাড়িয়া উন্নয়ন সমিতি', '01718239744', NULL, 'নাড়িয়া', 1, '2021-04-11 22:03:55', '2021-04-11 22:03:55'),
(41, 'A37 বাউসা খানপুর  মহিলা কল্যাণ সমিতি', '01937135687', NULL, 'বেড়াজামা পশ্চিম পাড়া, দীঘুলিয়া, টাঙ্গাইল', 1, '2021-04-11 22:05:42', '2021-04-11 22:05:42'),
(42, 'A38 মনরাজ মহিলা কল্যাণ সমিতি', '01712843615', NULL, 'কুলাউড়া ,মৌলবীবাজার', 1, '2021-04-11 22:07:10', '2021-04-11 22:07:10'),
(43, 'A39 পূর্নভরা মহিলা কল্যাণ সমিতি', '01705110211', NULL, 'মেহেরপুর ,মুখার্জিপাড়া ,সদর থানা ,জিলা ,মেহেরপুর', 1, '2021-04-11 22:08:13', '2021-04-11 22:08:13'),
(44, 'A40 মহিলা কর্মসংস্থান  ও দরিদ্র বিমোচন সংস্থা', '01744842972', NULL, 'সাহেবপাড়া ,জয়পুরহাট', 1, '2021-04-11 22:09:16', '2021-04-11 22:09:16'),
(45, 'A41 বনানী বনশ্রী  মহিলা সংঘ', '01716350918', NULL, 'বাড়ী -১৭,রোড -২৭,ব্লক -জেঃ ২০২ বনানী ,ঢাকা -১২১৩', 1, '2021-04-11 22:11:15', '2021-04-11 22:11:15'),
(46, 'A42 স্মৃতি  ফাউন্ডেশন', '01816505751', NULL, 'সওদাগর বিল্ডিং,৬৩ ষ্টেশন  রোড ,ফেনী', 1, '2021-04-11 22:12:33', '2021-04-11 22:12:33'),
(47, 'A43 ফাররিচিং ইকোনমিকাল এন্ড ইনভিরণমেন্টাল  ডেভেলপমেন্ট (ফ্রীড)', '01716920439', NULL, 'আর্ট গ্যালারি ,ঠাকুরগাঁও', 1, '2021-04-11 22:13:53', '2021-04-11 22:13:53'),
(48, 'A44 সপ্তবর্ণা মহিলা উন্নয়ন সংস্থা', '01719403339', NULL, 'কলেজ রোড চিলমারী, কুরিগ্রাম', 1, '2021-04-11 22:15:12', '2021-04-11 22:15:12'),
(49, 'A45 মহিলা উন্নয়ন সমিতি', '01713523708', NULL, 'করটিয়া, টাঙ্গাইল', 1, '2021-04-11 22:16:05', '2021-04-11 22:16:05'),
(50, 'A46 সেলফ ডেভেলপমেন্ট (এস ডি )', '01712002104', NULL, '৩০ সার্কিট হাউসে রোড ,বিল্ডিং -০৩,ঢাকা', 1, '2021-04-11 22:16:55', '2021-04-11 22:16:55'),
(51, 'A47 দিশারী মহিলা উন্নয়ন সংস্থা', '01760002293', NULL, 'গ্রামঃখানছর ,পোঃ -ছাতিয়াইন ,উপজেলাঃ নাসিরনগর ,ব্রাহ্মণবাড়িয়া', 1, '2021-04-11 22:18:16', '2021-04-11 22:18:16'),
(52, 'A48 ঘরণী  মহিলা উন্নয়ন সমিতি', '01818401968', NULL, 'মাইজদী  বাজার ,নোয়াখালী', 1, '2021-04-11 22:19:03', '2021-04-11 22:19:03'),
(53, 'A49 সুজন মহিলা সংস্থা', '01727331268', NULL, 'গ্রামঃ ভবানপুর পোস্ট তাহেরপুর বাগমারা, রাজশাহী', 1, '2021-04-11 22:19:48', '2021-04-11 22:19:48'),
(54, 'A50 উত্তরণ নারী উন্নয়ন সমিতি', '01726060909', NULL, 'গ্রামঃ বনসেমন্ত,পোঃ হাড়িদিয়া উপজেলাঃ লৌহজং, জেলাঃ মুন্সীগঞ্জ', 1, '2021-04-11 22:20:32', '2021-04-11 22:20:32'),
(55, 'A51 রং এ আমরা মহিলা উন্নয়ন সংস্থা', '01680302734', NULL, '৩৬৩/জি , উত্তর পীরেরবাগ, মিরপুর, ঢাকা', 1, '2021-04-11 22:25:10', '2021-04-11 22:25:10'),
(56, 'A52 সাতক্ষীরা  মহিলা সমিতি', '01818441042', NULL, 'মুনজিত্পুর ,সাতক্ষীরা', 1, '2021-04-11 22:26:05', '2021-04-11 22:26:05'),
(57, 'B01 দুঃস্থ  মা কারিগরী মহিলা সমিতি', '01712821377', NULL, 'ঠিকানা :উত্তর চর্থা ,কামুকিয়াপাড়া ,কুমিল্লা', 1, '2021-04-11 22:27:04', '2021-04-11 22:27:04'),
(58, 'B02 টি এম এস এস হ্যান্ডিক্রাফট', '01711875843', NULL, 'টি এম  এস এস ,বগুড়া সদর', 1, '2021-04-11 22:28:09', '2021-04-11 22:28:09'),
(59, 'E01 ফ্যামিলি টাইস ফর উইমেন ডেভলপমেন্ট', '01716112621', NULL, '১৮৫ মোকসেদপুর কিশোরগঞ্জ', 1, '2021-04-11 22:28:53', '2021-04-11 22:28:53'),
(60, 'E02 সৃজনশীল মহিলা উন্নয়ন সংস্থা', '01712365288', NULL, 'বকসীগঞ্জ ,জামালপুর', 1, '2021-04-11 22:29:42', '2021-04-11 22:29:42'),
(61, 'C01 তৃণমূল  নারী উন্নয়ন সমিতি', '01711479909', NULL, '৬১ ডিবি রোড  সেহবা সদর ,ময়মনসিংহ', 1, '2021-04-11 22:30:24', '2021-04-11 22:30:24'),
(62, 'C02 মায়ের ডাক ইন্টার্নেশনাল ওয়েলফেয়ার অর্গানাইজেশন', '01616595956', NULL, '১৬ নং বাসা রোগ -১, হাউসিং লিমিটেড, মোহাম্মদপুর ঢাকা', 1, '2021-04-11 22:34:32', '2021-04-11 22:34:32'),
(63, 'C03 অনুপম  হস্ত শিল্প এবং শিক্ষানবিশ নারী কল্যাণ সমিতি', '01731519283', NULL, 'দেলদুয়ার ,টাংগাইল', 1, '2021-04-11 22:35:28', '2021-04-11 22:35:28'),
(64, 'C04 তূণমূল নারী সংস্থা', '01711738490', NULL, 'মাষ্টার কোয়ার্টার হবিগঞ্জ', 1, '2021-04-11 22:36:19', '2021-04-11 22:36:19'),
(65, 'C05 সুরভী মহিলা শিক্ষাঙ্গন', '01778414599', NULL, 'মিরপুর, ঢাকা', 1, '2021-04-11 22:38:26', '2021-04-11 22:38:26'),
(66, 'D01 শাপলা মহিলা কল্যাণ সমিতি', '01715628211', NULL, 'বেড়া ,পাবনা', 1, '2021-04-11 22:39:12', '2021-04-11 22:39:12'),
(67, 'D02 ষরকুঞ্জ মহিলা উন্নয়ন সঃ স্থা', '01716809769', NULL, 'বাসা :-১৬৫/এফ ,রোড -৭,ব্লক -সি ,বসুন্ধরা', 1, '2021-04-11 22:40:26', '2021-04-11 22:40:26'),
(68, 'D03 সৃজনশীল মহিলা উন্নয়ন সংস্থা', '01796657271', NULL, 'বকশীগঞ্জ, জামালপুর', 1, '2021-04-11 22:41:14', '2021-04-11 22:41:14'),
(69, 'D04 মফস্বল মহিলা উন্নয়ন সংস্থা', '01681033040', NULL, 'গৃদা নারায়নপুর, শেরপুর টাউন, শেরপুর', 1, '2021-04-11 22:42:05', '2021-04-11 22:42:05'),
(70, 'D05 মাদার এন্ড চাইল্ড ডেভেলপমেন্ট অরগানাজেশন', '01712350175', NULL, 'চৌগাছা ,যশোর', 1, '2021-04-11 22:42:48', '2021-04-11 22:42:48'),
(71, 'D06 তরঙ্গ মহিলা কল্যাণ সংস্থা', '01758208210', NULL, 'জামালপুর', 1, '2021-04-11 22:44:52', '2021-04-11 22:44:52'),
(72, 'D07 পল্লী নারী উন্নয়ন সংস্থা', '01717298947', NULL, 'কিশোরগঞ্জ', 1, '2021-04-11 22:45:29', '2021-04-11 22:45:29'),
(73, 'D08 দলিত নারী ফোরাম', '01726348651', NULL, 'লালমাটিয়া ঢাকা', 1, '2021-04-11 22:47:01', '2021-04-11 22:47:01'),
(74, 'D09 সুদীপ্ত মহিলা উন্নয়ন সংস্থা', '01917768065', NULL, 'গ্রামঃ পেঁচুলিয়া ,পোঃ দোগাছি ,জেলাঃ জয়পুরহাট', 1, '2021-04-11 22:47:42', '2021-04-11 22:47:42'),
(75, 'D10 সঞ্চিতা মহিলা সমিতি', '01554329810', NULL, 'বাজার রোড সাভার ,ঢাকা', 1, '2021-04-11 22:49:11', '2021-04-11 22:49:11'),
(76, 'D11 জুঁই মহিলা উন্নয়ন সংস্থা', '01688072113', NULL, 'গ্রামঃ লক্ষনদিয়া ,ডাকঃ রয়েড়া ,শৈলকুপা', 1, '2021-04-11 22:49:52', '2021-04-11 22:49:52'),
(77, 'D12 অশ্রিতা মহিলা কল্যাণ সমিতি', '01815973713', NULL, 'বাঘমারা ,নবাবগঞ্জ', 1, '2021-04-11 22:50:37', '2021-04-11 22:50:37'),
(78, 'D13 কলেজ পাড়া মহিলা সমিতি', '01713702780', NULL, 'চক দেব কলেজ', 1, '2021-04-11 22:51:18', '2021-04-11 22:51:18'),
(79, 'D14 বাংলাদেশ মহিলা উন্নয়ন সমিতি', '01711350196', NULL, 'দাগুলিয়া ,গৌরীপুর ,ময়মনসিংহ', 1, '2021-04-11 22:52:07', '2021-04-11 22:52:07'),
(80, 'D15 মানব কল্যাণ মহিলা সমিতি', '01913900878', NULL, 'মেলান্দহ ,জামালপুর', 1, '2021-04-11 22:52:49', '2021-04-11 22:52:49'),
(81, 'D16 ওমেন ওরিয়েন্টেশন এন্ড রুরাল লাইফ ডেভেলপমেন্ট', '01712025011', NULL, 'গুহ লক্ষীপুর ,পালপাড়া ,ফরিদপুর', 1, '2021-04-11 22:54:38', '2021-04-11 22:54:38'),
(82, 'D17 জে এ এস মহিলা কল্লান সমিতি', '01922092962', NULL, 'আদর্শপাড়া বাকীর ভাটার উত্তরে ,মাগুরা', 1, '2021-04-11 22:55:22', '2021-04-11 22:55:22'),
(83, 'D18 মোহনা মহিলা উন্নয়ন সমিতি', '01734658124', NULL, 'সূর্যনগর, রাজবাড়ী', 1, '2021-04-11 22:56:06', '2021-04-11 22:56:06'),
(84, 'D19 নারী ও শিশু কল্যাণ সংস্থা', '01711147494', NULL, 'সার্কিট হাউস রোড ,সিরাজগঞ্জ', 1, '2021-04-11 22:56:48', '2021-04-11 22:56:48'),
(85, 'D-20 পল্লী মহিলা উন্নয়ন সংস্থা', '01710810539', NULL, '১০৭, আবুল বাশার রোড মিয়াপাড়া, গোপালগঞ্জ', 1, '2021-04-11 22:58:07', '2021-04-11 22:58:07'),
(86, 'D-21 নিরাপদ মাতৃত্ব ও শিশু কল্যাণ সংস্থা', '01718584064', NULL, 'তামাই, বেলকুচি, সিরাজগঞ্জ', 1, '2021-04-11 23:00:16', '2021-04-11 23:00:16'),
(87, 'D-22 সিন্ধু দ্বীপ মহিলা উন্নয়ন সংস্থা', '01712118571', NULL, 'খামার কাঁচাই টার্মিনাল রোড, দিনাজপুর', 1, '2021-04-11 23:00:57', '2021-04-11 23:00:57'),
(88, 'D-23 অতসী মহিলা কল্যাণ সংস্থা', '01917751889', NULL, 'গ্রাম:চরবসন্তা, উপজেলা:মেলান্দহ, জেলা: জামালপুর', 1, '2021-04-11 23:01:55', '2021-04-11 23:01:55'),
(89, 'DF-11 স্বেচ্ছাসেবী বহুমুখী উন্নয়ন মহিলা সমিতি', '01715696306', NULL, '১ নং  বেড়াডাঙ্গা, রাজবাড়ী', 1, '2021-04-11 23:02:40', '2021-04-11 23:02:40'),
(90, 'DF-12 মুক্তির পথ মহিলা সংস্থা', '01717111725', NULL, 'খাগদি, চরমুগরিয়া, মাদারীপুর', 1, '2021-04-11 23:03:21', '2021-04-11 23:03:21'),
(91, 'DF-13 এসো কিছু করি মহিলা সমিতি', '01917851848', NULL, 'দৌলতপুর, মানিকগঞ্জ', 1, '2021-04-11 23:03:58', '2021-04-11 23:03:58'),
(92, 'DF-15 নড়াইল নারী উন্নয়ন সংস্থা', '01715668420', NULL, 'মহিশখোলা রোড, কেন্দ্রীয় জামে মসজিদ, নড়াইল', 1, '2021-04-11 23:04:44', '2021-04-11 23:04:44'),
(93, 'F-01 চুপড়িয়া মহিলা সংস্থা', '01557311540', NULL, 'চুপড়িয়া, সাতক্ষীরা', 1, '2021-04-11 23:05:36', '2021-04-11 23:05:36'),
(94, 'F-02 শোলনা শিশু  ও মহিলা কল্যাণ সমিতি', '01728621056', NULL, 'শোলনা, বরিশাল', 1, '2021-04-11 23:06:18', '2021-04-11 23:06:18'),
(95, 'F-03 রঘুনাথপুর দুঃস্থ মহিলা কল্যাণ সমিতি', '01718667812', NULL, 'জাফরগঞ্জ, শিবালয়, মানিকগঞ্জ', 1, '2021-04-11 23:08:11', '2021-04-11 23:08:11'),
(96, 'F-04 সমাহার  ৯১১', '017182278831', NULL, 'সাহিদবাগ, ঢাকা', 1, '2021-04-11 23:08:52', '2021-04-11 23:08:52'),
(97, 'F-05 বন্ধন সোসাইটি মহিলা উন্নয়ন কেন্দ্র', '01712143916', NULL, 'বাসা নং:৩২/৩, ব্লক: ডি, শেরশাহসুরি রোড, মোহাম্মদপুর, ঢাকা', 1, '2021-04-11 23:09:50', '2021-04-11 23:09:50'),
(98, 'F-06 বাসাইল খন্দকার পাড়া যুব মহিলা কল্যাণ সমিতি', '01714496899', NULL, 'বাসাইল, টাঙ্গাইল', 1, '2021-04-11 23:12:18', '2021-04-11 23:12:18'),
(99, 'F-07 সৌহার্দ নারী কল্যাণ সমিতি', '01718228376', NULL, 'খানতলী জামে মসজিদ সড়ক, চরমুগরিয়া মাদারীপুর', 1, '2021-04-11 23:12:58', '2021-04-11 23:12:58'),
(100, 'F-08 মহিলা মানবিক উন্নয়ন সংস্থা', '01914902295', NULL, 'বাসাইল, টাঙ্গাইল', 1, '2021-04-11 23:14:16', '2021-04-11 23:14:16'),
(101, 'F-09 নারী জাগরনী বহুমুখী সংস্থা', '01558353701', NULL, 'চরলক্ষীয়া, পাকুন্দিয়া, কিশোরগঞ্জ', 1, '2021-04-11 23:15:01', '2021-04-11 23:15:01'),
(102, 'F-10 দেশ মাতা মহিলা উন্নয়ন সংস্থা', '01918718336', NULL, 'শিক্ষকপাড়া, শৈলকুপা, ঝিনাইদহ', 1, '2021-04-11 23:15:47', '2021-04-11 23:15:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disburse_lists`
--
ALTER TABLE `disburse_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_sales`
--
ALTER TABLE `shop_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disburse_lists`
--
ALTER TABLE `disburse_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `shop_sales`
--
ALTER TABLE `shop_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
