-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 10:37 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `institute_id`, `faculty_id`, `department_name`, `address`, `phone_number`, `email`, `abbreviation`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 1, 'Molecular Medicine', 'Kelaniya', '0156454765', 'chm@kln.ac.lk', 'CHM', 1, NULL, '2022-03-13 23:15:09', NULL, 0, NULL, NULL),
(2, 2, 0, 'Technical Services', '120/4A , Vidya Mawatha, Colombo 07', '0112379800', 'info@iti.lk', 'TSD', 1, NULL, '2022-07-11 12:54:05', NULL, 0, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `institute_id`, `faculty_name`, `address`, `phone_number`, `email`, `description`, `ministry`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 'Medicine', 'Kelaniya', '0112961000', 'info.med@kln.ac.lk', ' The Faculty of Medicine, University of Kelaniya is one of ten state medical schools in Sri Lanka. It commenced classes with the admission of 120 medical students in September 1991 and has now graduated more than 20 batches of medical students.\r\n                                                                                  ', 'Ministry of Higher Education', 1, NULL, '2022-03-13 23:12:28', NULL, 0, NULL, NULL),
(2, 4, 'Medicine and Allied Sciences', 'Saliyapura, AD 50008 Sri Lanka', '0252234462', 'deanoffice@med.rjt.ac.lk', 'The Faculty of Medicine and Allied Sciences was established in July 2006.  Faculty expect students to have a rewarding educational experience  as they prepare for careers as clinicians, teachers and scientists.                                                                                                                                                                        ', 'Higher Education', 1, NULL, '2022-07-13 09:40:44', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `institute_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`institute_id`, `name`, `address`, `phone_number`, `email`, `description`, `ministry`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 'University of Kelaniya', 'Kelaniya', '0112903903', 'info@kln.ac.lk', ' The University of Kelaniya has its origin in the historic Vidyalankara Pirivena, founded in 1875 as a centre of learning for Buddhist monks. It was one of the two great national centres of traditional higher learning, heralding the first phase of the national movement and national resurgence.                                                                                   ', 'Ministry of Education', 1, NULL, '2022-03-13 23:09:35', NULL, 0, NULL, NULL),
(2, 'Industrial Technology Institute (ITI)', '363 Bauddhaloka Mawatha, Colombo 07', '0112379801', 'info@iti.lk', '    The Industrial Technology Institute is a wholly owned institute of the Government of Sri Lanka and functions under the jurisdiction of the State Ministry of Digital Technology and Enterprise Development.   A statutory board incorporated on the 1st April 1998, under the Science and Technology Dev', 'State Ministry of Digital Technology & Enterprise Development, Sri Lanka', 1, NULL, '2022-05-13 21:22:32', NULL, 0, NULL, NULL),
(3, 'test', 'Colombo', '0111111111', 'thasneemmys@gmail.com', '                        test                                                            ', 'test', 1, NULL, '2022-05-14 22:22:52', NULL, 1, 1, '2022-05-14 22:22:56'),
(4, 'Rajarata University of Sri Lanka', 'Mihintale -50300, Sri Lanka', '0252266643', 'info@rjt.ac.lk', '     Rajarata University of Sri Lanka (RUSL) was established as the eleventh National University in Sri Lanka and was inaugurally opened on the 31st January 1996 as per the Gazette Notification 896/2 and the University act 16 of 1978. At its inception, four faculties, namely the Faculty of Social Sciences and Humanities, Faculty of Management Studies, Faculty of Agriculture and Faculty of Applied Sciences were established and in the year 2006, the Faculty of Medicine and Allied Sciences was established as the fifth faculty of RUSL. Vision of RUSL is to be a centre of excellence in higher education and research. The mission of RUSL is to produce innovative intellectuals capable of taking challenges in the context of global development through the competencies developed from the academic programs, research and training of wide nature.                                                                               ', 'Higher Education', 1, NULL, '2022-07-13 09:39:36', NULL, 0, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`instrument_id`, `instrument_name`, `institute_id`, `faculty_id`, `department_id`, `laboratory_id`, `instrument_type_id`, `condition_id`, `manufacturer`, `model`, `year_of_manufacture`, `accessories`, `inst_description`, `catalog_link`, `catalog_upload`, `catalog_access`, `price`, `vendor_name`, `vendor_contact`, `vendor_url`, `no_of_samples_per_cycle`, `no_of_samples_per_day`, `total_usage_hour_per_day`, `availabiltiy_of_staff`, `external_researchers`, `funding_source`, `date_commencement_operation`, `record_status`, `contact_person_name`, `contact_person_email`, `contact_person_phone_number`, `contact_person_mobile_number`, `inst_keywords`, `p_categories`, `image_upload1`, `image_upload2`, `image_upload3`, `image_upload4`, `isDeleted`, `created_user_id`, `created_date_time`, `updated_user_id`, `updated_date_time`, `deletedBy`, `deleted_date_time`, `record_endDtm`) VALUES
(1, 'PH Meter', 1, 1, 1, 1, 1, 1, 'Manufacturer 1', 'FT5678', 2000, 'test', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            pH meter, electric device used to measure hydrogen-ion activity (acidity or alkalinity) in solution. Fundamentally, a pH meter consists of a voltmeter attached to a pH-responsive electrode and a reference (unvarying) electrode. The pH-responsive electrode is usually glass, and the reference is usually a silver–silver chloride electrode, although a mercury–mercurous chloride (calomel) electrode is sometimes used.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 'http://cat1.lk', '12-2016_E.pdf', 'http://cat1.lk', '5000.00', 'TEST', '0111117777', 'http://vendor1.com', 7, 8, 4, 'Yes', 1, 'NSF', '2021-01-01', 0, 'Prof. Menaka Hapugoda', 'menakaha@yahoo.com', '0112960483', '0714458606', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Acidity, PH range                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Vegetables, Fruits, seeds                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 'phm1.jpg', 'nslrc_cat.jpg', 'cover2.jpg', 'cover4.jpg', 0, 1, '2022-03-13 23:18:08', 1, '2022-06-09 15:34:33', NULL, NULL, NULL),
(2, 'Carbon dioxide Incubator', 2, 0, 2, 2, 8, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', '', 'IJIRES_1760.pdf', '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '2021-01-01', 0, 'Dr. P Ranasinghe', 'sdd_hts@iti.lk', '0112797322', '0714458606', '                                                                                                                                                                                                                                                                                                                                    ', '                                                                                                                                                                                                                                                                                                                                    ', 'ph5.jpg', 'cover1.jpg', NULL, NULL, 0, 1, '2022-03-13 23:33:58', 1, '2022-06-09 15:22:19', NULL, NULL, NULL),
(3, 'test', 2, 0, 2, 2, 2, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                            ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '0000-00-00', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-03-25 23:40:15', 1, '2022-03-27 10:40:12', NULL, NULL, NULL),
(4, 'test2', 2, 0, 2, 2, 4, 1, '', '', 0000, '', '                                                                                                                                                                        ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '0000-00-00', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-03-25 23:55:59', 1, '2022-03-27 10:40:24', NULL, NULL, NULL),
(5, 'test3', 2, 0, 2, 2, 6, 1, '', '', 0000, '', '                                                                                                                                                                        ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '0000-00-00', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-03-26 00:22:56', 1, '2022-03-27 10:40:34', 1, '2022-05-14 22:19:11', NULL),
(6, 'img1', 2, 0, 2, 2, 11, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                            ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                      ', '                                                                                                                                                                                                                                                      ', NULL, '', '', '', 0, 1, '2022-06-01 22:54:08', 1, '2022-06-01 23:24:28', NULL, NULL, NULL),
(7, 'img33', 2, 0, 2, 2, 15, 1, '', '', 0000, '', '                                                                                                                                                                        ', '', '', '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                     ', '                                                                                                                                                                     ', NULL, '', '', '', 1, 1, '2022-06-01 23:31:36', 1, '2022-06-01 23:39:01', 3, '2022-07-01 23:06:23', NULL),
(8, 'oooq11', 2, 0, 2, 2, 15, 1, '', '', 0000, '', '                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '', 'cover1.jpg', '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '0000-00-00', 0, '', '', '', '', '                                                                                                                                                                                                                                                                                                                                                                                                                        ', '                                                                                                                                                                                                                                                                                                                                                                                                                        ', '', '', '', '', 0, 1, '2022-06-09 13:09:31', 3, '2022-07-01 23:06:33', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instrument_condition`
--

CREATE TABLE `instrument_condition` (
  `condition_id` int(10) NOT NULL,
  `instrument_condition` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instrument_record_situation`
--

CREATE TABLE `instrument_record_situation` (
  `statusId` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `instrument_type` varchar(1024) DEFAULT NULL,
  `parameters` varchar(1000) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `relevant_instruments` longtext DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instrument_types`
--

INSERT INTO `instrument_types` (`instrument_type_id`, `instrument_type`, `parameters`, `description`, `keywords`, `relevant_instruments`, `isDeleted`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`) VALUES
(1, 'Food & Fodder', 'Acidity of the food, Humidity', 'Food crops are those crops which cultivated to human consumption such as Rice, Wheat etc. (which are foods to humans).  Fodder crops are those which are cultivated to feed livestocks (that is Cattle, sheep, goat etc) Examples are hay, stray plant leaves etc', 'Healthy, Weight Loss, Organic Food, Fast Food, Food Processor', 'PH Meter, Thermo Meter', 0, 1, NULL, '2022-05-24 10:51:40', NULL),
(2, 'Materials preparation and Characterization', NULL, NULL, 'Furnace, Vacuum Oven, Vacuum coating unit, Sputtering unit,  Glove box, Impedance analyser, Frequency response analyser (FRA), LCR meter, Potentiostat, Fourier Transform Infrared Spectroscopy (FTIR), UV/Vis Spectrophotmeter, Atomic Force Microscope (AFM), Polarizing microscope, Scanning and transmission electron microscopes, Scanning and transmission electron microscopes, Oscilloscope, Differential scanning calorimeter (DSC), Differential thermal analyser (DTA), Thermal Gravimetric Analyser (TGA),Universal testing machine, Triaxial testing machine, Direct shear testing machine, Non-destructive testing equipment, Material and component testing equipment, Ground penetration radar, Electrical & electronic instrumentation, Compresive and tensile testing equipment, Soil testing equipment', NULL, 0, NULL, NULL, NULL, NULL),
(3, 'Mixing, shaking, blending and separating ', NULL, NULL, 'Ultra-centrifuge, Soxhlet apparatus, Shaker, Vibratory sieve shaker, Synthesizer Sequencing System, Retriever Fraction Collector, Rapid digester, Fraction Collector', NULL, 0, NULL, NULL, NULL, NULL),
(4, 'Drying, cooling, heat transfer and sample preservation. ', NULL, NULL, 'Freezing Unit, Muffle furnace, Autoclave,  Bomb calorimeter, Vacuum evaporator, Thermal cycler   ', NULL, 0, NULL, NULL, NULL, NULL),
(5, 'Quantitative and Qulitative  measures y testing ', NULL, NULL, 'Whiteness meter, water quality checker, Leaf area meter,  Tensiometer, Porometer/ Fluorometer, Advanced surveying equipment', NULL, 0, NULL, NULL, NULL, NULL),
(6, 'Cleaning or degreasing', NULL, NULL, 'Ultra-sonic cleaner, Ultra-Sonic disintegrator, Echosounders', NULL, 0, NULL, NULL, NULL, NULL),
(7, 'Radiation based measurements ', NULL, NULL, 'X array apparatus, Neutron probe, Whirl mixer fission, Scintillation counter, X-ray diffractometer (powder and single crystal), Tube solarimeter', NULL, 0, NULL, NULL, NULL, NULL),
(8, 'Total analysis and general measuring', '', '', 'Spyro analyzers, Sensitometer, Semi-conductor parameter analyzer, Reverse Osmosis unit, Flow injection analyzer, Scanning calorimeter, Potentiostat/ Galvanometer,  EC & Salinity meter, COD analyzer,', '', 0, 1, NULL, '2022-05-24 11:39:42', NULL),
(9, 'Environmental control and controlled environment ', NULL, NULL, 'Soft incubator, Smoking oven, Safety cabinet, Refrigeration incubator, CO2 humidified incubator, Temperature controlled cabinet', NULL, 0, NULL, NULL, NULL, NULL),
(10, 'Chromatographic and spectrometric ', NULL, NULL, 'High-performance liquid chromatography (HPLC), Gas chromatography (GC), Medium Pressure Liquid Chromatography (MPLC),  Ion-chromatograph, Mass spectrometric (MS), Gas Chromatography Mass Spectrometry (GC-MS), UV-VIS spectrophotometer, Raman spectrophotometer, Infrared spectrophotometer (both Fourier transform and standard), Nuclear magnetic resonance spectrometer, X-ray fluorescence spectrophotometer, Inductively coupled plasma spectrophotometer-mass spectrophotometer (ICP-MS)', NULL, 0, NULL, NULL, NULL, NULL),
(11, 'Computer and IT related ', NULL, NULL, 'Special computers, Servers, Plotters, super computers,  Robotic Arms', NULL, 0, NULL, NULL, NULL, NULL),
(12, 'Solar cell and energy storage research', NULL, NULL, 'Solar irradiance  measuring equipment – Secondary Standard Instruments (pyranometer, pyrheliometer), Weather station, Solar cell measuring equipment, Solar simulator, Battery cycling equipment ', NULL, 0, NULL, NULL, NULL, NULL),
(13, 'Energy and Photometry', NULL, NULL, 'Energy/Power analyzer with data logging, Flue gas analysers, Thermal conductivity meter, multi-channel temperature-humidity data logger for fluids & surfaces, Globe Thermometer, Low & high range Anemometer Thermographic camera, Heat fluxmeter, Indoor Air Quality meter with data logging, Ultrasonic flow meter, Luminance meter, Illuminance meter, Integrated Sphere, Spectral lightmeter, CCT/CRI meter, ', NULL, 0, NULL, NULL, NULL, NULL),
(14, 'Molecular Bilogy', NULL, NULL, 'PCR machines, DNA sequencing equipment, UV transilluminator', NULL, 0, NULL, NULL, NULL, NULL),
(15, 'Biomedical Engineering', NULL, NULL, 'Biosignal extraction systems', NULL, 0, NULL, NULL, NULL, NULL),
(16, 'Mechnical Engineering', NULL, NULL, 'Human motion analysis systems, mobile robot plaforms, Robot manipulators, 3D printers, CNC Machines', NULL, 0, NULL, NULL, NULL, NULL),
(17, 'Prototyping equipment', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(18, 'Other……….(ex: Metrology)', NULL, NULL, '3D-Scanner, Tomography, CMM (Coordinate-Measuring Machine), Universal Testing Machine, Precision measuring instruments ', NULL, 0, NULL, NULL, NULL, NULL),
(19, 'test', 'test1', '                                                                                                        7                                                                                                                                                    ', '1', NULL, 0, 1, NULL, '2022-05-13 23:29:05', NULL),
(20, 'test1', 'test2', '            yyyyyyyyyyyyyyyy', 'k1', NULL, 0, 1, NULL, '2022-05-23 12:14:00', NULL),
(22, 'tt', 'tt', '         tt                                                                           ', 'tt', NULL, 0, 1, NULL, '2022-05-23 12:12:23', NULL),
(23, 'ww1', 'ww', 'ww                                                                                    ', 'ww', '         wq                                                                           ', 0, 3, NULL, '2022-07-01 23:15:28', NULL);

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
  `address` varchar(200) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laboratories`
--

INSERT INTO `laboratories` (`laboratory_id`, `department_id`, `faculty_id`, `institute_id`, `laboratory_name`, `address`, `phone_number`, `email`, `description`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 1, 1, 1, 'Molecular Medicine', 'Kelaniya', '3147483647', 'mm@kln.ac.lk', 'MM', 1, NULL, '2022-03-13 23:16:18', NULL, 0, NULL, NULL),
(2, 2, 0, 2, 'Water & Waste Water Testing laboratory', '120/4A , Vidya Mawatha, Colombo 07', '0112379901', 'sdd_cml@iti.lk', 'Water and Wastewater laboratories of CML offer a variety of tests for quantification of chemical and physical parameters in water and waste water in compliance with ISO 17025 quality system.  We analyze Potable water, Effluent and Processing water, Industrial water and Environmental water (ground, s', 1, NULL, '2022-03-13 23:32:31', NULL, 0, NULL, NULL),
(3, 2, 0, 2, 'test1111', 'Colombo', '0111111111', 'bbb@gmail.com', 'test2', 1, NULL, '2022-07-11 15:28:27', NULL, 0, NULL, NULL),
(4, 2, 0, 2, 'testEdit44', 'Colombo', '0111111111', 'test@gmail.com', 'Crops are those crops which cultivated to human consumption such as Rice, Wheat etc. (which are foods to humans).  Fodder crops are those which are cultivated to feed livestocks (that is Cattle, sheep, goat etc) Examples are hay, stray plant leaves etc', 1, NULL, '2022-07-12 16:18:59', NULL, 0, NULL, NULL),
(5, 1, 1, 1, 'test33', 'Colombo', '0112379801', 'bbb@gmail.com', '      test 22                                                                             ', 1, NULL, '2022-07-12 16:22:25', NULL, 0, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:00:44'),
(2, 1, 'Thasneem', 'Backup Log Display', 'Admin/logHistoryBackup', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:01:04'),
(3, 1, 'Thasneem', 'Backup Log Upload', 'Admin/logHistoryUpload', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:01:11'),
(4, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:02:04'),
(5, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:08:38'),
(6, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:09:30'),
(7, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:09:33'),
(8, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:10:08'),
(9, 1, 'Thasneem', 'Instrument Editing', 'Admin/editInstrument', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:10:26'),
(10, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:10:27'),
(11, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:10:30'),
(12, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:11:24'),
(13, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:11:40'),
(14, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:11:40'),
(15, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:11:48'),
(16, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:07'),
(17, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:11'),
(18, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:13'),
(19, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:15'),
(20, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:17'),
(21, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:18'),
(22, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:20'),
(23, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:21'),
(24, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:12:22'),
(25, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:31'),
(26, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:33'),
(27, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:34'),
(28, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:35'),
(29, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:36'),
(30, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:37'),
(31, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:38'),
(32, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:39'),
(33, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:41'),
(34, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:51'),
(35, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:15:53'),
(36, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:03'),
(37, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:03'),
(38, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:08'),
(39, 3, 'Test', 'login', 'Login/loginMe', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:19'),
(40, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:23'),
(41, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:24'),
(42, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:25'),
(43, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:27'),
(44, 3, 'Test', 'output', 'BaseController/logout', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:29'),
(45, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:41'),
(46, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:44'),
(47, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:53'),
(48, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:53'),
(49, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:16:56'),
(50, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:17:04'),
(51, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:17:10'),
(52, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:17:11'),
(53, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:17:13'),
(54, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:20:08'),
(55, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:20:09'),
(56, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:21:27'),
(57, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:21:29'),
(58, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:21:39'),
(59, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:22:56'),
(60, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:23:49'),
(61, 3, 'Test', 'User update', 'Institute_Manager/editUser', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:24:07'),
(62, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:24:07'),
(63, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:24:19'),
(64, 3, 'Test', 'User update', 'Institute_Manager/editUser', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:27:14'),
(65, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:27:14'),
(66, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:30:52'),
(67, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:30:54'),
(68, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:31:28'),
(69, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:31:42'),
(70, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:31:44'),
(71, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:31:45'),
(72, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:35:01'),
(73, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:36:16'),
(74, 3, 'Test', 'Instrument Deletion', 'Institute_Manager/deleteInstrument', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:36:23'),
(75, 3, 'Test', 'Instrument Editing', 'Institute_Manager/editInstrument', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:36:33'),
(76, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:36:33'),
(77, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:40:14'),
(78, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:40:43'),
(79, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:42:01'),
(80, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:42:04'),
(81, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:45:19'),
(82, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:45:21'),
(83, 3, 'Test', 'Category Editing', 'Institute_Manager/editCategory', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:45:28'),
(84, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:45:28'),
(85, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:45:39'),
(86, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:45:41'),
(87, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:28'),
(88, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:29'),
(89, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:30'),
(90, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:31'),
(91, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:33'),
(92, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:39'),
(93, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:42'),
(94, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:43'),
(95, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 18:51:47'),
(96, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:00'),
(97, 3, 'Test', 'User update', 'Institute_Manager/editUser', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:14'),
(98, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:14'),
(99, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:19'),
(100, 3, 'Test', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:27'),
(101, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:35'),
(102, 3, 'Test', 'Laboratory Listing', 'Division_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:42'),
(103, 3, 'Test', 'Department Listing', 'Division_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:43'),
(104, 3, 'Test', 'Faculty Listing', 'Division_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:45'),
(105, 3, 'Test', 'Institute Listing', 'Division_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:46'),
(106, 3, 'Test', 'Instrument Listing', 'Division_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:00:48'),
(107, 3, 'Test', 'Institute Listing', 'Division_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:07:25'),
(108, 3, 'Test', 'Faculty Listing', 'Division_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:07:26'),
(109, 3, 'Test', 'Department Listing', 'Division_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:07:27'),
(110, 3, 'Test', 'Laboratory Listing', 'Division_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:07:28'),
(111, 3, 'Test', 'Department Listing', 'Division_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:07:29'),
(112, 3, 'Test', 'Department Listing', 'Division_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:08:46'),
(113, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:08:47'),
(114, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:08:50'),
(115, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:08:59'),
(116, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:09:01'),
(117, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:09:14'),
(118, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:09:15'),
(119, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:09:18'),
(120, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:09:44'),
(121, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:10:11'),
(122, 3, 'Test', 'Category Listing', 'Division_Manager/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:10:14'),
(123, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:10:27'),
(124, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:10:31'),
(125, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:11:27'),
(126, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:11:31'),
(127, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:11:38'),
(128, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:12:03'),
(129, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:12:22'),
(130, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:12:42'),
(131, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:31'),
(132, 3, 'Test', 'User update', 'Institute_Manager/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:43'),
(133, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:43'),
(134, 3, 'Test', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:46'),
(135, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:52'),
(136, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:55'),
(137, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:56'),
(138, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:57'),
(139, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:57'),
(140, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:14:58'),
(141, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:15'),
(142, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:17'),
(143, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:29'),
(144, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:34'),
(145, 3, 'Test', 'User update', 'Institute_Manager/editUser', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:46'),
(146, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:46'),
(147, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:51'),
(148, 3, 'Test', 'login', 'Login/loginMe', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:15:58'),
(149, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:16:08'),
(150, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:16:11'),
(151, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:18:00'),
(152, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:18:01'),
(153, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:18:02'),
(154, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:18:03'),
(155, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:18:07'),
(156, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:18:07'),
(157, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:23:28'),
(158, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:23:31'),
(159, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:23:32'),
(160, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:23:35'),
(161, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:23:37'),
(162, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:23:38'),
(163, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:27'),
(164, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:28'),
(165, 3, 'Test', 'User update', 'Institute_Manager/editUser', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:41'),
(166, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:41'),
(167, 3, 'Test', 'output', 'BaseController/logout', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:47'),
(168, 3, 'Test', 'login', 'Login/loginMe', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:52'),
(169, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:26:55'),
(170, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:28:24'),
(171, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:28:25'),
(172, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:15'),
(173, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:17'),
(174, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:21'),
(175, 3, 'Test', 'output', 'BaseController/logout', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:28'),
(176, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:33'),
(177, 1, 'Thasneem', 'User Listing', 'Institute_Manager/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:36'),
(178, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:42'),
(179, 6, 'ni1', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:50'),
(180, 6, 'ni1', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:31:53'),
(181, 6, 'ni1', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:33:16'),
(182, 6, 'ni1', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:34:55'),
(183, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:37:31'),
(184, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:37:34'),
(185, 1, 'Thasneem', 'Instrument Listing', 'Institute_Manager/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:41:06');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(186, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:42:40'),
(187, 1, 'Thasneem', 'Instrument Listing', 'Institute_Manager/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:38'),
(188, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:44'),
(189, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:45'),
(190, 1, 'Thasneem', 'Instrument Listing', 'Institute_Manager/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:47'),
(191, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:51'),
(192, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:52'),
(193, 1, 'Thasneem', 'Instrument Listing', 'Institute_Manager/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:43:55'),
(194, 1, 'Thasneem', 'Instrument Listing', 'Institute_Manager/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:39'),
(195, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:41'),
(196, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:42'),
(197, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:48'),
(198, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:48'),
(199, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:54'),
(200, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:44:55'),
(201, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:16'),
(202, 6, 'ni1', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:27'),
(203, 6, 'ni1', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:30'),
(204, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:34'),
(205, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:34'),
(206, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:40'),
(207, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:40'),
(208, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:47'),
(209, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:46:47'),
(210, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:54:22'),
(211, 6, 'ni1', 'Error', 'Login/error', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:54:22'),
(212, 6, 'ni1', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 19:56:15'),
(213, 3, 'Test', 'login', 'Login/loginMe', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:17:00'),
(214, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:17:03'),
(215, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:17:05'),
(216, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:17:06'),
(217, 3, 'Test', 'output', 'BaseController/logout', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:17:18'),
(218, 3, 'Test', 'login', 'Login/loginMe', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:18:54'),
(219, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:18:59'),
(220, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:26:46'),
(221, 3, 'Test', 'output', 'BaseController/logout', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:13'),
(222, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:22'),
(223, 1, 'Thasneem', 'User Listing', 'Institute_Manager/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:25'),
(224, 1, 'Thasneem', 'User update', 'Institute_Manager/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:35'),
(225, 1, 'Thasneem', 'User Listing', 'Institute_Manager/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:35'),
(226, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:40'),
(227, 3, 'Test', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:47'),
(228, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:49'),
(229, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:50'),
(230, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:52'),
(231, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:53'),
(232, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:55'),
(233, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:34:57'),
(234, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:39'),
(235, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:41'),
(236, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:42'),
(237, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:43'),
(238, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:44'),
(239, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:45'),
(240, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:47'),
(241, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:53:49'),
(242, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:07'),
(243, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:11'),
(244, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:12'),
(245, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:12'),
(246, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:13'),
(247, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:15'),
(248, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:17'),
(249, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 21:59:20'),
(250, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:03'),
(251, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:04'),
(252, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:04'),
(253, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:06'),
(254, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:07'),
(255, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:09'),
(256, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:49'),
(257, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:50'),
(258, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:53'),
(259, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:00:55'),
(260, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:27'),
(261, 3, 'Test', 'User update', 'Institute_Manager/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:37'),
(262, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:37'),
(263, 3, 'Test', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:39'),
(264, 3, 'Test', 'login', 'Login/loginMe', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:46'),
(265, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:48'),
(266, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:51'),
(267, 3, 'Test', 'output', 'BaseController/logout', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:04:55'),
(268, 3, 'Test', 'login', 'Login/loginMe', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:13'),
(269, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:15'),
(270, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:24'),
(271, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:40'),
(272, 3, 'Test', 'User update', 'Institute_Manager/editUser', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:56'),
(273, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:56'),
(274, 3, 'Test', 'output', 'BaseController/logout', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:09:59'),
(275, 3, 'Test', 'login', 'Login/loginMe', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:07'),
(276, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:14'),
(277, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:16'),
(278, 3, 'Test', 'output', 'BaseController/logout', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:30'),
(279, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:37'),
(280, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:39'),
(281, 2, 'Niyas', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:40'),
(282, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:40'),
(283, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:41'),
(284, 2, 'Niyas', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:10:42'),
(285, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:55:34'),
(286, 2, 'Niyas', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:55:36'),
(287, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:55:36'),
(288, 2, 'Niyas', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:55:40'),
(289, 2, 'Niyas', 'User update', 'Institute_Manager/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:55:58'),
(290, 2, 'Niyas', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:55:58'),
(291, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:01'),
(292, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:08'),
(293, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:10'),
(294, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:11'),
(295, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:12'),
(296, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:13'),
(297, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:56:17'),
(298, 3, 'Test', 'Error', 'Login/error', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:25'),
(299, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:34'),
(300, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:40'),
(301, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:42'),
(302, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:43'),
(303, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:44'),
(304, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:44'),
(305, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:45'),
(306, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:46'),
(307, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:46'),
(308, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 22:59:49'),
(309, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:01'),
(310, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:05'),
(311, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:06'),
(312, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:07'),
(313, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:08'),
(314, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:09'),
(315, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:11'),
(316, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:13'),
(317, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:14'),
(318, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:15'),
(319, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:21'),
(320, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:28'),
(321, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:30'),
(322, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:31'),
(323, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:31'),
(324, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:32'),
(325, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:32'),
(326, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:33'),
(327, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:01:36'),
(328, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:49'),
(329, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:52'),
(330, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:54'),
(331, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:55'),
(332, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:56'),
(333, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:57'),
(334, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:58'),
(335, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:02:58'),
(336, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:02'),
(337, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:09'),
(338, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:11'),
(339, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:12'),
(340, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:13'),
(341, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:15'),
(342, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:16'),
(343, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:22'),
(344, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:25'),
(345, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:40'),
(346, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:42'),
(347, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:43'),
(348, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:44'),
(349, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:47'),
(350, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:51'),
(351, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:51'),
(352, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:52'),
(353, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:03:56'),
(354, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:03'),
(355, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:04'),
(356, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:05'),
(357, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:08'),
(358, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:14'),
(359, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:16'),
(360, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:17'),
(361, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:19'),
(362, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:19'),
(363, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:04:21'),
(364, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:06:28'),
(365, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:07:49'),
(366, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:07:50'),
(367, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:07:53'),
(368, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:07:55'),
(369, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:07:57'),
(370, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:08:04'),
(371, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:08:06'),
(372, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:08:07'),
(373, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:08:08');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(374, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:08:09'),
(375, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:08:10'),
(376, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:10:33'),
(377, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:10:38'),
(378, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:10:53'),
(379, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:10:59'),
(380, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:08'),
(381, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:13'),
(382, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:24'),
(383, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:33'),
(384, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:43'),
(385, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:48'),
(386, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:11:51'),
(387, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:12:16'),
(388, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:12:23'),
(389, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:12:29'),
(390, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:13:12'),
(391, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:13:17'),
(392, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:13:20'),
(393, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:13:26'),
(394, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:13:59'),
(395, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:14:04'),
(396, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:14:13'),
(397, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:14:15'),
(398, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:14:26'),
(399, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:38'),
(400, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:41'),
(401, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:45'),
(402, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:47'),
(403, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:48'),
(404, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/users', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:49'),
(405, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:55'),
(406, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:57'),
(407, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/users', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:15:58'),
(408, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:16:08'),
(409, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:16:10'),
(410, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:18:08'),
(411, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:18:16'),
(412, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:18:27'),
(413, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:18:53'),
(414, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:18:56'),
(415, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:18:59'),
(416, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:19:00'),
(417, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:19:05'),
(418, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:19:12'),
(419, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:22:15'),
(420, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:22:19'),
(421, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:22:26'),
(422, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:02'),
(423, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:05'),
(424, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:07'),
(425, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:08'),
(426, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:12'),
(427, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:21'),
(428, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:24'),
(429, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:25'),
(430, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:27'),
(431, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:24:31'),
(432, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:10'),
(433, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:17'),
(434, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:18'),
(435, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:19'),
(436, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:20'),
(437, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:21'),
(438, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:23'),
(439, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:24'),
(440, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:25'),
(441, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:29'),
(442, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:39'),
(443, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:41'),
(444, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:42'),
(445, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:43'),
(446, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:44'),
(447, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:45'),
(448, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:46'),
(449, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:46'),
(450, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:51'),
(451, 4, 'Bbb', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:26:59'),
(452, 4, 'Bbb', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:23'),
(453, 4, 'Bbb', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:31'),
(454, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:38'),
(455, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:42'),
(456, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:44'),
(457, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:45'),
(458, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:45'),
(459, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:46'),
(460, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:47'),
(461, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:48'),
(462, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:49'),
(463, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:51'),
(464, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:58'),
(465, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:28:59'),
(466, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:01'),
(467, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:02'),
(468, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:02'),
(469, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:03'),
(470, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:04'),
(471, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:05'),
(472, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:06'),
(473, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:13'),
(474, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:15'),
(475, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:16'),
(476, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:17'),
(477, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:18'),
(478, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:19'),
(479, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:20'),
(480, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:29:23'),
(481, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:30:20'),
(482, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:30:21'),
(483, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:31:15'),
(484, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:31:18'),
(485, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:31:20'),
(486, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:31:21'),
(487, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:22'),
(488, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:24'),
(489, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:31'),
(490, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:34'),
(491, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:35'),
(492, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:36'),
(493, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:39'),
(494, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:41'),
(495, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:42'),
(496, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:32:45'),
(497, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:34:36'),
(498, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:34:38'),
(499, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:34:39'),
(500, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:34:40'),
(501, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:34:41'),
(502, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:34:44'),
(503, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:35:16'),
(504, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:35:21'),
(505, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:35:22'),
(506, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:02'),
(507, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:04'),
(508, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:05'),
(509, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:07'),
(510, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:08'),
(511, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:09'),
(512, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:10'),
(513, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:13'),
(514, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:14'),
(515, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:22'),
(516, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:29'),
(517, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:31'),
(518, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:32'),
(519, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:33'),
(520, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:33'),
(521, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:34'),
(522, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:35'),
(523, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:35'),
(524, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:36'),
(525, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:38'),
(526, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:39'),
(527, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:40'),
(528, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:41'),
(529, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:42'),
(530, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:43'),
(531, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:44'),
(532, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:50'),
(533, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:37:58'),
(534, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:00'),
(535, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:05'),
(536, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:06'),
(537, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:07'),
(538, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:08'),
(539, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:09'),
(540, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:13'),
(541, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:30'),
(542, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:38:32'),
(543, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:08'),
(544, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:24'),
(545, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:27'),
(546, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:30'),
(547, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:31'),
(548, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:32'),
(549, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:33'),
(550, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:34'),
(551, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:34'),
(552, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:40:35'),
(553, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:03'),
(554, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:04'),
(555, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:05'),
(556, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:06'),
(557, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:07'),
(558, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:07'),
(559, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:08'),
(560, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:09'),
(561, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:42:10');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(562, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:43:34'),
(563, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:43:35'),
(564, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:43:37'),
(565, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:43:39'),
(566, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:43:45'),
(567, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:43:49'),
(568, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:55:48'),
(569, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:55:58'),
(570, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:56:16'),
(571, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:57:43'),
(572, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:57:45'),
(573, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:57:48'),
(574, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:57:54'),
(575, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:58:00'),
(576, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:58:03'),
(577, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:58:04'),
(578, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:58:05'),
(579, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-01 23:58:07'),
(580, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:10'),
(581, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:22'),
(582, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:25'),
(583, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:27'),
(584, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:28'),
(585, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:29'),
(586, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:30'),
(587, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:31'),
(588, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:32'),
(589, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:33'),
(590, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:00:39'),
(591, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:03:42'),
(592, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:05:11'),
(593, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:05:12'),
(594, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:06:20'),
(595, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:06:21'),
(596, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:06:22'),
(597, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:06:23'),
(598, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:06:24'),
(599, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:06:25'),
(600, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:06'),
(601, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:17'),
(602, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:18'),
(603, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:24'),
(604, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:25'),
(605, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:27'),
(606, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:32'),
(607, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:34'),
(608, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:35'),
(609, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:37'),
(610, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:38'),
(611, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:40'),
(612, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:55'),
(613, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:56'),
(614, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:58'),
(615, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:48:59'),
(616, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:49:00'),
(617, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:49:01'),
(618, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:49:02'),
(619, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:20'),
(620, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:32'),
(621, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:34'),
(622, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:36'),
(623, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:37'),
(624, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:38'),
(625, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:39'),
(626, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:40'),
(627, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:50:46'),
(628, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:51:42'),
(629, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:51:43'),
(630, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:51:45'),
(631, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:51:45'),
(632, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:51:46'),
(633, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:51:47'),
(634, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:52:31'),
(635, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:52:32'),
(636, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:06'),
(637, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:08'),
(638, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:09'),
(639, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:11'),
(640, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:13'),
(641, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:23'),
(642, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:24'),
(643, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:26'),
(644, 2, 'Niyas', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:29'),
(645, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:53:33'),
(646, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:38'),
(647, 1, 'Thasneem', 'Department Listing', 'Institute_Manager/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:40'),
(648, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:44'),
(649, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:52'),
(650, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:54'),
(651, 2, 'Niyas', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:55'),
(652, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:58:57'),
(653, 2, 'Niyas', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:59:02'),
(654, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 00:59:06'),
(655, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:16'),
(656, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:20'),
(657, 2, 'Niyas', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:22'),
(658, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:23'),
(659, 2, 'Niyas', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:25'),
(660, 2, 'Niyas', 'User Listing', 'Institute_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:26'),
(661, 2, 'Niyas', 'Category Listing', 'Institute_Manager/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:27'),
(662, 2, 'Niyas', 'Instrument Listing', 'Institute_Manager/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:14:28'),
(663, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:17:39'),
(664, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:17:41'),
(665, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:17:42'),
(666, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:17:43'),
(667, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:17:44'),
(668, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:23'),
(669, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:25'),
(670, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:27'),
(671, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:28'),
(672, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:29'),
(673, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:34'),
(674, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:45'),
(675, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:49'),
(676, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:50'),
(677, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:52'),
(678, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:53'),
(679, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:54'),
(680, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:54'),
(681, 3, 'Test', 'Access Denial', 'Super_Admin/accesslogincontrol', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:18:55'),
(682, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:08'),
(683, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:11'),
(684, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:13'),
(685, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:15'),
(686, 3, 'Test', 'User Listing', 'Institute_Manager/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:16'),
(687, 3, 'Test', 'Category Listing', 'Institute_Manager/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:18'),
(688, 3, 'Test', 'Instrument Listing', 'Institute_Manager/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:20'),
(689, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:22'),
(690, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:39'),
(691, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:41'),
(692, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:43'),
(693, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:44'),
(694, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:19:45'),
(695, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:29'),
(696, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:30'),
(697, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:32'),
(698, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:33'),
(699, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:34'),
(700, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:34'),
(701, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:35'),
(702, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:36'),
(703, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:20:39'),
(704, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:39'),
(705, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:41'),
(706, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:41'),
(707, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:42'),
(708, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:43'),
(709, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:43'),
(710, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:44'),
(711, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:45'),
(712, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:46'),
(713, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:21:46'),
(714, 2, 'Niyas', 'User Listing', 'Division_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:22:55'),
(715, 2, 'Niyas', 'User Listing', 'Division_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:24:41'),
(716, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:24:43'),
(717, 2, 'Niyas', 'User Listing', 'Division_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:24:52'),
(718, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:25:04'),
(719, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:26:18'),
(720, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:26:20'),
(721, 2, 'Niyas', 'User Listing', 'Division_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:26:23'),
(722, 2, 'Niyas', 'User update', 'Division_Manager/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:26:39'),
(723, 2, 'Niyas', 'User Listing', 'Division_Manager/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:26:40'),
(724, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:26:43'),
(725, 6, 'Ni1', 'login', 'Login/loginMe', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:27:07'),
(726, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:27:13'),
(727, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:27:15'),
(728, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:27:34'),
(729, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:27:34'),
(730, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:28:21'),
(731, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:28:22'),
(732, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:28:23'),
(733, 6, 'Ni1', 'Category Listing', 'Administrative_Incharge/categoryListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:30:52'),
(734, 6, 'Ni1', 'Instrument Listing', 'Administrative_Incharge/instrumentListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:30:53'),
(735, 6, 'Ni1', 'User Listing', 'Administrative_Incharge/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:30:54'),
(736, 6, 'Ni1', 'User update', 'Administrative_Incharge/editUser', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:31:07'),
(737, 6, 'Ni1', 'User Listing', 'Administrative_Incharge/userListing', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:31:07'),
(738, 6, 'Ni1', 'output', 'BaseController/logout', 5, 'Administrative_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:31:11'),
(739, 6, 'Ni1', 'login', 'Login/loginMe', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:31:20'),
(740, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:31:22'),
(741, 6, 'Ni1', 'Access Denial', 'Super_Admin/accesslogincontrol', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:31:24'),
(742, 6, 'Ni1', 'Category Listing', 'Technical_Incharge/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:34:35'),
(743, 6, 'Ni1', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:34:37'),
(744, 6, 'Ni1', 'Category Listing', 'Technical_Incharge/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:34:54'),
(745, 6, 'Ni1', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:34:57'),
(746, 6, 'Ni1', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:17');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(747, 6, 'Ni1', 'Category Listing', 'Technical_Incharge/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:18'),
(748, 6, 'Ni1', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:21'),
(749, 6, 'Ni1', 'Category Listing', 'Technical_Incharge/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:23'),
(750, 6, 'Ni1', 'Category Listing', 'Technical_Incharge/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:30'),
(751, 6, 'Ni1', 'output', 'BaseController/logout', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:49'),
(752, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:35:59'),
(753, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:01'),
(754, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:03'),
(755, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:07'),
(756, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:08'),
(757, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:38'),
(758, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:39'),
(759, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:40'),
(760, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:41'),
(761, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:41'),
(762, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:43'),
(763, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:43'),
(764, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:47'),
(765, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:55'),
(766, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:36:57'),
(767, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:01'),
(768, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:03'),
(769, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:04'),
(770, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:13'),
(771, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:14'),
(772, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:15'),
(773, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:16'),
(774, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:17'),
(775, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:20'),
(776, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:28'),
(777, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:29'),
(778, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:31'),
(779, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:32'),
(780, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:33'),
(781, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:37:35'),
(782, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:38:24'),
(783, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:38:26'),
(784, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:38:40'),
(785, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:38:41'),
(786, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:38:42'),
(787, 2, 'Niyas', 'Department Listing', 'Institute_Manager/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:39:21'),
(788, 2, 'Niyas', 'Faculty Listing', 'Institute_Manager/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:39:23'),
(789, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:39:27'),
(790, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:06'),
(791, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:09'),
(792, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:15'),
(793, 1, 'Thasneem', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:17'),
(794, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:18'),
(795, 1, 'Thasneem', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:20'),
(796, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:23'),
(797, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:29'),
(798, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:30'),
(799, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:32'),
(800, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:35'),
(801, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:41'),
(802, 6, 'Ni1', 'login', 'Login/loginMe', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:47'),
(803, 6, 'Ni1', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:50'),
(804, 6, 'Ni1', 'Category Listing', 'Technical_Incharge/categoryListing', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:52'),
(805, 6, 'Ni1', 'output', 'BaseController/logout', 6, 'Technical_Incharge', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:40:57'),
(806, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:16'),
(807, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:20'),
(808, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:22'),
(809, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:23'),
(810, 2, 'Niyas', 'Category Listing', 'Technical_Incharge/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:24'),
(811, 2, 'Niyas', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:25'),
(812, 2, 'Niyas', 'Category Listing', 'Technical_Incharge/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:26'),
(813, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:29'),
(814, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:30'),
(815, 2, 'Niyas', 'User Listing', 'Administrative_Incharge/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:33'),
(816, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:43'),
(817, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:49'),
(818, 3, 'Test', 'Department Listing', 'Institute_Manager/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:51'),
(819, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:54'),
(820, 3, 'Test', 'Faculty Listing', 'Institute_Manager/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:55'),
(821, 3, 'Test', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:56'),
(822, 3, 'Test', 'User Listing', 'Administrative_Incharge/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:57'),
(823, 3, 'Test', 'Category Listing', 'Technical_Incharge/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:57'),
(824, 3, 'Test', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:47:58'),
(825, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:00'),
(826, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:06'),
(827, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:08'),
(828, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:09'),
(829, 1, 'Thasneem', 'Category Listing', 'Technical_Incharge/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:10'),
(830, 1, 'Thasneem', 'Instrument Listing', 'Technical_Incharge/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:12'),
(831, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:14'),
(832, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:15'),
(833, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:17'),
(834, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:20'),
(835, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:21'),
(836, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:23'),
(837, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:24'),
(838, 1, 'Thasneem', 'Access Denial', 'Super_Admin/accesslogincontrol', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:25'),
(839, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:28'),
(840, 1, 'Thasneem', 'Category Listing', 'Technical_Incharge/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:30'),
(841, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:48:47'),
(842, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:08'),
(843, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:10'),
(844, 1, 'Thasneem', 'Laboratory Listing', 'Institute_Manager/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:12'),
(845, 1, 'Thasneem', 'Department Listing', 'Institute_Manager/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:12'),
(846, 1, 'Thasneem', 'Faculty Listing', 'Institute_Manager/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:13'),
(847, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:13'),
(848, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 07:49:16'),
(849, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:07:52'),
(850, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:07:55'),
(851, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:07:57'),
(852, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:07:58'),
(853, 2, 'Niyas', 'Access Denial', 'Super_Admin/accesslogincontrol', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:07:59'),
(854, 2, 'Niyas', 'Faculty Listing', 'Admin/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:08:22'),
(855, 2, 'Niyas', 'Institute Listing', 'Admin/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:08:23'),
(856, 2, 'Niyas', 'Department Listing', 'Admin/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:08:24'),
(857, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:08:25'),
(858, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:08:26'),
(859, 2, 'Niyas', 'Category Listing', 'Admin/categoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-02 08:08:27'),
(860, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 09:00:00'),
(861, 2, 'Niyas', 'Institute Listing', 'Admin/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 09:00:08'),
(862, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 09:00:12'),
(863, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 09:00:20'),
(864, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 09:05:19'),
(865, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:16:13'),
(866, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:16:16'),
(867, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:17:30'),
(868, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:17:32'),
(869, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:17:32'),
(870, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:28:56'),
(871, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:28:56'),
(872, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-04 21:29:50'),
(873, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:28:06'),
(874, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:28:09'),
(875, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:33:23'),
(876, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:35:55'),
(877, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:36:46'),
(878, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:38:32'),
(879, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:38:34'),
(880, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:38:35'),
(881, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:43:47'),
(882, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:43:47'),
(883, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:44:13'),
(884, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:44:14'),
(885, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:46:56'),
(886, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:48:40'),
(887, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:49:12'),
(888, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 06:49:16'),
(889, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 07:22:48'),
(890, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-05 07:23:04'),
(891, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 05:51:34'),
(892, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 05:51:38'),
(893, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 05:53:59'),
(894, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 05:56:25'),
(895, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:00:12'),
(896, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:01:01'),
(897, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:01:03'),
(898, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:01:04'),
(899, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:56:20'),
(900, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:56:23'),
(901, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:56:27'),
(902, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:56:41'),
(903, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:56:49'),
(904, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-06 06:56:57'),
(905, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:19:44'),
(906, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:19:48'),
(907, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:20:03'),
(908, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:23:50'),
(909, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:23:50'),
(910, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:23:58'),
(911, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:31:47'),
(912, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:32:02'),
(913, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:53:29'),
(914, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:53:41'),
(915, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:53:58'),
(916, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:53:58'),
(917, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:54:05'),
(918, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 12:54:05'),
(919, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:00:07'),
(920, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:01:31'),
(921, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:01:32'),
(922, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:01:56'),
(923, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:39:19'),
(924, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:40:52'),
(925, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:40:53'),
(926, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:42:34'),
(927, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:42:45'),
(928, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:44:20'),
(929, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:46:44'),
(930, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:46:45'),
(931, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:47:00'),
(932, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:47:00'),
(933, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:47:11'),
(934, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:47:26'),
(935, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:48:17');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(936, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:48:19'),
(937, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:48:33'),
(938, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:49:09'),
(939, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:49:54'),
(940, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:51:04'),
(941, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:51:18'),
(942, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:52:16'),
(943, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:52:30'),
(944, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:52:32'),
(945, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:52:45'),
(946, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:53:26'),
(947, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:53:32'),
(948, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:53:44'),
(949, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:55:56'),
(950, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:57:03'),
(951, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:57:26'),
(952, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:57:27'),
(953, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 13:58:06'),
(954, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 14:21:25'),
(955, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 14:21:45'),
(956, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 14:49:33'),
(957, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:03:31'),
(958, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:27:36'),
(959, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:27:46'),
(960, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:27:46'),
(961, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:28:05'),
(962, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:28:11'),
(963, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:28:11'),
(964, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:28:27'),
(965, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:28:27'),
(966, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:29:45'),
(967, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:29:59'),
(968, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:29:59'),
(969, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:32:32'),
(970, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:32:53'),
(971, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:32:53'),
(972, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:34:13'),
(973, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:35:18'),
(974, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:41:58'),
(975, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:42:12'),
(976, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 15:42:12'),
(977, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:19:34'),
(978, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:02'),
(979, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:11'),
(980, 3, 'Test', 'Institute Listing', 'Admin/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:15'),
(981, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:16'),
(982, 3, 'Test', 'Department Listing', 'Admin/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:17'),
(983, 3, 'Test', 'Laboratory Listing', 'Admin/laboratoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:19'),
(984, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:23'),
(985, 3, 'Test', 'Category Listing', 'Admin/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:25'),
(986, 3, 'Test', 'Instrument Listing', 'Admin/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:26'),
(987, 3, 'Test', 'Institute Listing', 'Admin/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:20:43'),
(988, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:37:14'),
(989, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 16:37:17'),
(990, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:20:50'),
(991, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:20:52'),
(992, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:21:12'),
(993, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:28:29'),
(994, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:28:49'),
(995, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:32:17'),
(996, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:35:14'),
(997, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:35:17'),
(998, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:35:19'),
(999, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:35:25'),
(1000, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:36:17'),
(1001, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:38:51'),
(1002, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 20:38:53'),
(1003, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 22:27:45'),
(1004, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 22:30:53'),
(1005, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 22:47:22'),
(1006, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 22:47:40'),
(1007, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 23:06:40'),
(1008, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 23:06:45'),
(1009, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-11 23:15:41'),
(1010, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:05:57'),
(1011, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:23:00'),
(1012, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:23:25'),
(1013, 1, 'Thasneem', 'Adding User', 'Admin/addNewUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:25:14'),
(1014, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:25:14'),
(1015, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:28:27'),
(1016, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:28:27'),
(1017, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:31:06'),
(1018, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:31:44'),
(1019, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:31:45'),
(1020, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:41:28'),
(1021, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:46:08'),
(1022, 5, 'thas', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:46:22'),
(1023, 5, 'thas', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:50:22'),
(1024, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:50:28'),
(1025, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:50:30'),
(1026, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:50:49'),
(1027, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:51:05'),
(1028, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:51:05'),
(1029, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:51:16'),
(1030, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 00:51:23'),
(1031, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:07:24'),
(1032, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:07:32'),
(1033, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:15:38'),
(1034, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:15:43'),
(1035, 8, 'Tha', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:15:54'),
(1036, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:23:13'),
(1037, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:23:58'),
(1038, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:27:40'),
(1039, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:30:34'),
(1040, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:36:01'),
(1041, 8, 'Tha', 'User update', 'Admin/editUser', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:36:41'),
(1042, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:36:41'),
(1043, 8, 'Tha', 'User update', 'Admin/editUser', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:37:12'),
(1044, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:37:12'),
(1045, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:48:45'),
(1046, 8, 'Tha', 'User Listing', 'Admin/userListing', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:50:21'),
(1047, 8, 'Tha', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:50:26'),
(1048, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:50:46'),
(1049, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:50:59'),
(1050, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:51:27'),
(1051, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:51:28'),
(1052, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:52:02'),
(1053, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:52:02'),
(1054, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:52:19'),
(1055, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:52:27'),
(1056, 2, 'Niyas', 'Password Change', 'User/changePassword', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:52:38'),
(1057, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:54:07'),
(1058, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:54:19'),
(1059, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:54:38'),
(1060, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:54:38'),
(1061, 2, 'Niyas', 'Password Change', 'User/changePassword', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:55:03'),
(1062, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:55:04'),
(1063, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:58:52'),
(1064, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:59:25'),
(1065, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:59:25'),
(1066, 2, 'Niyas', 'Password Change', 'User/changePassword', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:59:51'),
(1067, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 01:59:53'),
(1068, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:02:21'),
(1069, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:02:25'),
(1070, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:02:26'),
(1071, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:02:32'),
(1072, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:02:39'),
(1073, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:02:43'),
(1074, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:03:37'),
(1075, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:03:38'),
(1076, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:03:59'),
(1077, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:04:31'),
(1078, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:04:31'),
(1079, 2, 'Niyas', 'Password Change', 'User/changePassword', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:04:49'),
(1080, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:04:51'),
(1081, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:06:08'),
(1082, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:06:09'),
(1083, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:06:35'),
(1084, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:06:35'),
(1085, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:06:56'),
(1086, 2, 'Niyas', 'Laboratory Editing', 'Admin/editLaboratory', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:07:03'),
(1087, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:07:03'),
(1088, 2, 'Niyas', 'Laboratory Editing', 'Admin/editLaboratory', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:07:17'),
(1089, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:07:17'),
(1090, 2, 'Niyas', 'Laboratory Editing', 'Admin/editLaboratory', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:07:35'),
(1091, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:07:35'),
(1092, 2, 'Niyas', 'Laboratory Editing', 'Admin/editLaboratory', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:14:22'),
(1093, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:14:22'),
(1094, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:14:53'),
(1095, 2, 'Niyas', 'Password Change', 'User/changePassword', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:23:39'),
(1096, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:23:40'),
(1097, 2, 'Niyas', 'Laboratory Listing', 'Admin/laboratoryListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:27:16'),
(1098, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 02:27:16'),
(1099, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 07:54:55'),
(1100, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 07:58:25'),
(1101, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:00:10'),
(1102, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:00:24'),
(1103, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:38:17'),
(1104, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:38:26'),
(1105, 1, 'Thasneem', 'Password Change', 'User/changePassword', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:38:47'),
(1106, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:38:51'),
(1107, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:39:59'),
(1108, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:56:32'),
(1109, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:57:11'),
(1110, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:57:58'),
(1111, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:58:00'),
(1112, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:58:40'),
(1113, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:59:07'),
(1114, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 08:59:07'),
(1115, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:10:10'),
(1116, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:10:13'),
(1117, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:11:24'),
(1118, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:11:43'),
(1119, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:11:43'),
(1120, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:11:53'),
(1121, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:12:03'),
(1122, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:12:27'),
(1123, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:12:49'),
(1124, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:12:49'),
(1125, 2, 'Niyas', 'User update', 'Admin/editUser', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:13:19'),
(1126, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:13:19'),
(1127, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:13:31'),
(1128, 2, 'Niyas', 'Faculty Listing', 'Admin/facultyListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:14:50'),
(1129, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:15:13');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1130, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:18:39'),
(1131, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:18:47'),
(1132, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:18:50'),
(1133, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:19:36'),
(1134, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:19:36'),
(1135, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:19:44'),
(1136, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:19:51'),
(1137, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:26:36'),
(1138, 4, 'Bbb', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:26:44'),
(1139, 4, 'Bbb', 'Password Change', 'User/changePassword', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:27:01'),
(1140, 4, 'Bbb', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:27:16'),
(1141, 4, 'Bbb', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:27:22'),
(1142, 4, 'Bbb', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:33:41'),
(1143, 4, 'Bbb', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:33:44'),
(1144, 4, 'Bbb', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:33:53'),
(1145, 4, 'Bbb', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:33:57'),
(1146, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:34:13'),
(1147, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:34:15'),
(1148, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:34:25'),
(1149, 5, 'thas', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:34:37'),
(1150, 5, 'thas', 'Password Change', 'User/changePassword', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:34:52'),
(1151, 5, 'thas', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:34:59'),
(1152, 5, 'thas', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:35:01'),
(1153, 5, 'thas', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:35:10'),
(1154, 5, 'thas', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:38:44'),
(1155, 5, 'thas', 'User All tasks', 'User/einstruments', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:38:53'),
(1156, 5, 'thas', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:38:57'),
(1157, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:39:04'),
(1158, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:39:05'),
(1159, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:39:28'),
(1160, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 09:39:28'),
(1161, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 10:41:23'),
(1162, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 11:27:49'),
(1163, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 11:28:00'),
(1164, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 11:28:04'),
(1165, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 11:28:10'),
(1166, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:10:04'),
(1167, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:10:09'),
(1168, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:10:35'),
(1169, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:10:38'),
(1170, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:10:56'),
(1171, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:11:00'),
(1172, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:11:16'),
(1173, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:11:21'),
(1174, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:19:06'),
(1175, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:19:15'),
(1176, 2, 'Niyas', 'Department Listing', 'Admin/departmentListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:19:19'),
(1177, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:19:21'),
(1178, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:19:27'),
(1179, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:19:37'),
(1180, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:21:13'),
(1181, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:21:16'),
(1182, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:23:04'),
(1183, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:31:39'),
(1184, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:31:44'),
(1185, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:32:37'),
(1186, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:39:27'),
(1187, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:39:35'),
(1188, 3, 'Test', 'Department Listing', 'Admin/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:39:45'),
(1189, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:41:25'),
(1190, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:42:11'),
(1191, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:42:24'),
(1192, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:42:26'),
(1193, 2, 'Niyas', 'User Listing', 'Admin/userListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:42:35'),
(1194, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 13:42:40'),
(1195, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 14:18:37'),
(1196, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 14:23:44'),
(1197, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 14:23:48'),
(1198, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 14:23:49'),
(1199, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 14:24:00'),
(1200, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:51'),
(1201, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:51'),
(1202, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:51'),
(1203, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:51'),
(1204, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:51'),
(1205, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:52'),
(1206, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:52'),
(1207, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:52'),
(1208, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:15:52'),
(1209, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 15:59:44'),
(1210, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:53'),
(1211, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:53'),
(1212, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:54'),
(1213, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:54'),
(1214, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:54'),
(1215, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:54'),
(1216, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:54'),
(1217, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:54'),
(1218, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:55'),
(1219, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1220, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1221, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1222, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1223, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1224, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1225, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1226, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:58'),
(1227, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:11:59'),
(1228, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:03'),
(1229, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:03'),
(1230, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:04'),
(1231, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:04'),
(1232, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:04'),
(1233, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:04'),
(1234, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:04'),
(1235, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:04'),
(1236, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:05'),
(1237, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:08'),
(1238, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:08'),
(1239, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:08'),
(1240, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:08'),
(1241, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:08'),
(1242, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:08'),
(1243, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:09'),
(1244, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:09'),
(1245, 2, 'Niyas', 'Error', 'Login/error', 4, 'Division_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:09'),
(1246, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:20'),
(1247, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:23'),
(1248, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:39'),
(1249, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:12:51'),
(1250, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:18:52'),
(1251, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:18:59'),
(1252, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:18:59'),
(1253, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:20:19'),
(1254, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:22:10'),
(1255, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:22:18'),
(1256, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:22:18'),
(1257, 1, 'Thasneem', 'Laboratory Editing', 'Admin/editLaboratory', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:22:25'),
(1258, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:22:25'),
(1259, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:26:12'),
(1260, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:26:35'),
(1261, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:26:36'),
(1262, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:26:50'),
(1263, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:26:51'),
(1264, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:27:04'),
(1265, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:27:04'),
(1266, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:28:19'),
(1267, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:28:19'),
(1268, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:28:36'),
(1269, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:28:36'),
(1270, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:28:52'),
(1271, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:29:14'),
(1272, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:29:14'),
(1273, 1, 'Thasneem', 'User update', 'Admin/editUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:29:33'),
(1274, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-12 16:29:33'),
(1275, 2, 'Niyas', 'login', 'Login/loginMe', 4, 'Division_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:42:02'),
(1276, 2, 'Niyas', 'Institute Listing', 'Institute_Manager/instituteListing', 4, 'Division_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:48:22'),
(1277, 2, 'Niyas', 'output', 'BaseController/logout', 4, 'Division_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:52:28'),
(1278, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:52:52'),
(1279, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:52:58'),
(1280, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:53:47'),
(1281, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:54:03'),
(1282, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:54:09'),
(1283, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:54:25'),
(1284, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:54:27'),
(1285, 3, 'Test', 'Instrument Listing', 'Admin/instrumentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 22:56:45'),
(1286, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:01:07'),
(1287, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:01:10'),
(1288, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:01:13'),
(1289, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:01:16'),
(1290, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:01:31'),
(1291, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:01:33'),
(1292, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:12:36'),
(1293, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:12:37'),
(1294, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:12:39'),
(1295, 3, 'Test', 'Department Listing', 'Admin/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:13:02'),
(1296, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:13:05'),
(1297, 3, 'Test', 'Department Listing', 'Admin/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:13:06'),
(1298, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:13:07'),
(1299, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:13:08'),
(1300, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.5060.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'Windows 10', '2022-07-12 23:13:13'),
(1301, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:38:31'),
(1302, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:38:35'),
(1303, 1, 'Thasneem', 'Adding Institute', 'Admin/addNewInstitute', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:39:36'),
(1304, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:39:36'),
(1305, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:39:40'),
(1306, 1, 'Thasneem', 'Adding Faculty', 'Admin/addNewFaculty', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:40:44'),
(1307, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:40:45'),
(1308, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:41:13'),
(1309, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:47:00'),
(1310, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:47:12'),
(1311, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:47:25'),
(1312, 1, 'Thasneem', 'Category Listing', 'Admin/categoryListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:48:56'),
(1313, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:55:47'),
(1314, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:55:47'),
(1315, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 09:59:16'),
(1316, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:00:45'),
(1317, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:00:55'),
(1318, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:27:53'),
(1319, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:28:48'),
(1320, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:34:22'),
(1321, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:34:59');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1322, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:35:04'),
(1323, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:39:39'),
(1324, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:39:51'),
(1325, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:39:56'),
(1326, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:39:58'),
(1327, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:40:27'),
(1328, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:40:44'),
(1329, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:40:47'),
(1330, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:42:17'),
(1331, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:42:30'),
(1332, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:42:34'),
(1333, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 10:42:38'),
(1334, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:01:10'),
(1335, 1, 'Thasneem', 'Institute Listing', 'Institute_Manager/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:01:15'),
(1336, 1, 'Thasneem', 'User Listing', 'Admin/userListing', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:01:27'),
(1337, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:01:33'),
(1338, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:02:12'),
(1339, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:02:17'),
(1340, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:02:19'),
(1341, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:25:07'),
(1342, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:25:11'),
(1343, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:28:50'),
(1344, 3, 'Test', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:29:58'),
(1345, 3, 'Test', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:18'),
(1346, 3, 'Test', 'Institute Listing', 'Institute_Manager/instituteListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:22'),
(1347, 3, 'Test', 'Faculty Listing', 'Admin/facultyListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:27'),
(1348, 3, 'Test', 'Department Listing', 'Admin/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:34'),
(1349, 3, 'Test', 'Department Listing', 'Admin/departmentListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:36'),
(1350, 3, 'Test', 'User Listing', 'Admin/userListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:38'),
(1351, 3, 'Test', 'Category Listing', 'Admin/categoryListing', 3, 'Institute_Manager', '::1', 'Chrome 103.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'Windows 10', '2022-07-13 12:50:51');

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
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(8, 'thasneemmys@gmail.com', 'bLSwB1J7xQYEtgz', 'Chrome 103.0.0.0', '::1', 0, 1, '2022-07-12 08:03:27', NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_provider` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `last_login_location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `undefineUser` tinyint(4) NOT NULL DEFAULT 1,
  `user_status` tinyint(4) DEFAULT 0,
  `other_institute_name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `updatedBy` int(10) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `institute_id`, `faculty_id`, `department_id`, `laboratory_id`, `title`, `first_name`, `last_name`, `designation`, `address`, `mobile_number`, `phone_number`, `gender`, `email`, `picture`, `oauth_provider`, `oauth_uid`, `locale`, `link`, `created`, `modified`, `last_login_date`, `last_login_location`, `username`, `password`, `undefineUser`, `user_status`, `other_institute_name`, `isDeleted`, `updatedBy`, `updatedDtm`, `createdBy`) VALUES
(1, 1, 1, 0, 1, 0, 'Ms', 'Mohamed Yoosuff', 'Thasneem', 'Head of the Department', '', '0788012345', '', '', 'thasneemmys@gmail.com', 'https://lh3.googleusercontent.com/a/AItbvml7BEt5ly65pHsshwHTTofBxIhy9oGQa76UVer4=s96-c', 'google', '103720349026835494004', 'en', '', '2021-12-08 17:26:50', '2022-07-12 15:15:49', NULL, NULL, 'thasneemmys@gmail.com', 'new123', 0, 1, '', 0, 1, '2022-07-12 16:29:33', 0),
(2, 4, 2, 0, 0, 0, '', 'Thasneem', 'Niyas', 'Lecturer', 'Colombo', '0777777777', '0111111111', '', '', 'https://lh3.googleusercontent.com/a/AItbvmmopa3saD9dAZzKkE9tb5PWUfVpfdxYYHz1UwO0=s96-c', 'google', '117636139061528426133', 'en-GB', '', '2022-03-14 15:58:08', '2022-07-12 13:11:54', NULL, NULL, 'thasneemniyas123@gmail.com', '123456', 1, 1, 'NSF', 0, 1, '2022-07-12 16:28:36', NULL),
(3, 3, 1, 1, 1, 1, 'Ms', 'Test', 'Test', 'Director', 'test', '0769434007', '1234567897', 'Female', '', NULL, '', '', NULL, '', '2022-03-14 21:19:58', NULL, NULL, NULL, 'test@gmail.com', '123456', 1, 1, '', 0, 1, '2022-07-12 16:28:19', NULL),
(4, 7, 2, NULL, 2, 2, 'Ms', 'Bbb', 'Bbb', 'Principal Scientist', 'bb', '0769434007', '1234567897', 'Female', '', NULL, '', '', NULL, '', '2022-03-14 21:49:08', NULL, NULL, NULL, 'bbb@gmail.com', '123456', 1, 1, 'test2', 0, 1, '2022-07-12 16:27:03', NULL),
(5, 7, 0, NULL, 0, 0, 'Mr', 'Thas', 'Thas', 'Director', 'Colombo', '0777777777', '0111111111', 'Female', '', NULL, '', '', NULL, '', '2022-05-22 22:23:10', NULL, NULL, NULL, 'th@gmail.com', '123456', 1, 1, 'rrr', 0, 1, '2022-07-12 16:26:50', NULL),
(6, 6, 0, NULL, 0, 0, 'Mr', 'Ni1', 'Ni1', 'Principal Research Officer', 'Colombo', '0777777777', '0111111111', 'Male', '', NULL, '', '', NULL, '', '2022-05-22 22:26:02', NULL, NULL, NULL, 'ni11@gmail.com', '123456', 1, 0, 'ni', 0, 2, '2022-07-12 01:51:27', NULL),
(7, 1, 0, 0, 0, 0, 'Mr', 'Io', 'Nsf', 'Director', 'Colombo', '0777776666', '0111111144', 'Male', '', 'https://lh3.googleusercontent.com/a/AATXAJyRRsN0FLjqhTntYf_KnGJ3IfQ1xAowYCNTOdpS=s96-c', 'google', '115771189953321301708', 'en-GB', '', '2022-06-17 23:52:06', '2022-06-18 00:27:09', NULL, NULL, 'nslrcio@gmail.com', NULL, 0, 0, 'NSF1', 0, 3, '2022-07-01 22:57:13', NULL),
(8, 2, 1, 1, 1, 1, 'Mrs', 'Tha', 'Tha', 'Lecturer', 'Colombo', '0777777777', '0111111156', 'Female', 'tha@gmail.com', NULL, '', '', NULL, '', '2022-07-12 00:25:14', NULL, NULL, NULL, 'tha@gmail.com', '123456', 1, 0, '', 0, 1, '2022-07-12 16:26:35', 1);

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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`institute_id`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`instrument_id`);

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

--
-- Indexes for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`laboratory_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `institute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instrument_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `instrument_condition`
--
ALTER TABLE `instrument_condition`
  MODIFY `condition_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instrument_types`
--
ALTER TABLE `instrument_types`
  MODIFY `instrument_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `laboratory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1352;

--
-- AUTO_INCREMENT for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
