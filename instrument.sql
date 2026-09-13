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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `abbreviation` varchar(200) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` varchar(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `institute_id`, `faculty_id`, `department_name`, `address`, `phone_number`, `email`, `abbreviation`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 1, 'Molecular Medicine', 'Kelaniya', '0156454765', 'chm@kln.ac.lk', 'CHM', 1, NULL, '2022-03-13 23:15:09', NULL, 0, NULL, NULL),
(2, 2, 0, 'Technical Services', '120/4A , Vidya Mawatha, Colombo 07', '0112379800', 'info@iti.lk', 'TSD', 1, NULL, '2022-07-11 12:54:05', NULL, 0, NULL, NULL),
(3, 1, 3, 'AI', 'Colombo', '0332222748', 'hh@gmail.com', 'gfgf', 1, NULL, '2022-08-20 10:52:15', NULL, 0, NULL, NULL),
(4, 9, 4, 'Engineering1', 'Colombo', '0412222681', 'tt@gmail.com', '', 1, NULL, '2022-08-21 14:51:12', NULL, 0, NULL, NULL),
(5, 1, 5, 'Civil', '', '0332222748', 'thasneem@gmail.com', '', 1, NULL, '2022-08-25 09:26:15', NULL, 0, NULL, NULL),
(6, 4, 2, 'Allied', '', '0112758000', 'tt@gmail.com', '', 1, NULL, '2022-08-25 09:42:10', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(27, ' Marketing Professional'),
(28, 'Technical Assistant'),
(29, 'Technical Officer'),
(30, 'Technical Incharge'),
(31, 'Trainee Technical Officer'),
(32, 'Undergraduate Student'),
(33, 'Environmental Officer'),
(34, 'Vice Chancellor'),
(35, 'Dean'),
(36, 'Education Assistant'),
(37, 'Probationary Lecturer'),
(38, 'Senior Technical Officer'),
(39, 'Teacher'),
(40, 'Teaching Assistant/Instructor'),
(41, 'Postdoctoral Researcher'),
(42, 'Librarian'),
(43, 'School Principal'),
(44, 'Chairman'),
(45, 'Vice/Deputy Chaiman'),
(46, 'General Manager'),
(47, 'Deputy General Manager'),
(48, 'Managing Director'),
(49, 'Director General\r\n'),
(50, 'Deputy Director General'),
(51, 'Additional Director\r\n'),
(52, 'Doctor'),
(53, 'Laboratory Manager'),
(54, 'Senior Chemist'),
(55, 'Chemist'),
(56, 'Senior Analyst'),
(57, 'Analyst'),
(58, 'Assistant Lecturer'),
(59, 'Principal Research Scientist'),
(60, 'Healthcare Professional'),
(61, 'Principal Research Engineer'),
(62, 'Senior Research Engineer'),
(63, 'Research Engineer'),
(64, 'Engineer'),
(65, 'Scientist'),
(66, 'Library Assistant'),
(67, 'Scientific Officer'),
(68, 'Senior Scientific Officer'),
(69, 'Principal Scientific Officer'),
(70, 'Project Manager'),
(71, 'Deputy Manager'),
(72, 'Research Officer'),
(73, ' IT Professional'),
(74, 'Assistant Librarian'),
(75, 'Experimental Officer'),
(76, 'Principal Experimental Officer'),
(77, 'Senior Experimental Officer'),
(78, 'Principal Information Officer'),
(79, 'Senior Information Officer'),
(80, 'Information Officer'),
(81, 'Minister'),
(82, 'Deputy Minister'),
(83, 'Secretary'),
(84, 'Additional Secretary'),
(85, 'Research Fellow'),
(86, 'Research Assistant'),
(87, 'Pharmaceutical Professional'),
(88, 'Project Management Professional'),
(89, 'Sales Professional Designations'),
(90, 'Accounting Professional'),
(91, 'Administrative Professional '),
(92, ' Business Intelligence Professional '),
(93, 'Counselling Professional'),
(94, 'Dental');

-- --------------------------------------------------------

--
-- Table structure for table `email_verification`
--

CREATE TABLE `email_verification` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_verification`
--

INSERT INTO `email_verification` (`id`, `user_id`, `code`, `expires_at`, `created_at`) VALUES
(6, 56, '123629', '2025-10-16 12:49:38', '2025-10-16 12:39:38'),
(9, 59, '437599', '2025-11-26 11:29:56', '2025-11-26 11:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` int(10) NOT NULL,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `faculty_name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `ministry` varchar(200) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` varchar(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `institute_id`, `faculty_name`, `address`, `phone_number`, `email`, `description`, `ministry`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 'Medicine', 'Kelaniya', '0112961000', 'info.med@kln.ac.lk', ' The Faculty of Medicine, University of Kelaniya is one of ten state medical schools in Sri Lanka. It commenced classes with the admission of 120 medical students in September 1991 and has now graduated more than 20 batches of medical students.\r\n                                                                                  ', 'Ministry of Higher Education', 1, NULL, '2022-03-13 23:12:28', NULL, 0, NULL, NULL),
(2, 4, 'Medicine and Allied Sciences', 'Saliyapura, AD 50008 Sri Lanka', '0252234462', 'deanoffice@med.rjt.ac.lk', 'The Faculty of Medicine and Allied Sciences was established in July 2006.  Faculty expect students to have a rewarding educational experience  as they prepare for careers as clinicians, teachers and scientists.                                                                                                                                                                        ', 'Higher Education', 1, NULL, '2022-07-13 09:40:44', NULL, 0, NULL, NULL),
(3, 1, 'Computer', '', '0412222681', 'cm@kln.ac.lk', '                                                                                    ', '', 1, NULL, '2022-08-19 18:01:27', NULL, 0, NULL, NULL),
(4, 9, 'Engineering', '', '0412222681', 'thasneem@gmail.com', '                                                                                    ', '', 1, NULL, '2022-08-21 14:50:49', NULL, 0, NULL, NULL),
(5, 1, 'Engineering', '', '0522258201', 'tt@gmail.com', '    It is widely accepted that technology is the key driver of economic growth of countries as it transforms economies into large-scale industrialized, capital-intensive production systems which are competitive due to hi                                                                                ', NULL, 1, NULL, '2022-09-13 22:37:35', NULL, 0, NULL, NULL),
(6, 2, 'test text', 'peradeniya', '0522258201', 'hhtest@gmail.com', '<p>It is widely accepted that technology is the key driver of economic growth of countries as it transforms economies into large-scale industrialized, capital-intensive production systems which are competitive due to higher economies of scale. In facilitating economic development, the National Science Foundation, being one of the leading R&amp;D organizations in the country, has identified the need of a platform in creating opportunities for cross-industry partnerships in their efforts: To strengthen the manufacturing community To support new partnerships and to help manufacturers with emerging technology, To adopt sustainable solutions and transform their interventions allowing production industry in Sri Lanka, which has been lagging behind over the past years we NSF, expect that our initiative will augment the culture of entrepreneurship in our country. It can also provide solutions and learning opportunities to inspire the entrepreneurial minds in our country to build more businesses creating better opportunities.</p>\r\n\r\n<p>This in return will stimulate more efficient production of higher quality goods and services, on which our nation&rsquo;s prosperity depends. Finally, we strongly believe that this initiative will facilitate National Economic Policy of the government in addressing macro-economic issues, because the availability of the advanced technology will pave the way for fast and sustainable growth in our economy. Our mission is to make that happen and we do hope that this initiative too will immensely contribute to that.</p>\r\n', NULL, 1, NULL, '2023-06-15 15:33:50', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_news`
--

CREATE TABLE `home_news` (
  `home_news_id` int(10) NOT NULL,
  `home_news_title` varchar(600) DEFAULT NULL,
  `home_sub_title` varchar(600) DEFAULT NULL,
  `home_news_subject` longtext DEFAULT NULL,
  `home_image` varchar(600) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_news`
--

INSERT INTO `home_news` (`home_news_id`, `home_news_title`, `home_sub_title`, `home_news_subject`, `home_image`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 'test1', 'test2', '<p>cp /home/thasneem/google.php &nbsp;/var/www/html/application/views<br />\r\ncp /home/thasneem/login.php &nbsp;/var/www/html/application/views<br />\r\ncp /home/thasneem/register.php &nbsp;/var/www/html/application/views<br />\r\ncp /home/thasneem/homedashboard.php &nbsp;/var/www/html/application/views</p>\r\n', 'login.png', 1, NULL, '2023-06-19 11:05:14', NULL, 1, 1, '2023-06-19 11:50:48'),
(2, 'rr', 'rr', '<p>rr</p>\r\n', 'log.jpg', 1, NULL, '2023-03-31 23:17:28', NULL, 1, 1, '2023-06-19 11:50:45'),
(3, 'HeavyTable is a JavaScript library. For those who do not', 'HeavyTable is a JavaScript library. For those who do not', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'index11.jpg', 1, NULL, '2023-03-31 22:45:41', NULL, 1, 1, '2023-06-19 11:50:42'),
(4, 'hghg', 'hghgh', '<p>hghgh</p>\r\n', 'sim2.jpg', 1, NULL, '2023-03-31 23:58:24', NULL, 1, 1, '2023-06-19 11:50:38'),
(5, 'inst test1', 'inst test 2', '<p>fdfdf</p>\r\n', 'am1.png', 1, NULL, '2023-05-25 13:16:54', NULL, 1, 1, '2023-06-19 11:46:30'),
(6, 'test', 'test', '<p>cp /home/thasneem/google.php &nbsp;/var/www/html/application/views<br />\r\ncp /home/thasneem/login.php &nbsp;/var/www/html/application/views<br />\r\ncp /home/thasneem/register.php &nbsp;/var/www/html/application/views<br />\r\ncp /home/thasneem/homedashboard.php &nbsp;/var/www/html/application/views</p>\r\n', '', 1, NULL, '2023-06-19 12:47:54', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `institute_id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `inst_coordinator` varchar(250) DEFAULT NULL,
  `latitude` varchar(100) NOT NULL DEFAULT '6.975669430511738',
  `longitude` varchar(100) NOT NULL DEFAULT '79.91556412524763',
  `address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `ministry` varchar(200) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`institute_id`, `name`, `inst_coordinator`, `latitude`, `longitude`, `address`, `phone_number`, `email`, `description`, `ministry`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 'University of Kelaniya', NULL, '6.975669430519549', '79.91558558318718', 'Kelaniya', '0112903903', 'info@kln.ac.lk', ' The University of Kelaniya has its origin in the historic Vidyalankara Pirivena, founded in 1875 as a centre of learning for Buddhist monks. It was one of the two great national centres of traditional higher learning, heralding the first phase of the national movement and national resurgence.                                                                                   ', 'Ministry of Education', 1, NULL, '2022-08-24 20:40:46', NULL, 0, NULL, NULL),
(2, 'Industrial Technology Institute (ITI)', '', '6.975669430511738', '79.91556412524763', '363 Bauddhaloka Mawatha, Colombo 07', '0112379801', 'info@iti.lk', '<p>The Industrial Technology Institute is a wholly owned institute of the Government of Sri Lanka and functions under the jurisdiction of the State Ministry of Digital Technology and Enterprise Development. A statutory board incorporated on the 1st April 1998, under the Science and Technology Dev</p>\r\n', 'State Ministry of Digital Technology & Enterprise Development, Sri Lanka', 23, NULL, '2025-02-13 16:06:30', NULL, 0, NULL, NULL),
(3, 'South Eastern University of Sri Lanka', NULL, '6.975669430511738', '79.91556412524763', 'Colombo', '0111111111', 'thasneemmys@gmail.com', '                        test                                                            ', 'test', 1, NULL, '2022-05-14 22:22:52', NULL, 1, 1, '2022-05-14 22:22:56'),
(4, 'Rajarata University of Sri Lanka', NULL, '6.975669430511738', '79.91556412524763', 'Mihintale -50300, Sri Lanka', '0252266643', 'info@rjt.ac.lk', '     Rajarata University of Sri Lanka (RUSL) was established as the eleventh National University in Sri Lanka and was inaugurally opened on the 31st January 1996 as per the Gazette Notification 896/2 and the University act 16 of 1978. At its inception, four faculties, namely the Faculty of Social Sciences and Humanities, Faculty of Management Studies, Faculty of Agriculture and Faculty of Applied Sciences were established and in the year 2006, the Faculty of Medicine and Allied Sciences was established as the fifth faculty of RUSL. Vision of RUSL is to be a centre of excellence in higher education and research. The mission of RUSL is to produce innovative intellectuals capable of taking challenges in the context of global development through the competencies developed from the academic programs, research and training of wide nature.                                                                               ', 'Higher Education', 1, NULL, '2022-07-13 09:39:36', NULL, 0, NULL, NULL),
(5, 'Power', NULL, '6.975669430511738', '79.91556412524763', 'Kalmunai', '1011111111', 'power@nsf.gov.lk', '    fgfghfgh                                                                                ', 'HE', 1, NULL, '2022-08-21 10:16:19', NULL, 0, NULL, NULL),
(7, 'NSF', NULL, '6.975669430511738', '79.91556412524763', 'Colombo', '1011111111', 'thasneemniyas111@gmail.com', '                                                                                    ', 'HE', 1, NULL, '2022-08-01 22:05:50', NULL, 0, NULL, NULL),
(8, 'Wayamba University of Sri Lanka', NULL, '6.975669430511738', '79.91556412524763', 'Lionel Jayathilaka Mawatha, Kuliyapitiya', '1011111111', 'wayamba@gmail.com', '                                                                                                              test                                                                                                                                              ', 'HE', 1, NULL, '2022-08-05 22:24:35', NULL, 0, NULL, NULL),
(9, 'University of Moratuwa', NULL, '6.85783234495143', '79.91952691017465', 'Moratuwa', '0112758000', 'mrt@gmail.com', '                                                                                    ', 'HE', 1, NULL, '2022-08-24 20:41:58', NULL, 0, NULL, NULL),
(12, 'LOCTEST', NULL, '6.975669430511738', '80.59634223874336', 'peradeniya', '0332222748', 'hh@gmail.com', '                                                                                    ', 'HE', 1, NULL, '2022-08-21 10:25:52', NULL, 0, NULL, NULL),
(13, 'LOCTEST3', NULL, '6.975669430511738', '79.91556412524763', 'peradeniya', '0412222681', 'hh@gmail.com', 'It is widely accepted that technology is the key driver of economic growth of countries as it transforms economies into large-scale industrialized, capital-intensive production systems which are competitive due to higher economies of scale. In facilitating economic development, the National Science ', 'HE', 1, NULL, '2022-09-13 22:37:00', NULL, 0, NULL, NULL),
(14, 'mrt', NULL, '6.795798415071874', '79.90084768114838', 'Colombo', '1011111111', 'thasneem34@gmail.com', '<p>It is widely accepted that technology is the key driver of economic growth of countries as it transforms economies into large-scale industrialized, capital-intensive production systems which are competitive due to higher economies of scale. In facilitating economic development, the National Science Foundation, being one of the leading R&amp;D organizations in the country, has identified the need of a platform in creating opportunities for cross-industry partnerships in their efforts: To strengthen the manufacturing community To support new partnerships and to help manufacturers with emerging technology, To adopt sustainable solutions and transform their interventions allowing production industry in Sri Lanka, which has been lagging behind over the past yearswe NSF, expect that our initiative will augment the culture of entrepreneurship in our country. It can also provide solutions and learning opportunities to inspire the entrepreneurial minds in our country to build more businesses creating better opportunities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This in return will stimulate more efficient production of higher quality goods and services, on which our nation&rsquo;s prosperity depends.Finally, we strongly believe that this initiative will facilitate National Economic Policy of the government in addressing macro-economic issues, because the availability of the advanced technology will pave the way for fast and sustainable growth in our economy. Our mission is to make that happen and we do hope that this initiative too will immensely contribute to that .</p>\r\n', 'HE', 1, NULL, '2023-06-15 15:03:20', NULL, 0, NULL, NULL),
(15, 'test', NULL, '6.975669430511738', '79.91556412524763', 'Colombo', '1011111111', 'thasneemmys@gmail.com', '                       fgfgf                                                             ', 'HE', 1, NULL, '2023-02-02 11:25:36', NULL, 0, NULL, NULL);

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
  `inst_description` longtext DEFAULT NULL,
  `catalog_link` varchar(400) DEFAULT NULL,
  `catalog_upload` varchar(200) DEFAULT NULL,
  `catalog_access` varchar(400) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `service_charge` decimal(20,2) DEFAULT NULL,
  `vendor_name` varchar(200) DEFAULT NULL,
  `vendor_contact` varchar(200) DEFAULT NULL,
  `vendor_url` varchar(200) DEFAULT NULL,
  `no_of_samples_per_cycle` int(10) DEFAULT NULL,
  `no_of_samples_per_day` int(10) DEFAULT NULL,
  `total_usage_hour_per_day` int(10) DEFAULT NULL,
  `specification` longtext DEFAULT NULL,
  `availabiltiy_of_staff` varchar(250) DEFAULT NULL,
  `external_researchers` tinyint(1) DEFAULT 0,
  `funding_source` varchar(200) DEFAULT NULL,
  `date_commencement_operation` varchar(20) DEFAULT NULL,
  `record_status` tinyint(1) DEFAULT 0,
  `contact_person_name` varchar(200) DEFAULT NULL,
  `contact_person_email` varchar(100) DEFAULT NULL,
  `contact_person_phone_number` varchar(10) DEFAULT NULL,
  `contact_person_mobile_number` varchar(10) DEFAULT NULL,
  `inst_keywords` text DEFAULT NULL,
  `p_categories` text DEFAULT NULL,
  `image_upload1` varchar(600) DEFAULT NULL,
  `image_upload2` varchar(600) DEFAULT NULL,
  `image_upload3` varchar(600) DEFAULT NULL,
  `image_upload4` varchar(600) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL,
  `record_endDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`instrument_id`, `instrument_name`, `institute_id`, `faculty_id`, `department_id`, `laboratory_id`, `instrument_type_id`, `condition_id`, `manufacturer`, `model`, `year_of_manufacture`, `accessories`, `inst_description`, `catalog_link`, `catalog_upload`, `catalog_access`, `price`, `service_charge`, `vendor_name`, `vendor_contact`, `vendor_url`, `no_of_samples_per_cycle`, `no_of_samples_per_day`, `total_usage_hour_per_day`, `specification`, `availabiltiy_of_staff`, `external_researchers`, `funding_source`, `date_commencement_operation`, `record_status`, `contact_person_name`, `contact_person_email`, `contact_person_phone_number`, `contact_person_mobile_number`, `inst_keywords`, `p_categories`, `image_upload1`, `image_upload2`, `image_upload3`, `image_upload4`, `isDeleted`, `created_user_id`, `created_date_time`, `updated_user_id`, `updated_date_time`, `deletedBy`, `deleted_date_time`, `record_endDtm`) VALUES
(1, 'PH Meter', 1, 1, 1, 1, 8, 1, 'Manufacturer 1', 'FT5678', '2000', 'test', NULL, 'http://cat1.lk', '12-2016_E.pdf', 'http://cat1.lk', 5000.00, 7000.00, 'TEST', '0111117777', 'http://vendor1.com', 7, 8, 4, NULL, 'Yes', 1, 'NSF', '2021-01-01', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Acidity, PH range                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', NULL, 'phm1.jpg', 'nslrc_cat.jpg', 'cover2.jpg', 'cover4.jpg', 0, 1, '2022-03-13 23:18:08', 1, '2022-12-09 12:31:08', NULL, NULL, NULL),
(2, 'Carbon dioxide Incubator', 1, 1, 1, 5, 8, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', '', 'IJIRES_1760.pdf', '', 0.00, NULL, '', '', '', 0, 0, 0, NULL, '', 0, '', '2021-01-01', 0, 'Dr. P Ranasinghe', 'sdd_hts@iti.lk', '0112797322', '0714458606', '                                                                                                                                                                                                                                                                                                                                    ', '                                                                                                                                                                                                                                                                                                                                    ', 'ph5.jpg', 'cover1.jpg', NULL, NULL, 0, 1, '2022-03-13 23:33:58', 1, '2022-06-09 15:22:19', NULL, NULL, NULL),
(3, 'Hydraulic Bench with Accessories', 2, 0, 2, 2, 1, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 0, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                  ', NULL, '', '', '', '', 0, 1, '2022-03-25 23:40:15', 1, '2022-09-19 12:46:25', NULL, NULL, NULL),
(4, 'Erbium Doped Fiber Amplifier(EDFA)', 2, 0, 2, 3, 1, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 0, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                   ', NULL, '', '', '', '', 0, 1, '2022-03-25 23:55:59', 1, '2022-09-19 12:46:07', NULL, NULL, NULL),
(5, 'Optical Spectrum Analyzer', 2, 0, 2, 4, 6, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                            ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                 ', NULL, '', '', '', '', 0, 1, '2022-03-26 00:22:56', 1, '2022-09-19 12:45:55', 1, '2022-05-14 22:19:11', NULL),
(6, 'Optical Time Domain Reflectometer(OTDR)', 1, 0, 2, 2, 1, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 0, '', '0000-00-00', 0, 'Thasneem', 'thas@gmail.com', '0111111111', '0777777777', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', NULL, 'bank.jpg', '', '', '', 0, 1, '2022-06-01 22:54:08', 1, '2022-09-19 12:45:40', NULL, NULL, NULL),
(7, 'Inverter Micro Refrigerated Centrifuge', 2, 0, 2, 2, 15, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                            ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                      ', NULL, '', '', '', '', 0, 1, '2022-06-01 23:31:36', 1, '2022-09-19 12:45:26', 3, '2022-07-01 23:06:23', NULL),
(8, 'Electric Muffle Furnace', 2, 0, 2, 2, 15, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', 'cover1.jpg', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 0, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, 'idb_sample.png', 'idb_sample1.png', 'idb_sample2.png', 'idb_sample3.png', 0, 1, '2022-06-09 13:09:31', 1, '2022-09-19 12:45:00', 1, '2022-07-19 12:55:03', NULL),
(10, 'ZTE LTE eNodeB System', 2, 0, 2, 2, 16, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '', '', '', 0.00, 35000000.00, '', '', '', 0, 0, 0, NULL, '', 1, 'rt', '0000-00-00', 0, 'Thasneem', 'thas@gmail.com', '0111111111', '0777777777', '                                                                                                                                                                                                                                                                         tst                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, '', '', '', '', 0, 1, '2022-08-01 18:26:09', 1, '2022-09-19 12:45:12', NULL, NULL, NULL),
(11, 'auto clave', 2, 0, 2, 4, 25, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                       ', NULL, '', '', '', '', 0, 1, '2022-08-14 20:27:06', 1, '2022-08-23 18:10:53', NULL, NULL, NULL),
(12, 'oven', 0, 0, 2, 2, 26, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                            ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                      ', NULL, '', '', '', '', 0, 1, '2022-08-14 20:34:18', 1, '2022-08-23 16:20:54', NULL, NULL, NULL),
(13, 'power testTest', 1, 3, 3, 11, 16, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                            ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                      ', NULL, '', '', '', '', 0, 1, '2022-08-14 20:49:43', 1, '2022-08-20 14:51:24', NULL, NULL, NULL),
(14, 'Binocular Stereo-microscope (Leica/S9 E)', 1, 1, 1, 1, 25, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                       ', NULL, '', '', '', '', 0, 1, '2022-08-14 21:34:36', 1, '2022-09-19 12:41:18', NULL, NULL, NULL),
(16, 'Binocular Stereo-microscope (Leica/S9 E)', 1, 1, 1, 1, 13, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, '', '', '', '', 0, 1, '2022-08-21 09:26:35', 1, '2022-09-19 12:40:53', NULL, NULL, NULL),
(18, 'Open circuit wind tunnel', 1, 1, 1, 1, 9, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', NULL, '', '', '', '', 0, 1, '2022-08-21 14:48:09', 1, '2022-09-19 12:40:31', NULL, NULL, NULL),
(19, 'HIGH PERFORMANCE LIQUID CHROMOTOGRAPHY', 1, 1, 1, 1, 13, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', '', '', '', 0.00, 75000.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, 'test', 'test@gmail.com', '0787777777', '0111111111', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 'fiber.png', '', '', '', 0, 1, '2022-08-21 14:52:54', 1, '2022-09-19 00:47:10', NULL, NULL, NULL),
(20, '	Microplate reader', 2, 0, 0, 0, 6, 1, '', '', '0000', '', '                                                                                                                                                                                                                                                                                                                                                ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                             ', NULL, 'cos.png', '', '', '', 0, 1, '2022-08-24 17:55:36', 1, '2022-09-19 12:44:47', NULL, NULL, NULL),
(21, 'Gas Chromatography System', 3, 0, 0, 0, 11, 1, '', '', '0000', '', '                                                                                                                                                                        ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                     ', NULL, 'fiber4.png', '', '', '', 0, 1, '2022-08-24 18:14:34', 1, '2022-09-19 12:44:36', NULL, NULL, NULL),
(25, 'AC Milli Ammeters', 1, 3, 3, 11, 15, 1, '', '', '0000', '', '                                                                                                                                                                        ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                     ', NULL, '', '', '', '', 0, 1, '2022-08-28 14:53:57', 1, '2022-09-19 12:44:21', NULL, NULL, NULL),
(26, 'Atomic Absorption Spectrophotometer', 2, 0, 2, 4, 6, 1, '', '', '0000', '', '                                                                                                                                                                        ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                     ', NULL, '', '', '', '', 0, 1, '2022-08-28 14:57:04', 1, '2022-09-19 12:44:08', NULL, NULL, NULL),
(27, 'Ultra - high performance liquid chromatography / Tandem quadruple mass spectrometry', 1, 5, 5, 13, 11, 1, '', '', '0000', '', 'Test2', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, NULL, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, '', '', '', '', 0, 1, '2022-08-29 13:56:53', 1, '2022-12-09 13:07:06', NULL, NULL, NULL),
(28, 'PCR test machine', 1, 5, 5, 13, 10, 1, '', '', '0000', '', '                                            <p align=\"justify\">It is widely accepted that technology is the key driver of economic growth of countries as it transforms economies into large-scale industrialized, capital-intensive production systems which are competitive due to higher economies of scale. In facilitating economic development, the National Science Foundation, being one of the leading R&D organizations in the country, has identified the need of a platform in creating opportunities for cross-industry partnerships in their efforts: To strengthen the manufacturing community To support new partnerships and to help manufacturers with emerging technology, To adopt sustainable solutions and transform their interventions allowing production industry in Sri Lanka, which has been lagging behind over the past yearswe NSF, expect that our initiative will augment the culture of entrepreneurship in our country. It can also provide solutions and learning opportunities to inspire the entrepreneurial minds in our country to build more businesses creating better opportunities. This in return will stimulate more efficient production of higher quality goods and services, on which our nation’s prosperity depends.Finally, we strongly believe that this initiative will facilitate National Economic Policy of the government in addressing macro-economic issues, because the availability of the advanced technology will pave the way for fast and sustainable growth in our economy. Our mission is to make that happen and we do hope that this initiative too will immensely contribute to that.</p>\r\n                                        ', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, '                  test                                                                  ', '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', NULL, '', '', '', '', 0, 1, '2022-08-30 12:01:03', 1, '2022-12-09 13:37:44', NULL, NULL, NULL),
(29, 'Test Specification', 2, 0, 2, 3, 6, 1, '', '', '0000', '', '', '', '', '', 0.00, 0.00, '', '', '', 0, 0, 0, '<p>yyyy88</p>\r\n', '', 0, '', '', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, '', '', '', '', 0, 1, '2022-12-09 13:38:51', 23, '2024-01-22 23:26:48', NULL, NULL, NULL),
(30, 'Test Spec2', 9, 4, 4, 12, 17, 2, '', '', '0000', '', '<p>All downloads are fully functional and subject to relevant open source license agreements or commercial license agreements (whichever is ).</p>\r\n', '', '', '', 0.00, 0.00, '', '', '', 8, 8, 8, '<ul>\r\n	<li><a href=\"https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html#cfg-customConfig\"><code>config.customConfig</code></a>&nbsp;- The path to CKEditor configuration file. For more details, see&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/guide/dev_configuration.html\">Setting CKEditor Configuration</a>.</li>\r\n	<li><a href=\"https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html#cfg-contentsCss\"><code>config.contentsCss</code></a>&nbsp;- The CSS file(s) to be used to apply style to the content.</li>\r\n	<li><a href=\"https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html#cfg-stylesSet\"><code>config.stylesSet</code></a>&nbsp;- The &quot;styles definition set&quot; to use in the styles dropdown list. For more details, see&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/guide/dev_styles.html\">Setting Styles</a>.</li>\r\n</ul>\r\n', '', 1, '', '', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, '', '', '', '', 0, 1, '2022-12-09 13:44:22', 1, '2025-12-11 12:52:33', NULL, NULL, NULL);

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
-- Table structure for table `instrument_condition`
--

CREATE TABLE `instrument_condition` (
  `condition_id` int(10) NOT NULL,
  `instrument_condition` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `instrument_condition`
--

INSERT INTO `instrument_condition` (`condition_id`, `instrument_condition`) VALUES
(1, 'Functioning well'),
(2, 'Defective'),
(3, 'Partly malfunctioning'),
(4, 'Not Functioning');

-- --------------------------------------------------------

--
-- Table structure for table `instrument_feedbacks`
--

CREATE TABLE `instrument_feedbacks` (
  `instrument_feedback_id_` int(10) NOT NULL,
  `instrument_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `approver_id` int(10) UNSIGNED DEFAULT NULL,
  `approver_name` varchar(100) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instrument_record_situation`
--

CREATE TABLE `instrument_record_situation` (
  `statusId` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `instrument_record_situation`
--

INSERT INTO `instrument_record_situation` (`statusId`, `status`) VALUES
(1, 'Completed'),
(2, 'Incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `instrument_types`
--

CREATE TABLE `instrument_types` (
  `instrument_type_id` int(10) NOT NULL,
  `institute_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `faculty_id` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `instrument_type` varchar(1024) DEFAULT NULL,
  `parameters` varchar(1000) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `relevant_instruments` longtext DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `deletedBy` int(10) NOT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrument_types`
--

INSERT INTO `instrument_types` (`instrument_type_id`, `institute_id`, `faculty_id`, `instrument_type`, `parameters`, `description`, `keywords`, `relevant_instruments`, `isDeleted`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 1, 'Food & Fodder', 'Acidity of the food, Humidity', 'Food crops are those crops which cultivated to human consumption such as Rice, Wheat etc. (which are foods to humans).  Fodder crops are those which are cultivated to feed livestocks (that is Cattle, sheep, goat etc) Examples are hay, stray plant leaves etc', 'Healthy, Weight Loss, Organic Food, Fast Food, Food Processor', 'PH Meter, Thermo Meter', 0, 1, NULL, '2022-05-24 10:51:40', NULL, 0, NULL),
(2, 2, 0, 'Materials preparation and Characterization', NULL, NULL, 'Furnace, Vacuum Oven, Vacuum coating unit, Sputtering unit,  Glove box, Impedance analyser, Frequency response analyser (FRA), LCR meter, Potentiostat, Fourier Transform Infrared Spectroscopy (FTIR), UV/Vis Spectrophotmeter, Atomic Force Microscope (AFM), Polarizing microscope, Scanning and transmission electron microscopes, Scanning and transmission electron microscopes, Oscilloscope, Differential scanning calorimeter (DSC), Differential thermal analyser (DTA), Thermal Gravimetric Analyser (TGA),Universal testing machine, Triaxial testing machine, Direct shear testing machine, Non-destructive testing equipment, Material and component testing equipment, Ground penetration radar, Electrical & electronic instrumentation, Compresive and tensile testing equipment, Soil testing equipment', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(3, 4, 0, 'Mixing, shaking, blending and separating ', NULL, NULL, 'Ultra-centrifuge, Soxhlet apparatus, Shaker, Vibratory sieve shaker, Synthesizer Sequencing System, Retriever Fraction Collector, Rapid digester, Fraction Collector', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(4, 4, 0, 'Drying, cooling, heat transfer and sample preservation. ', NULL, NULL, 'Freezing Unit, Muffle furnace, Autoclave,  Bomb calorimeter, Vacuum evaporator, Thermal cycler   ', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(5, 1, 0, 'Quantitative and Qulitative  measures y testing ', NULL, NULL, 'Whiteness meter, water quality checker, Leaf area meter,  Tensiometer, Porometer/ Fluorometer, Advanced surveying equipment', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(6, 2, 0, 'Cleaning or degreasing', NULL, NULL, 'Ultra-sonic cleaner, Ultra-Sonic disintegrator, Echosounders', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(7, 3, 0, 'Radiation based measurements ', NULL, NULL, 'X array apparatus, Neutron probe, Whirl mixer fission, Scintillation counter, X-ray diffractometer (powder and single crystal), Tube solarimeter', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(8, 4, 0, 'Total analysis and general measuring', '', '', 'Spyro analyzers, Sensitometer, Semi-conductor parameter analyzer, Reverse Osmosis unit, Flow injection analyzer, Scanning calorimeter, Potentiostat/ Galvanometer,  EC & Salinity meter, COD analyzer,', '', 0, 1, NULL, '2022-05-24 11:39:42', NULL, 0, NULL),
(9, 0, 0, 'Environmental control and controlled environment ', NULL, NULL, 'Soft incubator, Smoking oven, Safety cabinet, Refrigeration incubator, CO2 humidified incubator, Temperature controlled cabinet', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(10, 0, 0, 'Chromatographic and spectrometric ', NULL, NULL, 'High-performance liquid chromatography (HPLC), Gas chromatography (GC), Medium Pressure Liquid Chromatography (MPLC),  Ion-chromatograph, Mass spectrometric (MS), Gas Chromatography Mass Spectrometry (GC-MS), UV-VIS spectrophotometer, Raman spectrophotometer, Infrared spectrophotometer (both Fourier transform and standard), Nuclear magnetic resonance spectrometer, X-ray fluorescence spectrophotometer, Inductively coupled plasma spectrophotometer-mass spectrophotometer (ICP-MS)', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(11, 0, 0, 'Computer and IT related ', NULL, NULL, 'Special computers, Servers, Plotters, super computers,  Robotic Arms', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(12, 0, 0, 'Solar cell and energy storage research', NULL, NULL, 'Solar irradiance  measuring equipment – Secondary Standard Instruments (pyranometer, pyrheliometer), Weather station, Solar cell measuring equipment, Solar simulator, Battery cycling equipment ', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(13, 0, 0, 'Energy and Photometry', NULL, NULL, 'Energy/Power analyzer with data logging, Flue gas analysers, Thermal conductivity meter, multi-channel temperature-humidity data logger for fluids & surfaces, Globe Thermometer, Low & high range Anemometer Thermographic camera, Heat fluxmeter, Indoor Air Quality meter with data logging, Ultrasonic flow meter, Luminance meter, Illuminance meter, Integrated Sphere, Spectral lightmeter, CCT/CRI meter, ', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(14, 0, 0, 'Molecular Bilogy', NULL, NULL, 'PCR machines, DNA sequencing equipment, UV transilluminator', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(15, 0, 0, 'Biomedical Engineering', NULL, NULL, 'Biosignal extraction systems', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(16, 0, 0, 'Mechnical Engineering', NULL, NULL, 'Human motion analysis systems, mobile robot plaforms, Robot manipulators, 3D printers, CNC Machines', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(17, 0, 0, 'Prototyping equipment', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(18, 0, 0, 'Other……….(ex: Metrology)', NULL, NULL, '3D-Scanner, Tomography, CMM (Coordinate-Measuring Machine), Universal Testing Machine, Precision measuring instruments ', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(19, 0, 0, 'test', 'test1', '                                                                                                        7                                                                                                                                                    ', '1', NULL, 0, 1, NULL, '2022-05-13 23:29:05', NULL, 0, NULL),
(20, 0, 0, 'test1', 'test2', '            yyyyyyyyyyyyyyyy', 'k1', NULL, 0, 1, NULL, '2022-05-23 12:14:00', NULL, 0, NULL),
(22, 0, 0, 'tt', 'tt', '         tt                                                                           ', 'tt', NULL, 0, 1, NULL, '2022-05-23 12:12:23', NULL, 0, NULL),
(23, 0, 0, 'ww1', 'ww', 'ww                                                                                    ', 'ww', '         wq                                                                           ', 0, 3, NULL, '2022-07-01 23:15:28', NULL, 0, NULL),
(24, 1, 0, 'plasma', 'RBC', '                test                                                                    ', 'blood', '                       test                                                             ', 0, 1, NULL, '2022-07-14 14:49:46', NULL, 0, NULL),
(25, 1, 0, 'soil', 'density', '                  test                                                                  ', 'minerals', '               test                                                                     ', 0, 1, NULL, '2022-07-15 00:00:32', NULL, 0, NULL),
(26, 2, 0, 'soil Sample', 'density', '             tesr                                                                       ', 'rocks', '        test                                                                            ', 1, 2, NULL, '2022-07-18 10:13:38', NULL, 1, '2022-07-19 12:12:13'),
(27, 2, 0, 'test1', 'test21', '<p>test</p>\r\n', 'test1', '                               test                                                     ', 0, 23, NULL, '2024-01-22 23:12:45', NULL, 0, NULL),
(28, 1, 0, 'NSF_TEST_CAT', 'test', '<p>test1</p>\r\n', 'test', '                                 test                                                   ', 0, 1, NULL, '2023-06-15 15:30:19', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--

CREATE TABLE `laboratories` (
  `laboratory_id` int(10) NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `institute_id` int(11) UNSIGNED DEFAULT NULL,
  `laboratory_name` varchar(100) DEFAULT NULL,
  `laboratory_address` varchar(400) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` varchar(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laboratories`
--

INSERT INTO `laboratories` (`laboratory_id`, `department_id`, `faculty_id`, `institute_id`, `laboratory_name`, `laboratory_address`, `latitude`, `longitude`, `phone_number`, `email`, `description`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 1, 1, 'Molecular Medicine', 'Kelaniya', '6.975722677610232', '79.91544610894435', '3147483647', 'mm@kln.ac.lk', 'MM', 1, NULL, '2022-08-28 23:13:21', NULL, 0, NULL, NULL),
(2, 2, 0, 2, 'Water & Waste Water Testing laboratory', '120/4A , Vidya Mawatha, Colombo 07', '6.907085078864987', '79.86002682782751', '0112379901', 'sdd_cml@iti.lk', 'Water and Wastewater laboratories of CML offer a variety of tests for quantification of chemical and physical parameters in water and waste water in compliance with ISO 17025 quality system.  We analyze Potable water, Effluent and Processing water, Industrial water and Environmental water (ground, s', 1, NULL, '2022-08-28 23:15:53', NULL, 0, NULL, NULL),
(3, 2, 0, 2, 'test1111', 'Colombo', '6.907085078864987', '79.86002682782751', '0111111111', 'bbb@gmail.com', 'test2', 1, NULL, '2022-08-28 23:15:58', NULL, 0, NULL, NULL),
(4, 2, 0, 2, 'testEdit44', 'Colombo', '6.907085078864987', '79.86002682782751', '0111111111', 'test@gmail.com', 'Crops are those crops which cultivated to human consumption such as Rice, Wheat etc. (which are foods to humans).  Fodder crops are those which are cultivated to feed livestocks (that is Cattle, sheep, goat etc) Examples are hay, stray plant leaves etc', 1, NULL, '2022-08-28 23:16:03', NULL, 0, NULL, NULL),
(5, 1, 1, 1, 'test33', 'Colombo', '8.365657378188336', '80.50484914198952', '0112379801', 'bbb@gmail.com', '      test 22                                                                             ', 1, NULL, '2022-07-12 16:22:25', NULL, 1, '1', '2022-07-19 12:21:32'),
(6, 0, 0, 5, 'Chemistr', 'Nintavur', '7.297244485220126', '81.85003279668221', '1011111111', 'chmpowe@gmail.com', 'fdfg', 1, NULL, '2022-08-28 23:17:41', NULL, 0, NULL, NULL),
(7, 0, 0, 5, 'power2', 'Nintavur', '7.297244485220126', '81.85003279668221', '1011111111', 'power2@gmail.com', '', 1, NULL, '2022-08-28 23:17:36', NULL, 0, NULL, NULL),
(8, 0, 0, 5, 'sample', 'Nintavur', '7.297244485220126', '81.85003279668221', '1011111111', 'tt1@gmail.com', '', 1, NULL, '2022-08-28 23:17:31', NULL, 0, NULL, NULL),
(9, 0, 0, 6, 'power45', 'Nintavur', '8.365657378188336', '80.50484914198952', '1011111111', 'ttbbjkbjh@gmail.com', 'jjoi', 1, NULL, '2022-08-01 21:22:05', NULL, 0, NULL, NULL),
(10, 1, 1, 1, 'AI', 'hgh', '6.975722677610232', '79.91544610894435', '0112758000', 'hh@gmail.com', 'fghghg', 1, NULL, '2022-08-28 23:13:27', NULL, 0, NULL, NULL),
(11, 3, 3, 1, 'AI Lab', 'hhg', '7.297244485220126', '81.85003279668221', '0812386542', 'tt@gmail.com', 'thth', 1, NULL, '2022-08-28 23:13:32', NULL, 0, NULL, NULL),
(12, 4, 4, 9, 'Engineering11', 'Coombs', '', '', '0412222681', 'thasneemmys@gmail.com', '', 1, NULL, '2022-08-21 14:52:06', NULL, 0, NULL, NULL),
(13, 5, 5, 1, 'civil X', '', '6.975722677610232', '79.91544610894435', '0332222748', 'tt@gmail.com', '', 1, NULL, '2022-08-28 23:13:38', NULL, 0, NULL, NULL),
(14, 6, 2, 4, 'alied1', '', '', '', '0812386542', 'hh@gmail.com', '', 1, NULL, '2022-08-25 09:42:53', NULL, 0, NULL, NULL),
(15, 0, 0, 8, 'Biology', 'Kurunagala', '6.905121270473732', '79.86996135538563', '0112758000', 'tt@gmail.com', '<p>test2</p>\r\n', 1, NULL, '2023-06-15 15:37:16', NULL, 0, NULL, NULL);

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `location_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `latitude`, `longitude`, `location_name`, `location_info`) VALUES
(1, '6.912815', '79.850682', ' Kollupitiya', 'Kollupitiya, Colombo, Sri Lanka'),
(2, '6.8301185', '79.8800832', 'Dehiwala-Mount Lavinia', 'Dehiwala-Mount Lavinia, Sri Lanka'),
(3, '7.422732306884123', '81.82222665818296', 'Kalmunai', 'Main Street');

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
-- Table structure for table `sendmsg`
--

CREATE TABLE `sendmsg` (
  `msg_id` int(10) NOT NULL,
  `id` int(100) UNSIGNED NOT NULL,
  `user_type_id` tinyint(4) DEFAULT 0,
  `message_group` varchar(200) DEFAULT NULL,
  `msg_date` date DEFAULT NULL,
  `msg_title` varchar(600) DEFAULT NULL,
  `msg_sub_title` varchar(600) DEFAULT NULL,
  `msg_description` longtext DEFAULT NULL,
  `readmore_link` varchar(600) DEFAULT NULL,
  `msg_image` varchar(600) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL,
  `endDtm` datetime DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `summary_id` int(100) NOT NULL,
  `institute_id` int(100) UNSIGNED DEFAULT NULL,
  `faculty_id` int(100) UNSIGNED DEFAULT NULL,
  `depaertment_id` int(100) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`summary_id`, `institute_id`, `faculty_id`, `depaertment_id`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

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
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(13677, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 137.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 AVG/137.0.0.0', 'Windows 10', '2025-07-23 10:38:19'),
(13678, 1, 'Thasneem', 'Home news Listing', 'Admin/homenewsListing', 1, 'Super_Admin', '::1', 'Chrome 137.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 AVG/137.0.0.0', 'Windows 10', '2025-07-23 10:38:27'),
(13679, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 137.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 AVG/137.0.0.0', 'Windows 10', '2025-07-23 10:50:07'),
(13680, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 137.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 AVG/137.0.0.0', 'Windows 10', '2025-07-26 09:41:58'),
(13681, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 137.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 AVG/137.0.0.0', 'Windows 10', '2025-07-26 09:42:03'),
(13682, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 137.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 AVG/137.0.0.0', 'Windows 10', '2025-07-26 09:42:28'),
(13683, 16, 'Thasneem M.N', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 138.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 AVG/138.0.0.0', 'Windows 10', '2025-08-15 11:31:14'),
(13684, 16, 'Thasneem M.N', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 138.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 AVG/138.0.0.0', 'Windows 10', '2025-08-15 11:31:17'),
(13685, 16, 'Thasneem M.N', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 138.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 AVG/138.0.0.0', 'Windows 10', '2025-08-15 11:31:24'),
(13686, 68, 'rasmi', 'login', 'Login/loginMe', 10, 'Technician', '::1', 'Chrome 152.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Windows 10', '2026-09-13 02:32:27'),
(13687, 68, 'rasmi', 'Error', 'Login/error', 10, 'Technician', '::1', 'Chrome 152.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Windows 10', '2026-09-13 02:34:43'),
(13688, 68, 'rasmi', 'Error', 'Login/error', 10, 'Technician', '::1', 'Chrome 152.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Windows 10', '2026-09-13 02:43:10'),
(13689, 68, 'rasmi', 'Error', 'Login/error', 10, 'Technician', '::1', 'Chrome 152.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Windows 10', '2026-09-13 03:07:51'),
(13690, 68, 'rasmi', 'Error', 'Login/error', 10, 'Technician', '::1', 'Chrome 152.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Windows 10', '2026-09-13 03:16:54'),
(13691, 68, 'rasmi', 'Error', 'Login/error', 10, 'Technician', '::1', 'Chrome 152.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'Windows 10', '2026-09-13 03:20:13');

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
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'thasneemmys@gmail.com', '20aU9dzsLIxHEjQ', 'Chrome 99.0.4844.51', '::1', 0, 1, '2022-03-14 20:31:30', NULL, NULL),
(2, 'thasneemmys@gmail.com', 'e5hKxUN14IbSMw9', 'Chrome 99.0.4844.51', '::1', 0, 1, '2022-03-14 20:34:30', NULL, NULL),
(3, 'thasneemmys@gmail.com', 'o0Ww8R2ny67sL1i', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 07:35:04', NULL, NULL),
(4, 'thasneemmys@gmail.com', '8F9p2gR5uiWT6Lm', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 07:47:39', NULL, NULL),
(5, 'thasneemmys@gmail.com', '908aflxdWnCNchg', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 07:51:57', NULL, NULL),
(6, 'thasneemmys@gmail.com', 'RtcnQpzAxjNGqlW', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 07:53:28', NULL, NULL),
(7, 'thasneemmys@gmail.com', 'Bl7VXfbCJOdImY6', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 08:00:33', NULL, NULL),
(8, 'thasneemmys@gmail.com', 'bLSwB1J7xQYEtgz', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 08:03:27', NULL, NULL),
(9, 'thasneemmys@gmail.com', 'lCXBIYkNH1Lyo9e', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-18 09:44:13', NULL, NULL),
(10, 'thasneemmys@gmail.com', 'gl87Ls5okEZVdhf', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-18 12:38:02', NULL, NULL),
(11, 'thasneemmys@gmail.com', '9AlkNEYuGQjJq8s', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-18 13:33:13', NULL, NULL),
(12, 'thasneemmys@gmail.com', 'gh8Cb6erJiVolGY', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-25 20:46:38', NULL, NULL),
(13, 'thasneemmys@gmail.com', 'yOcmF1HhfvESiaV', 'Chrome 131.0.0.0', '', 0, 1, '2025-02-21 08:16:55', NULL, NULL),
(14, 'thasneemmys@gmail.com', 'fr7mMuqCVK1lcsd', 'Chrome 131.0.0.0', '', 0, 1, '2025-02-21 08:19:16', NULL, NULL),
(15, 'thasneemmys@gmail.com', 'bBhMCP0fNEmtwQZ', 'Chrome 131.0.0.0', '', 0, 1, '2025-02-21 08:20:01', NULL, NULL),
(16, 'thasneemmys@gmail.com', 'DGnxeQcCwlWJig9', 'Chrome 131.0.0.0', '', 0, 1, '2025-02-21 08:21:08', NULL, NULL),
(17, 'thasneemmys@gmail.com', 'lrdwPx3UFg5JDMs', 'Chrome 131.0.0.0', '', 0, 1, '2025-02-21 08:21:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type_id` tinyint(4) UNSIGNED DEFAULT 0,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT 0,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `laboratory_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `oauth_provider` varchar(200) NOT NULL,
  `oauth_uid` varchar(100) NOT NULL,
  `locale` varchar(100) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `last_login_location` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL COMMENT 'hashed login password',
  `undefineUser` tinyint(4) NOT NULL DEFAULT 1,
  `user_status` tinyint(4) DEFAULT 0,
  `other_institute_name` varchar(400) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `updatedBy` int(10) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `is_email_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `institute_id`, `faculty_id`, `department_id`, `laboratory_id`, `title`, `first_name`, `last_name`, `designation`, `address`, `mobile_number`, `phone_number`, `gender`, `email`, `picture`, `oauth_provider`, `oauth_uid`, `locale`, `link`, `created`, `modified`, `last_login_date`, `last_login_location`, `username`, `password`, `undefineUser`, `user_status`, `other_institute_name`, `isDeleted`, `updatedBy`, `updatedDtm`, `createdBy`, `is_email_verified`) VALUES
(1, 1, 0, 0, 0, 0, '', 'Mohamed Yoosuff', 'Thasneem', '', '', '0773958387', '', '', 'thasneemmys@gmail.com', 'https://lh3.googleusercontent.com/a/AItbvml7BEt5ly65pHsshwHTTofBxIhy9oGQa76UVer4=s96-c', 'google', '103720349026835494004', 'en', '', '2021-12-08 17:26:50', '2022-09-10 19:55:40', '2026-05-21 12:59:46', NULL, 'thasneemmys@gmail.com', '$2y$10$5E5sP6FbEnAmY2Xu/BzxKu1mlWG0YfifrukLALS0qv.2XL6QpZ5..', 0, 1, '', 0, 1, '2025-02-13 20:19:37', 0, 0),
(3, 9, 7, 0, 0, 0, 'Ms', 'Test', 'Test', 'Director', 'test', '0769434007', '1234567897', 'Female', '', NULL, '', '', NULL, '', '2022-03-14 21:19:58', NULL, NULL, NULL, 'test@gmail.com', '$2y$10$PZa2Zvm1uUpcqlHreaw6POQdUu5qAnbuHMeyR/KUOg6FeaxbJ/seu', 1, 1, '', 0, 1, '2025-02-13 20:36:26', NULL, 0),
(4, 3, 2, 0, 2, 2, 'Ms', 'Bbb', 'Bbb', 'Principal Scientist', 'bb', '0769434007', '1234567897', 'Female', '', NULL, '', '', NULL, '', '2022-03-14 21:49:08', NULL, NULL, NULL, 'bbb@gmail.com', '$2y$10$vcfIBVh3D5Ep6d9ZiOjp2O0.pFRZMEdK0WfHmZAr0nFbaCat192TK', 1, 1, 'test2', 0, 1, '2022-09-06 14:05:28', NULL, 0),
(5, 7, 2, NULL, 2, 3, 'Mr', 'Thas', 'Thas', 'Director', 'Colombo', '0777777777', '0111111111', 'Female', '', NULL, '', '', NULL, '', '2022-05-22 22:23:10', NULL, NULL, NULL, 'th@gmail.com', '123456', 1, 1, 'rrr', 0, 1, '2022-07-12 16:26:50', NULL, 0),
(6, 6, 2, NULL, 2, 4, 'Mr', 'Ni1', 'Ni1', 'Principal Research Officer', 'Colombo', '0777777777', '0111111111', 'Male', '', NULL, '', '', NULL, '', '2022-05-22 22:26:02', NULL, NULL, NULL, 'ni11@gmail.com', '123456', 1, 0, 'ni', 0, 2, '2022-07-12 01:51:27', NULL, 0),
(7, 1, 0, 0, 0, 0, 'Mr', 'Io', 'Nsf', 'Director', 'Colombo', '0777776666', '0111111144', 'Male', '', 'https://lh3.googleusercontent.com/a/AATXAJyRRsN0FLjqhTntYf_KnGJ3IfQ1xAowYCNTOdpS=s96-c', 'google', '115771189953321301708', 'en-GB', '', '2022-06-17 23:52:06', '2022-06-18 00:27:09', NULL, NULL, 'nslrcio1@gmail.com', NULL, 0, 0, 'NSF1', 0, 3, '2022-07-01 22:57:13', NULL, 0),
(8, 3, 2, NULL, 2, 2, 'Mrs', 'Tha', 'Tha', 'Lecturer', 'Colombo', '0777777777', '0111111156', 'Female', 'tha@gmail.com', NULL, '', '', NULL, '', '2022-07-12 00:25:14', NULL, NULL, NULL, 'tha@gmail.com', '123456', 1, 0, '', 0, 1, '2022-07-18 10:32:51', 1, 0),
(9, 3, 1, 1, 1, 1, 'Mrs', 'Ithreessh', 'Mohamed', 'Lab Assistant', 'Colombo', '0777777777', '0111111111', 'Male', 'ith@gmail.com', NULL, '', '', NULL, '', '2022-07-18 10:30:26', NULL, NULL, NULL, 'ith@gmail.com', 'ith123', 1, 0, '', 0, NULL, NULL, 2, 0),
(10, 4, 2, NULL, 2, 4, 'Ms', 'Test333', 'Test333', 'Lab Assistant', 'test', '0777777777', '0111111111', 'Female', 'test333@gmail.com', NULL, '', '', NULL, '', '2022-07-18 10:55:39', NULL, NULL, NULL, 'test333@gmail.com', '123456', 1, 0, '', 0, NULL, NULL, 1, 0),
(11, 6, 2, NULL, 2, 2, 'Miss', 'Rayan', 'Niyas', 'Postgraduate Student', 'Colombo', '0777777777', '0111111111', 'Female', 'rayan@gmail.com', NULL, '', '', NULL, '', '2022-07-18 11:13:21', NULL, NULL, NULL, 'rayan@gmail.com', '123456', 1, 1, '', 0, 11, '2022-07-19 22:48:16', 8, 0),
(12, 6, 1, 3, 3, 11, 'Miss', 'Eliesh', 'Niyas', 'Principal Research Officer', 'Colombo', '0777777777', '0111111111', 'Female', 'eli@gmail.com', NULL, '', '', NULL, '', '2022-07-18 11:15:29', NULL, NULL, NULL, 'eli@gmail.com', '123456', 1, 1, '', 0, 1, '2022-08-19 18:02:44', 2, 0),
(13, 7, 1, 1, 1, 1, 'Ms', 'Fayika', 'Yoosuf', 'Principal Agriculture Scientist', 'nintavur', '0777777777', '0111111111', 'Female', 'fayi@gmail.com', NULL, '', '', NULL, '', '2022-07-18 11:23:44', NULL, NULL, NULL, 'fayi@gmail.com', '123456', 1, 1, '', 0, 1, '2022-08-19 18:02:14', NULL, 0),
(14, 5, 1, 5, 5, 13, 'Mr', 'A', 'Nas', 'Postgraduate Student', 'Colombo', '0777777777', '0111111111', 'Male', 'affiq@gmail.com', NULL, '', '', NULL, '', '2022-07-18 11:54:55', NULL, NULL, NULL, 'affiq@gmail.com', '123456', 1, 1, '', 0, 14, '2022-07-24 20:12:27', 1, 0),
(15, 3, 1, 5, 3, 11, 'Ms', 'Anwar', 'Zian', 'Lecturer', 'Colombo', '0777777777', '0111111111', 'Female', 'zian@gmail.com', NULL, '', '', NULL, '', '2022-07-24 08:57:37', NULL, NULL, NULL, 'zian@gmail.com', '$2y$10$o8IikV55r6MlVU/nhq/1t.T7N/qqT5La9CvrhoR8Xfs/ksXkp2nMu', 1, 1, '', 0, 1, '2022-08-31 22:29:34', 1, 0),
(17, 2, 1, 1, 1, 1, 'Mr', 'Ithreesh', 'Mohamed', 'Assistant director', 'Test', '0777777777', '0111111111', 'Male', 'ithreesh@gmail.com', NULL, '', '', NULL, '', '2022-07-24 22:16:08', NULL, NULL, NULL, 'ithreesh@gmail.com', '$2y$10$upidofzuU3oAUdFTMj3kGeUSqVH.IKV46W3AqcLJpe4uCOQCp2Rue', 1, 0, '', 0, 1, '2022-07-25 07:41:35', 1, 0),
(18, 7, 4, 2, 6, 14, 'Ms', 'Alana', 'Nas', 'Lecturer', 'Colombo', '0777777777', '0111111144', 'Female', '', NULL, '', '', NULL, '', '2022-07-25 16:14:19', NULL, NULL, NULL, 'alana@gmail.com', '$2y$10$CiZyee6qjh/EOnka2ncVMO1Uer1QUbCcWwcK9AsHQ3Hq9/RZgOBB2', 1, 0, '', 0, 1, '2022-07-25 16:15:30', NULL, 0),
(19, 3, 4, 2, 6, 14, 'Mr', 'ss', 'Ss', '', 'ss', '0777777777', '0112379801', 'Male', 'ss@gmail.com', NULL, '', '', NULL, '', '2022-07-25 17:18:25', NULL, NULL, NULL, 'ss@gmail.com', '$2y$10$hjMgCH46oZQqP2NHjxTwsu5sZdN.GkA6.FlTDT9pqo3abGv2ZpGxi', 0, 1, '', 0, 1, '2022-07-25 17:22:31', NULL, 0),
(20, 7, 1, 1, 1, 1, 'Ms', 'hh', 'hh', 'Principal Agriculture Scientist', 'Colombo', '0777777777', '0111111111', 'Female', NULL, NULL, '', '', NULL, '', '2022-07-30 11:10:12', NULL, NULL, NULL, 'hh@gmail.com', '$2y$10$PapC2PvBtLzmYOu0yhufauw31F8AOsLwrHCQIJsxItHaENpCJSG.G', 1, 1, '', 0, 20, '2022-08-18 09:58:35', NULL, 0),
(22, 7, 1, 3, 3, 11, 'Dr', 'Thasneem', 'Niyas', '', '', '0769434007', '', '', '', 'https://lh3.googleusercontent.com/a/AItbvmmopa3saD9dAZzKkE9tb5PWUfVpfdxYYHz1UwO0=s96-c', 'google', '117636139061528426133', 'en-GB', '', '2022-07-31 20:43:19', '2022-09-10 15:51:42', NULL, NULL, 'thasneemniyas123@gmail.com', '$2y$10$zbGhTXFJJ3D6a73u7NI6d.hQqWv/1jX9ZdjXczML.fstaJT5bLWSu', 1, 0, '', 0, 1, '2022-08-01 12:37:02', NULL, 0),
(23, 3, 2, 0, 2, 3, 'DR', 'Tt', 'Tt', 'Head of the Department', 'tt', '0762323333', '1011111111', 'Female', 'tt@gmail.com', NULL, '', '', NULL, '', '2022-08-01 12:38:12', NULL, NULL, NULL, 'tt@gmail.com', '$2y$10$xx4Ew86FzNihcsuQikuyzuALwER6PrQrucbalpSNa8Dd/KBRTR1/G', 1, 1, '', 0, 1, '2024-01-22 11:34:34', 1, 0),
(25, 4, 1, NULL, 0, 0, 'Ms', 'Niyas', 'Mohamed', 'Assistant director', 'nintavur', '0777776666', '0000000000', 'Male', '', NULL, '', '', NULL, '', '2022-08-30 11:34:36', NULL, NULL, NULL, 'niyas@gmail.com', '$2y$10$T0vYninfTO180scM8nl2COwvSPxPZA4yxzF/banYAeHm8fdt1AZ6W', 0, 0, '', 0, 1, '2022-08-31 23:01:55', NULL, 0),
(26, 4, 1, 0, 0, 0, 'Mr', 'Ithreesh', 'Mohamed', 'Additional Director\r\n', 'Nintavur', '0777776666', '0112379801', 'Male', '', NULL, '', '', NULL, '', '2022-08-30 11:39:49', NULL, NULL, NULL, 'ith123@gmail.com', '$2y$10$MZApByvaxpQOggHMajzSrO.1dPBVT3V1ELUrt5PYxmOe2g5Spg8aS', 1, 1, '', 0, 26, '2022-12-16 13:04:35', NULL, 0),
(27, 8, 3, NULL, NULL, NULL, 'Dr', 'Thas', 'Niyas', 'Administrative Incharge', 'Colombo', '0762323333', '1011111111', 'Female', NULL, NULL, '', '', NULL, '', '2022-09-01 15:55:42', NULL, NULL, NULL, 'thas12366@gmail.com', '$2y$10$f47wnLlXUZkiyq8fvthch.uh7NoQvkn5RWx6rWqWsBTXhbmS5PBHa', 1, 0, '', 0, NULL, NULL, NULL, 0),
(28, 8, 1, 5, NULL, NULL, 'Mrs', 'Fayika', 'nas', 'Assistant Lecturer', 'Nintavur1', '0769434007', '0332222748', 'Female', NULL, NULL, '', '', NULL, '', '2022-09-01 18:56:09', NULL, NULL, NULL, 'fayi1@gmail.com', '$2y$10$wefknjipy9llUpZ1xs9TrulRkPGU8kXqtVLn4fDGx4QY7oBHkqeji', 1, 0, '', 0, NULL, NULL, NULL, 0),
(29, 8, 1, 5, 0, 0, 'Dr', 'Test', 'Niyas', 'Chairman', 'Colombo', '0762323333', '1011111111', 'Male', '', NULL, '', '', NULL, '', '2022-09-02 00:22:36', NULL, NULL, NULL, 'tt777@gmail.com', '$2y$10$mccMzlkJ87exTFu/xOXQRu7/dx3eO.TKOPp2tXZ9uEOsKM3v/jfPu', 1, 0, '', 0, 1, '2022-09-02 00:23:08', NULL, 0),
(30, 8, 1, 1, 1, 1, 'Miss', 'Elisha', 'Niyas', 'Chairman', 'Colombo', '0762323333', '0112758000', 'Female', '', NULL, '', '', NULL, '', '2022-09-06 13:07:38', NULL, NULL, NULL, 'eli1@gmail.com', '$2y$10$9NncXHO9AZlgs4i5mbYRqOc/sWPAlbYO0QkQkF9UVonjev1BOTqNC', 1, 1, '', 0, 1, '2025-02-13 19:14:03', NULL, 0),
(44, 10, NULL, 0, NULL, NULL, NULL, 'Avishka', 'Shehan', NULL, NULL, '0125815118', NULL, NULL, 'jspshehan@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'jspshehan@gmail.com', '$2y$10$iGocoWVxWzzrMMhnCQTBT.hWAZo4Vy9qG0SaZvAWfwjL2hTf9Xkd.', 1, 0, NULL, 0, NULL, NULL, 2147483647, 0),
(45, 8, NULL, 0, NULL, NULL, NULL, 'Nipuna', 'Janaranjana', NULL, NULL, '0725815118', NULL, 'Male', 'nj@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'nj@gmail.com', '$2y$10$Zef7DOR9EneIzEmmhC6lNuKCDNQGCRROUPXo6M8sN1grY8uE.W1Bu', 1, 0, NULL, 0, NULL, '2026-04-09 14:01:23', 2147483647, 0),
(46, 10, NULL, 0, NULL, NULL, NULL, 'Pubudu', 'Shehan', NULL, NULL, '0725252654', NULL, 'Male', 'pubudu@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'pubudu@gmail.com', '$2y$10$ezEQf1kWH2SamrJMTQYdGuG.1ANPJtu.AFQFoDPEU66Ycl82Bz.Xy', 1, 0, NULL, 0, NULL, '2026-04-09 14:01:55', 2147483647, 0),
(47, 10, NULL, 0, NULL, NULL, NULL, 'Chamath', 'Upeka', NULL, NULL, '0724585652', NULL, NULL, 'c@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'c@gmail.com', '$2y$10$pHaF3Jgjs.vk6Zx86/TyF.4.T7w4D5URPP7sNjk.jlMlu6viVcwAq', 1, 0, NULL, 0, NULL, NULL, 2147483647, 0),
(48, 8, 1, 0, NULL, NULL, 'Mr', 'avishka', 'shehan', NULL, NULL, NULL, NULL, 'Male', 'avishka@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'avishka@gmail.com', '$2a$12$b2bH6Ml1RYAY.s7OM8TNVO8EmNGzjIfYhNesuMu2Bozuxr6xP4C02', 1, 1, NULL, 0, NULL, '2025-12-10 11:47:49', NULL, 0),
(55, 10, NULL, 0, NULL, NULL, NULL, 'Sasindu', 'Dilshan', NULL, NULL, '0724512852', NULL, NULL, 'nipunajanaranjana7@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'nipunajanaranjana7@gmail.com', '$2y$10$/NV4LE6dwyH54sSyn8RAauhuRyILe.B5/G1OMrLNxHNC8UuDbKzu6', 1, 0, NULL, 0, NULL, NULL, 2147483647, 1),
(56, 10, NULL, 0, NULL, NULL, NULL, 'nimal', 'jayasiri', NULL, NULL, '0725815118', NULL, NULL, 'nimal@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'nimal@gmail.com', '$2y$10$tcxZUshnVau5KezzgwqQKOm7U6/cRmW3p52Nq.v0m8ETG53ZP9Wry', 1, 0, NULL, 0, NULL, NULL, 2147483647, 0),
(57, 10, NULL, 0, NULL, NULL, NULL, 'nimal', 'jayasiri', NULL, NULL, '0725815118', NULL, NULL, 'jevohe3081@fanlvr.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'jevohe3081@fanlvr.com', '$2y$10$WOEt3OfRFk1XKtISPhaD6uu05iApxVmlyGqG5wX8QnG/mjOZ5YnDq', 1, 0, NULL, 0, NULL, NULL, 2147483647, 1),
(58, 10, NULL, 0, NULL, NULL, NULL, 'Nisansala', 'Hansamali', NULL, NULL, '0725815118', NULL, NULL, 'nisansala@nsf.gov.lk', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'nisansala@nsf.gov.lk', '$2y$10$ZtWu2FofptKBrUonxFlWpe0RAv7hI0rGQMYmJggk.UdmX.wjPSwqe', 1, 0, NULL, 0, NULL, NULL, 2147483647, 1),
(59, 1, NULL, 0, NULL, NULL, NULL, 'System', 'Admin', NULL, NULL, '0724585212', NULL, NULL, 'admin@instrumentcare.gov.lk', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, 'admin@instrumentcare.gov.lk', '$2y$10$rtf.bYUqLpQfAiroyBDqxeZr16ys/tv.MjWVwLYNGeaNVnQV3rbua', 1, 0, NULL, 0, NULL, NULL, 2147483647, 0),
(66, 8, 4, 0, NULL, NULL, 'Mr', 'Kalana', 'supun', ' IT Professional', 'Galgamuwa,Kurunegala', '0725815118', '0725815118', 'Male', 'kalana@gmail.com', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, '$2y$10$2EB47T9TVu7RcpzKHssEtO6l4a066pbWnqX6.eexz9pDkDavV5AZW', 1, 0, NULL, 0, NULL, NULL, NULL, 0),
(68, 10, 2, 0, NULL, NULL, 'Mrs', 'Sara', 'rasmi', 'Software Engineer Trainee', '52, Mosque Road, Kalutara', '0772979564', '0345587451', 'Female', 'sajeeahrasmi@gmail.com', 'uploads/profile-images/tech_68_1775540465.png', '', '', NULL, '', NULL, NULL, '2026-09-13 02:32:52', NULL, 'sajeeahrasmi@gmail.com', '$2y$10$PZa2Zvm1uUpcqlHreaw6POQdUu5qAnbuHMeyR/KUOg6FeaxbJ/seu', 1, 1, NULL, 0, NULL, '2026-04-09 13:40:46', 2147483647, 1),
(69, 5, 2, 0, NULL, NULL, 'Ms', 'Sajeea', 'Rasmi', ' IT Professional', 'Mosque Road, Kalutara', '0777777777', '0777777777', 'Female', 'rasmisara064@gmail.com', NULL, '', '', NULL, '', NULL, NULL, '2026-09-13 03:06:31', NULL, 'rasmisara064@gmail.com', '$2y$10$upidofzuU3oAUdFTMj3kGeUSqVH.IKV46W3AqcLJpe4uCOQCp2Rue', 1, 0, NULL, 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_feedbacks`
--

CREATE TABLE `user_feedbacks` (
  `userf_id` int(10) NOT NULL,
  `u_name` varchar(300) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `user_image` varchar(600) DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedbacks`
--

INSERT INTO `user_feedbacks` (`userf_id`, `u_name`, `address`, `email`, `phone_number`, `subject`, `message`, `user_image`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 'Mrs. Thasneem', 'Nintavur', 'thasneemmys1@gmail.com', '0332222748', 'About IDB', 'test1', NULL, 1, NULL, '2022-08-26 15:31:57', NULL, 0, NULL, NULL),
(2, 'Mrs. Thasneem', 'Colombo', 'tt@gmail.com', '0332222748', 'About IDB', 'test2', NULL, 1, NULL, '2022-08-26 15:32:04', NULL, 0, NULL, NULL),
(3, 'Mrs. Thasneem11', 'Colombo', 'thasneem@gmail.com', '0412222681', 'About IDB', '                                                  ytyty                                  ', NULL, 1, NULL, '2022-08-26 20:32:00', NULL, 0, NULL, NULL),
(4, 'rayann test', 'Nintavur1', 'hh@gmail.com', '0522258201', 'About IDB', '                          hghghgf                                                          ', NULL, 1, NULL, '2022-08-26 20:32:42', NULL, 0, NULL, NULL),
(5, 'Mrs. Thasn', 'Colombo', 'thasneem@gmail.com', '0112758000', 'About IDB', '                    gfhgh                                                                ', '', 1, NULL, '2022-08-27 18:45:17', NULL, 0, NULL, NULL),
(6, 'Eliesh', 'Nintavur', 'hh@gmail.com', '0112758000', 'About IDB', '                    ttyty                                                                ', '', 1, NULL, '2022-08-27 18:55:20', NULL, 0, NULL, NULL),
(7, 'Mrs. Thasneem', 'Colombo', 'nelumpriya@yahoo.com', '0522258201', 'About IDB', '                                     jk                                               ', '', 1, NULL, '2022-08-27 19:15:12', NULL, 0, NULL, NULL),
(8, 'th@gmail.com', 'Colombo', 'test12@gmail.com', '0111111144', 'Test', '              efrer                                                                      ', 'food.png', 1, NULL, '2022-09-01 00:52:03', NULL, 0, NULL, NULL),
(9, 'Thasneem Niyas123', NULL, 'thasneemmys@gmail.com', '0777777777', 'About IDB', 'test', 'food1.png', NULL, NULL, '2022-09-01 13:52:58', NULL, 0, NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_email_verification_user` (`user_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `home_news`
--
ALTER TABLE `home_news`
  ADD PRIMARY KEY (`home_news_id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`institute_id`);
ALTER TABLE `institutes` ADD FULLTEXT KEY `name_of_index_institute_name` (`name`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`instrument_id`);
ALTER TABLE `instrument` ADD FULLTEXT KEY `name_of_index` (`instrument_name`);
ALTER TABLE `instrument` ADD FULLTEXT KEY `name_of_index1` (`inst_keywords`);
ALTER TABLE `instrument` ADD FULLTEXT KEY `name_of_index_instrument_name` (`instrument_name`);
ALTER TABLE `instrument` ADD FULLTEXT KEY `name_of_index_inst_keywords` (`inst_keywords`);

--
-- Indexes for table `instrument_categories`
--
ALTER TABLE `instrument_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_instrument_category_name` (`name`);

--
-- Indexes for table `instrument_condition`
--
ALTER TABLE `instrument_condition`
  ADD PRIMARY KEY (`condition_id`);

--
-- Indexes for table `instrument_record_situation`
--
ALTER TABLE `instrument_record_situation`
  ADD PRIMARY KEY (`statusId`);

--
-- Indexes for table `instrument_types`
--
ALTER TABLE `instrument_types`
  ADD PRIMARY KEY (`instrument_type_id`);
ALTER TABLE `instrument_types` ADD FULLTEXT KEY `name_of_index_parameters` (`parameters`);
ALTER TABLE `instrument_types` ADD FULLTEXT KEY `keywords` (`keywords`);
ALTER TABLE `instrument_types` ADD FULLTEXT KEY `instrument_type` (`instrument_type`);

--
-- Indexes for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`laboratory_id`);

--
-- Indexes for table `laboratory_categories`
--
ALTER TABLE `laboratory_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_lab_category_name` (`name`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_instruments`
--
ALTER TABLE `new_instruments`
  ADD PRIMARY KEY (`new_instrument_id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_technician_id` (`technician_id`),
  ADD KEY `fk_service_requests_user` (`user_id`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`summary_id`);

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
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `technician_details`
--
ALTER TABLE `technician_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `technician_instruments`
--
ALTER TABLE `technician_instruments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_technician` (`technician_id`),
  ADD KEY `fk_instrument` (`instrument_id`),
  ADD KEY `fk_new_instrument` (`new_instrument_id`);

--
-- Indexes for table `technician_instrument_categories`
--
ALTER TABLE `technician_instrument_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_tic` (`technician_id`,`instrument_category_id`),
  ADD KEY `fk_tic_instrument_category` (`instrument_category_id`);

--
-- Indexes for table `technician_laboratory_categories`
--
ALTER TABLE `technician_laboratory_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_tlc` (`technician_id`,`laboratory_category_id`),
  ADD KEY `fk_tlc_lab_category` (`laboratory_category_id`);

--
-- Indexes for table `technician_oem_certificates`
--
ALTER TABLE `technician_oem_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oemcert_technician` (`technician_id`);

--
-- Indexes for table `technician_search_logs`
--
ALTER TABLE `technician_search_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `technician_id` (`technician_id`);

--
-- Indexes for table `technician_work_experiences`
--
ALTER TABLE `technician_work_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_workexp_technician` (`technician_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_feedbacks`
--
ALTER TABLE `user_feedbacks`
  ADD PRIMARY KEY (`userf_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `email_verification`
--
ALTER TABLE `email_verification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_news`
--
ALTER TABLE `home_news`
  MODIFY `home_news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `institute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instrument_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `instrument_categories`
--
ALTER TABLE `instrument_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `instrument_condition`
--
ALTER TABLE `instrument_condition`
  MODIFY `condition_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instrument_types`
--
ALTER TABLE `instrument_types`
  MODIFY `instrument_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `laboratory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `laboratory_categories`
--
ALTER TABLE `laboratory_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `new_instruments`
--
ALTER TABLE `new_instruments`
  MODIFY `new_instrument_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `summary`
--
ALTER TABLE `summary`
  MODIFY `summary_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13692;

--
-- AUTO_INCREMENT for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technician_details`
--
ALTER TABLE `technician_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `technician_instruments`
--
ALTER TABLE `technician_instruments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `technician_instrument_categories`
--
ALTER TABLE `technician_instrument_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `technician_laboratory_categories`
--
ALTER TABLE `technician_laboratory_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `technician_oem_certificates`
--
ALTER TABLE `technician_oem_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `technician_search_logs`
--
ALTER TABLE `technician_search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `technician_work_experiences`
--
ALTER TABLE `technician_work_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user_feedbacks`
--
ALTER TABLE `user_feedbacks`
  MODIFY `userf_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD CONSTRAINT `fk_email_verification_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `fk_service_requests_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_technician_id` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technician_details`
--
ALTER TABLE `technician_details`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technician_instruments`
--
ALTER TABLE `technician_instruments`
  ADD CONSTRAINT `fk_instrument` FOREIGN KEY (`instrument_id`) REFERENCES `instrument` (`instrument_id`),
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
-- Constraints for table `technician_search_logs`
--
ALTER TABLE `technician_search_logs`
  ADD CONSTRAINT `technician_search_logs_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `technician_search_logs_ibfk_2` FOREIGN KEY (`technician_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `technician_work_experiences`
--
ALTER TABLE `technician_work_experiences`
  ADD CONSTRAINT `fk_workexp_technician` FOREIGN KEY (`technician_id`) REFERENCES `technician_details` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
