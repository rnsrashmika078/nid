-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 08:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `instrument_id` int(10) NOT NULL,
  `instrument_name` varchar(200) DEFAULT NULL,
  `institute_id` int(10) DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `laboratory_id` int(10) UNSIGNED DEFAULT NULL,
  `instrument_type_id` int(10) UNSIGNED DEFAULT 0,
  `condition_id` int(10) DEFAULT NULL,
  `manufacturer` varchar(500) DEFAULT NULL,
  `model` varchar(500) DEFAULT NULL,
  `year_of_manufacture` year(4) DEFAULT NULL,
  `accessories` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `catalog_link` varchar(400) DEFAULT NULL,
  `catalog_upload` varchar(200) DEFAULT NULL,
  `catalog_access` varchar(400) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `vendor_name` varchar(200) DEFAULT NULL,
  `vendor_contact` varchar(200) DEFAULT NULL,
  `vendor_url` varchar(200) DEFAULT NULL,
  `no_of_samples_per_cycle` int(10) DEFAULT NULL,
  `no_of_samples_per_day` int(10) DEFAULT NULL,
  `total_usage_hour_per_day` int(10) DEFAULT NULL,
  `availabiltiy_of_staff` varchar(250) DEFAULT NULL,
  `external_researchers` tinyint(1) DEFAULT 0,
  `funding_source` varchar(200) DEFAULT NULL,
  `date_commencement_operation` date DEFAULT NULL,
  `record_status` tinyint(1) DEFAULT 0,
  `contact_person_name` varchar(200) DEFAULT NULL,
  `contact_person_email` varchar(100) DEFAULT NULL,
  `contact_person_phone_number` varchar(10) DEFAULT NULL,
  `contact_person_mobile_number` varchar(10) DEFAULT NULL,
  `keyword1` varchar(500) DEFAULT NULL,
  `keyword2` varchar(500) DEFAULT NULL,
  `keyword3` varchar(500) DEFAULT NULL,
  `keyword4` varchar(500) DEFAULT NULL,
  `keyword5` varchar(500) DEFAULT NULL,
  `keyword6` varchar(500) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL,
  `record_endDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`instrument_id`, `instrument_name`, `institute_id`, `faculty_id`, `department_id`, `laboratory_id`, `instrument_type_id`, `condition_id`, `manufacturer`, `model`, `year_of_manufacture`, `accessories`, `description`, `catalog_link`, `catalog_upload`, `catalog_access`, `price`, `vendor_name`, `vendor_contact`, `vendor_url`, `no_of_samples_per_cycle`, `no_of_samples_per_day`, `total_usage_hour_per_day`, `availabiltiy_of_staff`, `external_researchers`, `funding_source`, `date_commencement_operation`, `record_status`, `contact_person_name`, `contact_person_email`, `contact_person_phone_number`, `contact_person_mobile_number`, `keyword1`, `keyword2`, `keyword3`, `keyword4`, `keyword5`, `keyword6`, `isDeleted`, `created_user_id`, `created_date_time`, `updated_user_id`, `updated_date_time`, `deletedBy`, `deleted_date_time`, `record_endDtm`) VALUES
(1, 'Qualitative PCR machine', 1, 1, 1, 1, 15, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                                                                                                                ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '2021-01-01', 0, 'Prof. Menaka Hapugoda', 'menakaha@yahoo.com', '0112960483', '0714458606', 'Biosignal extraction systems', '', '', '', '', '', 0, 1, '2022-03-13 23:18:08', 1, '2022-03-27 11:26:42', NULL, NULL, NULL),
(2, 'Carbon dioxide Incubator', 2, 0, 2, 2, 8, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '2021-01-01', 0, 'Dr. P Ranasinghe', 'sdd_hts@iti.lk', '0112797322', '0714458606', 'Spyro analyzers', 'Sensitometer', 'Semi-conductor parameter analyzer', 'Reverse Osmosis unit', 'Flow injection analyzer', 'Scanning calorimeter', 0, 1, '2022-03-13 23:33:58', 1, '2022-03-27 11:27:32', NULL, NULL, NULL),
(3, 'test', 2, 0, 2, 2, 0, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                            ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '0000-00-00', 0, '', '', '', '', 'test1', NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-03-25 23:40:15', 1, '2022-03-27 10:40:12', NULL, NULL, NULL),
(4, 'test2', 2, 0, 2, 2, 0, 1, '', '', 0000, '', '                                                                                                                                                                        ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '0000-00-00', 0, '', '', '', '', 'test1', NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-03-25 23:55:59', 1, '2022-03-27 10:40:24', NULL, NULL, NULL),
(5, 'test3', 2, 0, 2, 2, 0, 1, '', '', 0000, '', '                                                                                                                                                                        ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '0000-00-00', 0, '', '', '', '', 'a1', NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-03-26 00:22:56', 1, '2022-03-27 10:40:34', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`instrument_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instrument_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
