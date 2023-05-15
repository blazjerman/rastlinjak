-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 15, 2023 at 04:35 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Rastlinjak`
--

-- --------------------------------------------------------

--
-- Table structure for table `altitude`
--

CREATE TABLE `altitude` (
  `value` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sensor_id` int NOT NULL,
  `ESP32_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `altitude`
--

INSERT INTO `altitude` (`value`, `time`, `sensor_id`, `ESP32_id`) VALUES
(13.96, '2023-03-23 14:01:36', 1, 0),
(12.26, '2023-03-23 14:21:45', 1, 0),
(12.52, '2023-03-23 14:41:42', 1, 0),
(12.3, '2023-03-23 15:01:40', 1, 0),
(13.61, '2023-03-23 15:21:40', 1, 0),
(15, '2023-03-23 15:41:38', 1, 0),
(14.56, '2023-03-23 16:01:38', 1, 0),
(13.25, '2023-03-23 16:21:36', 1, 0),
(12.25, '2023-03-23 16:41:43', 1, 0),
(11.76, '2023-03-23 17:01:40', 1, 0),
(10.95, '2023-03-23 17:21:38', 1, 0),
(11.01, '2023-03-23 17:41:35', 1, 0),
(9.8, '2023-03-23 18:01:44', 1, 0),
(8.08, '2023-03-23 18:21:43', 1, 0),
(6.88, '2023-03-23 18:41:41', 1, 0),
(6.13, '2023-03-23 19:01:39', 1, 0),
(3.87, '2023-03-23 19:21:37', 1, 0),
(4.12, '2023-03-23 19:41:35', 1, 0),
(2.25, '2023-03-23 20:01:45', 1, 0),
(2.09, '2023-03-23 20:21:39', 1, 0),
(0.47, '2023-03-23 20:41:47', 1, 0),
(-0.54, '2023-03-23 21:01:39', 1, 0),
(-1.09, '2023-03-23 21:21:37', 1, 0),
(-1.65, '2023-03-23 21:41:46', 1, 0),
(-1.06, '2023-03-23 22:01:43', 1, 0),
(-1.08, '2023-03-23 22:21:40', 1, 0),
(0.27, '2023-03-23 22:41:38', 1, 0),
(0.48, '2023-03-23 23:01:35', 1, 0),
(1.42, '2023-03-23 23:21:45', 1, 0),
(3.8, '2023-03-23 23:41:45', 1, 0),
(5.24, '2023-03-24 00:01:43', 1, 0),
(6.7, '2023-03-24 00:21:40', 1, 0),
(7.23, '2023-03-24 00:41:37', 1, 0),
(8.37, '2023-03-24 01:01:45', 1, 0),
(9.24, '2023-03-24 01:21:42', 1, 0),
(10.21, '2023-03-24 01:41:39', 1, 0),
(9.26, '2023-03-24 02:01:39', 1, 0),
(9.1, '2023-03-24 02:21:36', 1, 0),
(10.54, '2023-03-24 02:41:44', 1, 0),
(15.53, '2023-03-24 03:01:41', 1, 0),
(14.41, '2023-03-24 03:21:39', 1, 0),
(13.4, '2023-03-24 03:41:36', 1, 0),
(13.34, '2023-03-24 04:01:45', 1, 0),
(13.44, '2023-03-24 04:21:44', 1, 0),
(13.79, '2023-03-24 04:41:42', 1, 0),
(15.2, '2023-03-24 05:01:39', 1, 0),
(14.9, '2023-03-24 05:21:36', 1, 0),
(13.57, '2023-03-24 05:41:44', 1, 0),
(12.92, '2023-03-24 06:01:42', 1, 0),
(12.77, '2023-03-24 06:21:39', 1, 0),
(12.63, '2023-03-24 06:41:36', 1, 0),
(11.6, '2023-03-24 07:01:44', 1, 0),
(10.76, '2023-03-24 07:21:41', 1, 0),
(8.99, '2023-03-24 07:41:38', 1, 0),
(10.36, '2023-03-24 08:01:46', 1, 0),
(10.15, '2023-03-24 08:21:43', 1, 0),
(9.75, '2023-03-24 08:41:40', 1, 0),
(9.55, '2023-03-24 09:01:38', 1, 0),
(9.82, '2023-03-24 09:21:38', 1, 0),
(8.64, '2023-03-24 09:41:46', 1, 0),
(8.92, '2023-03-24 10:01:44', 1, 0),
(8.6, '2023-03-24 10:21:46', 1, 0),
(9.86, '2023-03-24 10:41:45', 1, 0),
(11.53, '2023-03-24 11:01:42', 1, 0),
(12.29, '2023-03-24 11:21:40', 1, 0),
(11.82, '2023-03-24 11:41:37', 1, 0),
(12.77, '2023-03-24 12:01:38', 1, 0),
(14.09, '2023-03-24 12:21:47', 1, 0),
(14.08, '2023-03-24 12:41:44', 1, 0),
(13.92, '2023-03-24 13:01:42', 1, 0),
(16.04, '2023-03-24 13:21:41', 1, 0),
(16.91, '2023-03-24 13:41:39', 1, 0),
(17.73, '2023-03-24 14:01:39', 1, 0),
(18.53, '2023-03-24 14:21:36', 1, 0),
(19.96, '2023-03-24 14:41:46', 1, 0),
(22.37, '2023-03-24 15:01:43', 1, 0),
(23.79, '2023-03-24 15:21:41', 1, 0),
(23.75, '2023-03-24 15:41:38', 1, 0),
(23.29, '2023-03-24 16:01:38', 1, 0),
(24.57, '2023-03-24 16:21:36', 1, 0),
(25.33, '2023-03-24 16:41:46', 1, 0),
(26.47, '2023-03-24 17:01:44', 1, 0),
(25.63, '2023-03-24 17:21:41', 1, 0),
(24.31, '2023-03-24 17:41:40', 1, 0),
(25.01, '2023-03-24 18:01:38', 1, 0),
(26.02, '2023-03-24 18:21:36', 1, 0),
(25.97, '2023-03-24 18:41:46', 1, 0),
(25.61, '2023-03-24 19:01:39', 1, 0),
(26.17, '2023-03-24 19:21:40', 1, 0),
(25.7, '2023-03-24 19:41:40', 1, 0),
(26.08, '2023-03-24 20:01:39', 1, 0),
(26.49, '2023-03-24 20:21:40', 1, 0),
(28.1, '2023-03-24 20:41:39', 1, 0),
(29.67, '2023-03-24 21:01:38', 1, 0),
(32.19, '2023-03-24 21:21:36', 1, 0),
(32.64, '2023-03-24 21:41:45', 1, 0),
(34.15, '2023-03-24 22:01:40', 1, 0),
(35.28, '2023-03-24 22:21:44', 1, 0),
(37.02, '2023-03-24 22:41:41', 1, 0),
(37.75, '2023-03-24 23:01:39', 1, 0),
(36.95, '2023-03-24 23:21:47', 1, 0),
(38.51, '2023-03-24 23:41:44', 1, 0),
(40.19, '2023-03-25 00:01:41', 1, 0),
(41.31, '2023-03-25 00:21:38', 1, 0),
(41.47, '2023-03-25 00:41:46', 1, 0),
(42.48, '2023-03-25 01:01:43', 1, 0),
(44.69, '2023-03-25 01:21:39', 1, 0),
(44.62, '2023-03-25 01:41:36', 1, 0),
(45.06, '2023-03-25 02:01:44', 1, 0),
(48.76, '2023-03-25 02:21:41', 1, 0),
(50.18, '2023-03-25 02:41:37', 1, 0),
(49.63, '2023-03-25 03:01:37', 1, 0),
(50.18, '2023-03-25 03:21:45', 1, 0),
(49.65, '2023-03-25 03:41:42', 1, 0),
(47.74, '2023-03-25 04:01:39', 1, 0),
(47, '2023-03-25 04:21:36', 1, 0),
(45.36, '2023-03-25 04:41:44', 1, 0),
(44.06, '2023-03-25 05:01:41', 1, 0),
(40.46, '2023-03-25 05:21:38', 1, 0),
(39.53, '2023-03-25 05:41:47', 1, 0),
(38.71, '2023-03-25 06:01:44', 1, 0),
(38.25, '2023-03-25 06:21:38', 1, 0),
(38.53, '2023-03-25 06:41:44', 1, 0),
(37.29, '2023-03-25 07:01:42', 1, 0),
(36.39, '2023-03-25 07:21:42', 1, 0),
(37.53, '2023-03-25 07:41:45', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `automations`
--

CREATE TABLE `automations` (
  `id` int NOT NULL,
  `ESP32_id` int NOT NULL,
  `count` int NOT NULL,
  `interval` varchar(64) NOT NULL,
  `time` time NOT NULL,
  `cron_string` varchar(128) NOT NULL,
  `action` varchar(255) NOT NULL,
  `pin` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `automations`
--

INSERT INTO `automations` (`id`, `ESP32_id`, `count`, `interval`, `time`, `cron_string`, `action`, `pin`, `active`) VALUES
(18, 0, 1, 'DAYS', '07:00:00', '00 07 * * *', 'on', 2, 1),
(19, 0, 1, 'DAYS', '20:00:00', '00 20 * * *', 'off', 2, 1),
(20, 0, 1, 'HOURS', '09:00:00', '0 * * * *', 'on', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ESP32`
--

CREATE TABLE `ESP32` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `mac` text NOT NULL,
  `update_interval` int NOT NULL,
  `outputs` bit(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ESP32`
--

INSERT INTO `ESP32` (`id`, `user_id`, `mac`, `update_interval`, `outputs`) VALUES
(0, 2, 'C8:F0:9E:F1:C8:84', 1200, b'0000000000000001');

-- --------------------------------------------------------

--
-- Table structure for table `humidity`
--

CREATE TABLE `humidity` (
  `value` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sensor_id` int NOT NULL,
  `ESP32_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `humidity`
--

INSERT INTO `humidity` (`value`, `time`, `sensor_id`, `ESP32_id`) VALUES
(64, '2023-03-23 14:01:34', 0, 0),
(64, '2023-03-23 14:21:43', 0, 0),
(57, '2023-03-23 14:41:40', 0, 0),
(55, '2023-03-23 15:01:38', 0, 0),
(55, '2023-03-23 15:21:37', 0, 0),
(55, '2023-03-23 15:41:36', 0, 0),
(55, '2023-03-23 16:01:36', 0, 0),
(55, '2023-03-23 16:21:34', 0, 0),
(55, '2023-03-23 16:41:41', 0, 0),
(55, '2023-03-23 17:01:38', 0, 0),
(55, '2023-03-23 17:21:36', 0, 0),
(55, '2023-03-23 17:41:33', 0, 0),
(55, '2023-03-23 18:01:42', 0, 0),
(52, '2023-03-23 18:21:40', 0, 0),
(56, '2023-03-23 18:41:39', 0, 0),
(57, '2023-03-23 19:01:37', 0, 0),
(57, '2023-03-23 19:21:35', 0, 0),
(58, '2023-03-23 19:41:33', 0, 0),
(57, '2023-03-23 20:01:43', 0, 0),
(57, '2023-03-23 20:21:37', 0, 0),
(57, '2023-03-23 20:41:42', 0, 0),
(57, '2023-03-23 21:01:37', 0, 0),
(57, '2023-03-23 21:21:35', 0, 0),
(57, '2023-03-23 21:41:44', 0, 0),
(57, '2023-03-23 22:01:41', 0, 0),
(57, '2023-03-23 22:21:38', 0, 0),
(57, '2023-03-23 22:41:35', 0, 0),
(57, '2023-03-23 23:01:33', 0, 0),
(57, '2023-03-23 23:21:43', 0, 0),
(57, '2023-03-23 23:41:43', 0, 0),
(58, '2023-03-24 00:01:41', 0, 0),
(58, '2023-03-24 00:21:38', 0, 0),
(57, '2023-03-24 00:41:35', 0, 0),
(57, '2023-03-24 01:01:43', 0, 0),
(58, '2023-03-24 01:21:40', 0, 0),
(57, '2023-03-24 01:41:37', 0, 0),
(58, '2023-03-24 02:01:37', 0, 0),
(58, '2023-03-24 02:21:33', 0, 0),
(58, '2023-03-24 02:41:42', 0, 0),
(57, '2023-03-24 03:01:39', 0, 0),
(57, '2023-03-24 03:21:37', 0, 0),
(57, '2023-03-24 03:41:34', 0, 0),
(57, '2023-03-24 04:01:43', 0, 0),
(57, '2023-03-24 04:21:42', 0, 0),
(57, '2023-03-24 04:41:39', 0, 0),
(56, '2023-03-24 05:01:37', 0, 0),
(56, '2023-03-24 05:21:34', 0, 0),
(56, '2023-03-24 05:41:42', 0, 0),
(56, '2023-03-24 06:01:40', 0, 0),
(55, '2023-03-24 06:21:37', 0, 0),
(56, '2023-03-24 06:41:34', 0, 0),
(59, '2023-03-24 07:01:42', 0, 0),
(59, '2023-03-24 07:21:39', 0, 0),
(57, '2023-03-24 07:41:36', 0, 0),
(57, '2023-03-24 08:01:44', 0, 0),
(57, '2023-03-24 08:21:40', 0, 0),
(57, '2023-03-24 08:41:38', 0, 0),
(57, '2023-03-24 09:01:36', 0, 0),
(58, '2023-03-24 09:21:36', 0, 0),
(59, '2023-03-24 09:41:44', 0, 0),
(58, '2023-03-24 10:01:42', 0, 0),
(58, '2023-03-24 10:21:44', 0, 0),
(58, '2023-03-24 10:41:42', 0, 0),
(59, '2023-03-24 11:01:40', 0, 0),
(59, '2023-03-24 11:21:37', 0, 0),
(58, '2023-03-24 11:41:35', 0, 0),
(58, '2023-03-24 12:01:36', 0, 0),
(58, '2023-03-24 12:21:45', 0, 0),
(58, '2023-03-24 12:41:42', 0, 0),
(58, '2023-03-24 13:01:40', 0, 0),
(58, '2023-03-24 13:21:38', 0, 0),
(57, '2023-03-24 13:41:36', 0, 0),
(56, '2023-03-24 14:01:37', 0, 0),
(55, '2023-03-24 14:21:34', 0, 0),
(55, '2023-03-24 14:41:44', 0, 0),
(54, '2023-03-24 15:01:41', 0, 0),
(54, '2023-03-24 15:21:39', 0, 0),
(55, '2023-03-24 15:41:36', 0, 0),
(56, '2023-03-24 16:01:36', 0, 0),
(56, '2023-03-24 16:21:34', 0, 0),
(56, '2023-03-24 16:41:44', 0, 0),
(57, '2023-03-24 17:01:42', 0, 0),
(57, '2023-03-24 17:21:39', 0, 0),
(57, '2023-03-24 17:41:38', 0, 0),
(56, '2023-03-24 18:01:36', 0, 0),
(57, '2023-03-24 18:21:34', 0, 0),
(59, '2023-03-24 18:41:44', 0, 0),
(61, '2023-03-24 19:01:37', 0, 0),
(60, '2023-03-24 19:21:38', 0, 0),
(59, '2023-03-24 19:41:38', 0, 0),
(58, '2023-03-24 20:01:37', 0, 0),
(58, '2023-03-24 20:21:37', 0, 0),
(58, '2023-03-24 20:41:37', 0, 0),
(58, '2023-03-24 21:01:36', 0, 0),
(58, '2023-03-24 21:21:34', 0, 0),
(59, '2023-03-24 21:41:43', 0, 0),
(59, '2023-03-24 22:01:38', 0, 0),
(59, '2023-03-24 22:21:42', 0, 0),
(59, '2023-03-24 22:41:39', 0, 0),
(59, '2023-03-24 23:01:37', 0, 0),
(59, '2023-03-24 23:21:45', 0, 0),
(59, '2023-03-24 23:41:42', 0, 0),
(59, '2023-03-25 00:01:39', 0, 0),
(59, '2023-03-25 00:21:36', 0, 0),
(59, '2023-03-25 00:41:44', 0, 0),
(59, '2023-03-25 01:01:41', 0, 0),
(59, '2023-03-25 01:21:37', 0, 0),
(59, '2023-03-25 01:41:34', 0, 0),
(59, '2023-03-25 02:01:42', 0, 0),
(59, '2023-03-25 02:21:39', 0, 0),
(59, '2023-03-25 02:41:35', 0, 0),
(59, '2023-03-25 03:01:35', 0, 0),
(59, '2023-03-25 03:21:43', 0, 0),
(59, '2023-03-25 03:41:40', 0, 0),
(59, '2023-03-25 04:01:37', 0, 0),
(59, '2023-03-25 04:21:34', 0, 0),
(58, '2023-03-25 04:41:42', 0, 0),
(57, '2023-03-25 05:01:39', 0, 0),
(57, '2023-03-25 05:21:36', 0, 0),
(57, '2023-03-25 05:41:44', 0, 0),
(56, '2023-03-25 06:01:42', 0, 0),
(56, '2023-03-25 06:21:36', 0, 0),
(56, '2023-03-25 06:41:42', 0, 0),
(56, '2023-03-25 07:01:40', 0, 0),
(59, '2023-03-25 07:21:40', 0, 0),
(58, '2023-03-25 07:41:42', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pressure`
--

CREATE TABLE `pressure` (
  `value` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sensor_id` int NOT NULL,
  `ESP32_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pressure`
--

INSERT INTO `pressure` (`value`, `time`, `sensor_id`, `ESP32_id`) VALUES
(101161, '2023-03-23 14:01:35', 1, 0),
(101176, '2023-03-23 14:21:44', 1, 0),
(101178, '2023-03-23 14:41:42', 1, 0),
(101176, '2023-03-23 15:01:39', 1, 0),
(101165, '2023-03-23 15:21:39', 1, 0),
(101145, '2023-03-23 15:41:37', 1, 0),
(101151, '2023-03-23 16:01:38', 1, 0),
(101164, '2023-03-23 16:21:35', 1, 0),
(101178, '2023-03-23 16:41:42', 1, 0),
(101185, '2023-03-23 17:01:40', 1, 0),
(101189, '2023-03-23 17:21:37', 1, 0),
(101191, '2023-03-23 17:41:35', 1, 0),
(101208, '2023-03-23 18:01:44', 1, 0),
(101230, '2023-03-23 18:21:42', 1, 0),
(101243, '2023-03-23 18:41:40', 1, 0),
(101253, '2023-03-23 19:01:38', 1, 0),
(101277, '2023-03-23 19:21:36', 1, 0),
(101278, '2023-03-23 19:41:34', 1, 0),
(101296, '2023-03-23 20:01:44', 1, 0),
(101297, '2023-03-23 20:21:39', 1, 0),
(101320, '2023-03-23 20:41:45', 1, 0),
(101333, '2023-03-23 21:01:39', 1, 0),
(101338, '2023-03-23 21:21:36', 1, 0),
(101345, '2023-03-23 21:41:45', 1, 0),
(101340, '2023-03-23 22:01:42', 1, 0),
(101337, '2023-03-23 22:21:40', 1, 0),
(101327, '2023-03-23 22:41:37', 1, 0),
(101319, '2023-03-23 23:01:35', 1, 0),
(101308, '2023-03-23 23:21:44', 1, 0),
(101280, '2023-03-23 23:41:45', 1, 0),
(101261, '2023-03-24 00:01:42', 1, 0),
(101246, '2023-03-24 00:21:39', 1, 0),
(101237, '2023-03-24 00:41:36', 1, 0),
(101225, '2023-03-24 01:01:45', 1, 0),
(101216, '2023-03-24 01:21:42', 1, 0),
(101204, '2023-03-24 01:41:38', 1, 0),
(101213, '2023-03-24 02:01:38', 1, 0),
(101215, '2023-03-24 02:21:35', 1, 0),
(101196, '2023-03-24 02:41:43', 1, 0),
(101137, '2023-03-24 03:01:41', 1, 0),
(101152, '2023-03-24 03:21:38', 1, 0),
(101163, '2023-03-24 03:41:35', 1, 0),
(101163, '2023-03-24 04:01:45', 1, 0),
(101164, '2023-03-24 04:21:43', 1, 0),
(101157, '2023-03-24 04:41:41', 1, 0),
(101142, '2023-03-24 05:01:38', 1, 0),
(101145, '2023-03-24 05:21:35', 1, 0),
(101162, '2023-03-24 05:41:44', 1, 0),
(101170, '2023-03-24 06:01:41', 1, 0),
(101169, '2023-03-24 06:21:38', 1, 0),
(101173, '2023-03-24 06:41:35', 1, 0),
(101187, '2023-03-24 07:01:44', 1, 0),
(101196, '2023-03-24 07:21:41', 1, 0),
(101216, '2023-03-24 07:41:37', 1, 0),
(101202, '2023-03-24 08:01:45', 1, 0),
(101203, '2023-03-24 08:21:42', 1, 0),
(101207, '2023-03-24 08:41:39', 1, 0),
(101212, '2023-03-24 09:01:38', 1, 0),
(101205, '2023-03-24 09:21:37', 1, 0),
(101220, '2023-03-24 09:41:46', 1, 0),
(101215, '2023-03-24 10:01:43', 1, 0),
(101221, '2023-03-24 10:21:46', 1, 0),
(101207, '2023-03-24 10:41:44', 1, 0),
(101187, '2023-03-24 11:01:42', 1, 0),
(101181, '2023-03-24 11:21:39', 1, 0),
(101182, '2023-03-24 11:41:36', 1, 0),
(101171, '2023-03-24 12:01:37', 1, 0),
(101156, '2023-03-24 12:21:46', 1, 0),
(101155, '2023-03-24 12:41:43', 1, 0),
(101159, '2023-03-24 13:01:41', 1, 0),
(101133, '2023-03-24 13:21:40', 1, 0),
(101126, '2023-03-24 13:41:38', 1, 0),
(101111, '2023-03-24 14:01:38', 1, 0),
(101105, '2023-03-24 14:21:36', 1, 0),
(101088, '2023-03-24 14:41:45', 1, 0),
(101057, '2023-03-24 15:01:43', 1, 0),
(101035, '2023-03-24 15:21:40', 1, 0),
(101042, '2023-03-24 15:41:37', 1, 0),
(101044, '2023-03-24 16:01:38', 1, 0),
(101033, '2023-03-24 16:21:35', 1, 0),
(101021, '2023-03-24 16:41:45', 1, 0),
(101006, '2023-03-24 17:01:43', 1, 0),
(101016, '2023-03-24 17:21:41', 1, 0),
(101035, '2023-03-24 17:41:39', 1, 0),
(101025, '2023-03-24 18:01:37', 1, 0),
(101017, '2023-03-24 18:21:36', 1, 0),
(101011, '2023-03-24 18:41:45', 1, 0),
(101019, '2023-03-24 19:01:39', 1, 0),
(101014, '2023-03-24 19:21:40', 1, 0),
(101014, '2023-03-24 19:41:39', 1, 0),
(101017, '2023-03-24 20:01:38', 1, 0),
(101004, '2023-03-24 20:21:39', 1, 0),
(100988, '2023-03-24 20:41:38', 1, 0),
(100975, '2023-03-24 21:01:38', 1, 0),
(100940, '2023-03-24 21:21:36', 1, 0),
(100930, '2023-03-24 21:41:44', 1, 0),
(100912, '2023-03-24 22:01:39', 1, 0),
(100903, '2023-03-24 22:21:43', 1, 0),
(100883, '2023-03-24 22:41:40', 1, 0),
(100871, '2023-03-24 23:01:38', 1, 0),
(100879, '2023-03-24 23:21:46', 1, 0),
(100864, '2023-03-24 23:41:44', 1, 0),
(100844, '2023-03-25 00:01:41', 1, 0),
(100831, '2023-03-25 00:21:37', 1, 0),
(100827, '2023-03-25 00:41:45', 1, 0),
(100817, '2023-03-25 01:01:42', 1, 0),
(100792, '2023-03-25 01:21:39', 1, 0),
(100792, '2023-03-25 01:41:36', 1, 0),
(100783, '2023-03-25 02:01:43', 1, 0),
(100738, '2023-03-25 02:21:40', 1, 0),
(100726, '2023-03-25 02:41:37', 1, 0),
(100730, '2023-03-25 03:01:37', 1, 0),
(100724, '2023-03-25 03:21:45', 1, 0),
(100730, '2023-03-25 03:41:41', 1, 0),
(100749, '2023-03-25 04:01:38', 1, 0),
(100762, '2023-03-25 04:21:36', 1, 0),
(100776, '2023-03-25 04:41:43', 1, 0),
(100796, '2023-03-25 05:01:40', 1, 0),
(100841, '2023-03-25 05:21:37', 1, 0),
(100853, '2023-03-25 05:41:46', 1, 0),
(100865, '2023-03-25 06:01:43', 1, 0),
(100865, '2023-03-25 06:21:38', 1, 0),
(100864, '2023-03-25 06:41:44', 1, 0),
(100876, '2023-03-25 07:01:41', 1, 0),
(100891, '2023-03-25 07:21:41', 1, 0),
(100876, '2023-03-25 07:41:44', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20230502164237-create-automations-2.js'),
('20230502164237-create-automations.js');

-- --------------------------------------------------------

--
-- Table structure for table `temperature`
--

CREATE TABLE `temperature` (
  `value` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sensor_id` int NOT NULL,
  `ESP32_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temperature`
--

INSERT INTO `temperature` (`value`, `time`, `sensor_id`, `ESP32_id`) VALUES
(22.3, '2023-03-23 14:01:33', 0, 0),
(24.86, '2023-03-23 14:01:35', 1, 0),
(22.3, '2023-03-23 14:21:42', 0, 0),
(25.18, '2023-03-23 14:21:44', 1, 0),
(22.6, '2023-03-23 14:41:40', 0, 0),
(25.22, '2023-03-23 14:41:41', 1, 0),
(22.6, '2023-03-23 15:01:37', 0, 0),
(25.13, '2023-03-23 15:01:38', 1, 0),
(22.2, '2023-03-23 15:21:37', 0, 0),
(25.43, '2023-03-23 15:21:38', 1, 0),
(22.6, '2023-03-23 15:41:35', 0, 0),
(25.57, '2023-03-23 15:41:37', 1, 0),
(23, '2023-03-23 16:01:36', 0, 0),
(25.51, '2023-03-23 16:01:37', 1, 0),
(23, '2023-03-23 16:21:33', 0, 0),
(25.47, '2023-03-23 16:21:35', 1, 0),
(22.6, '2023-03-23 16:41:40', 0, 0),
(25.41, '2023-03-23 16:41:41', 1, 0),
(22.6, '2023-03-23 17:01:38', 0, 0),
(25.37, '2023-03-23 17:01:39', 1, 0),
(22.6, '2023-03-23 17:21:35', 0, 0),
(25.3, '2023-03-23 17:21:36', 1, 0),
(22.6, '2023-03-23 17:41:33', 0, 0),
(25.3, '2023-03-23 17:41:34', 1, 0),
(22.6, '2023-03-23 18:01:42', 0, 0),
(24.43, '2023-03-23 18:01:43', 1, 0),
(21.8, '2023-03-23 18:21:40', 0, 0),
(24.96, '2023-03-23 18:21:41', 1, 0),
(22.6, '2023-03-23 18:41:38', 0, 0),
(25.57, '2023-03-23 18:41:39', 1, 0),
(23, '2023-03-23 19:01:36', 0, 0),
(25.79, '2023-03-23 19:01:37', 1, 0),
(23.4, '2023-03-23 19:21:34', 0, 0),
(25.82, '2023-03-23 19:21:35', 1, 0),
(23.4, '2023-03-23 19:41:32', 0, 0),
(25.67, '2023-03-23 19:41:34', 1, 0),
(23.4, '2023-03-23 20:01:42', 0, 0),
(25.55, '2023-03-23 20:01:43', 1, 0),
(23, '2023-03-23 20:21:37', 0, 0),
(25.66, '2023-03-23 20:21:38', 1, 0),
(23, '2023-03-23 20:41:41', 0, 0),
(25.79, '2023-03-23 20:41:44', 1, 0),
(23.4, '2023-03-23 21:01:37', 0, 0),
(25.86, '2023-03-23 21:01:38', 1, 0),
(23.4, '2023-03-23 21:21:34', 0, 0),
(25.86, '2023-03-23 21:21:36', 1, 0),
(23.4, '2023-03-23 21:41:43', 0, 0),
(25.84, '2023-03-23 21:41:44', 1, 0),
(23.4, '2023-03-23 22:01:40', 0, 0),
(25.83, '2023-03-23 22:01:41', 1, 0),
(23.4, '2023-03-23 22:21:38', 0, 0),
(25.85, '2023-03-23 22:21:39', 1, 0),
(23.4, '2023-03-23 22:41:35', 0, 0),
(25.91, '2023-03-23 22:41:36', 1, 0),
(23.4, '2023-03-23 23:01:32', 0, 0),
(25.88, '2023-03-23 23:01:34', 1, 0),
(23.4, '2023-03-23 23:21:42', 0, 0),
(25.96, '2023-03-23 23:21:43', 1, 0),
(23.4, '2023-03-23 23:41:43', 0, 0),
(25.94, '2023-03-23 23:41:44', 1, 0),
(23.4, '2023-03-24 00:01:40', 0, 0),
(25.94, '2023-03-24 00:01:41', 1, 0),
(23.4, '2023-03-24 00:21:37', 0, 0),
(25.95, '2023-03-24 00:21:39', 1, 0),
(23.4, '2023-03-24 00:41:34', 0, 0),
(25.96, '2023-03-24 00:41:36', 1, 0),
(23.4, '2023-03-24 01:01:43', 0, 0),
(25.93, '2023-03-24 01:01:44', 1, 0),
(23.4, '2023-03-24 01:21:40', 0, 0),
(25.94, '2023-03-24 01:21:41', 1, 0),
(23.4, '2023-03-24 01:41:36', 0, 0),
(25.93, '2023-03-24 01:41:38', 1, 0),
(23.4, '2023-03-24 02:01:36', 0, 0),
(25.91, '2023-03-24 02:01:38', 1, 0),
(23.4, '2023-03-24 02:21:33', 0, 0),
(25.88, '2023-03-24 02:21:34', 1, 0),
(23.4, '2023-03-24 02:41:41', 0, 0),
(25.8, '2023-03-24 02:41:43', 1, 0),
(23.4, '2023-03-24 03:01:39', 0, 0),
(25.77, '2023-03-24 03:01:40', 1, 0),
(23, '2023-03-24 03:21:36', 0, 0),
(25.76, '2023-03-24 03:21:37', 1, 0),
(23, '2023-03-24 03:41:33', 0, 0),
(25.69, '2023-03-24 03:41:35', 1, 0),
(23, '2023-03-24 04:01:43', 0, 0),
(25.63, '2023-03-24 04:01:44', 1, 0),
(23, '2023-03-24 04:21:41', 0, 0),
(25.63, '2023-03-24 04:21:42', 1, 0),
(23, '2023-03-24 04:41:39', 0, 0),
(25.78, '2023-03-24 04:41:40', 1, 0),
(23.4, '2023-03-24 05:01:36', 0, 0),
(25.9, '2023-03-24 05:01:37', 1, 0),
(23.4, '2023-03-24 05:21:33', 0, 0),
(26.02, '2023-03-24 05:21:35', 1, 0),
(23.4, '2023-03-24 05:41:42', 0, 0),
(26.02, '2023-03-24 05:41:43', 1, 0),
(23.4, '2023-03-24 06:01:39', 0, 0),
(26, '2023-03-24 06:01:41', 1, 0),
(23.4, '2023-03-24 06:21:36', 0, 0),
(26.04, '2023-03-24 06:21:38', 1, 0),
(23.4, '2023-03-24 06:41:33', 0, 0),
(25.53, '2023-03-24 06:41:35', 1, 0),
(23, '2023-03-24 07:01:42', 0, 0),
(25.51, '2023-03-24 07:01:43', 1, 0),
(23, '2023-03-24 07:21:39', 0, 0),
(25.99, '2023-03-24 07:21:40', 1, 0),
(23.4, '2023-03-24 07:41:35', 0, 0),
(26.18, '2023-03-24 07:41:36', 1, 0),
(23.8, '2023-03-24 08:01:43', 0, 0),
(26.12, '2023-03-24 08:01:44', 1, 0),
(23.8, '2023-03-24 08:21:40', 0, 0),
(26.12, '2023-03-24 08:21:41', 1, 0),
(23.8, '2023-03-24 08:41:37', 0, 0),
(26.48, '2023-03-24 08:41:38', 1, 0),
(24.1, '2023-03-24 09:01:36', 0, 0),
(26.76, '2023-03-24 09:01:37', 1, 0),
(24.1, '2023-03-24 09:21:35', 0, 0),
(26.85, '2023-03-24 09:21:36', 1, 0),
(24.5, '2023-03-24 09:41:44', 0, 0),
(26.46, '2023-03-24 09:41:45', 1, 0),
(23.8, '2023-03-24 10:01:41', 0, 0),
(26.6, '2023-03-24 10:01:43', 1, 0),
(24.1, '2023-03-24 10:21:44', 0, 0),
(26.56, '2023-03-24 10:21:45', 1, 0),
(24.1, '2023-03-24 10:41:42', 0, 0),
(26.51, '2023-03-24 10:41:43', 1, 0),
(23.8, '2023-03-24 11:01:39', 0, 0),
(26.46, '2023-03-24 11:01:41', 1, 0),
(23.8, '2023-03-24 11:21:37', 0, 0),
(26.39, '2023-03-24 11:21:38', 1, 0),
(23.8, '2023-03-24 11:41:34', 0, 0),
(26.33, '2023-03-24 11:41:36', 1, 0),
(23.4, '2023-03-24 12:01:35', 0, 0),
(26.26, '2023-03-24 12:01:36', 1, 0),
(23.4, '2023-03-24 12:21:44', 0, 0),
(26.23, '2023-03-24 12:21:45', 1, 0),
(23.4, '2023-03-24 12:41:41', 0, 0),
(26.28, '2023-03-24 12:41:42', 1, 0),
(23.4, '2023-03-24 13:01:38', 0, 0),
(26.33, '2023-03-24 13:01:41', 1, 0),
(23.4, '2023-03-24 13:21:37', 0, 0),
(25.95, '2023-03-24 13:21:39', 1, 0),
(23, '2023-03-24 13:41:36', 0, 0),
(26.09, '2023-03-24 13:41:37', 1, 0),
(23, '2023-03-24 14:01:36', 0, 0),
(26.13, '2023-03-24 14:01:37', 1, 0),
(23.4, '2023-03-24 14:21:34', 0, 0),
(26.19, '2023-03-24 14:21:35', 1, 0),
(23.4, '2023-03-24 14:41:43', 0, 0),
(25.66, '2023-03-24 14:41:44', 1, 0),
(23, '2023-03-24 15:01:41', 0, 0),
(25.7, '2023-03-24 15:01:42', 1, 0),
(23, '2023-03-24 15:21:38', 0, 0),
(25.93, '2023-03-24 15:21:39', 1, 0),
(23, '2023-03-24 15:41:35', 0, 0),
(25.83, '2023-03-24 15:41:36', 1, 0),
(23, '2023-03-24 16:01:36', 0, 0),
(25.79, '2023-03-24 16:01:37', 1, 0),
(23, '2023-03-24 16:21:33', 0, 0),
(25.79, '2023-03-24 16:21:35', 1, 0),
(23, '2023-03-24 16:41:43', 0, 0),
(25.67, '2023-03-24 16:41:45', 1, 0),
(22.6, '2023-03-24 17:01:41', 0, 0),
(25.66, '2023-03-24 17:01:43', 1, 0),
(22.6, '2023-03-24 17:21:39', 0, 0),
(25.51, '2023-03-24 17:21:40', 1, 0),
(22.6, '2023-03-24 17:41:37', 0, 0),
(25.61, '2023-03-24 17:41:39', 1, 0),
(23, '2023-03-24 18:01:35', 0, 0),
(25.02, '2023-03-24 18:01:37', 1, 0),
(22.2, '2023-03-24 18:21:33', 0, 0),
(25.02, '2023-03-24 18:21:35', 1, 0),
(22.2, '2023-03-24 18:41:43', 0, 0),
(25.16, '2023-03-24 18:41:44', 1, 0),
(22.2, '2023-03-24 19:01:36', 0, 0),
(25.14, '2023-03-24 19:01:38', 1, 0),
(22.2, '2023-03-24 19:21:38', 0, 0),
(25.87, '2023-03-24 19:21:39', 1, 0),
(23.4, '2023-03-24 19:41:37', 0, 0),
(26.2, '2023-03-24 19:41:38', 1, 0),
(23.8, '2023-03-24 20:01:36', 0, 0),
(26.33, '2023-03-24 20:01:38', 1, 0),
(23.8, '2023-03-24 20:21:37', 0, 0),
(26.48, '2023-03-24 20:21:38', 1, 0),
(24.1, '2023-03-24 20:41:36', 0, 0),
(26.55, '2023-03-24 20:41:38', 1, 0),
(24.1, '2023-03-24 21:01:36', 0, 0),
(26.63, '2023-03-24 21:01:37', 1, 0),
(24.1, '2023-03-24 21:21:34', 0, 0),
(26.53, '2023-03-24 21:21:35', 1, 0),
(24.1, '2023-03-24 21:41:42', 0, 0),
(26.58, '2023-03-24 21:41:44', 1, 0),
(24.1, '2023-03-24 22:01:37', 0, 0),
(26.53, '2023-03-24 22:01:38', 1, 0),
(24.1, '2023-03-24 22:21:41', 0, 0),
(26.52, '2023-03-24 22:21:42', 1, 0),
(24.1, '2023-03-24 22:41:38', 0, 0),
(26.5, '2023-03-24 22:41:40', 1, 0),
(24.1, '2023-03-24 23:01:36', 0, 0),
(26.53, '2023-03-24 23:01:38', 1, 0),
(24.1, '2023-03-24 23:21:44', 0, 0),
(26.56, '2023-03-24 23:21:46', 1, 0),
(24.1, '2023-03-24 23:41:42', 0, 0),
(26.57, '2023-03-24 23:41:43', 1, 0),
(24.1, '2023-03-25 00:01:39', 0, 0),
(26.58, '2023-03-25 00:01:40', 1, 0),
(24.1, '2023-03-25 00:21:35', 0, 0),
(26.57, '2023-03-25 00:21:37', 1, 0),
(24.1, '2023-03-25 00:41:43', 0, 0),
(26.58, '2023-03-25 00:41:45', 1, 0),
(24.1, '2023-03-25 01:01:40', 0, 0),
(26.59, '2023-03-25 01:01:41', 1, 0),
(23.8, '2023-03-25 01:21:37', 0, 0),
(26.51, '2023-03-25 01:21:38', 1, 0),
(23.8, '2023-03-25 01:41:34', 0, 0),
(26.47, '2023-03-25 01:41:35', 1, 0),
(23.8, '2023-03-25 02:01:41', 0, 0),
(26.46, '2023-03-25 02:01:43', 1, 0),
(23.8, '2023-03-25 02:21:38', 0, 0),
(26.39, '2023-03-25 02:21:40', 1, 0),
(23.4, '2023-03-25 02:41:35', 0, 0),
(26.35, '2023-03-25 02:41:36', 1, 0),
(23.4, '2023-03-25 03:01:35', 0, 0),
(26.32, '2023-03-25 03:01:36', 1, 0),
(23.4, '2023-03-25 03:21:43', 0, 0),
(26.29, '2023-03-25 03:21:44', 1, 0),
(23.4, '2023-03-25 03:41:39', 0, 0),
(26.26, '2023-03-25 03:41:41', 1, 0),
(23.4, '2023-03-25 04:01:36', 0, 0),
(26.22, '2023-03-25 04:01:38', 1, 0),
(23.4, '2023-03-25 04:21:34', 0, 0),
(26.27, '2023-03-25 04:21:35', 1, 0),
(23.4, '2023-03-25 04:41:41', 0, 0),
(26.4, '2023-03-25 04:41:43', 1, 0),
(23.8, '2023-03-25 05:01:38', 0, 0),
(26.53, '2023-03-25 05:01:39', 1, 0),
(24.1, '2023-03-25 05:21:35', 0, 0),
(26.75, '2023-03-25 05:21:37', 1, 0),
(24.1, '2023-03-25 05:41:44', 0, 0),
(26.87, '2023-03-25 05:41:45', 1, 0),
(24.5, '2023-03-25 06:01:41', 0, 0),
(26.88, '2023-03-25 06:01:43', 1, 0),
(24.5, '2023-03-25 06:21:36', 0, 0),
(26.96, '2023-03-25 06:21:37', 1, 0),
(24.5, '2023-03-25 06:41:41', 0, 0),
(26.94, '2023-03-25 06:41:43', 1, 0),
(24.5, '2023-03-25 07:01:39', 0, 0),
(26.44, '2023-03-25 07:01:40', 1, 0),
(23.4, '2023-03-25 07:21:39', 0, 0),
(26.89, '2023-03-25 07:21:41', 1, 0),
(24.2, '2023-03-25 07:41:42', 0, 0),
(27.46, '2023-03-25 07:41:43', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `role`) VALUES
(2, 'Andrej', 'Erjavec', 'erandrej@gmail.com', '$2b$10$YslNrrqcc0g/r6Cppuv7keGC2K6nBlUKIcLxMLZAi89S4ntJAoMz.', 'normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `altitude`
--
ALTER TABLE `altitude`
  ADD KEY `ESP32_id` (`ESP32_id`);

--
-- Indexes for table `automations`
--
ALTER TABLE `automations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ESP32`
--
ALTER TABLE `ESP32`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `humidity`
--
ALTER TABLE `humidity`
  ADD KEY `ESP32_id` (`ESP32_id`);

--
-- Indexes for table `pressure`
--
ALTER TABLE `pressure`
  ADD KEY `ESP32_id` (`ESP32_id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `temperature`
--
ALTER TABLE `temperature`
  ADD KEY `ESP32_id` (`ESP32_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `automations`
--
ALTER TABLE `automations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ESP32`
--
ALTER TABLE `ESP32`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `altitude`
--
ALTER TABLE `altitude`
  ADD CONSTRAINT `ESP_Foreign_key_altitude` FOREIGN KEY (`ESP32_id`) REFERENCES `ESP32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ESP32`
--
ALTER TABLE `ESP32`
  ADD CONSTRAINT `USER_foreign_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `humidity`
--
ALTER TABLE `humidity`
  ADD CONSTRAINT `ESP_Foreign_key_humidity` FOREIGN KEY (`ESP32_id`) REFERENCES `ESP32` (`id`);

--
-- Constraints for table `pressure`
--
ALTER TABLE `pressure`
  ADD CONSTRAINT `ESP_Foreign_key_ pressure` FOREIGN KEY (`ESP32_id`) REFERENCES `ESP32` (`id`);

--
-- Constraints for table `temperature`
--
ALTER TABLE `temperature`
  ADD CONSTRAINT `ESP_Foreign_key` FOREIGN KEY (`ESP32_id`) REFERENCES `ESP32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
