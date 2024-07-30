-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2024 at 07:48 PM
-- Server version: 8.0.37-0ubuntu0.22.04.3
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrdine`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergens`
--

CREATE TABLE `allergens` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_index` smallint NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `restaurant_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `order_index`, `active`, `restaurant_id`) VALUES
(1, '2024-02-26 06:13:01', '2024-02-26 06:15:20', NULL, 'non', 33, 1, 1),
(2, '2024-02-26 06:13:01', '2024-02-26 06:15:27', NULL, 'aut', 60, 1, 1),
(3, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'facilis', 88, 1, 1),
(4, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'eligendi', 93, 1, 1),
(5, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'incidunt', 10, 1, 1),
(6, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'libero', 86, 1, 1),
(7, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'sit', 69, 1, 1),
(8, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'quia', 44, 1, 1),
(9, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'ea', 42, 1, 1),
(10, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'delectus', 31, 1, 1),
(11, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'molestiae', 17, 1, 1),
(12, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'consequuntur', 40, 1, 1),
(13, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'repellat', 85, 1, 1),
(14, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'deserunt', 16, 1, 1),
(15, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'commodi', 54, 1, 1),
(16, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'laudantium', 4, 1, 2),
(17, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolore', 43, 1, 2),
(18, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sunt', 2, 1, 2),
(19, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sunt', 56, 1, 2),
(20, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'molestiae', 37, 1, 2),
(21, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'rerum', 66, 1, 2),
(22, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quis', 44, 1, 2),
(23, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'inventore', 97, 1, 2),
(24, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aliquam', 50, 1, 2),
(25, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'odit', 12, 1, 2),
(26, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'praesentium', 77, 1, 2),
(27, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nam', 35, 1, 2),
(28, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sequi', 8, 1, 2),
(29, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'maxime', 52, 1, 2),
(30, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'esse', 79, 1, 2),
(31, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'maxime', 11, 1, 3),
(32, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'facilis', 26, 1, 3),
(33, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nobis', 94, 1, 3),
(34, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 86, 1, 3),
(35, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'enim', 20, 1, 3),
(36, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sapiente', 40, 1, 3),
(37, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'itaque', 14, 1, 3),
(38, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ut', 66, 1, 3),
(39, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'unde', 37, 1, 3),
(40, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'veritatis', 58, 1, 3),
(41, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ea', 47, 1, 3),
(42, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'laboriosam', 10, 1, 3),
(43, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'repudiandae', 32, 1, 3),
(44, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'porro', 14, 1, 3),
(45, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aut', 64, 1, 3),
(46, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eligendi', 76, 1, 4),
(47, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aut', 6, 1, 4),
(48, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 34, 1, 4),
(49, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'molestiae', 83, 1, 4),
(50, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 53, 1, 4),
(51, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'enim', 98, 1, 4),
(52, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'animi', 15, 1, 4),
(53, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'vel', 14, 1, 4),
(54, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'impedit', 76, 1, 4),
(55, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aperiam', 67, 1, 4),
(56, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'maiores', 65, 1, 4),
(57, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'pariatur', 94, 1, 4),
(58, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'recusandae', 34, 1, 4),
(59, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quasi', 5, 1, 4),
(60, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'officia', 67, 1, 4),
(61, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'qui', 44, 1, 5),
(62, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'nihil', 23, 1, 5),
(63, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 39, 1, 5),
(64, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'molestiae', 93, 1, 5),
(65, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'vel', 4, 1, 5),
(66, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'recusandae', 74, 1, 5),
(67, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'velit', 30, 1, 5),
(68, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'laboriosam', 5, 1, 5),
(69, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 16, 1, 5),
(70, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sit', 16, 1, 5),
(71, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'culpa', 1, 1, 5),
(72, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'repudiandae', 66, 1, 5),
(73, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'praesentium', 91, 1, 5),
(74, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'recusandae', 1, 1, 5),
(75, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aut', 62, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `restaurant_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int NOT NULL DEFAULT '0',
  `used` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `active`, `valid_from`, `valid_to`, `restaurant_id`, `created_at`, `updated_at`, `limit`, `used`) VALUES
(3, 'Test Coupon', 'TEST123', '0', '5', 1, '2024-07-14', '2024-07-18', 1, '2024-07-14 11:06:38', '2024-07-16 12:39:38', 78, 3);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_orders`
--

CREATE TABLE `coupon_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `coupon_type` tinyint NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `discount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_orders`
--

INSERT INTO `coupon_orders` (`id`, `order_id`, `coupon_id`, `coupon_type`, `coupon_code`, `value`, `discount`, `created_at`, `updated_at`) VALUES
(1, 61, 3, 0, 'TEST123', 5, 6.0335, '2024-07-15 02:53:24', '2024-07-15 02:53:24'),
(2, 62, 3, 0, 'TEST123', 5, 7.893, '2024-07-16 12:33:44', '2024-07-16 12:33:44'),
(3, 63, 3, 0, 'TEST123', 5, 8.727, '2024-07-16 12:39:38', '2024-07-16 12:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `dinein_tables`
--

CREATE TABLE `dinein_tables` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinein_tables`
--

INSERT INTO `dinein_tables` (`id`, `created_at`, `updated_at`, `name`, `restaurant_id`, `active`) VALUES
(1, '2024-02-26 14:26:08', '2024-05-10 00:37:50', 'Table no 21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `out_of_stock` tinyint(1) NOT NULL DEFAULT '0',
  `order_index` smallint NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `allergens` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `price`, `image`, `category_id`, `out_of_stock`, `order_index`, `featured`, `active`, `allergens`) VALUES
(1, '2024-02-26 06:13:01', '2024-06-29 10:17:13', NULL, 'inventore 2', 'Ut aliquam vero velit quo distinctio nisi ad et. Doloremque ea ad quo ut occaecati. Est dicta optio incidunt eos totam assumenda. Vel id et quia optio.', 49.72, '', 1, 0, 0, 0, 1, NULL),
(2, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'ratione', 'Dolores corporis facilis esse adipisci consequatur earum deserunt. Fugiat repudiandae voluptatem quia ut. Suscipit et debitis non sit.', 50.83, '', 1, 0, 0, 0, 1, NULL),
(3, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'et', 'Aut modi dolorem magnam enim. Minima possimus itaque quis a facilis eius magnam. Quos veniam eaque consequuntur quis earum nulla. Sed ipsam molestiae voluptates excepturi ad quia culpa.', 29.63, '', 1, 0, 0, 0, 1, NULL),
(4, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'doloremque', 'Aut aliquam et rem ex. Eveniet nostrum alias soluta quas cumque. Dolore ratione velit sequi similique. Commodi expedita rerum ab sed dolor voluptas. Nisi sapiente iure nemo.', 41.65, '', 1, 0, 0, 0, 1, NULL),
(5, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'repellendus', 'Et in itaque saepe qui beatae excepturi molestiae. Repudiandae sit est eveniet iusto voluptas amet. Ipsam non quis ut dolorem. Reprehenderit error a repellendus est distinctio modi quidem.', 28.43, '', 2, 0, 0, 0, 1, NULL),
(6, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'rerum', 'Ipsa ab eum vitae quibusdam repellat. Deserunt dolorem eligendi tenetur aut eveniet ut at. Earum minus repellat accusamus et aperiam tenetur iste quisquam.', 40.59, '', 2, 0, 0, 0, 1, NULL),
(7, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'inventore', 'Esse aut saepe consequatur dolores. Omnis commodi exercitationem non esse. Voluptatem non eos praesentium autem corporis placeat. Velit fuga commodi quibusdam qui.', 64.79, '', 2, 0, 0, 0, 1, NULL),
(8, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'ipsum', 'Quia consequatur in itaque ea consequatur tempora quia et. Est quas enim in numquam.', 51.03, '', 3, 0, 0, 0, 1, NULL),
(9, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'labore', 'Nam repudiandae ut earum et id sint. Quasi a qui voluptatem et est aut aspernatur culpa.', 98.79, '', 3, 0, 0, 0, 1, NULL),
(10, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'ex', 'Odit cupiditate dolores et voluptas. Est sunt et ut magni. Illo distinctio consequatur ut esse. Quam nemo esse ut id facere omnis quasi.', 55.38, '', 3, 0, 0, 0, 1, NULL),
(11, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'temporibus', 'Laudantium odio labore fugiat natus aut est non earum. Voluptatem excepturi quas sit autem fugiat doloribus repellendus sit. Cumque at doloribus labore voluptas consequuntur voluptas et. Qui voluptate pariatur harum modi.', 54.07, '', 3, 0, 0, 0, 1, NULL),
(12, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'asperiores', 'Sed aut voluptatem officiis quia quia ducimus ea et. Cum est consequatur qui cumque et recusandae. Ut qui sit culpa iste minus. Tenetur quia nulla voluptates iure fuga hic tenetur consectetur.', 20.05, '', 3, 0, 0, 0, 1, NULL),
(13, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'ullam', 'Molestias et voluptas nobis enim delectus aut. Doloribus et eum ipsum fuga suscipit. Veniam voluptatem alias sed. Quod dolor placeat magnam ut at incidunt ut.', 21.45, '', 3, 0, 0, 0, 1, NULL),
(14, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'nulla', 'Consectetur quasi inventore repellat omnis minima. Dignissimos enim dicta ab voluptatem laboriosam fugit voluptatibus. Minus et tempora accusantium soluta assumenda nobis dignissimos.', 38.60, '', 3, 0, 0, 0, 1, NULL),
(15, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'quibusdam', 'Et error consequatur veritatis ut ullam autem veniam. Tempore culpa ut ipsum suscipit sit. Laboriosam doloribus modi nisi corporis.', 19.84, '', 4, 0, 0, 0, 1, NULL),
(16, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'corporis', 'Autem et incidunt non in officia qui. Ipsam quasi enim vero quo quasi aut quis. Voluptatem est facere cumque dolores itaque non. Libero dolores qui sunt beatae laborum.', 76.30, '', 4, 0, 0, 0, 1, NULL),
(17, '2024-02-26 06:13:01', '2024-02-26 06:13:01', NULL, 'aspernatur', 'Magnam maxime nobis numquam quis. Numquam voluptatem ut repellendus omnis qui. Pariatur quis adipisci et repellat et recusandae eos. Quod magnam et ut quas itaque vel quibusdam.', 35.88, '', 4, 0, 0, 0, 1, NULL),
(18, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ratione', 'Autem similique veniam et illo cupiditate adipisci quam. Est magnam dolores dolorem.', 31.72, '', 4, 0, 0, 0, 1, NULL),
(19, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'velit', 'Praesentium quidem nobis qui optio aliquid incidunt porro exercitationem. Dolores autem delectus velit odio recusandae. Id molestiae et sunt voluptas repellendus.', 77.67, '', 4, 0, 0, 0, 1, NULL),
(20, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'culpa', 'Quasi et perferendis iusto quibusdam consectetur id voluptate. Non maiores qui in repellat consequatur. Officiis possimus voluptas optio.', 92.12, '', 5, 0, 0, 0, 1, NULL),
(21, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'similique', 'Ut officiis necessitatibus vitae totam ut. Et rerum laudantium perferendis esse. Quo numquam soluta sit ea sit labore minima error.', 35.98, '', 5, 0, 0, 0, 1, NULL),
(22, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'fugit', 'Sint praesentium enim asperiores rerum. Incidunt iusto veritatis tempore ut et adipisci. Nam harum dolorem dolore aut incidunt consequuntur dolor. Labore dolor nesciunt soluta voluptatibus.', 13.35, '', 5, 0, 0, 0, 1, NULL),
(23, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nam', 'Perspiciatis ut voluptatem iure magni. Ad voluptatem dolore asperiores. Ipsum neque ab voluptatibus facere aut qui. Ut eos consectetur repudiandae rerum in autem non dolores.', 88.95, '', 5, 0, 0, 0, 1, NULL),
(24, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'vitae', 'Nobis id aut vel dolores repellat soluta. Atque ea quisquam eius et laborum non sunt. Aliquam deleniti illum cum excepturi neque quidem non.', 66.99, '', 5, 0, 0, 0, 1, NULL),
(25, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'hic', 'Tenetur voluptas beatae minus sunt. Id expedita quis quo tenetur mollitia nostrum autem vero. Dolores error quo numquam aut. Cupiditate repellat placeat assumenda odio. Doloribus tenetur deserunt aliquam est non facilis et.', 89.90, '', 6, 0, 0, 0, 1, NULL),
(26, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'accusantium', 'Earum ducimus ut quis iusto. Fuga debitis ad illum ut consequatur. Temporibus officia necessitatibus in facere corporis itaque sapiente.', 39.92, '', 6, 0, 0, 0, 1, NULL),
(27, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quidem', 'Veritatis eius repellat hic accusamus nisi. Iure ad facilis non maiores. Itaque ducimus voluptas quis et unde dolorem facere laboriosam.', 69.03, '', 6, 0, 0, 0, 1, NULL),
(28, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptatem', 'Sed architecto omnis corporis dolorem tenetur. Similique nostrum ut qui quo aperiam suscipit. Vitae facere velit iste blanditiis iusto consectetur. Sint enim est rerum.', 24.70, '', 6, 0, 0, 0, 1, NULL),
(29, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'facere', 'Sed alias dignissimos voluptas vitae velit voluptas. Ea iusto ipsum doloribus quas. Assumenda aut officia fugit adipisci autem consequatur nostrum. Est sunt id aliquam est officiis provident.', 81.03, '', 6, 0, 0, 0, 1, NULL),
(30, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'error', 'Voluptatibus ducimus officiis quae ut qui. Esse iste magni aliquid quos hic sed. Quibusdam expedita voluptatem dolore ut sapiente.', 39.26, '', 6, 0, 0, 0, 1, NULL),
(31, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ipsum', 'Laborum ut ut nemo inventore ea ut. Animi et laudantium ut libero ut temporibus ut. Aut qui ut recusandae quibusdam quasi magnam. Et rerum laborum dolore qui.', 89.35, '', 6, 0, 0, 0, 1, NULL),
(32, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'placeat', 'Tempora sit quo vel quidem ducimus nihil ut. Autem quia sed corporis nostrum ut delectus libero.', 26.14, '', 7, 0, 0, 0, 1, NULL),
(33, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'corrupti', 'Expedita natus et distinctio et. Voluptatum ipsa occaecati odit et aperiam expedita et. Pariatur suscipit repellendus error quia sed quia. Consectetur voluptatibus amet inventore et similique tempore vel.', 88.65, '', 7, 0, 0, 0, 1, NULL),
(34, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolores', 'Ut omnis et eum. Facilis qui velit qui omnis ex. Aut ut cum adipisci illum. Modi molestiae voluptatem quis et qui et est.', 19.12, '', 7, 0, 0, 0, 1, NULL),
(35, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'eos', 'Quo in magnam quae consequuntur ut qui non. Voluptatem facere error consequatur soluta ex qui. Voluptas autem voluptatem iusto at. Architecto possimus et assumenda sed labore dolorem ad.', 32.75, '', 7, 0, 0, 0, 1, NULL),
(36, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolor', 'Doloribus aspernatur aliquid sit omnis. Cupiditate impedit quia sapiente non quis consequatur. Nam aperiam reiciendis eveniet ea.', 7.53, '', 8, 0, 0, 0, 1, NULL),
(37, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'perspiciatis', 'Eveniet beatae perspiciatis labore cumque. Veritatis qui voluptate voluptatum nobis blanditiis doloribus pariatur.', 98.18, '', 8, 0, 0, 0, 1, NULL),
(38, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'eos', 'Soluta dolorum error delectus incidunt sit tempore. Dolor fugiat ut nobis. Pariatur debitis et nesciunt necessitatibus sit illum sed vel. Mollitia possimus aspernatur quo modi veniam.', 44.69, '', 8, 0, 0, 0, 1, NULL),
(39, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolor', 'Dolor iure ipsam in qui neque. Id commodi in neque. Iure dolorem amet suscipit et neque aut quae est.', 99.16, '', 8, 0, 0, 0, 1, NULL),
(40, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'modi', 'Aliquam ipsam odit deleniti ad ex doloribus modi ut. Aspernatur earum alias nisi non culpa inventore quia consequuntur. Quia ducimus aliquam voluptas libero. In libero consequatur quaerat sed repellendus rem.', 86.69, '', 8, 0, 0, 0, 1, NULL),
(41, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'autem', 'Tempora qui quisquam ea laborum accusantium magnam asperiores. Sed adipisci doloremque pariatur aspernatur occaecati. Adipisci dolorem soluta consequuntur eius rerum facilis.', 31.90, '', 8, 0, 0, 0, 1, NULL),
(42, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'omnis', 'Eos inventore voluptas sint laborum itaque quia corporis. Qui voluptas minima ut deserunt. Delectus ut doloremque occaecati illo. Ex consequatur quia enim neque nulla cupiditate.', 82.37, '', 8, 0, 0, 0, 1, NULL),
(43, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'doloremque', 'Eveniet quo ut aut magnam accusantium quibusdam sint consectetur. Impedit aut cum tenetur ipsam. Enim aliquam quidem eaque non excepturi. Aliquid quo aliquid esse nulla.', 51.43, '', 9, 0, 0, 0, 1, NULL),
(44, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolor', 'Ut illo qui qui incidunt aspernatur ab cumque veritatis. Aut asperiores laudantium quasi dolores molestiae aspernatur enim. Laboriosam et omnis porro sed.', 18.09, '', 9, 0, 0, 0, 1, NULL),
(45, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ut', 'Eum culpa suscipit placeat ab quia. Qui esse labore necessitatibus aut. Illo eligendi officiis illum aliquid magnam cum placeat.', 22.14, '', 9, 0, 0, 0, 1, NULL),
(46, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sequi', 'Quaerat reprehenderit neque ab sit. Ut fugiat beatae atque sunt voluptates praesentium. Hic quo pariatur eaque iusto.', 78.82, '', 9, 0, 0, 0, 1, NULL),
(47, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dicta', 'Qui consectetur quod et ex fuga laborum. Quia accusamus accusantium aut. Sunt eos vel dolores tempore consequatur. Nemo eum facilis minima id suscipit eveniet.', 59.63, '', 9, 0, 0, 0, 1, NULL),
(48, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'culpa', 'Sit ipsa odio quisquam omnis. Sint quaerat ipsa ut. Aut ex tempore at.', 63.27, '', 9, 0, 0, 0, 1, NULL),
(49, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'tenetur', 'Aut est tenetur quasi delectus. Repellendus molestias et ratione id sit incidunt magnam reprehenderit. Aperiam repellendus at dolorum error itaque ut.', 20.77, '', 10, 0, 0, 0, 1, NULL),
(50, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sequi', 'Sint quo laboriosam quo. Consequatur placeat temporibus voluptate dolorem esse dolorem. Ut voluptas autem ipsam qui. Enim ipsam voluptatem magnam debitis laborum sit ex.', 33.31, '', 10, 0, 0, 0, 1, NULL),
(51, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'adipisci', 'Laudantium quia est rem tenetur eligendi accusantium laboriosam. Quos id expedita minus vero. Atque nesciunt voluptas sit et. In nam nobis dolorem ipsam.', 5.38, '', 10, 0, 0, 0, 1, NULL),
(52, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'qui', 'Aperiam facere maiores sint omnis omnis atque. Sunt in porro velit cum. Rerum excepturi omnis quia architecto debitis itaque mollitia. Maiores earum dignissimos incidunt dicta dolorem.', 13.36, '', 10, 0, 0, 0, 1, NULL),
(53, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quia', 'Molestiae eos quo voluptas laborum repellat accusamus. Autem sapiente perspiciatis laborum magni sit. Optio provident incidunt voluptatem molestiae aut reprehenderit. Facere voluptatem asperiores provident omnis ullam sed ea.', 37.34, '', 10, 0, 0, 0, 1, NULL),
(54, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'in', 'Maiores animi rerum autem. Sit eum tempore quae et dolorem sit laboriosam. Sapiente vero unde molestias pariatur occaecati magnam aspernatur dolore. Provident perspiciatis animi temporibus et adipisci non aperiam dicta.', 81.46, '', 11, 0, 0, 0, 1, NULL),
(55, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'harum', 'Alias necessitatibus et magnam occaecati. Voluptas est voluptatum ipsa quis dolor. Saepe explicabo molestiae esse eligendi perferendis. Libero corrupti voluptatem consectetur iste.', 43.45, '', 11, 0, 0, 0, 1, NULL),
(56, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nulla', 'Earum cum quasi non rerum rerum enim. Odit sed animi debitis nihil qui a ut recusandae. Iure voluptatem deleniti nulla nostrum vitae necessitatibus nihil. Nihil ea voluptatem nostrum explicabo quisquam.', 10.78, '', 11, 0, 0, 0, 1, NULL),
(57, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ipsam', 'Perferendis quam ut non et asperiores id dolore. Culpa alias ipsa error dolorem non. Neque distinctio corrupti dolor corrupti voluptate ab voluptas. Hic dolorem asperiores fugit sunt eaque a quas.', 6.44, '', 11, 0, 0, 0, 1, NULL),
(58, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'fugit', 'Sed suscipit impedit est placeat voluptas aperiam quia aut. Quisquam nihil qui et eaque minus sed saepe doloremque. Pariatur error quibusdam explicabo explicabo ut explicabo.', 51.67, '', 11, 0, 0, 0, 1, NULL),
(59, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'provident', 'Mollitia inventore autem eos rem. Quo minus nihil id nemo fuga. Eos porro vel aliquid assumenda deserunt cum sint. A dolores aut exercitationem aut.', 20.66, '', 11, 0, 0, 0, 1, NULL),
(60, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'atque', 'Rerum exercitationem ducimus dolore unde doloremque veniam aut. Ut est quae aliquid odit incidunt. Impedit quibusdam quia quaerat. Qui voluptas perferendis autem eaque.', 70.70, '', 12, 0, 0, 0, 1, NULL),
(61, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'delectus', 'Earum soluta recusandae ea. Illum iure quia nihil velit porro. Ullam ut tempore fuga laborum voluptatibus quo laboriosam. Repudiandae quos est ut in.', 92.79, '', 12, 0, 0, 0, 1, NULL),
(63, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'assumenda', 'Veniam rerum eos autem sunt. Autem fuga repudiandae ex omnis temporibus. Et vel omnis error cum similique. Perferendis explicabo vitae labore sunt cum omnis suscipit.', 97.97, '', 12, 0, 0, 0, 1, NULL),
(64, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptatem', 'Quia minus ipsum eos nam. Optio saepe nisi ut et. Unde vel praesentium et velit ut earum.', 97.47, '', 13, 0, 0, 0, 1, NULL),
(65, '2024-02-26 06:13:02', '2024-06-29 10:58:56', NULL, 'হালুয়া', 'Et aut repudiandae animi qui quibusdam. Temporibus veritatis sed fuga natus placeat. Sunt ut sed et omnis iure qui. Corrupti eveniet et excepturi fugiat in sed illo sunt.', 9.35, '1719680336_81e32759-a59a-4877-b884-6d7b93c6b45e', 13, 0, 0, 0, 1, '[\"Crustaceans\", \"Barley\", \"test1\"]'),
(66, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'vero', 'Eligendi at expedita maiores est et. Consequuntur officia consectetur eum atque rerum amet. Recusandae dolores reprehenderit ut aliquam molestiae.', 54.40, '', 13, 0, 0, 0, 1, NULL),
(67, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'qui', 'Quos dolor ad est est voluptatibus. Aut qui incidunt dolores perspiciatis. Qui perspiciatis sint veritatis dolor.', 30.75, '', 13, 0, 0, 0, 1, NULL),
(68, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolorem', 'Vel non id repellendus. Reiciendis rerum voluptas qui cupiditate quia. Ut quia nam quas quia ut ipsa. Vero et quia voluptas est quia. Quasi aut est maiores itaque nam explicabo.', 38.95, '', 13, 0, 0, 0, 1, NULL),
(69, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Voluptas vitae dignissimos maxime omnis et est. Atque consectetur veniam et praesentium. In iste sit dolorem repellat magnam deserunt enim repellendus. Molestias id aliquam laboriosam assumenda nostrum omnis aperiam.', 65.31, '', 13, 0, 0, 0, 1, NULL),
(70, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nulla', 'Et qui rem qui dolorem excepturi qui. Similique voluptatem quis dolorum. Ut fugiat dolorem eum ut beatae omnis. Delectus aut error occaecati eligendi id atque laborum. Tempore suscipit eos tempora laborum ad quia odit.', 74.63, '', 13, 0, 0, 0, 1, NULL),
(71, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'cumque', 'Nam illo aut dolor eveniet saepe ullam. Voluptatibus nihil aliquam quo esse nobis. Eveniet odio expedita laudantium eum deleniti iusto. Illum nisi atque in.', 64.45, '', 14, 0, 0, 0, 1, NULL),
(72, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'beatae', 'Dolores deserunt ut soluta et eos accusantium quia. Alias odio sunt ullam rerum et. Et qui nemo vero accusamus.', 55.39, '', 14, 0, 0, 0, 1, NULL),
(73, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nihil', 'Eveniet qui et libero id quisquam eaque debitis delectus. Incidunt similique dolorum rerum perferendis non. Rerum dolores quas veniam necessitatibus iusto dolores corporis.', 61.53, '', 14, 0, 0, 0, 1, NULL),
(74, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'eum', 'Laboriosam ad ex tenetur itaque nihil. Et dolores sit aut. Est ea beatae repellendus assumenda aut enim ea.', 27.47, '', 15, 0, 0, 0, 1, NULL),
(75, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'qui', 'Et est necessitatibus aspernatur doloribus quis ipsum nam. Necessitatibus et aut quisquam adipisci esse ipsam. Explicabo voluptate vitae culpa aut nostrum.', 62.36, '', 15, 0, 0, 0, 1, NULL),
(76, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quos', 'Voluptatibus sint sint eligendi et possimus. Eaque animi voluptates autem exercitationem nobis veritatis.', 92.99, '', 15, 0, 0, 0, 1, NULL),
(77, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'enim', 'Doloribus harum veritatis necessitatibus at sint. Sed quisquam dolorem provident nihil. Dolorem reiciendis debitis minima velit sint odio. Officiis ipsam ut impedit aperiam.', 51.54, '', 15, 0, 0, 0, 1, NULL),
(78, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'alias', 'Et totam nisi delectus optio. Repudiandae molestiae amet ducimus dolorum. Doloribus asperiores eaque enim excepturi iure illo.', 11.16, '', 15, 0, 0, 0, 1, NULL),
(79, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'tempore', 'Facilis qui dolorem iusto aliquam suscipit voluptatem illo. Tempore unde rerum consequatur. Dolor et et id qui voluptatem unde.', 15.18, '', 15, 0, 0, 0, 1, NULL),
(80, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Quo aut modi consectetur molestiae harum maxime tenetur. Aliquam repellendus architecto assumenda ex et sit eum. In ea assumenda quo nemo quibusdam possimus. Fugiat et aut nulla illo.', 57.42, '', 16, 0, 0, 0, 1, NULL),
(81, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'amet', 'Odit iste quos possimus modi. Quas nihil aperiam laboriosam reprehenderit voluptate. Praesentium qui beatae voluptas beatae dolorem voluptates. Voluptatum saepe et deserunt incidunt.', 53.28, '', 16, 0, 0, 0, 1, NULL),
(82, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'qui', 'Et autem sapiente sit accusantium quibusdam omnis similique. Ducimus fugit et necessitatibus illo. Hic cupiditate ut est consectetur vel voluptatibus. Quis et possimus similique temporibus cum qui omnis hic.', 91.78, '', 16, 0, 0, 0, 1, NULL),
(83, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'praesentium', 'Repudiandae eaque provident velit commodi tempora esse provident. Accusantium autem occaecati nesciunt dicta. At eius vel officia rerum. Sed molestiae sunt est enim animi consequatur voluptatem ut.', 63.22, '', 16, 0, 0, 0, 1, NULL),
(84, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'pariatur', 'Veritatis eos ut ut et in voluptates. Et nostrum adipisci rem id beatae ipsa. Asperiores aut unde velit nihil.', 19.81, '', 17, 0, 0, 0, 1, NULL),
(85, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aperiam', 'Laborum et iure in velit est dolor nulla. Porro voluptate velit totam eum omnis reiciendis. Temporibus adipisci aspernatur voluptas quae aperiam repellat placeat est.', 80.37, '', 17, 0, 0, 0, 1, NULL),
(86, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quis', 'Est iure fugiat atque soluta. Minus ipsum et doloremque totam non alias atque aut. Excepturi quasi ducimus ducimus veritatis qui. Enim beatae aliquid voluptatem libero.', 93.81, '', 17, 0, 0, 0, 1, NULL),
(87, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'in', 'Ut expedita voluptas recusandae laborum facilis. Voluptatum non sunt nihil quisquam tempore. Sint nemo nulla suscipit non dolores et quod. Velit minus facere voluptatem debitis quis qui ab.', 5.03, '', 17, 0, 0, 0, 1, NULL),
(88, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'laborum', 'Accusamus omnis inventore harum quasi dolorum neque. Sint et non impedit voluptates quod corrupti libero. Sit voluptate aliquam voluptates illum in voluptate repellat aut. Eveniet et quas tempora voluptas consequuntur similique quas. Eligendi culpa et excepturi.', 30.74, '', 17, 0, 0, 0, 1, NULL),
(89, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'rerum', 'Odit ea cupiditate voluptatem maiores. Aut impedit delectus ullam voluptatem quam consequuntur cupiditate. Expedita optio eum sunt assumenda quia quia minima. Non nihil ut sed.', 72.52, '', 18, 0, 0, 0, 1, NULL),
(90, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'recusandae', 'Et ratione ipsa ipsum aut. A error quasi consectetur at blanditiis. Enim doloremque quos magnam blanditiis consequatur numquam. Numquam minus voluptas quia asperiores ex libero.', 92.23, '', 18, 0, 0, 0, 1, NULL),
(91, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nostrum', 'Ducimus accusamus voluptatum natus quia. Eius facere voluptatum laboriosam dignissimos iste nemo tempora. Blanditiis rerum est laborum aliquam consectetur ea fugit dicta. Tempore ducimus fuga et molestiae veniam non magni qui.', 60.33, '', 18, 0, 0, 0, 1, NULL),
(92, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'veritatis', 'Minima aut sit hic corrupti rerum eos velit est. Error quia recusandae magni in eligendi. Quibusdam vel ut enim provident est.', 63.12, '', 18, 0, 0, 0, 1, NULL),
(93, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'est', 'Omnis et explicabo modi nisi maxime sit temporibus. Dolor voluptas impedit voluptas ea labore laudantium iusto corporis. Labore ut et quam porro cum eos qui. Laboriosam rerum corporis quia voluptatem omnis veritatis beatae.', 87.39, '', 19, 0, 0, 0, 1, NULL),
(94, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'officia', 'Hic sit fuga consequatur dolore qui. Laudantium occaecati ea neque. Quos odio mollitia esse nemo aut. Magnam laborum nemo et cumque molestias. Maiores a dolore doloribus.', 61.81, '', 19, 0, 0, 0, 1, NULL),
(95, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'consequatur', 'Magnam enim alias at voluptas et quia. Maiores possimus molestiae ipsa. Eum consequuntur nostrum quidem ipsam. Ullam nihil magnam vel suscipit. Pariatur ipsum corrupti id eligendi molestias consequuntur.', 79.94, '', 19, 0, 0, 0, 1, NULL),
(96, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'accusamus', 'Aut dolores soluta dignissimos ut expedita autem. Cumque adipisci tempore qui eligendi ut. Qui rerum veniam sed id aut voluptas consequatur. Et recusandae sunt totam amet qui hic rerum. Aut sed molestiae ut.', 67.72, '', 20, 0, 0, 0, 1, NULL),
(97, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Sunt labore autem nostrum laboriosam voluptates est voluptatem. Officiis ea aut eum laborum esse. Voluptate ipsam officiis asperiores commodi eveniet qui veniam. Qui quia repellendus non veniam nostrum.', 87.33, '', 20, 0, 0, 0, 1, NULL),
(98, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'magni', 'Itaque qui libero suscipit dolorum. Aut qui sed omnis quo mollitia quisquam dolorum. Optio optio accusamus et sunt est dolorum nemo. Quis dolorem laboriosam voluptatem repellendus et animi voluptas.', 78.89, '', 20, 0, 0, 0, 1, NULL),
(99, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'enim', 'Quos est recusandae deleniti iste ea. In nostrum consectetur adipisci ratione sed facere et. Labore eos repudiandae reprehenderit blanditiis ex quia.', 11.80, '', 21, 0, 0, 0, 1, NULL),
(100, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'est', 'Est non a aperiam possimus odit voluptas. Ut consequatur voluptatem in iste. Id saepe est reiciendis ex dolore vero ex quisquam. Sit at at cumque.', 76.30, '', 21, 0, 0, 0, 1, NULL),
(101, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ut', 'Nemo quisquam sint sunt et in. Consequatur reprehenderit non autem unde mollitia animi culpa. Consequatur inventore ea voluptatibus eum quae qui. Omnis sit labore quam odit aut.', 51.70, '', 21, 0, 0, 0, 1, NULL),
(102, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'facilis', 'Dolor inventore et ut mollitia. Velit autem culpa animi in omnis. Velit tempore dolores non deserunt. Voluptatum est labore qui sed. Officia cum non et earum laudantium sit.', 70.71, '', 21, 0, 0, 0, 1, NULL),
(103, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sint', 'Doloremque maxime possimus voluptatibus occaecati deserunt commodi. Placeat maiores eligendi aut nesciunt. Ullam alias voluptatem libero qui.', 60.07, '', 21, 0, 0, 0, 1, NULL),
(104, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nisi', 'Facere optio officiis ut mollitia itaque qui repellendus esse. Error sunt quam modi itaque. Quia recusandae error quia ullam. Voluptate eius modi ut mollitia alias voluptatem est.', 96.05, '', 21, 0, 0, 0, 1, NULL),
(105, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'perferendis', 'Et magnam veritatis totam iure doloribus est qui sit. Nobis ut deserunt omnis architecto harum. Sed architecto nihil eos et nihil numquam in.', 50.19, '', 21, 0, 0, 0, 1, NULL),
(106, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ipsa', 'Explicabo architecto voluptatibus ipsa magnam dolores fuga. Odit natus delectus eius saepe. Assumenda aut fugiat consequatur occaecati. Consectetur neque sint aut vero doloribus eos aperiam.', 90.82, '', 22, 0, 0, 0, 1, NULL),
(107, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ducimus', 'Necessitatibus minima sunt et officia. Neque deleniti voluptatem nam et veniam ducimus. Ullam et iure iure aperiam itaque et sunt saepe.', 53.35, '', 22, 0, 0, 0, 1, NULL),
(108, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'inventore', 'Commodi quidem architecto voluptas commodi. Quia et veritatis aut sunt iusto blanditiis repellat animi. Dolor voluptatem assumenda consequatur sed. Atque eum corrupti architecto nulla est et. Autem voluptatem quibusdam unde voluptas.', 88.66, '', 22, 0, 0, 0, 1, NULL),
(109, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'est', 'Rerum dicta et odio facilis amet aspernatur eveniet. Deleniti aut harum quidem placeat et error. Laudantium delectus iste explicabo consequatur quia et facere veritatis. Et iure quis qui eaque ut non sed.', 44.13, '', 22, 0, 0, 0, 1, NULL),
(110, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'omnis', 'Laboriosam voluptatum non iure eligendi harum. Magnam accusantium qui quo aut atque. Quis atque accusantium asperiores delectus qui dolorem reprehenderit. Quia tenetur saepe rem.', 46.01, '', 22, 0, 0, 0, 1, NULL),
(111, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'est', 'Ipsa voluptas quo saepe delectus minus harum esse. Nam nam voluptatem repudiandae expedita error iusto enim. Expedita modi molestiae quibusdam eveniet quibusdam autem. Perferendis voluptatibus odit et id harum.', 31.99, '', 22, 0, 0, 0, 1, NULL),
(112, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'suscipit', 'Id aliquid debitis rerum officiis adipisci veniam. Recusandae officia et iusto repudiandae qui.', 92.48, '', 23, 0, 0, 0, 1, NULL),
(113, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptate', 'Laborum exercitationem id optio hic dolore. Molestias est natus et ducimus harum fugit molestias. Iste consequatur nemo libero.', 33.82, '', 23, 0, 0, 0, 1, NULL),
(114, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'pariatur', 'Quis tenetur doloremque accusantium quia quisquam ab quod. Libero doloremque et tenetur odit quisquam ducimus quia.', 93.72, '', 23, 0, 0, 0, 1, NULL),
(115, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quis', 'In voluptatem facere voluptates quia sapiente nulla. Distinctio accusamus ex sapiente. Et aspernatur et sint dicta.', 97.11, '', 23, 0, 0, 0, 1, NULL),
(116, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'harum', 'Beatae possimus recusandae dolores porro sint. Reprehenderit rem ut ut et qui impedit cupiditate. Est dolorum sed veniam dolorem.', 87.99, '', 23, 0, 0, 0, 1, NULL),
(117, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'non', 'Eos vel cumque deleniti sed sit. Quia pariatur dolorum ut. Libero error voluptatem iusto maiores ipsam quos est. Cumque quisquam cum quibusdam ullam inventore.', 80.03, '', 23, 0, 0, 0, 1, NULL),
(118, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'omnis', 'Et quisquam consequatur sequi animi et quos ut. Cum est necessitatibus qui vitae.', 21.18, '', 23, 0, 0, 0, 1, NULL),
(119, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'repellat', 'Asperiores ipsa odit eligendi sunt eos sapiente quia. Modi officia et esse voluptas at. Delectus dolorem id excepturi.', 71.95, '', 24, 0, 0, 0, 1, NULL),
(120, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sint', 'Consequatur nobis aliquid cupiditate soluta. Dolorem impedit quod tempore accusamus animi ut et. Rerum dolor soluta saepe dolores repellat. Enim ea eos nihil laborum veritatis saepe reprehenderit.', 48.51, '', 24, 0, 0, 0, 1, NULL),
(121, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'inventore', 'Enim dolorem voluptate aliquid eius veniam. Iure fuga distinctio impedit atque sit velit numquam. Ut incidunt et nihil doloribus illo.', 57.01, '', 24, 0, 0, 0, 1, NULL),
(122, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ipsam', 'Maiores vel rerum nam nesciunt. Voluptatem sed earum repudiandae accusantium dolor sapiente. Error omnis molestiae tempore et aut nihil quo. Rem quasi sunt et placeat.', 83.79, '', 24, 0, 0, 0, 1, NULL),
(123, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aut', 'Saepe explicabo ut qui. Saepe iste illum repellat porro. Et aut quae vitae incidunt quasi optio quaerat. Dolorem expedita quasi at hic quam assumenda hic.', 33.34, '', 24, 0, 0, 0, 1, NULL),
(124, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Sed enim sed sequi necessitatibus commodi sapiente. Nisi minima eligendi fuga eum vitae ut. Tenetur harum id et eveniet et non. Dolore ut nostrum doloribus aliquam aut qui voluptatum.', 28.25, '', 24, 0, 0, 0, 1, NULL),
(125, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quaerat', 'Ea similique illo non nulla consequatur incidunt sed. Esse vero officia non consectetur ea saepe. Qui et suscipit possimus voluptatem fugit.', 43.60, '', 24, 0, 0, 0, 1, NULL),
(126, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'accusantium', 'Ducimus eius illo omnis. Est eaque assumenda ducimus et quis possimus. Corrupti animi neque similique nulla. Provident facere molestiae consequatur aspernatur.', 48.96, '', 25, 0, 0, 0, 1, NULL),
(127, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'cum', 'Possimus perferendis laborum quia est sit ea. Fugiat reiciendis aut sunt. Perspiciatis consequatur atque voluptatem non dicta est.', 69.50, '', 25, 0, 0, 0, 1, NULL),
(128, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dignissimos', 'Alias ducimus alias quo odio ab. Culpa odio sunt beatae sit sit asperiores pariatur. Maiores aut quisquam voluptatum non. Saepe odio rerum expedita porro iure unde.', 15.98, '', 25, 0, 0, 0, 1, NULL),
(129, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'alias', 'Provident sequi suscipit quo libero. Nulla ratione reprehenderit facere sed. Harum modi ipsa recusandae sunt sint fugit. Nemo assumenda amet veritatis similique voluptates mollitia quo similique.', 96.35, '', 26, 0, 0, 0, 1, NULL),
(130, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptas', 'Possimus dolorem asperiores sequi quo mollitia magnam eos iure. Ut sit id saepe voluptates blanditiis consequatur sit omnis. Et consequuntur at tenetur illum.', 6.14, '', 26, 0, 0, 0, 1, NULL),
(131, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptas', 'Inventore enim nihil tempore omnis eos. Corporis inventore dolor eveniet sint.', 34.94, '', 26, 0, 0, 0, 1, NULL),
(132, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'architecto', 'Recusandae maiores sit quo voluptas saepe doloremque ut. Tenetur nesciunt porro praesentium. Quas est facere ut et alias sit quaerat.', 66.33, '', 26, 0, 0, 0, 1, NULL),
(133, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aspernatur', 'Neque eos dolorem sit ad doloribus iure saepe. Sint cupiditate architecto quasi eius nesciunt qui quia quae. Voluptatum et eveniet molestiae sit ipsa et dolorum.', 58.02, '', 27, 0, 0, 0, 1, NULL),
(134, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'fugiat', 'Nulla id doloremque provident esse impedit fuga eaque. Quis occaecati corporis ut officiis iusto. Assumenda blanditiis sint voluptas nobis eius.', 35.97, '', 27, 0, 0, 0, 1, NULL),
(135, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptatem', 'Sequi et repellendus recusandae occaecati laudantium eum libero. Nobis possimus perferendis necessitatibus mollitia. Vero magnam a eveniet impedit qui qui.', 86.16, '', 27, 0, 0, 0, 1, NULL),
(136, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'enim', 'Enim placeat in nostrum eum. Deleniti repudiandae reiciendis temporibus sequi delectus. Unde et consequuntur enim doloribus mollitia atque tempora. Aut eos ratione praesentium voluptate.', 78.57, '', 27, 0, 0, 0, 1, NULL),
(137, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'qui', 'Necessitatibus consequuntur suscipit recusandae voluptas ipsum aut mollitia eius. Reiciendis debitis dolor magnam et sunt explicabo est. Porro autem aut soluta voluptatem saepe perferendis.', 28.36, '', 27, 0, 0, 0, 1, NULL),
(138, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'molestiae', 'Ut facilis nesciunt et qui est dignissimos at aut. Dignissimos eaque velit beatae cum et nesciunt qui. Qui corporis tempore repellat consequatur dolores. Qui in explicabo placeat provident aut dolores sequi officia.', 43.80, '', 27, 0, 0, 0, 1, NULL),
(139, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'adipisci', 'Sit eius velit omnis iste dolor laudantium voluptate accusantium. Atque aut qui unde omnis error maxime.', 74.67, '', 27, 0, 0, 0, 1, NULL),
(140, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nemo', 'Quis blanditiis eos est amet quia. Reiciendis voluptatibus cum vel fugiat. Vitae ab et in repellendus excepturi officiis tenetur. Asperiores nam sint et ad.', 7.60, '', 28, 0, 0, 0, 1, NULL),
(141, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptas', 'Magni quisquam quia dolorum atque nihil recusandae repellendus. Aut doloribus veritatis laudantium ut. Fugiat voluptatem autem in dolores quaerat dignissimos. A illum sit molestiae quasi quam dicta et molestiae. Earum laudantium velit ut tenetur.', 99.39, '', 28, 0, 0, 0, 1, NULL),
(142, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'in', 'Impedit eum est reprehenderit nemo quis. Voluptatem vel aspernatur maiores animi veritatis. Voluptatem sunt quis explicabo dolor possimus inventore nobis. Odit consequuntur eum aut.', 75.34, '', 28, 0, 0, 0, 1, NULL),
(143, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'repudiandae', 'Est voluptatem nobis eum dolores voluptas. Voluptas aut sit sequi ea doloremque. Itaque voluptas dolores ipsam rerum ipsa quia hic quasi.', 9.68, '', 28, 0, 0, 0, 1, NULL),
(144, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Veritatis odio et eligendi dolorem. Nisi sed assumenda aperiam repudiandae vero veniam et et. Quia nemo ullam non cupiditate in in cum. Eos et aut consequuntur necessitatibus.', 61.54, '', 28, 0, 0, 0, 1, NULL),
(145, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'qui', 'Omnis et dicta est. Voluptas mollitia fugit molestiae natus et. Sunt corrupti perferendis in vel id illo saepe. Enim dicta ut dolorum aut molestiae adipisci delectus repellat.', 54.51, '', 28, 0, 0, 0, 1, NULL),
(146, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sed', 'Et harum perspiciatis ut nisi sit. Saepe culpa ipsa nisi alias quibusdam.', 44.15, '', 29, 0, 0, 0, 1, NULL),
(147, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'perferendis', 'Cum ut qui dicta. Distinctio iste sequi ut excepturi maiores tempore velit. Ut ratione aut velit ut aut voluptatem fugiat. Fugit necessitatibus numquam ut eligendi ipsa harum.', 31.13, '', 29, 0, 0, 0, 1, NULL),
(148, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'explicabo', 'Ut ex et dolor iure consequatur. Quia nulla ratione sint laborum nam vel magnam. Et optio accusamus est et delectus ipsam recusandae.', 33.48, '', 29, 0, 0, 0, 1, NULL),
(149, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nostrum', 'Alias voluptatem sed omnis atque consequatur sed ab est. Laborum sed quae ex molestiae.', 84.86, '', 29, 0, 0, 0, 1, NULL),
(150, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'culpa', 'Repellendus distinctio iste placeat aliquid. Velit et aliquam nihil quo accusamus repellat. Officiis a recusandae voluptas sit inventore. Voluptas molestiae impedit expedita molestiae.', 40.93, '', 29, 0, 0, 0, 1, NULL),
(151, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'itaque', 'Culpa ipsum laboriosam magnam. Voluptatem dolorem doloremque error a vel aut. Voluptate ad provident qui molestiae.', 73.81, '', 29, 0, 0, 0, 1, NULL),
(152, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Est sint repellat dolorem aut voluptatem omnis labore. Cum tempora voluptas dolorem molestiae tempora atque. Vitae ab voluptatibus vitae minus qui cupiditate et. Voluptas ut consequuntur blanditiis et aut.', 72.31, '', 29, 0, 0, 0, 1, NULL),
(153, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aut', 'Doloremque voluptates neque deserunt praesentium voluptas libero cumque vitae. Asperiores ea assumenda quo. Alias commodi neque incidunt totam enim alias. Voluptate molestiae accusamus aut porro voluptatem aut.', 71.49, '', 30, 0, 0, 0, 1, NULL),
(154, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ut', 'Est eius et molestias itaque rem corporis provident alias. Corporis omnis ipsam debitis ad. Asperiores dolorem vel qui nesciunt. Voluptates quia facere aliquid ut optio. Labore esse magni dolore ipsam ut non voluptatem qui.', 77.38, '', 30, 0, 0, 0, 1, NULL),
(155, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'est', 'Quia atque aperiam exercitationem consectetur reprehenderit magnam. Est tenetur doloribus officia laudantium vel. Culpa quidem eos voluptatem debitis ea. Officia officiis tempora architecto delectus delectus sed assumenda assumenda.', 62.00, '', 30, 0, 0, 0, 1, NULL),
(156, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'cupiditate', 'Vitae perspiciatis aut nemo quia. Quis atque ullam praesentium ducimus doloribus. Explicabo eum nam perferendis dolorem ut. Cum vero debitis autem rem beatae.', 95.11, '', 30, 0, 0, 0, 1, NULL),
(157, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'similique', 'Fugit et sequi harum ut rerum id corporis. Molestiae laborum delectus quia accusantium ea illo. Id delectus dignissimos quidem. Ab ut quas optio provident. Rerum aut optio perspiciatis assumenda sit pariatur.', 85.63, '', 30, 0, 0, 0, 1, NULL),
(158, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'vitae', 'Ullam quis ea dolor sint. Sint ipsam labore veritatis ipsam tempore minus. Est est voluptates atque dolorum illo possimus.', 46.47, '', 30, 0, 0, 0, 1, NULL),
(159, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'eos', 'Quidem tempore aut qui error necessitatibus vel. Et aut dolores et. Voluptas voluptatem illo sit reiciendis dolorum veniam qui.', 24.71, '', 31, 0, 0, 0, 1, NULL),
(160, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'optio', 'Omnis corrupti et delectus odio exercitationem placeat nobis. Dolores non quas eius optio voluptas at deserunt error. Quaerat perferendis sunt possimus porro cupiditate dolorem. Velit est nesciunt pariatur sit modi.', 38.47, '', 31, 0, 0, 0, 1, NULL),
(161, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sed', 'Repellendus vel non eos voluptatum qui ea qui corporis. Id et facere sit est. Aliquid consequatur voluptatem delectus consequuntur cupiditate quam velit.', 52.46, '', 31, 0, 0, 0, 1, NULL),
(162, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Aut veritatis labore quam. Est asperiores minus dignissimos necessitatibus. Eos eos fugit et in excepturi ea soluta. Suscipit dolores autem necessitatibus qui quae reiciendis a. Dignissimos nihil iure ut.', 59.49, '', 31, 0, 0, 0, 1, NULL),
(163, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'laudantium', 'Dolores commodi odio voluptatem. Quia numquam maiores explicabo corporis aliquam. Facere sunt in ipsam id dolor aliquid delectus esse. Dolorem molestiae recusandae itaque distinctio.', 24.54, '', 31, 0, 0, 0, 1, NULL),
(164, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'enim', 'Voluptatem quas et id debitis atque praesentium a. Sed et ab reprehenderit enim. Nisi tenetur deserunt fugiat repudiandae sed iusto autem incidunt. Voluptatum voluptatum dolore et perspiciatis temporibus rerum quo.', 36.48, '', 31, 0, 0, 0, 1, NULL),
(165, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'tenetur', 'Quae minus consequatur ea qui et. Dolor quia dolor a earum. Enim non soluta facere id et. Blanditiis quo ea velit enim. Tempora ut assumenda eveniet quis aperiam amet optio.', 94.86, '', 32, 0, 0, 0, 1, NULL),
(166, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'corrupti', 'Maxime dolor id omnis ullam pariatur nihil. Laboriosam aut quis excepturi aut dolor delectus. Officiis et dolore molestiae consectetur.', 34.47, '', 32, 0, 0, 0, 1, NULL),
(167, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'perferendis', 'Necessitatibus maxime maiores optio aut consequuntur. Aliquam odit ad aut et cumque et sunt voluptas. Omnis et nobis beatae officiis eius et.', 90.34, '', 32, 0, 0, 0, 1, NULL),
(168, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quia', 'Possimus iusto et necessitatibus dolorem omnis nulla voluptas. Quasi pariatur itaque qui et in enim. Dolores rerum impedit est vel nesciunt.', 15.68, '', 32, 0, 0, 0, 1, NULL),
(169, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'velit', 'Laudantium laudantium nesciunt ut magnam nesciunt magnam rem. Laborum error nesciunt et praesentium voluptatum et. Suscipit ducimus quam dolorum dignissimos dolor laboriosam similique molestiae. Et sed esse voluptatem qui sed nam ut.', 81.34, '', 32, 0, 0, 0, 1, NULL),
(170, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'dolorem', 'Itaque in quis fugiat rerum saepe aut eum. Autem doloremque libero et ipsum aspernatur. Minima molestiae odio voluptatum modi. Incidunt quos qui quidem iure.', 66.69, '', 33, 0, 0, 0, 1, NULL),
(171, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'vel', 'Corporis in dicta omnis officiis quibusdam qui. Quidem esse ea molestiae earum et. Ut debitis molestiae dolorum omnis assumenda ipsam voluptas. Vero natus quo ipsum dolores mollitia.', 19.45, '', 33, 0, 0, 0, 1, NULL),
(172, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'suscipit', 'Quae eum omnis dolorem in eos voluptatem optio et. Soluta aut enim velit ea voluptate ducimus alias.', 98.00, '', 33, 0, 0, 0, 1, NULL),
(173, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'rem', 'Aut cum excepturi molestiae repellat. Tenetur commodi a rerum non odit reiciendis sed. Assumenda aut sunt consequatur tempora et.', 21.95, '', 33, 0, 0, 0, 1, NULL),
(174, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'et', 'Dolorum consequatur vero temporibus sed culpa. Minima et ut non sunt nihil aspernatur. Quibusdam eveniet dolore velit sint.', 73.71, '', 33, 0, 0, 0, 1, NULL),
(175, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'repellat', 'Quibusdam quas recusandae nesciunt beatae quas quo. Velit eveniet earum nostrum voluptatem voluptatem eligendi. In deleniti assumenda ea. Facere molestiae cum iste voluptates quia molestiae id distinctio.', 25.26, '', 33, 0, 0, 0, 1, NULL),
(176, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'fugiat', 'Consequatur nesciunt ut neque dignissimos rem id. Odit mollitia in ut consequatur nobis explicabo consectetur. Atque est pariatur blanditiis facere distinctio deserunt. Pariatur consectetur doloribus et adipisci quia vel dignissimos officia.', 20.29, '', 34, 0, 0, 0, 1, NULL),
(177, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'at', 'Odio provident quae sed unde facere. Optio quasi et ut accusantium. Voluptate ab et inventore impedit perspiciatis minus. Ipsam quae facilis repudiandae sit quisquam dolor autem.', 31.20, '', 34, 0, 0, 0, 1, NULL),
(178, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'soluta', 'Minima quod vero aliquam dolorem. Dignissimos est aliquid est tenetur molestias.', 71.74, '', 34, 0, 0, 0, 1, NULL),
(179, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'deleniti', 'Et cupiditate omnis nulla aut sunt impedit. Fuga temporibus accusantium consequatur fugit possimus sit. Ut perferendis vel et rerum sequi.', 81.57, '', 34, 0, 0, 0, 1, NULL),
(180, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ab', 'Ipsam pariatur aut non quos numquam ea. Repudiandae et quis magnam non quo. Aut facilis qui ipsa eum.', 7.27, '', 34, 0, 0, 0, 1, NULL),
(181, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ratione', 'Totam facilis earum qui sed reiciendis qui. Modi fugit ut dolores inventore alias.', 34.10, '', 35, 0, 0, 0, 1, NULL),
(182, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'autem', 'Est est rerum id qui nesciunt asperiores. Quisquam fugit aut voluptatem voluptatem eveniet asperiores. Eaque qui impedit quae rerum impedit eos qui. Magni reiciendis vitae iure eos consequatur.', 44.07, '', 35, 0, 0, 0, 1, NULL),
(183, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'in', 'Aperiam hic cumque earum veniam consequatur. Fugit numquam velit aliquam. Est cum enim nam doloribus neque quasi nemo. Cupiditate quos necessitatibus dolores illo ducimus.', 39.13, '', 35, 0, 0, 0, 1, NULL),
(184, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quisquam', 'Consequatur velit possimus quo magni. Voluptatem est illo aut tempore fugit. Velit eos expedita quaerat magni recusandae. Dolores repellendus eum porro omnis.', 34.63, '', 35, 0, 0, 0, 1, NULL),
(185, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'eius', 'Magnam est nihil assumenda ea nobis nesciunt. Officia sequi natus esse ut expedita.', 35.36, '', 36, 0, 0, 0, 1, NULL),
(186, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'temporibus', 'Dolores deserunt praesentium ab et et natus nemo. Eius qui et repudiandae minima. Eos enim officiis et rerum illum perspiciatis. Ut sunt adipisci ullam facere.', 24.80, '', 36, 0, 0, 0, 1, NULL),
(187, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'consequuntur', 'Maxime ea optio fugit deleniti velit cumque. Adipisci ducimus harum fugit. Assumenda quia itaque et vel quas.', 71.39, '', 36, 0, 0, 0, 1, NULL),
(188, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'enim', 'Eum minus autem quia dolore quo error. Qui dicta explicabo sunt dolore. Ratione dolores atque voluptates at debitis. Et eius alias vel ex vero. Doloribus eaque repellat at et.', 50.85, '', 36, 0, 0, 0, 1, NULL),
(189, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aliquam', 'Recusandae quidem totam perferendis delectus amet amet libero. Est officia et porro magni provident magni. Quos eum alias in doloremque.', 45.42, '', 36, 0, 0, 0, 1, NULL),
(190, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'cum', 'Vel tenetur est omnis esse. Quibusdam enim autem dignissimos voluptas eum quas. Nostrum sed atque quia amet rerum.', 31.12, '', 36, 0, 0, 0, 1, NULL);
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `price`, `image`, `category_id`, `out_of_stock`, `order_index`, `featured`, `active`, `allergens`) VALUES
(191, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'delectus', 'Delectus numquam nisi consequatur similique aut exercitationem mollitia qui. Quo voluptatibus aliquam consequatur consequatur ullam consequatur error velit. Voluptate veritatis animi quia quae necessitatibus. Praesentium ut labore rerum totam ut et aut.', 94.25, '', 37, 0, 0, 0, 1, NULL),
(192, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'occaecati', 'Ut aliquid porro sunt qui cupiditate a. Aut placeat maxime ratione. Voluptatum ea consequatur necessitatibus quam adipisci rerum. Enim ipsam dignissimos laudantium quia.', 52.89, '', 37, 0, 0, 0, 1, NULL),
(193, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'odio', 'Laborum ut tempora debitis harum id eaque facilis. Consectetur rerum aut voluptas eligendi aut consequatur molestiae. Sit deleniti dolor quae explicabo et natus. Vitae corporis et iure eum.', 7.79, '', 37, 0, 0, 0, 1, NULL),
(194, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'tenetur', 'Quod at exercitationem officia animi. Voluptatibus eos voluptatem quaerat nostrum quia eius praesentium. Blanditiis ipsam ducimus ipsa voluptatibus soluta dolor ullam. Id eos fugit laudantium omnis sapiente sit neque voluptas.', 31.61, '', 37, 0, 0, 0, 1, NULL),
(195, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ut', 'Quas natus aut ut non consequuntur omnis. Ut harum commodi aut fugiat.', 45.23, '', 37, 0, 0, 0, 1, NULL),
(196, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ut', 'Nemo in dolores sint. Veniam vero esse deleniti inventore dignissimos. Fugiat alias earum reprehenderit ipsum aut. Non eum illum delectus omnis dolore consequuntur cum omnis.', 50.91, '', 37, 0, 0, 0, 1, NULL),
(197, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'commodi', 'Eum reiciendis omnis sunt sequi debitis tempore omnis maxime. Tempore quia possimus in in sed. Exercitationem dolores quo ut eos quo.', 6.79, '', 38, 0, 0, 0, 1, NULL),
(198, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quam', 'Unde omnis nobis voluptates eum cum. Quia velit ipsum aut inventore doloremque quis. Vel velit rerum debitis.', 43.26, '', 38, 0, 0, 0, 1, NULL),
(199, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptatem', 'Quos nihil repellendus et sit impedit. Eius facilis rem et quia ut. Reiciendis modi assumenda eaque consectetur quasi incidunt.', 87.18, '', 38, 0, 0, 0, 1, NULL),
(200, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'assumenda', 'Id unde sit quae porro itaque. Officiis et quod et recusandae. Deleniti quis sed maxime aliquid totam. Ipsum incidunt hic doloremque eos qui tempore deleniti.', 64.18, '', 38, 0, 0, 0, 1, NULL),
(201, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'doloremque', 'Sed doloribus doloremque quod assumenda. Laboriosam quis dolore aperiam quaerat a sed voluptate iusto.', 80.37, '', 38, 0, 0, 0, 1, NULL),
(202, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'non', 'Dolorem repellendus et quia occaecati aliquid. Laboriosam alias ipsum omnis iusto voluptatibus omnis. Sint cupiditate perferendis temporibus. Officiis fugit aut corrupti recusandae adipisci error.', 90.57, '', 38, 0, 0, 0, 1, NULL),
(203, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'facere', 'Qui omnis ea est debitis sed a sed. Placeat nisi amet excepturi dicta voluptate animi quis repellendus. Soluta ipsam et non. Voluptates cum voluptatem hic laudantium asperiores aut.', 21.16, '', 38, 0, 0, 0, 1, NULL),
(204, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quas', 'Quia eaque eos ut aut maiores ullam. Assumenda facilis unde exercitationem dicta nihil. Facilis autem aut sequi. Tempora harum consequatur quia alias.', 7.14, '', 39, 0, 0, 0, 1, NULL),
(205, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptate', 'Facere similique nihil suscipit mollitia vitae. Laborum rerum beatae quas corrupti dolores culpa. Itaque voluptates ab facilis et dicta.', 49.71, '', 39, 0, 0, 0, 1, NULL),
(206, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'nostrum', 'Iusto earum omnis exercitationem minus aut laudantium. Provident nulla eum beatae repellendus. Accusamus consequatur ut ut blanditiis qui. Temporibus commodi quia harum dignissimos non.', 71.69, '', 39, 0, 0, 0, 1, NULL),
(207, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sit', 'Nostrum harum cumque hic sint. Fugiat eius eaque quia minima eligendi autem. Velit neque nam dignissimos et itaque.', 49.35, '', 39, 0, 0, 0, 1, NULL),
(208, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'laborum', 'Et doloribus sit commodi voluptate reiciendis et eum. Numquam et ullam quia velit earum ipsa.', 93.39, '', 39, 0, 0, 0, 1, NULL),
(209, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'illum', 'Suscipit ad nisi est quos. Similique voluptatum amet maiores alias vel. Blanditiis dolores quia excepturi commodi nobis repellat non.', 30.41, '', 39, 0, 0, 0, 1, NULL),
(210, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sit', 'Et labore consequatur cupiditate sit. Consequatur in delectus a blanditiis ipsa in. Consectetur nihil pariatur quod et. Et aspernatur iste soluta magnam quo aut.', 85.10, '', 39, 0, 0, 0, 1, NULL),
(211, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'voluptatem', 'Placeat et omnis a facere. Perspiciatis sunt et ex aut. Non facere sed et sit ut omnis libero nesciunt. Facere autem hic sunt officiis eos doloremque sit doloremque. Sint accusantium vitae et delectus quae explicabo.', 82.80, '', 40, 0, 0, 0, 1, NULL),
(212, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'quidem', 'Quia minima accusamus sunt. Sunt et adipisci modi minima et aut asperiores sequi. Aliquid quibusdam quia enim quia.', 82.49, '', 40, 0, 0, 0, 1, NULL),
(213, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'excepturi', 'Nihil error maiores dolores vero. Non praesentium sint dolor sit quasi id dicta. Ullam illo at nostrum. Perferendis placeat debitis voluptate aut blanditiis ab perferendis. Voluptatem atque voluptate aperiam enim.', 16.67, '', 40, 0, 0, 0, 1, NULL),
(214, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'sequi', 'Ea tenetur fuga aspernatur nisi. Ut consequatur rerum voluptas non quis voluptatem non. Quia cumque modi ut libero pariatur sapiente non. Aliquam exercitationem asperiores possimus dolor quae aut perspiciatis officia.', 99.37, '', 40, 0, 0, 0, 1, NULL),
(215, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'ipsa', 'Animi sed consequatur molestiae animi quo saepe consectetur. Non dicta odit voluptatem inventore aut aliquid. Ipsa numquam corrupti expedita possimus ex. Ratione vel ullam modi perferendis sed.', 70.01, '', 40, 0, 0, 0, 1, NULL),
(216, '2024-02-26 06:13:02', '2024-02-26 06:13:02', NULL, 'aut', 'Sunt enim voluptatum iure sint ex. Nihil voluptas vel odit numquam qui voluptas recusandae. Et aut facere explicabo alias eos. Architecto accusamus sit libero.', 18.25, '', 40, 0, 0, 0, 1, NULL),
(217, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'consequuntur', 'Exercitationem ducimus architecto id incidunt veritatis et. Quod quia sit est ut. Ut ex maiores distinctio ut facere officia aliquid unde. Mollitia est ducimus aut omnis eum eos.', 68.31, '', 40, 0, 0, 0, 1, NULL),
(218, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'excepturi', 'Dolores reprehenderit qui a et aliquid nulla in. Doloremque id dolorem architecto maiores. Iste laborum ex est non. Similique a dolor et repudiandae qui sed.', 64.08, '', 41, 0, 0, 0, 1, NULL),
(219, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quos', 'Nulla dignissimos exercitationem velit neque sed. Ut ut quaerat ut est aliquam sapiente aut. Et totam animi et qui ipsa.', 69.72, '', 41, 0, 0, 0, 1, NULL),
(220, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'accusantium', 'Molestias sit et est autem eum repellat. Porro omnis culpa in quibusdam at sed fuga.', 49.74, '', 41, 0, 0, 0, 1, NULL),
(221, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ex', 'Consequatur ab accusamus sint harum sunt. Quam aperiam recusandae at qui quia aut natus. Consequatur voluptatem ab laboriosam iure perferendis quam dolorum. Ipsam ut ut ipsam laudantium fugiat eos. Occaecati eligendi fugiat debitis ducimus voluptatem sunt cupiditate.', 26.87, '', 41, 0, 0, 0, 1, NULL),
(222, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sint', 'Numquam doloremque qui maiores doloribus doloremque tempora placeat. Error sed eum impedit deserunt quaerat natus. Quam vitae voluptates sunt enim velit facilis aut. Hic est asperiores at sint temporibus placeat.', 85.97, '', 41, 0, 0, 0, 1, NULL),
(223, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sed', 'Quod impedit est quaerat optio. Qui accusamus explicabo quae ratione hic exercitationem eos excepturi. Ut non dolorem excepturi autem voluptatem nesciunt. Est distinctio quisquam doloribus unde. Fuga blanditiis error cum voluptas quia maxime sunt.', 31.73, '', 42, 0, 0, 0, 1, NULL),
(224, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'consequatur', 'Mollitia et sint sed commodi tempora assumenda. Rem similique ut eos enim. Dolor minima sint eos quisquam.', 6.98, '', 42, 0, 0, 0, 1, NULL),
(225, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'tempora', 'Saepe fuga voluptatem nobis minus eveniet quis. Adipisci qui perferendis neque suscipit blanditiis et. Aut reiciendis cumque debitis eum magni in. Itaque quis neque ut laudantium.', 94.03, '', 42, 0, 0, 0, 1, NULL),
(226, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolor', 'Esse et esse eveniet sint voluptates qui. Amet et ullam qui aut eveniet sit ut. Assumenda sint accusamus numquam vel saepe quis voluptas. Omnis autem nihil dolores consequuntur.', 78.05, '', 42, 0, 0, 0, 1, NULL),
(227, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'perferendis', 'Ipsam ut aut tenetur rerum delectus. Impedit autem optio est id iste et nisi. Quis qui voluptatum et quae.', 11.82, '', 42, 0, 0, 0, 1, NULL),
(228, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'natus', 'Est est qui atque non sequi veniam. Voluptatem ut delectus consectetur facere laboriosam doloremque quia. Nulla facere eos voluptatem est. Assumenda recusandae praesentium dicta accusamus vel adipisci.', 7.08, '', 43, 0, 0, 0, 1, NULL),
(229, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'id', 'Molestias repudiandae nihil repudiandae repellat ut. Consequuntur et explicabo deserunt natus suscipit. Delectus officiis omnis alias animi.', 88.56, '', 43, 0, 0, 0, 1, NULL),
(230, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sit', 'Explicabo expedita doloremque dicta. Quo labore laboriosam repudiandae maxime qui qui.', 84.69, '', 43, 0, 0, 0, 1, NULL),
(231, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'distinctio', 'Dolorem nobis unde culpa ducimus libero hic omnis. Sunt quia perspiciatis quos qui dolore. Odio pariatur enim velit sit ipsa aut consequatur. Architecto odio ad aut ex est aut minima.', 91.20, '', 44, 0, 0, 0, 1, NULL),
(232, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'velit', 'Et fuga quis et. Quisquam distinctio qui dignissimos numquam vel. Laborum est facilis et nemo rem.', 58.83, '', 44, 0, 0, 0, 1, NULL),
(233, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quis', 'Facilis quo praesentium neque non numquam accusamus. Suscipit voluptatibus dolor dolore. Qui atque culpa et mollitia repellendus repudiandae maxime. Dolorum consequatur et eveniet error accusamus soluta.', 57.10, '', 44, 0, 0, 0, 1, NULL),
(234, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'facilis', 'Voluptatem occaecati similique architecto exercitationem explicabo omnis non. Perspiciatis eveniet ut minus soluta omnis. Praesentium ipsum suscipit quod veniam qui hic.', 88.81, '', 44, 0, 0, 0, 1, NULL),
(235, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sint', 'In minima dolorum accusamus quibusdam ut animi quasi. Cum quis ducimus aut sit officia debitis consequatur. Recusandae amet sequi veniam nam odit. Sint officia qui ab et animi. Consequatur modi eligendi excepturi blanditiis aliquam.', 40.08, '', 44, 0, 0, 0, 1, NULL),
(236, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'occaecati', 'Voluptatum rem quis molestiae cum. Tempore pariatur quasi recusandae eveniet. Tempore rem nihil iure laborum praesentium.', 89.87, '', 44, 0, 0, 0, 1, NULL),
(237, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'qui', 'Officia consequuntur minima eius consectetur. Ducimus enim sed non dignissimos quas praesentium. Ut tempora perferendis quis labore aut placeat qui. Dolore dolores esse dignissimos.', 98.75, '', 44, 0, 0, 0, 1, NULL),
(238, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sunt', 'Debitis et sed quasi occaecati laborum. Voluptatibus cumque et sed qui distinctio odio libero. Asperiores iusto quo qui consequatur consequatur velit cumque. Autem similique beatae est.', 75.32, '', 45, 0, 0, 0, 1, NULL),
(239, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'distinctio', 'Ad aspernatur eaque est quia vitae. Perspiciatis reiciendis in assumenda voluptatibus sint consectetur. Est voluptatibus aut perferendis nemo impedit in molestiae.', 63.67, '', 45, 0, 0, 0, 1, NULL),
(240, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dignissimos', 'Natus id dolorem suscipit itaque et unde. Qui voluptatem ut debitis est.', 68.13, '', 45, 0, 0, 0, 1, NULL),
(241, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'modi', 'Quam quos repellat exercitationem et doloribus. Veritatis odio nihil eos.', 39.25, '', 45, 0, 0, 0, 1, NULL),
(242, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'error', 'Quibusdam minima est quo molestiae expedita animi. Quis odit eos rerum non vel velit voluptates. Aliquam iste blanditiis provident a porro. Sequi officia sequi in sed ea exercitationem voluptatibus.', 42.01, '', 45, 0, 0, 0, 1, NULL),
(243, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sit', 'Qui aliquam adipisci et architecto dignissimos. Id sed voluptas illum minus ut consequatur et. Sed adipisci quia non repudiandae ut autem aut.', 21.71, '', 45, 0, 0, 0, 1, NULL),
(244, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'fuga', 'Voluptatem accusantium autem ut veniam. Autem aut laborum omnis dolorum et. Nulla reiciendis est excepturi voluptatem quod quia aspernatur. Et dolorem architecto consectetur ab.', 45.47, '', 46, 0, 0, 0, 1, NULL),
(245, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'fuga', 'Ut ea qui natus. Praesentium eum tenetur enim est dolores dolores. Aliquam corporis animi consequatur error sunt.', 16.24, '', 46, 0, 0, 0, 1, NULL),
(246, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'expedita', 'Tempore voluptatem voluptas qui quia est voluptatem nisi. Non laudantium est consectetur enim. Rerum eveniet corrupti nobis eligendi ex.', 91.49, '', 46, 0, 0, 0, 1, NULL),
(247, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aut', 'Sit accusamus qui dignissimos iusto nobis natus voluptates. Maiores non dignissimos ut autem neque sed pariatur. Enim quaerat qui sapiente quam.', 67.90, '', 46, 0, 0, 0, 1, NULL),
(248, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'deserunt', 'Autem placeat tempora quis inventore. Officiis ipsum a nisi enim qui consequatur qui. Possimus aspernatur fugiat cum reiciendis a. Ut sapiente eveniet ea fugit qui nemo hic amet.', 62.89, '', 46, 0, 0, 0, 1, NULL),
(249, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'similique', 'Placeat quibusdam veniam temporibus. Quos voluptas aut nisi ut aut. Voluptas minima dolorum molestiae qui soluta aut natus laboriosam. Et veniam aut voluptas perferendis.', 38.61, '', 47, 0, 0, 0, 1, NULL),
(250, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quae', 'Recusandae quos sint est esse. Suscipit soluta alias reprehenderit possimus dicta nemo. Aliquam sint repellendus odio excepturi rerum non. Aut molestiae repellat in sequi.', 64.52, '', 47, 0, 0, 0, 1, NULL),
(251, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 'Et et quas doloremque aperiam voluptatibus sed quae. Ullam harum totam culpa similique ipsam eos. Officia omnis mollitia quisquam provident.', 35.02, '', 47, 0, 0, 0, 1, NULL),
(252, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sint', 'Error voluptas recusandae quia vitae sit. Fuga eum eligendi voluptatem quisquam cupiditate. Et molestiae quia omnis ut qui sapiente eos. Nam ea quo ratione et.', 6.17, '', 47, 0, 0, 0, 1, NULL),
(253, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 'Et tempora exercitationem voluptatibus facere magni officiis. Qui qui nihil dolor et cumque molestiae. Enim eius voluptate iste cum illum ea.', 57.12, '', 47, 0, 0, 0, 1, NULL),
(254, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eum', 'Voluptatem laudantium consequatur qui nihil. Omnis reiciendis at ipsam eius nulla ducimus autem. Laboriosam dolore iusto sapiente ut aut id.', 32.76, '', 47, 0, 0, 0, 1, NULL),
(255, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'numquam', 'Exercitationem consequatur nihil facilis ut doloribus aut. Consequatur laboriosam illum qui quis in. Vel id eum dolorum.', 34.93, '', 47, 0, 0, 0, 1, NULL),
(256, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ex', 'Itaque provident sapiente vel non. Ut fugiat aut aut et. Sed ad facere tempora molestiae et consequuntur.', 47.55, '', 48, 0, 0, 0, 1, NULL),
(257, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'consequatur', 'Aut aliquid enim veniam quo quam aliquid dolorem. Est et optio sunt laudantium.', 39.34, '', 48, 0, 0, 0, 1, NULL),
(258, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eveniet', 'Odio modi voluptas magni voluptatem qui iste quam. Quas esse consequuntur ducimus suscipit. Eos sed quo quo qui qui dolor.', 23.31, '', 48, 0, 0, 0, 1, NULL),
(259, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sequi', 'Perferendis similique eveniet blanditiis dolorem autem error. Accusantium atque laudantium rerum autem sint repudiandae ullam. Nulla incidunt voluptatem maiores expedita eaque sit.', 51.49, '', 48, 0, 0, 0, 1, NULL),
(260, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ab', 'Laborum excepturi autem et qui praesentium recusandae. Est numquam tempora quam placeat nihil amet aut non. Atque aspernatur vel labore provident. Molestiae non laudantium laborum minima sed rerum sint.', 81.42, '', 48, 0, 0, 0, 1, NULL),
(261, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eos', 'Perferendis ut quia laborum. Magnam maiores iure earum.', 7.10, '', 48, 0, 0, 0, 1, NULL),
(262, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'saepe', 'Veritatis voluptatum et minus qui amet architecto voluptatem. Repudiandae sint voluptatem nobis vel. Aspernatur aut facere praesentium facilis quia. Ut saepe impedit molestiae ab facilis accusantium omnis dicta.', 10.49, '', 48, 0, 0, 0, 1, NULL),
(263, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'alias', 'Totam ea veniam est voluptas qui deleniti. Consequatur tempore dolore necessitatibus est velit non deserunt. Ipsa quaerat nisi libero delectus animi.', 97.68, '', 49, 0, 0, 0, 1, NULL),
(264, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'consequuntur', 'A et voluptatum commodi officiis sit. Voluptas enim beatae aliquam quis quia corrupti. Minus et earum est dicta. Omnis omnis autem eos architecto et.', 6.85, '', 49, 0, 0, 0, 1, NULL),
(265, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'fuga', 'Sit magnam est repellat illo. Esse voluptatum sit neque voluptatem velit. Sit odit odit accusamus suscipit facilis.', 71.35, '', 49, 0, 0, 0, 1, NULL),
(266, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'perspiciatis', 'Aliquid provident perferendis nam iure. Dignissimos animi quia magnam sint soluta earum ipsum. Iusto sunt iusto exercitationem sint consectetur totam quia. Libero qui maxime aut voluptatum porro maiores.', 41.85, '', 49, 0, 0, 0, 1, NULL),
(267, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ut', 'Unde aliquid quaerat esse. Quia voluptatem illo illo dolores. Nostrum dolorum sed voluptas neque saepe consequatur est. Consectetur architecto sint animi ex ipsam sequi quaerat.', 55.58, '', 49, 0, 0, 0, 1, NULL),
(268, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'consequatur', 'Neque vero sed vitae nulla consequatur officia voluptatibus. Placeat facere alias eos aut occaecati accusantium. Officiis amet harum minima dolores mollitia dolorem qui eius.', 58.05, '', 50, 0, 0, 0, 1, NULL),
(269, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quisquam', 'Est quam fuga quia magnam eius asperiores. Dolorem et perferendis placeat esse dolor. Exercitationem et dolorum assumenda aspernatur provident ipsa.', 61.99, '', 50, 0, 0, 0, 1, NULL),
(270, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'alias', 'Asperiores sed et reprehenderit rem sed velit id. Qui qui ratione error aut voluptas vero rem et. Qui enim excepturi natus qui reiciendis.', 92.47, '', 50, 0, 0, 0, 1, NULL),
(271, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 'Consequatur quia ipsum omnis tenetur corrupti magni. Culpa omnis ut officiis laborum tempore qui. Magnam et error est mollitia aliquid repellendus.', 54.56, '', 50, 0, 0, 0, 1, NULL),
(272, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'fugit', 'Rerum commodi eos voluptatum velit id occaecati et quas. Est expedita recusandae quas voluptas sed suscipit sit. Laudantium nostrum similique aut culpa. Est saepe nihil ullam aut libero ipsum.', 72.01, '', 50, 0, 0, 0, 1, NULL),
(273, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'cum', 'Culpa incidunt non tenetur est veniam. Consequatur aliquam dicta quos neque. Minus ratione quasi repellat veniam aspernatur alias quia blanditiis.', 16.69, '', 50, 0, 0, 0, 1, NULL),
(274, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ad', 'Quasi in est et dolor. Quaerat explicabo ut temporibus numquam omnis dolores possimus. Eum autem velit et.', 19.01, '', 51, 0, 0, 0, 1, NULL),
(275, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'alias', 'Et architecto et nihil magni incidunt. Unde ducimus dolor voluptate eveniet qui occaecati aut dolorem. Dolore labore at quia et voluptatem voluptas est.', 93.73, '', 51, 0, 0, 0, 1, NULL),
(276, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'occaecati', 'Atque commodi aut in iusto rerum rem aliquid similique. Aliquid dolor tempora necessitatibus corrupti nostrum facere facilis. Autem officiis et ex. Ipsa labore impedit beatae porro.', 70.33, '', 51, 0, 0, 0, 1, NULL),
(277, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ab', 'Sunt qui vero iure nam. Quia ut maiores et non. Modi quod et id voluptas provident corporis. Modi porro mollitia quos.', 76.04, '', 51, 0, 0, 0, 1, NULL),
(278, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'rerum', 'Nesciunt libero tempora ut tenetur. Eum corrupti provident in officiis dolore.', 32.11, '', 51, 0, 0, 0, 1, NULL),
(279, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eum', 'Quis voluptas fugit quaerat et quisquam. Voluptas est dicta sunt voluptas a. Eum voluptatem culpa doloremque. Ducimus numquam ad quod repudiandae rerum est.', 19.65, '', 52, 0, 0, 0, 1, NULL),
(280, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolorem', 'Nihil aliquid eum fuga necessitatibus qui velit omnis aut. Vel et et eos quis est dignissimos. Dolorum quia omnis architecto dicta impedit.', 16.30, '', 52, 0, 0, 0, 1, NULL),
(281, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'qui', 'Sunt ad est et omnis officia sed ullam. Quis ipsum id et consectetur. Et qui ad porro ad voluptatem sequi ratione.', 53.54, '', 52, 0, 0, 0, 1, NULL),
(282, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eos', 'Corrupti et voluptate eius. Ab sed sunt voluptas enim. Veniam aperiam praesentium unde sapiente dolorum quia eaque. Rerum labore in aut et iure.', 81.20, '', 52, 0, 0, 0, 1, NULL),
(283, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 'Voluptatum numquam et sed et eos nisi. Nulla consectetur placeat sint accusamus optio dolorum. Non non dicta facilis distinctio aliquam.', 76.10, '', 52, 0, 0, 0, 1, NULL),
(284, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ea', 'Inventore et nihil nisi qui voluptas ea vel. Labore qui quis ea impedit. Veniam sed officiis repudiandae tenetur consequatur. Cum sed odit et cum veniam illum.', 9.77, '', 52, 0, 0, 0, 1, NULL),
(285, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'maiores', 'Vel pariatur debitis aut et. Accusamus et enim saepe accusantium enim at recusandae. Labore libero sed nemo aliquam qui perferendis. Aut iusto saepe nulla sapiente. Ipsum reprehenderit ut magni itaque tempore iste culpa deserunt.', 30.57, '', 52, 0, 0, 0, 1, NULL),
(286, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'nostrum', 'Non aut debitis necessitatibus autem dicta. Cum sapiente doloribus vel nihil reiciendis. Atque ut cupiditate est fugiat. Sunt ea exercitationem illum nihil a.', 88.14, '', 53, 0, 0, 0, 1, NULL),
(287, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'cum', 'Optio autem velit et itaque beatae iusto ab. Alias blanditiis sint aut ducimus ipsa et illo. Quisquam ab cum quia numquam earum qui magnam.', 74.61, '', 53, 0, 0, 0, 1, NULL),
(288, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolor', 'Repudiandae architecto ut rerum aliquam dolorem et. Nobis aut in animi ea soluta qui temporibus. Animi accusamus provident necessitatibus eaque perspiciatis mollitia qui et.', 40.16, '', 53, 0, 0, 0, 1, NULL),
(289, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quia', 'Et eaque recusandae consequatur hic inventore ea. Est autem asperiores sint vitae unde est qui. Natus repellat dolorem aut enim quos totam expedita. Labore porro explicabo eos ipsum. Mollitia possimus cupiditate repudiandae sunt voluptates quisquam.', 22.61, '', 54, 0, 0, 0, 1, NULL),
(290, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'omnis', 'Sit cum reiciendis aut quos nesciunt et. Ratione et nostrum qui commodi magnam ipsa. Sunt tenetur autem quia fuga ipsa alias in.', 14.54, '', 54, 0, 0, 0, 1, NULL),
(291, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'occaecati', 'Reiciendis quia rem consequatur libero autem a quod quia. Totam amet eius qui autem non neque esse distinctio. Amet porro dolor perferendis ad eos debitis.', 63.00, '', 54, 0, 0, 0, 1, NULL),
(292, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'similique', 'Molestiae saepe similique labore magnam. Ut laborum vel eum repellendus. Commodi ipsam nulla eligendi autem voluptas vero.', 52.83, '', 54, 0, 0, 0, 1, NULL),
(293, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'molestiae', 'Ea vel sequi maiores et consequatur. Dolore voluptate iste voluptatem eligendi. Rerum odio dolorum corrupti dolorum. Accusamus aperiam voluptas eveniet vero vitae maiores. Nihil libero et odio quo aspernatur omnis architecto.', 34.79, '', 55, 0, 0, 0, 1, NULL),
(294, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'molestias', 'In mollitia qui qui laboriosam et. Beatae commodi consequatur et repudiandae. Molestias tenetur nulla tempora sit.', 30.31, '', 55, 0, 0, 0, 1, NULL),
(295, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'iure', 'Atque cumque culpa quo cum aut. Dignissimos est eos earum voluptatum placeat. Nesciunt assumenda eum sunt sed fugit et.', 38.67, '', 55, 0, 0, 0, 1, NULL),
(296, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'itaque', 'Minima nihil tempore iusto harum sit corporis. Debitis veritatis tempore sint qui eveniet. Natus aut quibusdam alias delectus.', 78.53, '', 55, 0, 0, 0, 1, NULL),
(297, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ratione', 'Sequi repellat quod perferendis placeat perspiciatis exercitationem. Ipsum quas ipsam a reiciendis.', 42.06, '', 56, 0, 0, 0, 1, NULL),
(298, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 'Consequatur et aut suscipit sed consequatur qui aut pariatur. Placeat voluptatem quas velit pariatur. Officia quasi ipsam optio et corrupti.', 59.53, '', 56, 0, 0, 0, 1, NULL),
(299, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'itaque', 'Sapiente id itaque minima dolorem et. Voluptas ut earum accusantium maiores.', 46.18, '', 56, 0, 0, 0, 1, NULL),
(300, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'voluptatum', 'Natus mollitia voluptas ut voluptatum ab ut voluptates. Dicta ut quam nesciunt nihil. Qui natus quod et quam recusandae eius est. Doloribus alias magnam voluptas soluta et doloremque.', 15.98, '', 56, 0, 0, 0, 1, NULL),
(301, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolore', 'Animi autem unde illo provident voluptas. Ipsam iste laboriosam minus. Voluptas recusandae id a enim architecto.', 31.36, '', 57, 0, 0, 0, 1, NULL),
(302, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'recusandae', 'Ut maxime debitis sed. Delectus soluta et nemo dolores optio voluptas quisquam aut. Aut sed at accusamus vitae consectetur animi qui neque.', 98.11, '', 57, 0, 0, 0, 1, NULL),
(303, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'possimus', 'Omnis et earum id voluptatibus labore aspernatur velit debitis. Aut in sed tempora ea. Voluptatem aut odio ut qui ut et aperiam.', 98.23, '', 57, 0, 0, 0, 1, NULL),
(304, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ad', 'Dolores id dignissimos corrupti et et qui ut. Qui voluptate eaque exercitationem quia praesentium. Sit doloribus non debitis laudantium neque aut. Esse tempora laborum eum non unde.', 87.98, '', 57, 0, 0, 0, 1, NULL),
(305, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'blanditiis', 'Facere ab unde deleniti at vel nobis hic necessitatibus. Consequatur et culpa quod sunt. Non quidem necessitatibus rerum quas molestias quos sint. Velit cum officia autem asperiores ipsa nobis mollitia iure. Animi sint autem pariatur impedit sunt.', 17.47, '', 58, 0, 0, 0, 1, NULL),
(306, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'neque', 'Architecto delectus qui voluptas illo. Qui dolore enim quod.', 9.33, '', 58, 0, 0, 0, 1, NULL),
(307, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'voluptatem', 'Quod aut sed assumenda ipsam voluptatibus ipsum facere inventore. Doloremque dolores rerum et.', 80.51, '', 58, 0, 0, 0, 1, NULL),
(308, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'laudantium', 'Nam sint beatae rerum omnis nihil distinctio perspiciatis. Optio et et est sed ad et. Eaque architecto veniam repellendus rerum non expedita recusandae occaecati.', 92.56, '', 58, 0, 0, 0, 1, NULL),
(309, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'magnam', 'Beatae quas et et repellendus neque et saepe. Autem incidunt officiis velit dolores. Molestiae quisquam id magni voluptas.', 66.09, '', 58, 0, 0, 0, 1, NULL),
(310, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'voluptas', 'Et assumenda tempore quia sint enim laboriosam. Et ex quis provident quia dolorum. Autem fugit illum vero occaecati eos porro laborum illum. Velit et distinctio blanditiis harum.', 87.62, '', 58, 0, 0, 0, 1, NULL),
(311, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'consequatur', 'Laudantium ipsam in dolorum et sit error. Nihil totam necessitatibus dolores est. In laborum veniam ut hic.', 97.91, '', 59, 0, 0, 0, 1, NULL),
(312, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quia', 'Perferendis quisquam molestiae magnam qui doloribus sequi. Pariatur sit quis sunt laboriosam voluptatibus. Vero delectus ut voluptates. Sint dicta repellendus fugiat odit provident.', 24.68, '', 59, 0, 0, 0, 1, NULL),
(313, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'corrupti', 'Odio quaerat ad sunt a sunt aut dicta. Sint nostrum magnam et est labore vero. Eaque est dolores delectus in sit.', 80.07, '', 59, 0, 0, 0, 1, NULL),
(314, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quos', 'Quidem aliquam tempora consequatur laborum. Aliquam dicta soluta doloribus. Dolorem qui numquam incidunt aliquam itaque quam.', 26.87, '', 60, 0, 0, 0, 1, NULL),
(315, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'fuga', 'Non modi est provident quis. Explicabo repellat saepe amet. Ipsum repellat dolor totam sit quos omnis. Aut optio voluptatem est aut ullam nihil.', 85.47, '', 60, 0, 0, 0, 1, NULL),
(316, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eos', 'Ad itaque eveniet soluta architecto iusto. Debitis aut expedita aliquid delectus. Et sed quasi est excepturi dolor voluptas cupiditate officia. Modi consequuntur cupiditate vitae omnis sunt. Maiores necessitatibus delectus non asperiores nulla sint ut.', 31.33, '', 60, 0, 0, 0, 1, NULL),
(317, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'culpa', 'Omnis dicta ut inventore est. Quam velit quo earum rerum et et inventore. Dicta consectetur labore quo eius quia.', 17.37, '', 60, 0, 0, 0, 1, NULL),
(318, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sunt', 'Ut incidunt sapiente ut eos delectus est sunt. Repellendus nihil officiis voluptate et ea libero. Provident tempora magni ea eos.', 11.90, '', 60, 0, 0, 0, 1, NULL),
(319, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'perspiciatis', 'Non quis similique distinctio dolor et. Quia natus exercitationem incidunt numquam.', 31.19, '', 60, 0, 0, 0, 1, NULL),
(320, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'rerum', 'Mollitia est voluptatum adipisci non error sint omnis. Quia expedita facere quia non consequatur enim quia. Dolorem aut nam reiciendis nihil nobis voluptatem corrupti porro. Autem corporis labore corrupti ipsum.', 45.37, '', 60, 0, 0, 0, 1, NULL),
(321, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'iure', 'Laborum enim tempora repellendus saepe harum. Quam ut molestiae et ea temporibus odit. Quo explicabo quis sit voluptates porro dignissimos. Qui exercitationem qui cumque architecto fugit. Placeat nihil eos sunt et.', 9.76, '', 61, 0, 0, 0, 1, NULL),
(322, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 'Molestiae provident consequatur exercitationem quia occaecati rem dolores quas. Necessitatibus enim similique quis earum nulla consequatur ut ipsa. Provident earum molestias laboriosam molestias quia non quasi. Ut facilis iste fugit aut omnis incidunt. Et iste est non consequatur consectetur et.', 58.72, '', 61, 0, 0, 0, 1, NULL),
(323, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'laboriosam', 'Et delectus ut et vel ut. Temporibus ratione veniam provident voluptatibus qui rerum libero. Magnam voluptatibus quaerat delectus unde dolores non qui. Qui qui id recusandae dolorem.', 7.29, '', 61, 0, 0, 0, 1, NULL),
(324, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'iste', 'Reiciendis perferendis aliquam eveniet qui nobis modi quisquam qui. Tempora cum placeat ab minus illo quo aut.', 50.05, '', 62, 0, 0, 0, 1, NULL),
(325, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'enim', 'Ut quaerat minima ea qui magni sed. Fuga consequatur et debitis nesciunt eos. Quidem quia dolorem aperiam officia excepturi eum.', 92.03, '', 62, 0, 0, 0, 1, NULL),
(326, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 'Iusto laborum et harum unde dolores temporibus. Voluptas eveniet dolore aut odio. Officia qui quibusdam ut quaerat quos. Autem earum doloribus molestias aut repellat.', 91.79, '', 62, 0, 0, 0, 1, NULL),
(327, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eum', 'Est qui et dolor magnam. Quis autem quos reprehenderit in aut. Unde earum eveniet reprehenderit ex excepturi.', 56.70, '', 62, 0, 0, 0, 1, NULL),
(328, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'explicabo', 'Eos commodi accusantium eius alias ex. Porro reprehenderit illo qui temporibus. Qui accusamus voluptate consequatur eos.', 67.36, '', 62, 0, 0, 0, 1, NULL),
(329, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'non', 'Optio voluptatem qui totam vel tempore reiciendis aut numquam. Ut voluptatem velit voluptatem perferendis. Rerum dolores magni quia omnis.', 11.97, '', 62, 0, 0, 0, 1, NULL),
(330, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ad', 'Repudiandae labore cum sunt. Et ipsam facilis porro. Et neque iure qui aut qui occaecati. Reprehenderit culpa illo eos optio quas et reiciendis consectetur.', 54.82, '', 63, 0, 0, 0, 1, NULL),
(331, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'tempora', 'Molestias quibusdam voluptas possimus aut. Nam nesciunt aut eum et. Ut animi ad laborum odio aliquam. Odio dicta eaque deleniti adipisci sed voluptate.', 28.29, '', 63, 0, 0, 0, 1, NULL),
(332, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'suscipit', 'Aspernatur repudiandae similique omnis ut quod voluptas. Aut voluptatem est numquam aut autem.', 6.88, '', 63, 0, 0, 0, 1, NULL),
(333, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'natus', 'Blanditiis explicabo consequatur sint et perspiciatis. Iure aut consectetur placeat unde dolores non maxime voluptates. Praesentium enim molestiae rerum qui hic voluptate. Aliquid consequatur rem praesentium omnis rerum.', 44.89, '', 63, 0, 0, 0, 1, NULL),
(334, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'cumque', 'Officia aut eaque voluptatem voluptates dolorum fuga et praesentium. Itaque tenetur fugiat sapiente officia tempore.', 72.67, '', 63, 0, 0, 0, 1, NULL),
(335, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'libero', 'Doloribus quia consectetur et repellat nesciunt voluptatem et. Rem quos est et rerum. Molestias exercitationem itaque et non.', 61.03, '', 63, 0, 0, 0, 1, NULL),
(336, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'architecto', 'Amet officia sunt adipisci dolore consequuntur sint harum quidem. Blanditiis id eius voluptatem quia. Nihil deleniti quia iusto veritatis amet quia. Molestiae omnis vero omnis dignissimos voluptate.', 32.69, '', 64, 0, 0, 0, 1, NULL),
(337, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolor', 'Quis repellendus mollitia ea dolorem esse assumenda eveniet. Cupiditate optio aperiam molestias autem maiores non occaecati. Quas saepe et tenetur.', 15.14, '', 64, 0, 0, 0, 1, NULL),
(338, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sed', 'Ipsam adipisci ab qui eum vel. Amet corporis laborum repellat magni. Voluptate quae unde eos ratione.', 41.70, '', 64, 0, 0, 0, 1, NULL),
(339, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'distinctio', 'Non et eum illum repellendus quia. Dicta excepturi neque eius eum beatae. Aut cupiditate fugit eos omnis sit illum. Est repellat labore ut consequatur in et.', 92.71, '', 65, 0, 0, 0, 1, NULL),
(340, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aut', 'Fugit in harum consequatur vitae illum. Est omnis eos quo modi. Architecto ut et tempora ullam temporibus et incidunt.', 81.91, '', 65, 0, 0, 0, 1, NULL),
(341, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'qui', 'Ipsum sed neque ipsam et voluptatem aperiam voluptatem. Fuga repellat laborum et.', 5.80, '', 65, 0, 0, 0, 1, NULL),
(342, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'voluptatem', 'Tempore et saepe nostrum. Eos quos minima deserunt aut sed. Dolor eligendi tempore sint quod. Aliquam rerum nesciunt aliquam voluptas vel et saepe ut.', 22.98, '', 66, 0, 0, 0, 1, NULL),
(343, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ullam', 'Ut nemo eius eius quibusdam quia tenetur cumque. Incidunt harum sint minima sit. Non atque autem cupiditate impedit libero soluta suscipit. Molestiae recusandae rerum facilis.', 42.12, '', 66, 0, 0, 0, 1, NULL),
(344, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'deserunt', 'Quia doloremque sit qui aut asperiores libero. Quod qui eos neque et. Aut laudantium nesciunt dignissimos repellat exercitationem voluptas illo.', 90.67, '', 66, 0, 0, 0, 1, NULL),
(345, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aperiam', 'Explicabo rerum est quia sint et ut placeat. Et odio ut id in inventore. Rerum optio ratione perferendis.', 98.39, '', 66, 0, 0, 0, 1, NULL),
(346, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'similique', 'Molestiae perferendis repudiandae minus velit. Similique omnis voluptatem maxime soluta. Repellat eveniet nesciunt sequi. Nam laborum quos quidem officia voluptas.', 70.65, '', 66, 0, 0, 0, 1, NULL),
(347, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'voluptatum', 'Nam debitis aspernatur in doloremque illum sunt quaerat error. Incidunt autem debitis quis eaque et magni incidunt. Ex explicabo et sed unde doloremque quis. Omnis perspiciatis quibusdam sint magni.', 8.08, '', 66, 0, 0, 0, 1, NULL),
(348, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'iste', 'Modi consequatur saepe et est soluta deleniti nam. Officia recusandae vel nam. Voluptatem veniam exercitationem tempora.', 51.70, '', 67, 0, 0, 0, 1, NULL),
(349, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolorum', 'Et suscipit excepturi nemo enim eos ut. Libero similique dignissimos ut quisquam ut. Quia delectus sapiente non sit. Asperiores velit mollitia alias voluptate et vel voluptatum.', 93.46, '', 67, 0, 0, 0, 1, NULL),
(350, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 'Hic tempore delectus voluptatum numquam aliquam eaque. Ea id officiis vel sequi nihil eveniet commodi natus. Itaque nam dolor voluptate impedit et dolor rerum. Dolore et excepturi est minus ex. Ea beatae non nemo doloribus itaque quia occaecati.', 66.77, '', 67, 0, 0, 0, 1, NULL),
(351, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ut', 'Sit architecto aut pariatur sit et est et. Vel voluptatum vel voluptatem velit tempora culpa. Quia velit necessitatibus molestiae blanditiis excepturi sint et ipsum.', 12.55, '', 67, 0, 0, 0, 1, NULL),
(352, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sit', 'Corrupti dolor consequatur cum autem fugit eligendi voluptas. Occaecati placeat corrupti ad esse dolorem enim. Corporis architecto necessitatibus expedita enim numquam quo. Sint praesentium quam corporis quo eaque.', 73.14, '', 68, 0, 0, 0, 1, NULL),
(353, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'qui', 'Placeat fugit voluptatem veritatis et. Odio iste iusto sunt nostrum. Ea enim non vel alias.', 19.61, '', 68, 0, 0, 0, 1, NULL),
(354, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'est', 'Architecto nihil qui dolorum quia. Provident ipsam accusamus incidunt error. Cum odio numquam veritatis ipsum esse. Quo adipisci quas natus reiciendis fugiat velit.', 11.44, '', 68, 0, 0, 0, 1, NULL),
(355, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quisquam', 'Voluptatum ipsam voluptatem architecto ab ea. Eum esse eaque quisquam est velit doloremque animi. Expedita nisi non aut impedit rerum molestias necessitatibus. Aliquam ratione enim ut eaque et omnis.', 40.62, '', 69, 0, 0, 0, 1, NULL),
(356, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'cumque', 'Id rerum saepe laboriosam ullam nulla enim. Voluptatem molestiae excepturi cumque non fugiat cum facere nemo. Veritatis in voluptas quia labore. Voluptates ea possimus et similique maxime consectetur.', 49.05, '', 69, 0, 0, 0, 1, NULL),
(357, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'excepturi', 'Nihil atque repellat ullam velit aspernatur minima doloribus. Eos illo facere et et ad dolorum. Quam occaecati voluptas earum ea doloribus aut omnis. Assumenda accusamus eveniet sit molestiae tempora. Sint autem omnis natus ratione expedita ea.', 69.07, '', 69, 0, 0, 0, 1, NULL),
(358, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'dolorum', 'Architecto nulla aliquam quo ut ipsam. Eius quasi consectetur minus odio architecto dolorum dolor alias. Alias quos hic odit illo explicabo. Et aut amet hic corporis cupiditate omnis.', 20.34, '', 69, 0, 0, 0, 1, NULL),
(359, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'modi', 'Laboriosam est error error dolorem dolores. Similique deserunt fuga sed velit autem temporibus quisquam minus. Sed molestiae eligendi suscipit et. Corrupti non qui temporibus est pariatur vero et totam.', 96.71, '', 69, 0, 0, 0, 1, NULL),
(360, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'rem', 'Voluptas ut consequatur possimus dolore necessitatibus mollitia. Maxime ratione sapiente enim libero. Quos facere ut laudantium exercitationem repellendus et. Fugiat voluptates corrupti ipsa fugiat.', 88.56, '', 69, 0, 0, 0, 1, NULL),
(361, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'veritatis', 'Consequatur dolores dolore ut veritatis delectus. Quia beatae officia minima odit quis illum. Illo ad ut et nihil.', 34.48, '', 69, 0, 0, 0, 1, NULL),
(362, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'voluptatibus', 'Et vero voluptate quis dolor nemo officia voluptas. Dolorem pariatur ipsum quas et. Qui laudantium architecto voluptatem et numquam aliquam rerum. Quas quam ipsam eveniet esse architecto culpa.', 22.26, '', 70, 0, 0, 0, 1, NULL),
(363, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'et', 'Quia est aut est molestiae eveniet facere qui. Vero commodi autem enim eos. Voluptas inventore accusantium rerum voluptas. Vel voluptatem eaque odit quia quo fugiat quas.', 55.26, '', 70, 0, 0, 0, 1, NULL),
(364, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'nam', 'Enim ducimus qui aut quia. Doloremque laborum quis quod consequatur voluptatum ut placeat. Consectetur nisi ut voluptas repellat unde voluptatem laborum nesciunt. Porro aut repudiandae est asperiores ex aperiam.', 59.50, '', 70, 0, 0, 0, 1, NULL),
(365, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eos', 'Eaque culpa distinctio quos cumque a animi. Aut sequi harum praesentium aut qui. Omnis porro animi est voluptas amet ut. Eos aliquam quae eligendi corporis voluptatem.', 41.76, '', 70, 0, 0, 0, 1, NULL),
(366, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'sequi', 'Quasi recusandae aliquam rerum dolor illum. Optio facilis magni dolores aut. Similique quae voluptatibus enim ducimus. Facere assumenda occaecati ipsa laudantium nobis natus.', 54.41, '', 71, 0, 0, 0, 1, NULL),
(367, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'tenetur', 'Quis iure vitae maiores quos voluptatem voluptate et. Aspernatur vel velit dicta qui aut. Nostrum distinctio repudiandae non similique deserunt. Omnis est voluptatem ut mollitia blanditiis.', 91.17, '', 71, 0, 0, 0, 1, NULL),
(368, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ipsum', 'Numquam architecto est minus ut vitae aut. Voluptatem laborum aperiam sed vero. Mollitia minus et rerum assumenda nemo.', 95.36, '', 71, 0, 0, 0, 1, NULL),
(369, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'alias', 'Quia corrupti exercitationem id qui asperiores labore ad. Nihil accusantium et rerum error eum exercitationem quas. Sint et quod quia at repellendus. Odio tempora rerum unde dolorem non similique.', 61.74, '', 71, 0, 0, 0, 1, NULL),
(370, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quas', 'Aut ut quas accusamus vel enim. Et amet qui blanditiis quis vitae dignissimos earum. Perspiciatis accusantium et aliquid unde. Officia quam nam laborum ut atque rerum qui.', 78.76, '', 72, 0, 0, 0, 1, NULL),
(371, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'facilis', 'Velit consequatur natus earum et et et ut veniam. Quia tempora omnis nisi temporibus. Odio voluptas delectus deleniti voluptatem velit.', 56.84, '', 72, 0, 0, 0, 1, NULL),
(372, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'cumque', 'Illum doloremque non dolore soluta fugit repudiandae. Non omnis dicta qui enim nihil. Officiis consequuntur qui et. Aliquid ut est reprehenderit fugiat incidunt.', 19.77, '', 72, 0, 0, 0, 1, NULL),
(373, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'nemo', 'A sed vitae ad officiis porro reprehenderit. Minus et deserunt cumque voluptatibus consequatur. Sit voluptates velit voluptas totam. Iure iure voluptate voluptatem cum tenetur beatae eius.', 86.99, '', 72, 0, 0, 0, 1, NULL),
(374, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'non', 'Dolor blanditiis illum omnis. Dolor autem exercitationem et nihil sed eos cupiditate. Praesentium aut quaerat a non.', 28.84, '', 72, 0, 0, 0, 1, NULL),
(375, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'vitae', 'Dolorum eos voluptatum consectetur quas cumque sed. Ea qui ad dolores harum sapiente. Dolorem accusamus ullam ut enim tempora sapiente. In necessitatibus vel nihil consequatur voluptatibus dolor.', 50.30, '', 72, 0, 0, 0, 1, NULL),
(376, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'rerum', 'Odio doloribus illo aut placeat doloribus sed expedita. Culpa vel consequatur consequatur itaque est. Perspiciatis voluptatem quam ut sed ea nam vitae.', 62.58, '', 72, 0, 0, 0, 1, NULL),
(377, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quia', 'Velit vero harum corporis eveniet culpa sunt aut. Fugit tempore et maiores culpa. Adipisci ipsam reprehenderit alias velit sint. Atque doloremque architecto esse perspiciatis optio ex eius.', 77.01, '', 73, 0, 0, 0, 1, NULL),
(378, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'qui', 'Consectetur reiciendis repudiandae incidunt recusandae. Qui est nobis et nostrum quisquam cum ut. Possimus quam rerum ut ipsum sunt earum corporis omnis. Eius suscipit quod ratione consequatur sequi molestias.', 60.12, '', 73, 0, 0, 0, 1, NULL),
(379, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'quia', 'Consequatur maiores saepe eum fugiat dolor in dicta. Libero magni voluptas qui repellat enim non. Non est perspiciatis aut eius ut.', 92.87, '', 73, 0, 0, 0, 1, NULL),
(380, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'eaque', 'Quod voluptates voluptas quisquam pariatur omnis veniam sint sunt. Molestiae cum vitae reiciendis in facere doloremque debitis. Molestias ut voluptates ipsum animi molestiae. Vero quia deserunt molestiae reprehenderit sed.', 73.40, '', 74, 0, 0, 0, 1, NULL),
(381, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'officiis', 'Id eligendi nemo nobis est. Aliquam sit eum voluptatum est est eum. Minima consequuntur qui temporibus ea eaque sunt.', 60.70, '', 74, 0, 0, 0, 1, NULL),
(382, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'odit', 'Sed maxime beatae doloribus incidunt asperiores dolor. Dolorem dolorem porro velit deleniti quia omnis.', 8.60, '', 74, 0, 0, 0, 1, NULL);
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `price`, `image`, `category_id`, `out_of_stock`, `order_index`, `featured`, `active`, `allergens`) VALUES
(383, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'nihil', 'Et sint dolorem maxime nesciunt earum sit. Fugiat et natus quo repudiandae. Dignissimos eligendi enim molestiae officiis.', 30.33, '', 75, 0, 0, 0, 1, NULL),
(384, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'ipsa', 'Quo aliquam sed dolore ut. Ab magni est inventore rerum odio id consectetur a. Iusto accusantium qui eum laborum.', 80.12, '', 75, 0, 0, 0, 1, NULL),
(385, '2024-02-26 06:13:03', '2024-02-26 06:13:03', NULL, 'aliquam', 'Reiciendis vel culpa non fuga earum eaque. Harum iure minima doloribus tempore. Dolorem aut provident qui veritatis dolore. Magnam voluptas ut libero harum doloribus accusamus ea. Dolore officiis ipsa veritatis libero iure quis omnis autem.', 30.14, '', 75, 0, 0, 0, 1, NULL),
(386, '2024-05-18 01:19:22', '2024-05-18 01:19:22', NULL, 'Test Item', 'test item desc', 250.00, NULL, 12, 0, 0, 0, 1, '[\"apple\", \"fig\", \"kiwi\"]');

-- --------------------------------------------------------

--
-- Table structure for table `item_allergen`
--

CREATE TABLE `item_allergen` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `allergen_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_14_151342_create_restaurants_table', 1),
(6, '2024_02_14_162702_add_type_to_users', 1),
(7, '2024_02_14_163038_alter_description_to_text_in_restaurants_table', 1),
(8, '2024_02_14_163236_add_deleted_at_column_in_restaurants_table', 1),
(9, '2024_02_14_163310_add_deleted_at_column_in_users_table', 1),
(10, '2024_02_14_165309_create_payments_table', 1),
(11, '2024_02_14_170143_create_categories_table', 1),
(12, '2024_02_14_170526_create_items_table', 1),
(13, '2024_02_14_171056_create_orders_table', 1),
(14, '2024_02_14_171933_create_allergens_table', 1),
(15, '2024_02_14_174149_create_item_allergens_table', 1),
(16, '2024_02_14_180959_create_dinein_tables_table', 1),
(17, '2024_02_14_181138_add_dineintable_to_orders_table', 1),
(18, '2024_02_15_150516_make_description_nullable_in_restaurants_table', 1),
(19, '2024_02_15_150627_rename_item_allergens_table', 1),
(20, '2024_02_15_171718_add_active_column_to_dinein_tables_table', 1),
(21, '2024_02_16_181537_add_new_columns_to_restaurants_table', 1),
(22, '2024_03_31_132923_add_some_columns_to_restaurants_table', 2),
(23, '2024_03_31_141331_make_minimum_order_amount_as_nullable_to_restaurants_table', 3),
(24, '2024_05_06_173532_add_email_to_orders_table', 4),
(25, '2024_05_09_071158_change_dinein_table_type_in_orders_table', 5),
(26, '2024_05_09_072819_change_dinein_table_column_name_in_orders_table', 6),
(27, '2024_05_10_082712_add_disable_ordering_messge_to_restaurants_table', 7),
(28, '2024_05_10_130643_add_payment_method_to_orders_table', 8),
(29, '2024_05_10_165144_add_new_columns_to_payments_table', 9),
(30, '2024_05_10_172145_add_new_columns_to_orders_table', 10),
(31, '2024_05_10_172459_add_new_columnssss_to_orders_table', 11),
(32, '2024_05_10_175355_add_new_column_to_payments_table', 12),
(33, '2024_05_18_053653_add_allergens_as_array_to_items_table', 13),
(34, '2024_07_12_061336_create_coupons_table', 14),
(35, '2024_07_12_075116_add_limits_to_coupons_table', 15),
(36, '2024_07_15_075652_create_coupon_orders_table', 16),
(37, '2024_07_16_165858_change_amount_to_value_in_coupon_orders_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint UNSIGNED NOT NULL,
  `dinein_table_id` bigint UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` json NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `restaurant_id`, `dinein_table_id`, `customer_name`, `customer_phone`, `customer_email`, `items`, `amount`, `status`, `payment_method`, `payment_id`) VALUES
(10, '2024-05-10 07:49:31', '2024-05-10 07:49:31', 1, 1, 'Mahfuz Rahman', '01797216574', 'arifmahfuz99@gmail.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 4}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 3}]', 251.25, 0, 'card', NULL),
(11, '2024-05-10 07:50:39', '2024-05-10 07:50:39', 1, 1, 'Mahfuz Rahman', '01797216574', 'arif@gmail.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 4}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 3}]', 251.25, 0, 'card', NULL),
(12, '2024-05-10 08:11:21', '2024-05-10 08:11:21', 1, 1, 'Mahfuz Rahman', '01797216574', 'arif@yahoo.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 4}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 3}]', 251.25, 0, 'card', NULL),
(13, '2024-05-10 08:11:53', '2024-05-10 08:11:53', 1, 1, 'Mahfuz Rahman', '01797216574', 'arif@yahoo.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 4}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 3}]', 251.25, 0, 'card', NULL),
(14, '2024-05-10 08:12:39', '2024-05-10 08:12:39', 1, 1, 'Mahfuz Rahman', '01797216574', 'arif@gmail.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(15, '2024-05-10 08:29:48', '2024-05-10 08:29:48', 1, 1, 'Mahfuz Rahman', '01797216574', 'arif@gmail.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(16, '2024-05-10 08:30:55', '2024-05-10 08:30:55', 1, 1, 'sadfgs', 'fsdfds', 'fsdaf@df.fd', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(17, '2024-05-10 08:32:51', '2024-05-10 08:32:51', 1, 1, 'sadfgs', 'fsdfds', 'fsdaf@df.fd', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(18, '2024-05-10 08:33:29', '2024-05-10 08:33:29', 1, 1, 'sadfgs', 'fsdfds', 'fsdaf@df.fd', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(19, '2024-05-10 09:34:25', '2024-05-10 09:34:25', 1, 1, 'asdfds', '24234234234', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(20, '2024-05-10 09:34:25', '2024-05-10 09:34:25', 1, 1, 'asdfds', '24234234234', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(21, '2024-05-10 09:36:07', '2024-05-10 09:36:07', 1, 1, 'asdfds', '24234234234', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(22, '2024-05-10 09:36:39', '2024-05-10 09:36:39', 1, 1, 'asdfds', '24234234234', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(23, '2024-05-10 09:58:54', '2024-05-10 09:58:54', 1, 1, 'asdfds', '24234234234', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(24, '2024-05-10 09:59:34', '2024-05-10 09:59:34', 1, 1, 'asdfds', '24234234234', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(25, '2024-05-10 10:19:10', '2024-05-10 10:19:10', 1, 1, 'Arif', '469418524', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(26, '2024-05-10 10:26:29', '2024-05-10 10:26:29', 1, 1, 'Rahim', '4265464145', 'arif@outlook.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 0, 'card', NULL),
(27, '2024-05-10 10:35:18', '2024-05-11 12:36:10', 1, 1, 'Talpade', '567955621678', 'arif@yahoo.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 5}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 4}]', 321.47, 5, 'card', 1),
(28, '2024-05-12 10:09:40', '2024-05-18 03:14:05', 1, 1, 'Jeff Thompson', '4471646569', 'jeff@yahoo.com', '[{\"id\": 1, \"name\": \"inventore\", \"price\": 62.72, \"quantity\": 4}, {\"id\": 4, \"name\": \"doloremque\", \"price\": 41.65, \"quantity\": 2}, {\"id\": 8, \"name\": \"ipsum\", \"price\": 51.03, \"quantity\": 3}]', 487.27, 6, 'card', 2),
(29, '2024-05-12 10:25:31', '2024-05-17 22:38:34', 1, 1, 'Satya Roy', '456894633', 'satya.roy@outlook.com', '[{\"id\": 4, \"name\": \"doloremque\", \"price\": 41.65, \"quantity\": 3}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 1}, {\"id\": 1, \"name\": \"inventore\", \"price\": 62.72, \"quantity\": 5}]', 468.18, 1, 'card', 3),
(30, '2024-05-18 05:53:25', '2024-05-18 05:53:25', 1, 1, 'Fahim', '4401649465', NULL, '[{\"id\": 21, \"name\": \"similique\", \"price\": 35.98, \"quantity\": 1}]', 35.98, 0, 'cash', NULL),
(31, '2024-05-18 08:35:40', '2024-05-18 08:37:24', 1, 1, 'Minhaz', '3616489646163', 'minhaz.rahman@gmail.com', '[{\"id\": 21, \"name\": \"similique\", \"price\": 35.98, \"quantity\": 1}, {\"id\": 14, \"name\": \"nulla\", \"price\": 38.6, \"quantity\": 1}, {\"id\": 10, \"name\": \"ex\", \"price\": 55.38, \"quantity\": 1}]', 129.96, 5, 'card', 4),
(32, '2024-05-18 10:20:01', '2024-05-18 10:20:01', 1, 1, 'Arif', '017975132', NULL, '[{\"id\": 2, \"name\": \"ratione\", \"price\": 50.83, \"quantity\": 3}, {\"id\": 1, \"name\": \"inventore\", \"price\": 62.72, \"quantity\": 1}, {\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 2}]', 296.39, 0, 'cash', NULL),
(33, '2024-05-18 10:41:29', '2024-05-18 10:41:29', 1, 1, 'asdfdsaf', '3434343434', NULL, '[{\"id\": 2, \"name\": \"ratione\", \"price\": 50.83, \"quantity\": 1}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 1}]', 80.46, 0, 'cash', NULL),
(34, '2024-05-18 10:46:04', '2024-05-18 10:46:04', 1, 1, 'asdfdsaf', '343543434', NULL, '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 1}, {\"id\": 5, \"name\": \"repellendus\", \"price\": 28.43, \"quantity\": 3}]', 125.88, 0, 'cash', NULL),
(35, '2024-05-18 10:56:09', '2024-05-18 10:56:09', 1, 1, 'asdfsdf', '34343434', NULL, '[{\"id\": 1, \"name\": \"inventore\", \"price\": 62.72, \"quantity\": 1}, {\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 1}]', 103.31, 0, 'cash', NULL),
(36, '2024-05-18 11:03:51', '2024-05-18 11:03:51', 1, 1, 'fsadf3434', '43434343434', NULL, '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 1}]', 40.59, 0, 'cash', NULL),
(37, '2024-05-18 11:04:35', '2024-05-18 11:04:35', 1, 1, 'asdfsadf', '343443434', NULL, '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 2}]', 81.18, 0, 'cash', NULL),
(38, '2024-05-18 11:08:49', '2024-05-18 11:08:49', 1, 1, 'asdfsdaf', '34343434', NULL, '[{\"id\": 4, \"name\": \"doloremque\", \"price\": 41.65, \"quantity\": 1}]', 41.65, 0, 'cash', NULL),
(39, '2024-05-18 11:10:31', '2024-05-18 11:10:31', 1, 1, 'fasdfasdf', '34534343434', NULL, '[{\"id\": 2, \"name\": \"ratione\", \"price\": 50.83, \"quantity\": 1}]', 50.83, 0, 'cash', NULL),
(40, '2024-05-18 11:12:47', '2024-05-18 11:12:47', 1, 1, 'asdfadsf', '34343434343', NULL, '[{\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 1}, {\"id\": 8, \"name\": \"ipsum\", \"price\": 51.03, \"quantity\": 1}]', 80.66, 0, 'cash', NULL),
(41, '2024-05-18 11:13:39', '2024-05-18 11:13:39', 1, 1, 'asdfsdafdsf', '343434343434', NULL, '[{\"id\": 4, \"name\": \"doloremque\", \"price\": 41.65, \"quantity\": 1}]', 41.65, 0, 'cash', NULL),
(42, '2024-05-19 09:56:53', '2024-05-19 09:56:53', 1, 1, 'asfdsad', '23232323', NULL, '[{\"id\": 72, \"name\": \"beatae\", \"price\": 55.39, \"quantity\": 1}, {\"id\": 78, \"name\": \"alias\", \"price\": 11.16, \"quantity\": 2}, {\"id\": 73, \"name\": \"nihil\", \"price\": 61.53, \"quantity\": 3}]', 262.30, 0, 'cash', NULL),
(43, '2024-05-19 09:58:18', '2024-05-19 10:02:59', 1, 1, 'asdfsdaf', '24334343434', NULL, '[{\"id\": 41, \"name\": \"autem\", \"price\": 31.9, \"quantity\": 1}]', 31.90, 2, 'cash', NULL),
(44, '2024-05-19 09:58:55', '2024-05-19 10:02:52', 1, 1, 'ASDFSADF', '343455', NULL, '[{\"id\": 77, \"name\": \"enim\", \"price\": 51.54, \"quantity\": 1}]', 51.54, 2, 'cash', NULL),
(45, '2024-05-20 10:46:43', '2024-05-20 10:47:11', 1, 1, 'gjjh', '456464645', 'turu@turu.turu', '[{\"id\": 2, \"name\": \"ratione\", \"price\": 50.83, \"quantity\": 1}]', 50.83, 5, 'card', 5),
(46, '2024-05-20 11:23:56', '2024-05-20 11:23:56', 1, 1, 'Bcbf', '78483838', NULL, '[{\"id\": 1, \"name\": \"inventore\", \"price\": 62.72, \"quantity\": 1}, {\"id\": 2, \"name\": \"ratione\", \"price\": 50.83, \"quantity\": 3}, {\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 2}]', 274.47, 0, 'cash', NULL),
(47, '2024-05-20 11:25:11', '2024-05-20 11:25:11', 1, 1, 'Dbxbc', '837377', NULL, '[{\"id\": 2, \"name\": \"ratione\", \"price\": 50.83, \"quantity\": 1}, {\"id\": 5, \"name\": \"repellendus\", \"price\": 28.43, \"quantity\": 2}]', 107.69, 0, 'cash', NULL),
(48, '2024-05-20 11:26:08', '2024-05-20 11:26:08', 1, 1, 'Rhhdb', '62673', NULL, '[{\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 1}]', 29.63, 0, 'cash', NULL),
(49, '2024-05-20 11:27:11', '2024-05-20 11:27:11', 1, 1, 'Urhrhdd', '637883', NULL, '[{\"id\": 4, \"name\": \"doloremque\", \"price\": 41.65, \"quantity\": 1}]', 41.65, 0, 'cash', NULL),
(50, '2024-05-20 11:28:04', '2024-05-20 11:28:04', 1, 1, 'Bxxbd', '46637372', NULL, '[{\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 1}]', 29.63, 0, 'cash', NULL),
(51, '2024-05-20 11:29:34', '2024-05-20 11:29:34', 1, 1, 'Cncn', '288338', NULL, '[{\"id\": 3, \"name\": \"et\", \"price\": 29.63, \"quantity\": 1}]', 29.63, 0, 'cash', NULL),
(52, '2024-06-29 05:01:32', '2024-06-29 05:02:13', 1, 1, 'Arifg', '0178986546545', 'arif@gmail.com', '[{\"id\": 6, \"name\": \"rerum\", \"price\": 40.59, \"quantity\": 1}]', 40.59, 5, 'card', 6),
(53, '2024-06-29 05:37:29', '2024-06-29 05:37:29', 1, 1, 'arif', '168496896', NULL, '[{\"id\": 22, \"name\": \"fugit\", \"price\": 13.35, \"quantity\": 2}, {\"id\": 16, \"name\": \"corporis\", \"price\": 76.3, \"quantity\": 1}]', 103.00, 0, 'cash', NULL),
(54, '2024-06-29 05:39:50', '2024-07-17 03:32:18', 1, 1, 'Majed', '786465646', 'majed@yahoo.com', '[{\"id\": 26, \"name\": \"accusantium\", \"price\": 39.92, \"quantity\": 1}]', 39.92, 1, 'card', 7),
(55, '2024-07-01 12:07:22', '2024-07-01 12:07:22', 1, 1, 'asdfsadf', 'sdfsdaf', NULL, '[{\"id\": 66, \"name\": \"vero\", \"price\": 54.4, \"quantity\": 4}, {\"id\": 74, \"name\": \"eum\", \"price\": 27.47, \"quantity\": 2}, {\"id\": 75, \"name\": \"qui\", \"price\": 62.36, \"quantity\": 1}, {\"id\": 79, \"name\": \"tempore\", \"price\": 15.18, \"quantity\": 1}, {\"id\": 58, \"name\": \"fugit\", \"price\": 51.67, \"quantity\": 1}, {\"id\": 50, \"name\": \"sequi\", \"price\": 33.31, \"quantity\": 1}, {\"id\": 51, \"name\": \"adipisci\", \"price\": 5.38, \"quantity\": 1}, {\"id\": 73, \"name\": \"nihil\", \"price\": 61.53, \"quantity\": 1}, {\"id\": 78, \"name\": \"alias\", \"price\": 11.16, \"quantity\": 1}, {\"id\": 65, \"name\": \"হালুয়া\", \"price\": 9.35, \"quantity\": 1}]', 522.48, 0, 'cash', NULL),
(56, '2024-07-01 12:30:43', '2024-07-01 12:30:43', 1, 1, 'a', 'sdfsadf', NULL, '[{\"id\": 40, \"name\": \"modi\", \"price\": 86.69, \"quantity\": 1}, {\"id\": 42, \"name\": \"omnis\", \"price\": 82.37, \"quantity\": 1}]', 169.06, 0, 'cash', NULL),
(57, '2024-07-01 13:27:28', '2024-07-01 13:27:28', 1, 1, 'Arif', '03486452', NULL, '[{\"id\": 19, \"name\": \"velit\", \"price\": 77.67, \"quantity\": 1}]', 77.67, 0, 'cash', NULL),
(58, '2024-07-15 02:46:03', '2024-07-15 02:46:03', 1, 1, 'Arif', '01797216574', NULL, '[{\"id\": 18, \"name\": \"ratione\", \"price\": 31.72, \"quantity\": 1}, {\"id\": 23, \"name\": \"nam\", \"price\": 88.95, \"quantity\": 1}]', 120.67, 0, 'cash', NULL),
(59, '2024-07-15 02:47:31', '2024-07-15 02:47:31', 1, 1, 'Arif', '01797216574', NULL, '[{\"id\": 18, \"name\": \"ratione\", \"price\": 31.72, \"quantity\": 1}, {\"id\": 23, \"name\": \"nam\", \"price\": 88.95, \"quantity\": 1}]', 120.67, 0, 'cash', NULL),
(60, '2024-07-15 02:48:19', '2024-07-15 02:48:19', 1, 1, 'Arif', '01797216574', NULL, '[{\"id\": 18, \"name\": \"ratione\", \"price\": 31.72, \"quantity\": 1}, {\"id\": 23, \"name\": \"nam\", \"price\": 88.95, \"quantity\": 1}]', 120.67, 0, 'cash', NULL),
(61, '2024-07-15 02:53:24', '2024-07-15 02:53:24', 1, 1, 'Arif', '01797216574', NULL, '[{\"id\": 18, \"name\": \"ratione\", \"price\": 31.72, \"quantity\": 1}, {\"id\": 23, \"name\": \"nam\", \"price\": 88.95, \"quantity\": 1}]', 120.67, 0, 'cash', NULL),
(62, '2024-07-16 12:33:44', '2024-07-16 12:33:44', 1, 1, 'Arif', '01797216574', NULL, '[{\"id\": 1, \"name\": \"inventore 2\", \"price\": 49.72, \"quantity\": 1}, {\"id\": 11, \"name\": \"temporibus\", \"price\": 54.07, \"quantity\": 2}]', 157.86, 0, 'cash', NULL),
(63, '2024-07-16 12:39:38', '2024-07-16 12:40:21', 1, 1, 'Mahfuz', '0179854562', 'arifmahfuz99@gmail.com', '[{\"id\": 8, \"name\": \"ipsum\", \"price\": 51.03, \"quantity\": 3}, {\"id\": 13, \"name\": \"ullam\", \"price\": 21.45, \"quantity\": 1}]', 174.54, 5, 'card', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_payment_created` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'customer name on card'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `created_at`, `updated_at`, `stripe_id`, `amount`, `currency`, `session_id`, `session_payment_id`, `session_payment_created`, `customer_email`, `customer_name`) VALUES
(1, '2024-05-11 12:36:10', '2024-05-11 12:36:10', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 32147.00, 'gbp', 'cs_test_b1CwKYe7aXKQcO8HgHNI5I17h7wvrHuwvVgZ1DOjPnlpPedshejl2FGnnu', 'pi_3PEwQvCQ09H5iOiJ0VYxXQr1', '1715358919', 'arif@yahoo.com', 'Talpade'),
(2, '2024-05-12 10:10:50', '2024-05-12 10:10:50', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 48727.00, 'gbp', 'cs_test_b1Y1ShCYShn6Hqo8yJGfj5YND8NU0OKcWAS91JsaISMB6iBDzExrs5mHH4', 'pi_3PFez3CQ09H5iOiJ01pouhFv', '1715530183', 'jeff@yahoo.com', 'Jeff Thompson'),
(3, '2024-05-12 10:27:14', '2024-05-12 10:27:14', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 46818.00, 'gbp', 'cs_test_b1dO0QHQSd4yEfPvQyNQ5EcEMUfto4Bck44tQ6NC1fZWY6qjUrU7xdBz9k', 'pi_3PFfEvCQ09H5iOiJ0pAys4yg', '1715531133', 'satya.roy@outlook.com', 'Satyajit Roy'),
(4, '2024-05-18 08:37:24', '2024-05-18 08:37:24', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 12996.00, 'gbp', 'cs_test_b1hWvclRmvpXKDxXEJcrbdGHuB51tczkjO0GPnsOEPK86OEci9EacFuk9S', 'pi_3PHoNxCQ09H5iOiJ1qBk7Ugf', '1716042941', 'minhaz.rahman@gmail.com', 'Minhaz Rahman'),
(5, '2024-05-20 10:47:11', '2024-05-20 10:47:11', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 5083.00, 'gbp', 'cs_test_a16UsJ3tDoowx0X3XBC6KRi2sUmGvfRZ3MspRBZRQTcQPIMw6dUVy9WpBQ', 'pi_3PIZMcCQ09H5iOiJ1jI5BCqt', '1716223604', 'turu@turu.turu', 'Turu'),
(6, '2024-06-29 05:02:13', '2024-06-29 05:02:13', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 4059.00, 'gbp', 'cs_test_a1CUldGON66qp1jhD5C0VcQHyc67VbHasLfdbITcAIaSzeG2Ds5Q834XOA', 'pi_3PWz2kCQ09H5iOiJ0gVfPbY4', '1719658893', 'arif@gmail.com', 'Ruhil'),
(7, '2024-06-29 05:42:00', '2024-06-29 05:42:00', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 3992.00, 'gbp', 'cs_test_a1BP6vFwMcoYFshGoArYqL7GJ1c9XD9Jn4Z2vWxiHxFxuQCcDOPLdq5bI9', 'pi_3PWzfECQ09H5iOiJ11HWxEZn', '1719661191', 'majed@yahoo.com', 'Majed'),
(8, '2024-07-16 12:40:21', '2024-07-16 12:40:21', 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 16581.00, 'gbp', 'cs_test_a13or1lnSWRO2v2qXTW4ad4IQ5BUKjrhwjmxWwinIaTUHyXiU5R5582Y0w', 'pi_3PdGIPCQ09H5iOiJ1NyIeSxr', '1721155179', 'arifmahfuz99@gmail.com', 'Mahfuz');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_ordering` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `enable_wa_notification` tinyint(1) NOT NULL DEFAULT '0',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GBP',
  `minimum_order_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `cod` tinyint(1) NOT NULL DEFAULT '1',
  `stripe_payment` tinyint(1) NOT NULL DEFAULT '0',
  `disable_ordering_message` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `address`, `phone`, `logo`, `cover`, `enable_ordering`, `stripe_id`, `user_id`, `deleted_at`, `enable_wa_notification`, `currency`, `minimum_order_amount`, `active`, `cod`, `stripe_payment`, `disable_ordering_message`) VALUES
(1, '2024-02-26 06:13:01', '2024-07-16 23:56:19', 'Kebab Kitchen', 'zulaufrogahn', 'Praesentium et at quis sit delectus et. Soluta sequi velit magni saepe omnis tempore. Aliquam blanditiis voluptate labore tempore molestias explicabo.', '510', '+13393107647', NULL, NULL, 1, 'sk_test_51Msh7OCQ09H5iOiJpuNmpm9X0xcopj3ZUUYjUC4p4Jobt5xaXrQDWQ7M63dBctNSh3d4Pu6udTXJGjnRkkJZfslV00184F4tMK', 2, NULL, 1, 'GBP', NULL, 1, 1, 1, 'We are closed now. Thanks you.'),
(2, '2024-02-26 06:13:02', '2024-02-26 06:13:02', 'O\'Reilly-Gulgowski', 'oreillygulgowski', 'Velit id qui ut porro inventore. Delectus dolor et odit est.', '3142 Bryce Key\nLake Robertaside, WI 73593-5462', '+1.270.539.4953', NULL, NULL, 0, NULL, 3, NULL, 0, 'GBP', '0', 1, 1, 0, NULL),
(3, '2024-02-26 06:13:02', '2024-05-04 10:34:05', 'Zboncak-Krajcik', 'zboncakkrajcik', 'A qui qui libero. Laborum incidunt ipsam debitis quibusdam. Ducimus sed autem et aut sed. Iure aut ut provident itaque.', '340', '4068141925', NULL, NULL, 0, NULL, 4, NULL, 0, 'GBP', NULL, 1, 1, 0, NULL),
(4, '2024-02-26 06:13:03', '2024-02-26 06:13:03', 'Wyman-Keebler', 'wymankeebler', 'Et quasi explicabo ipsa sed distinctio voluptas. Ex aliquam illo necessitatibus aut voluptatem id itaque. Maiores rem aut enim exercitationem rerum modi.', '30701 Olson Groves Apt. 573\nEast Leetown, RI 22721', '(682) 271-4978', NULL, NULL, 0, NULL, 5, NULL, 0, 'GBP', '0', 1, 1, 0, NULL),
(5, '2024-02-26 06:13:03', '2024-02-26 06:13:03', 'Labadie-VonRueden', 'labadievonrueden', 'Consequatur molestiae repudiandae quisquam molestiae qui maxime qui. Culpa quia mollitia sint. Rerum rem sint blanditiis rerum sed doloribus in. Alias dolores cum ea et rerum aliquam unde.', '99814 Parisian Trail Suite 185\nYundtside, TX 94061', '951.898.0134', NULL, NULL, 0, NULL, 6, NULL, 0, 'GBP', '0', 1, 1, 0, NULL),
(6, '2024-07-11 11:04:31', '2024-07-11 11:04:31', 'gsafdf', 'gsafdf', NULL, NULL, NULL, NULL, NULL, 0, NULL, 7, NULL, 0, 'GBP', NULL, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '2',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `deleted_at`) VALUES
(1, 'Admin', 'admin@qrdine.com', NULL, '$2y$10$L4rAd1r9y1fSgJNhwuoKV.FPc26bJ7lEMCgQXGI.9kRgtfHvUPetS', 'hlkhscwiyaVhP0gn0RAV1GgXgaL8KHWuKeebha82bIjJG38KBTLFB9dSrQBr', '2024-02-26 06:13:00', '2024-02-26 06:13:00', 1, NULL),
(2, 'Prof. Georgiana Kiehn III', 'emma67@example.org', '2024-02-26 06:13:00', '$2y$12$U5NWkioGTPtCxsv0vM17DehpQFr/v5Cylk0AC6tELSfjcGn0KXajy', 'yBG3MojZadsdVrLIB57FT9vBb0F7i15S7eq8OFYqyyA0r8YfuauDemBQPsLT', '2024-02-26 06:13:01', '2024-02-26 06:13:01', 2, NULL),
(3, 'Prof. Domingo Simonis', 'wolf.jamie@example.net', '2024-02-26 06:13:01', '$2y$12$1xGZzRtZJ.fM1MDCNLt/8uqiGJ.tLQm.uZdxgEdBQbxXZ5bh2xRIu', 'XO7YkVkrps', '2024-02-26 06:13:01', '2024-02-26 06:13:01', 2, NULL),
(4, 'Tiara Thompson', 'wdavis@example.com', '2024-02-26 06:13:01', '$2y$12$/mIu83orCPDeA/pDCfD1tuVffGNYLNjD71zTUTqyxm0Uyzj6i2YpG', 'xMO49bDNz47BaasIO3Hrdgzmpi62WpifrQ2c1PUVoRvFqZt0sNUvQHPHk2Z3', '2024-02-26 06:13:01', '2024-02-26 06:13:01', 2, NULL),
(5, 'Elizabeth Abbott', 'oberge@example.net', '2024-02-26 06:13:01', '$2y$12$nBGpl876MqCMzwYF.zd7QuEw9GNOKtV/cZg5UYSGHssxxHDCFH/Xe', 'TpzxnMh1Pi', '2024-02-26 06:13:01', '2024-02-26 06:13:01', 2, NULL),
(6, 'Katherine Simonis MD', 'jast.vance@example.com', '2024-02-26 06:13:01', '$2y$12$gYsU4Lz2aEiDrrntsLD.LO/eIEwv.a5G0m49PhmL2UPHgYomw7SD6', '4i2q7EOpZ1', '2024-02-26 06:13:01', '2024-02-26 06:13:01', 2, NULL),
(7, 'gsafdf', 'admin@kwikz.app', NULL, '$2y$12$p4rFXJiDiebPjDx5eAWIVeQzuFqvwDcGM8kwW4HXCpVOP62HFOyd6', NULL, '2024-07-11 11:04:31', '2024-07-11 11:04:31', 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergens`
--
ALTER TABLE `allergens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `allergens_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `coupon_orders`
--
ALTER TABLE `coupon_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_orders_order_id_coupon_id_unique` (`order_id`,`coupon_id`);

--
-- Indexes for table `dinein_tables`
--
ALTER TABLE `dinein_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dinein_tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `item_allergen`
--
ALTER TABLE `item_allergen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_allergens_item_id_allergen_id_unique` (`item_id`,`allergen_id`),
  ADD KEY `item_allergens_allergen_id_foreign` (`allergen_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`),
  ADD KEY `orders_dinein_table_id_foreign` (`dinein_table_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_slug_unique` (`slug`),
  ADD UNIQUE KEY `restaurants_phone_unique` (`phone`),
  ADD KEY `restaurants_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergens`
--
ALTER TABLE `allergens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_orders`
--
ALTER TABLE `coupon_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dinein_tables`
--
ALTER TABLE `dinein_tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `item_allergen`
--
ALTER TABLE `item_allergen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Constraints for table `dinein_tables`
--
ALTER TABLE `dinein_tables`
  ADD CONSTRAINT `dinein_tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `item_allergen`
--
ALTER TABLE `item_allergen`
  ADD CONSTRAINT `item_allergens_allergen_id_foreign` FOREIGN KEY (`allergen_id`) REFERENCES `allergens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_allergens_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_dinein_table_id_foreign` FOREIGN KEY (`dinein_table_id`) REFERENCES `dinein_tables` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
