-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 09:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instrument`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `abbr` varchar(200) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `institute_id`, `name`, `address`, `phone_number`, `email`, `abbr`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`) VALUES
(1, 1, 'Department1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Department2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 'Department3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 'Department4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 'Department1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'Department4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `name`) VALUES
(1, 'Administrative Incharge'),
(2, 'Acting Head'),
(3, 'Assistant director'),
(4, 'Assistant director (research)'),
(5, 'Assistant Research Technologist'),
(6, 'Chief Executive Officer'),
(7, 'Director'),
(8, 'Deputy Director'),
(9, 'Head of the Department'),
(10, 'Head/Principal Research Officer'),
(11, 'Lab Assistant'),
(12, 'Lecturer'),
(13, 'Lecturer (Probationary)'),
(14, 'Postgraduate Student'),
(15, 'Principal Agriculture Scientist'),
(16, 'Principal Research Officer'),
(17, 'Principal Scientist'),
(18, 'Program Assistant'),
(19, 'Principal'),
(20, 'Professor'),
(21, 'Research Scientist'),
(22, 'Research Technologist'),
(23, 'Senior Deputy Director'),
(24, 'Senior lecturer'),
(25, 'Senior Research Officer'),
(26, 'Senior Research Scientist'),
(27, 'Teacher'),
(28, 'Technical Assistant'),
(29, 'Technical Officer'),
(30, 'Technical Incharge'),
(31, 'Trainee Technical Officer'),
(32, 'Undergraduate Student');

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `institute_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `ministry` varchar(200) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`institute_id`, `name`, `address`, `phone_number`, `email`, `description`, `ministry`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`) VALUES
(1, 'Institute1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Institute2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Institute3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `process` varchar(1024) NOT NULL,
  `processFunction` varchar(1024) NOT NULL,
  `userRoleId` bigint(20) NOT NULL,
  `userRoleText` varchar(128) NOT NULL,
  `userIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:12:08'),
(2, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:12:49'),
(3, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:15:32'),
(4, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:24:52'),
(5, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:25:09'),
(6, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:44:40'),
(7, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:44:46'),
(8, 3, 'YOOSUFF', 'Single Log Display', 'Admin/logHistorysingle', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:45:22'),
(9, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:45:26'),
(10, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:52:58'),
(11, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:56:27'),
(12, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:58:04'),
(13, 3, 'YOOSUFF', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:58:18'),
(14, 3, 'YOOSUFF', 'User All tasks', 'User/etasks', 7, 'Equipment_User', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:58:28'),
(15, 3, 'YOOSUFF', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:58:43'),
(16, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:59:16'),
(17, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-12 23:59:30'),
(18, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-13 00:16:31'),
(19, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.55', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'Windows 10', '2021-12-13 00:17:28'),
(20, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 00:32:39'),
(21, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 00:33:36'),
(22, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 10:36:08'),
(23, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 10:41:08'),
(24, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 10:41:39'),
(25, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 10:42:59'),
(26, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 10:55:11'),
(27, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 11:03:41'),
(28, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 11:03:55'),
(29, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 11:10:53'),
(30, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 11:11:04'),
(31, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 11:33:32'),
(32, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 12:14:10'),
(33, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 12:15:19'),
(34, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 12:20:35'),
(35, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 12:55:16'),
(36, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:00:01'),
(37, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:00:30'),
(38, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:01:08'),
(39, 3, 'YOOSUFF', 'Backup Log Display', 'Admin/logHistoryBackup', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:01:54'),
(40, 3, 'YOOSUFF', 'Backup Log Upload', 'Admin/logHistoryUpload', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:01:57'),
(41, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:02:10'),
(42, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:02:14'),
(43, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:02:17'),
(44, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:12:40'),
(45, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:12:51'),
(46, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:14:23'),
(47, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:19:48'),
(48, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:20:31'),
(49, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:20:39'),
(50, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:21:13'),
(51, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:23:16'),
(52, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:25:29'),
(53, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:26:02'),
(54, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:26:10'),
(55, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:26:21'),
(56, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:26:25'),
(57, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:26:46'),
(58, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:27:27'),
(59, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:27:36'),
(60, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:27:43'),
(61, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:27:56'),
(62, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 13:28:08'),
(63, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:14:39'),
(64, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:20:13'),
(65, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:26:16'),
(66, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:26:22'),
(67, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:26:28'),
(68, 3, 'YOOSUFF', 'Backup Log Upload', 'Admin/logHistoryUpload', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:26:33'),
(69, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:26:41'),
(70, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:36:12'),
(71, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:36:20'),
(72, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:48:34'),
(73, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:54:06'),
(74, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:54:24'),
(75, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 18:54:54'),
(76, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:09:32'),
(77, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:10:29'),
(78, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:02'),
(79, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:25'),
(80, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:34'),
(81, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:42'),
(82, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:45'),
(83, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:54'),
(84, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:24:58'),
(85, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:25:05'),
(86, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:25:25'),
(87, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:32:08'),
(88, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:32:35'),
(89, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 19:32:44'),
(90, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 22:38:31'),
(91, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 22:39:08'),
(92, 3, 'YOOSUFF', 'Backup Log Upload', 'Admin/logHistoryUpload', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 22:41:38'),
(93, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 22:42:08'),
(94, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 22:44:27'),
(95, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:05:03'),
(96, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:09:14'),
(97, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:18:08'),
(98, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:18:09'),
(99, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:18:26'),
(100, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:33:01'),
(101, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:33:25'),
(102, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-13 23:37:54'),
(103, 17, 'Newname', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 00:27:45'),
(104, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 00:27:56'),
(105, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 00:36:08'),
(106, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 00:39:03'),
(107, 2, 'Manuja Karunaratne', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 01:08:42'),
(108, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 01:09:18'),
(109, 2, 'Manuja Karunaratne', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 01:09:45'),
(110, 2, 'Manuja Karunaratne', 'Password Change', 'User/changePassword', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 01:10:10'),
(111, 2, 'Manuja Karunaratne', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 01:11:39'),
(112, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 14:19:38'),
(113, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 14:24:55'),
(114, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 14:25:06'),
(115, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 14:27:56'),
(116, 21, 'Ti', 'login', 'Login/loginMe', 6, 'Technical_Incharge', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 19:55:06'),
(117, 21, 'Ti', 'output', 'BaseController/logout', 6, 'Technical_Incharge', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 20:04:27'),
(118, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 22:36:51'),
(119, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 22:38:00'),
(120, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 22:38:19'),
(121, 4, 'Karim', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:31:15'),
(122, 4, 'Karim', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:32:05'),
(123, 4, 'Karim', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:32:16'),
(124, 4, 'Karim', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:32:42'),
(125, 4, 'Karim', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:32:58'),
(126, 4, 'Karim', 'Log imaging', 'Admin/logHistory', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:33:05'),
(127, 4, 'Karim', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-14 23:33:34'),
(128, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 10:41:23'),
(129, 3, 'YOOSUFF', 'Password Change', 'User/changePassword', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:02:03'),
(130, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:02:14'),
(131, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:02:24'),
(132, 3, 'YOOSUFF', 'Password Change', 'User/changePassword', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:04:20'),
(133, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:04:30'),
(134, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:04:44'),
(135, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:06:13'),
(136, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:17:13'),
(137, 3, 'YOOSUFF', 'Password Change', 'User/changePassword', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:17:31'),
(138, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:17:36'),
(139, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:17:45'),
(140, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:18:12'),
(141, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:18:22'),
(142, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:18:26'),
(143, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:18:33'),
(144, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:18:41'),
(145, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:18:46'),
(146, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:19:16'),
(147, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:34:59'),
(148, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:35:04'),
(149, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:35:36'),
(150, 3, 'YOOSUFF', 'Single Log Display', 'Admin/logHistorysingle', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:37:57'),
(151, 3, 'YOOSUFF', 'Single Log Display', 'Admin/logHistorysingle', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:40:13'),
(152, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:40:27'),
(153, 3, 'YOOSUFF', 'Single Log Display', 'Admin/logHistorysingle', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:40:32'),
(154, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:40:44'),
(155, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:26'),
(156, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:28'),
(157, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:32'),
(158, 3, 'YOOSUFF', 'Single Log Display', 'Admin/logHistorysingle', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:36'),
(159, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:40'),
(160, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:43'),
(161, 3, 'YOOSUFF', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:49'),
(162, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:50:53'),
(163, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:52:53'),
(164, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:53:00'),
(165, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:53:34'),
(166, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:53:46'),
(167, 3, 'YOOSUFF', 'Single Log Display', 'Admin/logHistorysingle', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 11:53:49'),
(168, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 12:06:23'),
(169, 3, 'YOOSUFF', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 14:10:13'),
(170, 3, 'YOOSUFF', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 96.0.4664.93', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36 Edg/96.0.1054.53', 'Windows 10', '2021-12-15 14:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_backup`
--

CREATE TABLE `tbl_log_backup` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `process` varchar(1024) NOT NULL,
  `processFunction` varchar(1024) NOT NULL,
  `userRoleId` bigint(20) NOT NULL,
  `userRoleText` varchar(128) NOT NULL,
  `userIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'sa@admin.lk', 'bp2MWhy1ZCEqFuj', 'Chrome 96.0.4664.45', '::1', 0, 1, '2021-12-05 15:23:51', NULL, NULL),
(2, 'sa@admin.lk', 'chLpt1eSM7mNA6y', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-09 07:17:44', NULL, NULL),
(3, 'sa@admin.lk', '32kaQ4OhXKw9cqG', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-09 07:18:19', NULL, NULL),
(4, 'sa@admin.lk', 'FUSOMJA0HbQlTdc', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-09 11:36:51', NULL, NULL),
(8, 'ithreeshmym@gmail.com', 'haCj2EH7K3sP4S5', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 19:55:53', NULL, NULL),
(9, 'ithreeshmym@gmail.com', 'EBWn5eaMCiZysH0', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:02:56', NULL, NULL),
(10, 'ithreeshmym@gmail.com', '8XtqwVE2Yy5oF0M', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:03:36', NULL, NULL),
(11, 'ithreeshmym@gmail.com', '3aWYSyFZCQ5qX8M', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:04:46', NULL, NULL),
(12, 'ithreeshmym@gmail.com', 'ofBuxs34lb2tVJ1', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:06:16', NULL, NULL),
(13, 'ithreeshmym@gmail.com', 'ZBXR05ekhgQUsq8', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:10:55', NULL, NULL),
(14, 'ithreeshmym@gmail.com', 'yVeIcfLOAHESagG', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:11:35', NULL, NULL),
(15, 'ithreeshmym@gmail.com', 'P3dOKpHEC1hzNVj', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:13:34', NULL, NULL),
(16, 'ithreeshmym@gmail.com', '678YOtkbdRwxf15', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:15:31', NULL, NULL),
(17, 'ithreeshmym@gmail.com', '6Ewi1HWtneJagCy', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:19:31', NULL, NULL),
(18, 'ithreeshmym@gmail.com', 'NJxnZOgq6uKtPrw', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:21:48', NULL, NULL),
(19, 'ithreeshmym@gmail.com', 'yRh9YoApKCmE1Od', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:22:23', NULL, NULL),
(20, 'ithreeshmym@gmail.com', 'rlP4qaJQyUn9TBX', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:26:54', NULL, NULL),
(21, 'ithreeshmym@gmail.com', 'YKCkmQcGhySRutf', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:29:13', NULL, NULL),
(22, 'ithreeshmym@gmail.com', 'rKv2fIPgCUNGRiY', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:31:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Super_Admin'),
(2, 'Admin'),
(3, 'Institute_Manager'),
(4, 'Division_Manager'),
(5, 'Administrative_Incharge'),
(6, 'Technical_Incharge'),
(7, 'Equipment_User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `id` bigint(20) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `comment` varchar(2048) NOT NULL,
  `statusId` int(11) NOT NULL,
  `priorityId` int(11) NOT NULL,
  `permalink` varchar(1024) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `endDtm` datetime DEFAULT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_task`
--

INSERT INTO `tbl_task` (`id`, `title`, `comment`, `statusId`, `priorityId`, `permalink`, `createdBy`, `endDtm`, `createdDtm`) VALUES
(1, 'test', '                                                                                                                   test                                                                                                                                                         ', 2, 1, 'test', 1, '2021-11-20 18:18:45', '2021-11-14 14:00:01'),
(3, 'dgghfh', 'dhfhffu                                                                                    ', 2, 1, 'dgghfh', 1, '2021-11-17 06:46:20', '2021-11-17 06:46:04'),
(4, 'book', '                                  book setup                                                  ', 1, 2, 'book', 1, NULL, '2021-11-20 11:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_prioritys`
--

CREATE TABLE `tbl_tasks_prioritys` (
  `priorityId` bigint(20) NOT NULL,
  `priority` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tasks_prioritys`
--

INSERT INTO `tbl_tasks_prioritys` (`priorityId`, `priority`) VALUES
(1, ' Urgent'),
(2, 'Middle'),
(3, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_situations`
--

CREATE TABLE `tbl_tasks_situations` (
  `statusId` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tasks_situations`
--

INSERT INTO `tbl_tasks_situations` (`statusId`, `status`) VALUES
(1, 'Open'),
(2, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `status`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'sa@admin.lk', '$2y$10$InAb1wTsX5XD2KxdRIAIV.OSwPv/N5C5/PwJIg5VOooHbCmvb56eu', 'Thasneem', '9890098900', 1, 0, 1, 1, '2015-07-01 18:56:49', 1, '2021-11-22 06:03:33'),
(2, 'ad@admin.lk', '$2y$10$JTnRQNf4tVvpER3BwRmdgePh4bJ1DWA6VRBeD0lvZhrOQ.E.CGVPe', 'Manuja Karunaratne', '9890098900', 2, 0, 1, 1, '2016-12-09 17:49:56', 2, '2021-12-13 20:40:10'),
(21, 'ti@admin.lk', '$2y$10$DxnJFUFcfsHdvUrWjc780OUQZsYeT4QTDY29ndeBcv93tajXc0Hzq', 'Ti', '1234567898', 6, 0, 1, 20, '2021-11-22 09:28:32', 21, '2021-11-22 09:30:22'),
(19, 'dm@admin.lk', '$2y$10$76liQQyft4lRWajDuLevPe7vn2HgMhsr6aHpSTjVNBGp1RoayCX/G', 'Shamila', '2345676891', 4, 0, 0, 1, '2021-11-22 08:48:25', NULL, NULL),
(20, 'adi@admin.lk', '$2y$10$WcmvKO09EFPI/cX9/8W.wu6adUEriu5lT5XhCg5Zy3qFTrE01Fkx2', 'Viraji', '2345678910', 5, 0, 0, 1, '2021-11-22 09:19:44', NULL, NULL),
(15, 'eq@admin.lk', '$2y$10$D2LtBNTfheaug0QqRfs5wuRSKSSt2QgqQ5dHrJwnPcz/i45xjZIJ6', 'Renuka', '1234567898', 7, 0, 1, 1, '2021-11-19 17:41:00', 15, '2021-12-02 07:35:09'),
(16, 'im@admin.lk', '$2y$10$Pa0a8lm6STA1wJCCoDxeJeRft7iyC.Pv0O3Lpbrhzls77l5bBcBcW', 'I_manager', '1234567898', 3, 0, 1, 1, '2021-11-20 14:41:16', 16, '2021-11-22 06:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type_id` int(10) UNSIGNED DEFAULT NULL,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` int(10) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_provider` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `last_login_location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_status` tinyint(4) DEFAULT '0',
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `updatedBy` int(10) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `institute_id`, `department_id`, `title`, `first_name`, `last_name`, `designation`, `address`, `mobile_number`, `phone_number`, `gender`, `email`, `picture`, `oauth_provider`, `oauth_uid`, `locale`, `link`, `created`, `modified`, `last_login_date`, `last_login_location`, `username`, `password`, `user_status`, `isDeleted`, `updatedBy`, `updatedDtm`) VALUES
(1, 1, 1, 1, NULL, 'Mohamed Yoosuff', 'Thasneem', 'Head of the Department', NULL, 788012345, NULL, '', 'thasneemmys@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJw3AgidiamujQF_kwoycUnFrYMr6CQsBqMVjjjN=s96-c', 'google', '103720349026835494004', 'en', '', '2021-12-08 17:26:50', '2021-12-09 11:12:36', NULL, NULL, 'thasneemmys@gmail.com', 'new123', 1, 0, NULL, NULL),
(2, 3, 1, 1, NULL, 'Thasneem', 'Niyas', 'Lecturer in IT', NULL, 788012345, NULL, '', 'thasneemniyas123@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJxMLd2bVT-QbaP4oTvLxtbk-KzxJcenQWiyVhb9=s96-c', 'google', '117636139061528426133', 'en-GB', '', '2021-12-09 07:36:16', '2021-12-09 09:39:12', NULL, NULL, 'thasneemniyas123@gmail.com', 'new123', 0, 0, NULL, NULL),
(3, 1, 1, 1, 'Mr', 'MOHAMED', 'YOOSUFF', 'Head of the Department', 'Testaddress', 784532340, 114568765, NULL, 'ithreeshmym@gmail.com', NULL, '', '', NULL, '', '2021-12-12 13:34:49', '0000-00-00 00:00:00', NULL, NULL, 'ithreeshmym@gmail.com', 'new123', 1, 0, 3, '2021-12-15 06:47:31'),
(4, 2, 1, 1, 'Mr', 'Mohamed', 'Karim', 'Professor', 'testing Address', 784532340, 114568765, 'Male', 'karim@gmail.com', NULL, '', '', NULL, '', '2021-12-14 19:00:44', '0000-00-00 00:00:00', NULL, NULL, 'karim@gmail.com', '123456', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_type_id` int(10) NOT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`) VALUES
(1, 'Super_Admin', NULL, NULL, NULL, NULL),
(2, 'Admin', NULL, NULL, NULL, NULL),
(3, 'Institute_Manager', NULL, NULL, NULL, NULL),
(4, 'Division_Manager', NULL, NULL, NULL, NULL),
(5, 'Administrative_Incharge', NULL, NULL, NULL, NULL),
(6, 'Technical_Incharge', NULL, NULL, NULL, NULL),
(7, 'Equipment_User', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tasks_prioritys`
--
ALTER TABLE `tbl_tasks_prioritys`
  ADD PRIMARY KEY (`priorityId`);

--
-- Indexes for table `tbl_tasks_situations`
--
ALTER TABLE `tbl_tasks_situations`
  ADD PRIMARY KEY (`statusId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_tasks_prioritys`
--
ALTER TABLE `tbl_tasks_prioritys`
  MODIFY `priorityId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_tasks_situations`
--
ALTER TABLE `tbl_tasks_situations`
  MODIFY `statusId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
