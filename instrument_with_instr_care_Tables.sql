-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2026 at 11:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Table structure for table `instrument_categories`
--

CREATE TABLE `instrument_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrument_categories`
--

INSERT INTO `instrument_categories` (`id`, `name`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Analytical Balance', NULL, 1, '2026-03-04 06:54:55', '2026-03-04 06:54:55'),
(2, 'Microscope ', NULL, 1, '2026-03-04 06:55:18', '2026-03-04 06:55:18'),
(3, 'Centrifuger', NULL, 1, '2026-03-04 06:55:18', '2026-03-04 06:55:18'),
(4, 'Gas Chromatograph & GC/MS', NULL, 1, '2026-03-04 06:55:48', '2026-03-04 06:55:48'),
(5, 'High Performance Liquid Chromatograph (HPLC)', NULL, 1, '2026-03-04 06:55:48', '2026-03-04 06:55:48'),
(6, 'Ion Chromatograph', 'AAS, ICPMS, ICPOES, FTIR, IRMS, UV-Visible, NMR, RAMAN, etc', 1, '2026-03-04 06:57:04', '2026-03-04 06:57:04'),
(7, 'X-Ray Fluorescence Analyzers', NULL, 1, '2026-03-04 06:57:04', '2026-03-04 06:57:04'),
(8, 'Distillation Apparatus', NULL, 1, '2026-03-04 06:57:24', '2026-03-04 06:57:24'),
(9, 'Digestor', NULL, 1, '2026-03-04 06:57:24', '2026-03-04 06:57:24'),
(10, 'PCR Systems', NULL, 1, '2026-03-04 06:57:55', '2026-03-04 06:57:55'),
(11, 'Mixers', NULL, 1, '2026-03-04 06:57:55', '2026-03-04 06:57:55'),
(12, 'pH & Conductivity meter', NULL, 1, '2026-03-04 06:58:24', '2026-03-04 06:58:24'),
(13, 'Oven/Vacuum Oven', NULL, 1, '2026-03-04 06:58:24', '2026-03-04 06:58:24'),
(14, 'Muffle furnace', NULL, 1, '2026-03-04 06:58:48', '2026-03-04 06:58:48'),
(15, 'Fume Hood', NULL, 1, '2026-03-04 06:58:48', '2026-03-04 06:58:48'),
(16, 'Water Bath', NULL, 1, '2026-03-04 06:59:11', '2026-03-04 06:59:11'),
(17, 'Incubator', NULL, 1, '2026-03-04 06:59:11', '2026-03-04 06:59:11'),
(18, 'Hot Plate ', NULL, 1, '2026-03-04 06:59:28', '2026-03-04 06:59:28'),
(19, 'Evaporators', NULL, 1, '2026-03-04 06:59:28', '2026-03-04 06:59:28'),
(20, 'Sonicating Apparatus', NULL, 1, '2026-03-04 06:59:47', '2026-03-04 06:59:47'),
(21, 'Biochemistry analyzers', NULL, 1, '2026-03-04 06:59:47', '2026-03-04 06:59:47'),
(22, 'Particle Size analyzer ', NULL, 1, '2026-03-04 07:00:08', '2026-03-04 07:00:08'),
(23, 'Bomb Calory meters', NULL, 1, '2026-03-04 07:00:08', '2026-03-04 07:00:08'),
(24, 'Shakers', NULL, 1, '2026-03-04 07:00:30', '2026-03-04 07:00:30'),
(25, 'Dryers', NULL, 1, '2026-03-04 07:00:30', '2026-03-04 07:00:30'),
(26, 'Distill water plant', NULL, 1, '2026-03-04 07:00:51', '2026-03-04 07:00:51'),
(27, 'Glass blowing apparatus', NULL, 1, '2026-03-04 07:00:51', '2026-03-04 07:00:51'),
(28, 'Other Instruments/Apparatus', NULL, 1, '2026-03-04 07:01:12', '2026-03-04 07:01:12'),
(29, 'Machinery', NULL, 1, '2026-03-04 07:01:12', '2026-03-04 07:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_categories`
--

CREATE TABLE `laboratory_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laboratory_categories`
--

INSERT INTO `laboratory_categories` (`id`, `name`, `type`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Chemical testing ', 'Testing and Calibration', NULL, 1, '2026-03-04 06:26:12', '2026-03-04 06:26:12'),
(2, 'Biological testing', 'Testing and Calibration', NULL, 1, '2026-03-04 06:27:38', '2026-03-04 06:27:38'),
(3, 'Physical & mechanical testing', 'Testing and Calibration', NULL, 1, '2026-03-04 06:29:41', '2026-03-04 06:29:41'),
(4, 'Calibration services', 'Testing and Calibration', NULL, 1, '2026-03-04 06:31:54', '2026-03-04 06:31:54'),
(5, 'Biochemistry', 'Medical and Clinical', NULL, 1, '2026-03-04 06:32:15', '2026-03-04 06:32:15'),
(6, 'Chemical Pathology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:32:32', '2026-03-04 06:32:32'),
(7, 'Clinical Pathology ', 'Medical and Clinical', NULL, 1, '2026-03-04 06:32:53', '2026-03-04 06:32:53'),
(8, 'Hematology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:33:13', '2026-03-04 06:33:13'),
(9, 'Immuno hematology ', 'Medical and Clinical', NULL, 1, '2026-03-04 06:33:40', '2026-03-04 06:33:40'),
(10, 'Microbiology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:34:58', '2026-03-04 06:34:58'),
(11, 'Serology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:35:23', '2026-03-04 06:35:23'),
(12, 'Histopathology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:36:20', '2026-03-04 06:36:20'),
(13, 'Cytopathology ', 'Medical and Clinical', NULL, 1, '2026-03-04 06:36:49', '2026-03-04 06:36:49'),
(14, 'Immunology\r\n', 'Medical and Clinical', NULL, 1, '2026-03-04 06:37:11', '2026-03-04 06:37:11'),
(15, 'Molecular Biology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:50:42', '2026-03-04 06:50:42'),
(16, 'Pharmacology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:51:04', '2026-03-04 06:51:04'),
(17, 'Andrology Clinical ', 'Medical and Clinical', NULL, 1, '2026-03-04 06:51:37', '2026-03-04 06:51:37'),
(18, 'Nuclear Medicine', 'Medical and Clinical', NULL, 1, '2026-03-04 06:51:53', '2026-03-04 06:51:53'),
(19, 'Embryology', 'Medical and Clinical', NULL, 1, '2026-03-04 06:52:16', '2026-03-04 06:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `new_instruments`
--

CREATE TABLE `new_instruments` (
  `new_instrument_id` int(11) NOT NULL,
  `instrument_name` varchar(255) NOT NULL,
  `instrument_category` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(150) DEFAULT NULL,
  `model_number` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_instruments`
--

INSERT INTO `new_instruments` (`new_instrument_id`, `instrument_name`, `instrument_category`, `manufacturer`, `model_number`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Microscope', NULL, NULL, NULL, NULL, 1, '2026-03-16 04:43:56', '2026-03-16 04:43:56'),
(2, 'Centrifuge Model 12', NULL, NULL, NULL, NULL, 1, '2026-04-10 06:14:28', '2026-04-10 06:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `physical_address` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `institute_name` varchar(150) NOT NULL,
  `institute_address` varchar(255) NOT NULL,
  `instrument_name` varchar(150) NOT NULL,
  `instrument_brand` varchar(100) NOT NULL,
  `instrument_model` varchar(100) NOT NULL,
  `instrument_manufacturer` varchar(150) NOT NULL,
  `manufactured_year` year(4) NOT NULL,
  `product_testing_type` varchar(150) NOT NULL,
  `testing_parameter` varchar(150) NOT NULL,
  `consumption_period` varchar(100) NOT NULL,
  `issue_description` text NOT NULL,
  `status` enum('Pending','In Progress','Completed','Rejected') DEFAULT 'Pending',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `review` text DEFAULT NULL,
  `rate` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `technician_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `full_name`, `email`, `physical_address`, `contact_number`, `institute_name`, `institute_address`, `instrument_name`, `instrument_brand`, `instrument_model`, `instrument_manufacturer`, `manufactured_year`, `product_testing_type`, `testing_parameter`, `consumption_period`, `issue_description`, `status`, `start_date`, `end_date`, `review`, `rate`, `created_at`, `updated_at`, `technician_id`, `user_id`, `is_deleted`) VALUES
(8, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '0725815118', 'thasneem', 'jspshehan@gmail.com', 'Microscope', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Need to calibrate updated', '', NULL, NULL, NULL, NULL, '2025-09-10 05:54:27', '2026-04-07 08:46:06', 3, 45, 1),
(18, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '0725815118', 'University of sri Jayawardhanapure', 'Gangodavila , Nugegoda', 'Avishka Shehan', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Need to calibrate', 'Completed', NULL, NULL, NULL, NULL, '2025-09-11 08:01:17', '2025-12-17 06:56:47', 2, 45, 0),
(19, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '0725815118', 'University of sri Jayawardhanapure', 'Gangodavila , Nugegoda', 'Avishka Shehan', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Need to calibrate (Different account)', 'In Progress', NULL, NULL, NULL, NULL, '2025-09-11 08:10:26', '2025-09-16 08:08:52', 3, 48, 0),
(20, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '0725815118', 'Avishka Shehan', 'jspshehan@gmail.com', 'Avishka Shehan', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Need to calibrate (Deployed Server request)', 'In Progress', NULL, NULL, NULL, NULL, '2025-09-11 09:11:27', '2025-09-16 08:12:36', 3, 45, 0),
(43, 'Nisansala Hansamali', 'nisansala@gmail.com', 'Main road, Galgamuwa, kurunegala.', '+94 725815118', 'National Science Foundation', '46/b de mel road, Colombo 07', 'iphone 13 pro max', 'Apple', '13 pro max', 'apple', '2021', 'Chemical', 'ph', '3 years', 'Need hard reset', 'Pending', NULL, NULL, NULL, NULL, '2025-10-23 09:17:36', '2025-11-12 04:16:51', 1, 45, 0),
(44, 'Nimal Jayasiri', 'Nimal@gmail.com', 'Lokahetigama Road, Pothanegama, Phala Giribawa', '0784123951', 'University of sri Jayawardhanapure', 'Gangodavila, Nugegoda', 'Microscope', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Clean the Lens and Calibrate.', 'In Progress', NULL, NULL, NULL, NULL, '2025-11-06 05:38:41', '2025-12-11 05:24:05', 1, 45, 0),
(45, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '+94725815118', 'USJP', 'Pitipana,Homagama', 'Microscope', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'need to calibrate', 'Pending', NULL, NULL, NULL, NULL, '2025-12-03 04:52:57', '2025-12-03 04:52:57', 1, 45, 0),
(46, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '+94725815118', 'USJP', 'Pitipana,Homagama', 'Microscope', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Need to clean Test II', 'Pending', NULL, NULL, NULL, NULL, '2025-12-03 04:54:10', '2025-12-03 04:54:10', 1, 45, 0),
(47, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '+94725815118', 'USJP', 'Pitipana,Homagama', 'Microscope', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'Clean Lens', 'In Progress', NULL, NULL, NULL, NULL, '2025-12-05 08:44:47', '2025-12-05 08:46:31', 1, 45, 0),
(48, 'Avishka Shehan', 'jspshehan@gmail.com', 'Pitipana,Homagama', '+94725815118', 'USJP', 'Pitipana,Homagama', 'Microscope', 'Dahua', 'mmert-8652', 'Dahua', '2021', 'Chemical', 'Ph', '3 years', 'clean', 'Pending', NULL, NULL, NULL, NULL, '2025-12-11 03:52:19', '2025-12-11 03:52:19', 1, 45, 0),
(50, 'Sajeeah Rasmi', 'rasmisara064@gmail.com', 'Mosque Road, Kalutara', '+94 772979428', 'NSF', 'Maitland Place, Colombo', 'Microscope', 'test', 'test', 'test', '2008', 'test', 'test', '2', 'test', 'Completed', '2026-03-27 11:01:09', '2026-03-27 11:14:32', 'Good Work, went well everything working well everything', 4, '2026-01-19 05:37:19', '2026-04-02 06:15:29', 17, 69, 0),
(51, 'Sara Rasmi', 'rasmisara064@gmail.com', 'Mosque Road, Kalutara', '+91775425635', 'University of Colombo', 'Reid Avenue, Colombo 05', 'AC Milli Ammeters', 'Test-1', 'Model 02', 'Test-1', '2022', 'Testing pH, water acidity', 'Test-2', '3', 'Test-1', 'Pending', NULL, NULL, NULL, 0, '2026-03-27 05:48:30', '2026-05-22 06:42:28', 17, 69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `technician_details`
--

CREATE TABLE `technician_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name_with_initials` varchar(100) DEFAULT NULL,
  `district` enum('Ampara','Anuradhapura','Badulla','Batticaloa','Colombo','Galle','Gampaha','Hambantota','Jaffna','Kalutara','Kandy','Kegalle','Kilinochchi','Kurunegala','Mannar','Matale','Matara','Monaragala','Mullaitivu','Nuwara Eliya','Polonnaruwa','Puttalam','Ratnapura','Trincomalee','Vavuniya') DEFAULT NULL,
  `nic` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL,
  `supervisor_designation` varchar(255) DEFAULT NULL,
  `supervisor_email` varchar(255) DEFAULT NULL,
  `supervisor_contact_no` varchar(50) DEFAULT NULL,
  `additional_comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Pending','Submitted','Approved','Declined') NOT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_details`
--

INSERT INTO `technician_details` (`id`, `user_id`, `name_with_initials`, `district`, `nic`, `bio`, `supervisor_name`, `supervisor_designation`, `supervisor_email`, `supervisor_contact_no`, `additional_comment`, `created_at`, `updated_at`, `status`, `proof`, `isDelete`) VALUES
(1, 44, NULL, 'Kalutara', '200118303468', 'Software Engineer passionate about building efficient and scalable solutions.', 'Thasneem', 'Senior Information Officer', 'jspshehan@gmail.com', '0725252458', '-', '2025-08-28 08:42:34', '2026-04-09 07:13:30', 'Approved', NULL, 0),
(2, 45, NULL, 'Kandy', '200118303468', 'Software Engineer passionate about building efficient and scalable solutions.', NULL, NULL, NULL, NULL, NULL, '2025-08-28 10:16:32', '2026-04-09 08:31:23', 'Declined', NULL, 0),
(3, 46, NULL, 'Matara', '200118303468', 'Software Engineer passionate about building efficient and scalable solutions.', NULL, NULL, NULL, NULL, NULL, '2025-09-08 05:25:43', '2026-04-09 08:31:55', 'Submitted', NULL, 0),
(15, 59, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-26 05:49:56', '2026-03-30 06:44:41', 'Pending', NULL, 0),
(17, 68, 'Sajeea MRF', 'Kalutara', '200235756525', NULL, 'Mrs. Amali Perera', 'Senior Information Officer', 'super@gmail.com', '0745562314', NULL, '2026-01-19 04:49:37', '2026-04-09 08:10:46', 'Approved', 'uploads/documents/doc_17_1774853521.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `technician_instruments`
--

CREATE TABLE `technician_instruments` (
  `id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `instrument_id` int(11) DEFAULT NULL,
  `custom_category` varchar(100) DEFAULT NULL,
  `new_instrument_id` int(11) DEFAULT NULL,
  `skill_level` varchar(20) DEFAULT NULL,
  `last_trained_on` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_instruments`
--

INSERT INTO `technician_instruments` (`id`, `technician_id`, `instrument_id`, `custom_category`, `new_instrument_id`, `skill_level`, `last_trained_on`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 8, NULL, NULL, NULL, NULL, 1, '2026-03-04 07:19:12', '2026-03-04 07:19:12'),
(2, 1, 1, NULL, NULL, NULL, NULL, 1, '2026-03-04 07:19:12', '2026-03-04 07:19:12'),
(3, 17, 25, NULL, NULL, NULL, NULL, 1, '2026-03-11 03:55:41', '2026-03-11 03:55:41'),
(4, 17, NULL, NULL, 1, NULL, NULL, 1, '2026-03-16 04:43:56', '2026-03-16 04:43:56'),
(5, 17, NULL, NULL, 2, NULL, NULL, 1, '2026-04-10 06:14:28', '2026-04-10 06:14:28'),
(6, 17, NULL, 'a', NULL, NULL, NULL, 1, '2026-09-12 21:09:26', '2026-09-12 21:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `technician_instrument_categories`
--

CREATE TABLE `technician_instrument_categories` (
  `id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `instrument_category_id` int(11) DEFAULT NULL,
  `custom_category` varchar(100) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `skill_level` varchar(20) DEFAULT NULL,
  `certified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_instrument_categories`
--

INSERT INTO `technician_instrument_categories` (`id`, `technician_id`, `instrument_category_id`, `custom_category`, `experience_years`, `skill_level`, `certified`, `created_at`) VALUES
(1, 1, 15, NULL, NULL, NULL, 0, '2026-03-04 07:16:53'),
(2, 1, 18, NULL, NULL, NULL, 0, '2026-03-04 07:16:53'),
(3, 17, 21, NULL, NULL, NULL, 0, '2026-03-11 03:55:41'),
(4, 17, 3, NULL, NULL, NULL, 0, '2026-09-12 20:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `technician_laboratory_categories`
--

CREATE TABLE `technician_laboratory_categories` (
  `id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `laboratory_category_id` int(11) DEFAULT NULL,
  `custom_category` varchar(100) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `certified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_laboratory_categories`
--

INSERT INTO `technician_laboratory_categories` (`id`, `technician_id`, `laboratory_category_id`, `custom_category`, `experience_years`, `certified`, `created_at`) VALUES
(1, 1, 5, NULL, NULL, 0, '2026-03-04 07:17:58'),
(2, 1, 6, NULL, NULL, 0, '2026-03-04 07:17:58'),
(3, 1, 7, NULL, NULL, 0, '2026-03-04 07:18:08'),
(4, 17, 10, NULL, NULL, 0, '2026-03-10 04:27:33'),
(5, 17, 5, NULL, NULL, 0, '2026-03-11 03:55:41'),
(6, 17, NULL, 'Test', NULL, 0, '2026-09-12 20:43:31'),
(7, 17, 2, NULL, NULL, 0, '2026-09-12 21:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `technician_oem_certificates`
--

CREATE TABLE `technician_oem_certificates` (
  `id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `oem_company_name` varchar(255) NOT NULL,
  `instrument_name` varchar(255) DEFAULT NULL,
  `certificate_name` varchar(255) DEFAULT NULL,
  `certificate_number` varchar(150) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `certificate_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_oem_certificates`
--

INSERT INTO `technician_oem_certificates` (`id`, `technician_id`, `oem_company_name`, `instrument_name`, `certificate_name`, `certificate_number`, `issue_date`, `expiry_date`, `certificate_file`, `created_at`, `updated_at`) VALUES
(1, 17, 'NSF', 'Microscope', 'Test', 'Test', NULL, NULL, NULL, '2026-03-11 08:38:29', '2026-03-11 08:38:29'),
(2, 17, 'test', 'test', 'test', 'test', '2026-03-12', '2026-03-13', 'uploads/certificates/cert_17_0_1773221641.pdf', '2026-03-11 09:34:01', '2026-03-11 09:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `technician_search_logs`
--

CREATE TABLE `technician_search_logs` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `technician_id` int(11) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `searched_at` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_search_logs`
--

INSERT INTO `technician_search_logs` (`id`, `client_id`, `technician_id`, `search_term`, `searched_at`, `ip_address`, `user_agent`) VALUES
(8, 69, 68, 'Electron', '2026-04-22 09:47:06', NULL, NULL),
(9, 69, 68, 'sara', '2026-04-22 09:48:51', NULL, NULL),
(10, 69, 44, NULL, '2026-04-22 09:58:01', NULL, NULL),
(11, 69, 44, NULL, '2026-04-22 09:58:44', NULL, NULL),
(14, 69, 68, 'electron', '2026-04-22 10:06:16', NULL, NULL),
(17, 69, 68, NULL, '2026-04-22 11:02:16', NULL, NULL),
(19, 69, 68, NULL, '2026-04-22 15:23:13', NULL, NULL),
(20, 69, 44, 'Microscope', '2026-04-22 15:25:05', NULL, NULL),
(21, 69, 44, 'muffle', '2026-04-23 09:09:31', NULL, NULL),
(22, 69, 68, NULL, '2026-04-23 10:12:56', NULL, NULL),
(23, 69, 44, NULL, '2026-05-21 10:22:49', NULL, NULL),
(24, 69, 44, NULL, '2026-05-21 10:23:01', NULL, NULL),
(25, 69, 68, NULL, '2026-05-21 10:36:32', NULL, NULL),
(26, 69, 68, NULL, '2026-05-21 12:06:02', NULL, NULL),
(27, 69, 68, NULL, '2026-05-21 12:24:57', NULL, NULL),
(28, 69, 68, NULL, '2026-05-21 13:00:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technician_work_experiences`
--

CREATE TABLE `technician_work_experiences` (
  `id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `position_title` varchar(150) DEFAULT NULL,
  `years_of_experience` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technician_work_experiences`
--

INSERT INTO `technician_work_experiences` (`id`, `technician_id`, `organization_name`, `position_title`, `years_of_experience`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 17, 'National Science Foundation', 'Software Engineer Intern', 1, '2022-03-08', '2026-03-01', '2026-03-11 04:58:05', '2026-03-11 04:58:05'),
(4, 17, 'UCSC', 'Student', 0, '2026-03-15', '2026-03-18', '2026-03-12 09:22:23', '2026-03-12 09:22:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`) VALUES
(1, 'Super_Admin', NULL, NULL, NULL, NULL),
(2, 'Admin', NULL, NULL, NULL, NULL),
(3, 'Institute_Manager', NULL, NULL, NULL, NULL),
(4, 'Faculty_Manager', NULL, NULL, NULL, NULL),
(5, 'Division_Manager', NULL, NULL, NULL, NULL),
(6, 'Administrative_Incharge', NULL, NULL, NULL, NULL),
(7, 'Technical_Incharge', NULL, NULL, NULL, NULL),
(8, 'Equipment_User', NULL, NULL, NULL, NULL),
(9, 'NSF_Audit', NULL, NULL, NULL, NULL),
(10, 'Technician', NULL, NULL, NULL, NULL);

--

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instrument_categories`
--
ALTER TABLE `instrument_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_instrument_category_name` (`name`);

--

--
-- Indexes for table `laboratory_categories`
--
ALTER TABLE `laboratory_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_lab_category_name` (`name`);

--

--
-- Indexes for table `new_instruments`
--
ALTER TABLE `new_instruments`
  ADD PRIMARY KEY (`new_instrument_id`);

--

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_technician_id` (`technician_id`),
  ADD KEY `fk_service_requests_user` (`user_id`);

--

--
-- Indexes for table `technician_details`
--
ALTER TABLE `technician_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--

--
-- Indexes for table `technician_instruments`
--
ALTER TABLE `technician_instruments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_technician` (`technician_id`),
  ADD KEY `fk_instrument` (`instrument_id`),
  ADD KEY `fk_new_instrument` (`new_instrument_id`);

--

--
-- Indexes for table `technician_instrument_categories`
--
ALTER TABLE `technician_instrument_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_tic` (`technician_id`,`instrument_category_id`),
  ADD KEY `fk_tic_instrument_category` (`instrument_category_id`);

--

--
-- Indexes for table `technician_laboratory_categories`
--
ALTER TABLE `technician_laboratory_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_tlc` (`technician_id`,`laboratory_category_id`),
  ADD KEY `fk_tlc_lab_category` (`laboratory_category_id`);

--

--
-- Indexes for table `technician_oem_certificates`
--
ALTER TABLE `technician_oem_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oemcert_technician` (`technician_id`);

--

--
-- Indexes for table `technician_search_logs`
--
ALTER TABLE `technician_search_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `technician_id` (`technician_id`);

--

--
-- Indexes for table `technician_work_experiences`
--
ALTER TABLE `technician_work_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_workexp_technician` (`technician_id`);

--

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--


-- --------------------------------------------------------

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instrument_categories`
--
ALTER TABLE `instrument_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--

--
-- AUTO_INCREMENT for table `laboratory_categories`
--
ALTER TABLE `laboratory_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--

--
-- AUTO_INCREMENT for table `new_instruments`
--
ALTER TABLE `new_instruments`
  MODIFY `new_instrument_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--

--
-- AUTO_INCREMENT for table `technician_details`
--
ALTER TABLE `technician_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--

--
-- AUTO_INCREMENT for table `technician_instruments`
--
ALTER TABLE `technician_instruments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--

--
-- AUTO_INCREMENT for table `technician_instrument_categories`
--
ALTER TABLE `technician_instrument_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--

--
-- AUTO_INCREMENT for table `technician_laboratory_categories`
--
ALTER TABLE `technician_laboratory_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--

--
-- AUTO_INCREMENT for table `technician_oem_certificates`
--
ALTER TABLE `technician_oem_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--

--
-- AUTO_INCREMENT for table `technician_search_logs`
--
ALTER TABLE `technician_search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--

--
-- AUTO_INCREMENT for table `technician_work_experiences`
--
ALTER TABLE `technician_work_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--


-- --------------------------------------------------------

--
-- Constraints for dumped tables
--

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
    ADD CONSTRAINT `fk_technician_id` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technician_instruments`
--
ALTER TABLE `technician_instruments`
    ADD CONSTRAINT `fk_new_instrument` FOREIGN KEY (`new_instrument_id`) REFERENCES `new_instruments` (`new_instrument_id`),
    ADD CONSTRAINT `fk_technician` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`);

--
-- Constraints for table `technician_instrument_categories`
--
ALTER TABLE `technician_instrument_categories`
    ADD CONSTRAINT `fk_tic_instrument_category` FOREIGN KEY (`instrument_category_id`) REFERENCES `instrument_categories` (`id`),
    ADD CONSTRAINT `fk_tic_technician` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`);

--
-- Constraints for table `technician_laboratory_categories`
--
ALTER TABLE `technician_laboratory_categories`
    ADD CONSTRAINT `fk_tlc_lab_category` FOREIGN KEY (`laboratory_category_id`) REFERENCES `laboratory_categories` (`id`),
    ADD CONSTRAINT `fk_tlc_technician` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`);

--
-- Constraints for table `technician_oem_certificates`
--
ALTER TABLE `technician_oem_certificates`
    ADD CONSTRAINT `fk_oemcert_technician` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `technician_work_experiences`
--
ALTER TABLE `technician_work_experiences`
    ADD CONSTRAINT `fk_workexp_technician` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`) ON DELETE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
