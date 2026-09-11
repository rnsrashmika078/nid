-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 11:49 AM
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
  `phone_number` int(15) DEFAULT NULL,
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
(1, 1, 1, 'Molecular Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 1, 1, 'Chemistry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 1, 1, 'Medical Microbiology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 1, 1, 'Forensic Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 1, 2, 'Physics and Electronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 1, 2, 'Chemistry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, 1, 1, 'Disability Studies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, 2, 3, 'Materials Science and Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, 2, 3, 'Electronic and Telecommunication Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 1, NULL, NULL, 'test', 2147483647, 'kathar@gmail.com', 'CHM', 1, NULL, '2022-02-19 16:30:19', NULL, 0, NULL, NULL),
(11, 2, NULL, NULL, 'moratuwa', 2147483647, 'sa@admin.lk', 'MTS', 1, NULL, '2022-02-19 16:31:10', NULL, 0, NULL, NULL),
(12, 3, NULL, 'rer', 'trt', 2147483647, 'test@gmail.com', 'rr', 1, NULL, '2022-02-19 16:36:29', NULL, 0, NULL, NULL),
(13, 1, 1, 'rer11', 'trt1', 2147483644, 'test1@gmail.com', NULL, 1, NULL, '2022-02-22 14:45:05', NULL, 0, NULL, NULL),
(14, 2, 3, 'test', 'Moratuwa', 2147483642, 'test2@gmail.com', NULL, 1, NULL, '2022-02-22 14:45:47', NULL, 0, NULL, NULL),
(15, 2, 3, 'test', 'Moratuwa', 2147483642, 'test2@gmail.com', NULL, 1, NULL, '2022-02-22 14:48:06', NULL, 0, NULL, NULL),
(16, 1, 1, 'Chemistry', 'kaleniya', 2147483647, 'mariya@gmail.com', 'CHM', 1, NULL, '2022-02-22 14:49:23', NULL, 0, NULL, NULL),
(17, 1, 1, 'Chemistry', 'kaleniya', 2147483647, 'mariya@gmail.com', NULL, 1, NULL, '2022-02-22 14:49:32', NULL, 0, NULL, NULL),
(18, 1, 1, 'Chemistry', 'kaleniya', 2147483647, 'mariya@gmail.com', 'CHU', 1, NULL, '2022-02-22 14:51:08', NULL, 0, NULL, NULL),
(19, 1, 1, 'Chemistry', 'kaleniya', 2147483647, 'mariya@gmail.com', 'CHM', 1, NULL, '2022-02-22 14:51:15', NULL, 0, NULL, NULL);

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
  `phone_number` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
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
(1, 1, 'Medicine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 1, 'Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 2, 'Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, NULL, 'test', 'test1', 2147483647, 'riya@gmail.com', '          fdgfgf                                                                          ', 'gfgfg', 1, NULL, '2022-02-19 11:15:41', NULL, 0, NULL, NULL),
(5, 1, 'Biology', 'kaleniya', 2147483647, 'sa1@admin.lk', '          dfdfd                                                                          ', 'dfd', 1, NULL, '2022-02-19 12:16:26', NULL, 0, NULL, NULL),
(6, 2, 'Biology1', 'kaleniya', 2147483647, 'sa11@admin.lk', '          dfdfd e                                                                        ', 'dfd1', 1, NULL, '2022-02-21 16:10:36', NULL, 0, NULL, NULL),
(7, 1, 'Biology1', 'kaleniya', 2147483647, 'sa11@admin.lk', '          dfdfd e                                                                        ', 'dfd1', 1, NULL, '2022-02-21 16:23:54', NULL, 0, NULL, NULL),
(8, 2, 'Biology1', 'kaleniya', 2147483646, 'sa11@admin.lk', '          dfdfd e                                                                        ', 'dfd1', 1, NULL, '2022-02-21 16:24:11', NULL, 0, NULL, NULL);

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
  `updated_date_time` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`institute_id`, `name`, `address`, `phone_number`, `email`, `description`, `ministry`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`, `isDeleted`, `deletedBy`, `deleted_date_time`) VALUES
(1, 'University of Kelaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 'University of Moratuwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 'Institute3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 'test', 'test', 2147483647, 'thasneemmys@gmail.com', NULL, NULL, 1, NULL, '2022-02-18 22:01:20', NULL, 1, 1, '2022-02-21 14:34:15'),
(5, 'edit1', 'edit1', 1234567899, 'riya1@gmail.com', '      ttttt                                                                       ', 'tttt', 1, NULL, '2022-02-20 23:46:00', NULL, 1, 1, '2022-02-21 00:14:46');

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
  `manufacturer` varchar(200) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `year_of_manufacture` year(4) DEFAULT NULL,
  `accessories` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `catalog_link` varchar(200) DEFAULT NULL,
  `catalog_upload` varchar(200) DEFAULT NULL,
  `catalog_access` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_contact` varchar(100) DEFAULT NULL,
  `vendor_url` varchar(100) DEFAULT NULL,
  `no_of_samples_per_cycle` int(10) DEFAULT NULL,
  `no_of_samples_per_day` int(10) DEFAULT NULL,
  `total_usage_hour_per_day` int(10) DEFAULT NULL,
  `availabiltiy_of_staff` varchar(250) DEFAULT NULL,
  `external_researchers` tinyint(1) DEFAULT 0,
  `funding_source` varchar(200) DEFAULT NULL,
  `date_commencement_operation` date DEFAULT NULL,
  `record_status` tinyint(1) DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `deletedBy` int(10) DEFAULT NULL,
  `deleted_date_time` datetime DEFAULT NULL,
  `record_endDtm` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`instrument_id`, `instrument_name`, `institute_id`, `faculty_id`, `department_id`, `laboratory_id`, `instrument_type_id`, `condition_id`, `manufacturer`, `model`, `year_of_manufacture`, `accessories`, `description`, `catalog_link`, `catalog_upload`, `catalog_access`, `price`, `vendor_name`, `vendor_contact`, `vendor_url`, `no_of_samples_per_cycle`, `no_of_samples_per_day`, `total_usage_hour_per_day`, `availabiltiy_of_staff`, `external_researchers`, `funding_source`, `date_commencement_operation`, `record_status`, `isDeleted`, `created_user_id`, `created_date_time`, `updated_user_id`, `updated_date_time`, `deletedBy`, `deleted_date_time`, `record_endDtm`) VALUES
(1, 'Qualitative PCR machine', 1, 1, 1, 1, 14, 1, 'Applied Biosystems', 'Gene amp PCR system 9700', 2009, NULL, 'Conventional PCR machine with basic features (only a single programme at a time)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96, 6, 25, 'To operate the ', 0, 'International Atomic Energy Agency (IAEA)', '2012-01-01', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(2, 'Radiation based measurements', 2, 3, 8, 4, 7, 1, 'Bruker', 'D-8', 2016, NULL, 'X-ray defractrometry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, 2, NULL, 0, NULL, '2018-01-02', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(3, 'Test Instrument Name 2', 1, 1, 1, 1, 14, 2, 'Test', 'Test', 2011, 'Test Accessories 2', '                                                                                    Test Description', 'http://www.yahoomail.com/', NULL, 'Test Access', '2000.00', 'Z', 'Test Contact', 'http://www.yahoomail.com/', 2, 2, 1, 'X', 1, 'Test', '2022-01-01', 1, 0, 3, '2022-02-04 07:02:45', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(4, 'Test Instrument Name 4', 1, 1, 1, 1, 17, 4, '', '', 0000, '', '                                                                                    ', '', NULL, '', '0.00', '', '', '', 0, 0, 0, '', 0, '', '0000-00-00', 0, 0, 3, '2022-02-04 15:09:04', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(5, 'Test Instrument Name', 2, 3, 9, 3, 13, 2, 'Test', 'Test', 2010, 'Test Accessories', '                     Test                                                               ', 'https://www.merriam-webster.com/dictionary/instrument', NULL, 'Test Access', '2000.00', 'Z', 'Test Contact', 'http://www.yahoomail.com/', 2, 2, 1, 'X', 0, 'Test', '2022-02-03', 1, 0, 3, '2022-02-04 15:05:52', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(6, 'Test Instrument Name3', 1, 1, 2, 2, 1, 3, 'Test', '', 0000, '', '                                                                                    ', '', NULL, '', '0.00', '', '', '', 0, 0, 0, '', 1, '', '0000-00-00', 0, 0, 3, '2022-02-04 15:07:22', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(7, 'Edit Test Instrument Name', 2, 3, 9, 3, 11, 1, 'Edit Test', 'Edit Test', 2000, 'Edit Test Accessories', '                                                                                                              Edit                                                                                      ', 'https://www.merriam-webster.com/dictionary/instrument', NULL, 'Edit Test Access', '2000.00', 'Edit Z', 'Edit Test Contact', '', 3, 3, 3, 'Edit X', 1, 'Edit Test', '2022-02-06', 1, 0, 3, '2022-02-04 15:38:38', 3, '2022-02-06 20:50:06', NULL, NULL, '0000-00-00 00:00:00');

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
-- Table structure for table `instrument_types`
--

CREATE TABLE `instrument_types` (
  `instrument_type_id` int(10) NOT NULL,
  `instrument_type` varchar(1024) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instrument_types`
--

INSERT INTO `instrument_types` (`instrument_type_id`, `instrument_type`, `description`, `keywords`, `created_user_id`, `updated_user_id`, `created_date_time`, `updated_date_time`) VALUES
(1, 'Sample preparation including sampling, extracting, purifying and dispensing', NULL, 'Root auger kit, Microtome, Tissue processor', NULL, NULL, NULL, NULL),
(2, 'Materials preparation and Characterization', NULL, 'Furnace, Vacuum Oven, Vacuum coating unit, Sputtering unit,  Glove box, Impedance analyser, Frequency response analyser (FRA), LCR meter, Potentiostat, Fourier Transform Infrared Spectroscopy (FTIR), UV/Vis Spectrophotmeter, Atomic Force Microscope (AFM), Polarizing microscope, Scanning and transmission electron microscopes, Scanning and transmission electron microscopes, Oscilloscope, Differential scanning calorimeter (DSC), Differential thermal analyser (DTA), Thermal Gravimetric Analyser (TGA),Universal testing machine, Triaxial testing machine, Direct shear testing machine, Non-destructive testing equipment, Material and component testing equipment, Ground penetration radar, Electrical & electronic instrumentation, Compresive and tensile testing equipment, Soil testing equipment', NULL, NULL, NULL, NULL),
(3, 'Mixing, shaking, blending and separating ', NULL, 'Ultra-centrifuge, Soxhlet apparatus, Shaker, Vibratory sieve shaker, Synthesizer Sequencing System, Retriever Fraction Collector, Rapid digester, Fraction Collector', NULL, NULL, NULL, NULL),
(4, 'Drying, cooling, heat transfer and sample preservation. ', NULL, 'Freezing Unit, Muffle furnace, Autoclave,  Bomb calorimeter, Vacuum evaporator, Thermal cycler   ', NULL, NULL, NULL, NULL),
(5, 'Quantitative and Qulitative  measures y testing ', NULL, 'Whiteness meter, water quality checker, Leaf area meter,  Tensiometer, Porometer/ Fluorometer, Advanced surveying equipment', NULL, NULL, NULL, NULL),
(6, 'Cleaning or degreasing', NULL, 'Ultra-sonic cleaner, Ultra-Sonic disintegrator, Echosounders', NULL, NULL, NULL, NULL),
(7, 'Radiation based measurements ', NULL, 'X array apparatus, Neutron probe, Whirl mixer fission, Scintillation counter, X-ray diffractometer (powder and single crystal), Tube solarimeter', NULL, NULL, NULL, NULL),
(8, 'Total analysis and general measuring  ', NULL, 'Spyro analyzers, Sensitometer, Semi-conductor parameter analyzer, Reverse Osmosis unit, Flow injection analyzer, Scanning calorimeter, Potentiostat/ Galvanometer, Portable pH meter, EC & Salinity meter, COD analyzer, Particle size analyzer,  Impedance analyzer, Differential scanning analyser, Cyclic voltammetric analyser, Polarograph,Thermogravimetric analyser', NULL, NULL, NULL, NULL),
(9, 'Environmental control and controlled environment ', NULL, 'Soft incubator, Smoking oven, Safety cabinet, Refrigeration incubator, CO2 humidified incubator, Temperature controlled cabinet', NULL, NULL, NULL, NULL),
(10, 'Chromatographic and spectrometric ', NULL, 'High-performance liquid chromatography (HPLC), Gas chromatography (GC), Medium Pressure Liquid Chromatography (MPLC),  Ion-chromatograph, Mass spectrometric (MS), Gas Chromatography Mass Spectrometry (GC-MS), UV-VIS spectrophotometer, Raman spectrophotometer, Infrared spectrophotometer (both Fourier transform and standard), Nuclear magnetic resonance spectrometer, X-ray fluorescence spectrophotometer, Inductively coupled plasma spectrophotometer-mass spectrophotometer (ICP-MS)', NULL, NULL, NULL, NULL),
(11, 'Computer and IT related ', NULL, 'Special computers, Servers, Plotters, super computers,  Robotic Arms', NULL, NULL, NULL, NULL),
(12, 'Solar cell and energy storage research', NULL, 'Solar irradiance  measuring equipment – Secondary Standard Instruments (pyranometer, pyrheliometer), Weather station, Solar cell measuring equipment, Solar simulator, Battery cycling equipment ', NULL, NULL, NULL, NULL),
(13, 'Energy and Photometry', NULL, 'Energy/Power analyzer with data logging, Flue gas analysers, Thermal conductivity meter, multi-channel temperature-humidity data logger for fluids & surfaces, Globe Thermometer, Low & high range Anemometer Thermographic camera, Heat fluxmeter, Indoor Air Quality meter with data logging, Ultrasonic flow meter, Luminance meter, Illuminance meter, Integrated Sphere, Spectral lightmeter, CCT/CRI meter, ', NULL, NULL, NULL, NULL),
(14, 'Molecular Bilogy', NULL, 'PCR machines, DNA sequencing equipment, UV transilluminator', NULL, NULL, NULL, NULL),
(15, 'Biomedical Engineering', NULL, 'Biosignal extraction systems', NULL, NULL, NULL, NULL),
(16, 'Mechnical Engineering', NULL, 'Human motion analysis systems, mobile robot plaforms, Robot manipulators, 3D printers, CNC Machines', NULL, NULL, NULL, NULL),
(17, 'Prototyping equipment', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Other……….(ex: Metrology)', NULL, '3D-Scanner, Tomography, CMM (Coordinate-Measuring Machine), Universal Testing Machine, Precision measuring instruments ', NULL, NULL, NULL, NULL);

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
  `phone_number` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
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
(1, 1, 1, 1, 'Molecular Medicine LAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 2, 2, 1, 'Chemistry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 9, 3, 2, 'Electronic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 8, 3, 2, 'Materials Science and Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, NULL, 0, 1, NULL, 'kaleniya', 2147483647, 'sa1@admin.lk', 'dfdgfg', 1, NULL, '2022-02-19 22:22:22', NULL, 0, NULL, NULL),
(6, NULL, 0, 2, NULL, 'moratuwa', 2147483647, 'sa1@admin.lk', 'dfdgfg', 1, NULL, '2022-02-19 22:27:06', NULL, 0, NULL, NULL),
(7, NULL, 0, 1, 'chemistry', 'kaleniya', 2147483647, 'sa1@admin.lk', 'dfrer', 1, NULL, '2022-02-19 22:48:30', NULL, 0, NULL, NULL),
(8, 2, 1, 1, 'chemistry', 'fdfd', 2147483647, 'sa@admin.lk', 'hghg', 1, NULL, '2022-02-20 10:44:51', NULL, 0, NULL, NULL);

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
(1, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:56:31'),
(2, 3, 'YOOSUFF', 'Backup Log Upload', 'Admin/logHistoryUpload', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:56:43'),
(3, 3, 'YOOSUFF', 'Backup Log Display', 'Admin/logHistoryBackup', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:56:53'),
(4, 3, 'YOOSUFF', 'Log imaging', 'Admin/logHistory', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:57:07'),
(5, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:57:34'),
(6, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:57:36'),
(7, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Windows 10', '2022-01-26 19:57:44'),
(8, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-27 17:51:18'),
(9, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-27 18:43:19'),
(10, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:00:06'),
(11, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:00:12'),
(12, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:00:13'),
(13, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:00:20'),
(14, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:01:02'),
(15, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:01:02'),
(16, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:08:16'),
(17, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:08:16'),
(18, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:08:18'),
(19, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:11:14'),
(20, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:11:14'),
(21, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:58:21'),
(22, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:58:21'),
(23, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:58:31'),
(24, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 00:58:32'),
(25, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 01:00:40'),
(26, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:48:27'),
(27, 3, 'YOOSUFF', 'Access Denial', 'Super_Admin/accesslogincontrol', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:48:35'),
(28, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:48:36'),
(29, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:53:07'),
(30, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:53:08'),
(31, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:54:20'),
(32, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:54:21'),
(33, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:55:40'),
(34, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:55:40'),
(35, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:56:13'),
(36, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:56:18'),
(37, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 07:56:18'),
(38, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:40:22'),
(39, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:40:30'),
(40, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:40:31'),
(41, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:42:13'),
(42, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:42:13'),
(43, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:42:33'),
(44, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:42:33'),
(45, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:42:41'),
(46, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:42:41'),
(47, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69', 'Windows 10', '2022-01-28 10:53:43'),
(48, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 13:33:19'),
(49, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:09'),
(50, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:09'),
(51, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:14'),
(52, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:24'),
(53, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:32'),
(54, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:32'),
(55, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:29:39'),
(56, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:15'),
(57, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:15'),
(58, 1, 'Thasneem', 'Görev Düzenleme', 'Technical_Incharge/editTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:27'),
(59, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:27'),
(60, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:30'),
(61, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:31'),
(62, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:36'),
(63, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:36'),
(64, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:53'),
(65, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:31:53'),
(66, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:43:09'),
(67, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:43:10'),
(68, 1, 'Thasneem', 'Görev Düzenleme', 'Technical_Incharge/editTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:43:22'),
(69, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:43:22'),
(70, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:46:28'),
(71, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:46:28'),
(72, 1, 'Thasneem', 'Görev Düzenleme', 'Technical_Incharge/editTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:51:05'),
(73, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:51:05'),
(74, 1, 'Thasneem', 'Görev Bitirme', 'User/endTask', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:51:12'),
(75, 1, 'Thasneem', 'Tüm görevler', 'Technical_Incharge/tasks', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:51:12'),
(76, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 17:56:20'),
(77, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:25:32'),
(78, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:25:40'),
(79, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:43:58'),
(80, 3, 'YOOSUFF', 'User All tasks', 'User/etasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:44:23'),
(81, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:44:53'),
(82, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:45:11'),
(83, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:45:12'),
(84, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:47:51'),
(85, 3, 'YOOSUFF', 'User All tasks', 'User/etasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:05'),
(86, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:37'),
(87, 3, 'YOOSUFF', 'Görev Bitirme', 'User/endTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:41'),
(88, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:41'),
(89, 3, 'YOOSUFF', 'Görev Düzenleme', 'Technical_Incharge/editTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:50'),
(90, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:50'),
(91, 3, 'YOOSUFF', 'Görev Bitirme', 'User/endTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:55'),
(92, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:48:55'),
(93, 3, 'YOOSUFF', 'Görev Bitirme', 'User/endTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:03'),
(94, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:03'),
(95, 3, 'YOOSUFF', 'Görev Düzenleme', 'Technical_Incharge/editTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:12'),
(96, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:12'),
(97, 3, 'YOOSUFF', 'User All tasks', 'User/etasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:19'),
(98, 3, 'YOOSUFF', 'Görev Bitirme', 'User/endTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:23'),
(99, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:23'),
(100, 3, 'YOOSUFF', 'Görev Bitirme', 'User/endTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:33'),
(101, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:34'),
(102, 3, 'YOOSUFF', 'Görev Düzenleme', 'Technical_Incharge/editTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:46'),
(103, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:46'),
(104, 3, 'YOOSUFF', 'User All tasks', 'User/etasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:52'),
(105, 3, 'YOOSUFF', 'User All tasks', 'User/etasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:53'),
(106, 3, 'YOOSUFF', 'Görev Bitirme', 'User/endTask', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:58'),
(107, 3, 'YOOSUFF', 'Tüm görevler', 'Technical_Incharge/tasks', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-01-31 21:49:58'),
(108, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:37:19'),
(109, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:37:30'),
(110, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:37:35'),
(111, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:39:04'),
(112, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:40:28'),
(113, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:41:52'),
(114, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:51:54'),
(115, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:54:02'),
(116, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:54:06'),
(117, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:54:21'),
(118, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 17:54:39'),
(119, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 18:03:33'),
(120, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:19:41'),
(121, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:27:45'),
(122, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:27:50'),
(123, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:29:00'),
(124, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:34:32'),
(125, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:34:37'),
(126, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 19:35:02'),
(127, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 22:33:55'),
(128, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 22:34:03'),
(129, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 22:52:13'),
(130, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 22:52:18'),
(131, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 22:52:33'),
(132, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 23:11:09'),
(133, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 23:45:35'),
(134, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-02 23:45:53'),
(135, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 00:04:25'),
(136, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 00:04:26'),
(137, 3, 'YOOSUFF', 'List of instruments', 'Admin/equipments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 00:13:54'),
(138, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 00:18:52'),
(139, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:37'),
(140, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:37'),
(141, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:38'),
(142, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:38'),
(143, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:38'),
(144, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:38'),
(145, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:39'),
(146, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:39'),
(147, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:39'),
(148, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:39'),
(149, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:39'),
(150, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:12:39'),
(151, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:14:12'),
(152, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:14:37'),
(153, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 14:59:52'),
(154, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:02:40'),
(155, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:07:18'),
(156, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:07:19'),
(157, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(158, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(159, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(160, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(161, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(162, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(163, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:36'),
(164, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:37'),
(165, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:37'),
(166, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:12:37'),
(167, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:14:35'),
(168, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:14:39'),
(169, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:14:52'),
(170, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:15:20'),
(171, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 15:31:44'),
(172, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 21:18:50'),
(173, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 23:45:19'),
(174, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-03 23:45:23'),
(175, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 09:59:39'),
(176, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 09:59:43'),
(177, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 09:59:43'),
(178, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 11:32:45'),
(179, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 11:32:45'),
(180, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 11:36:53'),
(181, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 11:37:33'),
(182, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:04:38'),
(183, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:04:42'),
(184, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:05:22'),
(185, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:06:17'),
(186, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:06:26'),
(187, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:06:56'),
(188, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:10:25'),
(189, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:28:47'),
(190, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:29:52'),
(191, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:33:18'),
(192, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:34:18'),
(193, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:35:19');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(194, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:39:01'),
(195, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:39:23'),
(196, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:39:54'),
(197, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:40:40'),
(198, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:41:19'),
(199, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:43:04'),
(200, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:44:15'),
(201, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:44:45'),
(202, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:46:11'),
(203, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:46:37'),
(204, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:47:30'),
(205, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:52:19'),
(206, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:55:43'),
(207, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:56:49'),
(208, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:57:21'),
(209, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:57:24'),
(210, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:59:01'),
(211, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 14:59:50'),
(212, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:01:51'),
(213, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:02:47'),
(214, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:07:42'),
(215, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:08:09'),
(216, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:08:14'),
(217, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:11:58'),
(218, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:12:39'),
(219, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:13:05'),
(220, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:13:45'),
(221, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:14:59'),
(222, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:15:44'),
(223, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:17:38'),
(224, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:18:57'),
(225, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 15:19:16'),
(226, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 18:54:10'),
(227, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 18:54:48'),
(228, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 18:55:51'),
(229, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:03:50'),
(230, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:05:43'),
(231, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:06:00'),
(232, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:07:38'),
(233, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:09:58'),
(234, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:10:03'),
(235, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:11:49'),
(236, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:15:13'),
(237, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:15:19'),
(238, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:17:43'),
(239, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:18:05'),
(240, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:18:19'),
(241, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:20:20'),
(242, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:20:25'),
(243, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:20:33'),
(244, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:21:30'),
(245, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:22:01'),
(246, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:22:04'),
(247, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:22:08'),
(248, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:22:39'),
(249, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:22:48'),
(250, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:22:51'),
(251, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:23:54'),
(252, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:25:55'),
(253, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:26:38'),
(254, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:27:07'),
(255, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:28:07'),
(256, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:30:51'),
(257, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:31:15'),
(258, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:31:27'),
(259, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:32:24'),
(260, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:33:04'),
(261, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:35:52'),
(262, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:35:52'),
(263, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:37:22'),
(264, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:37:22'),
(265, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:39:04'),
(266, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:39:04'),
(267, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:40:03'),
(268, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:40:39'),
(269, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:42:21'),
(270, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:43:06'),
(271, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:43:49'),
(272, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:44:06'),
(273, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:44:44'),
(274, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:47:03'),
(275, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:50:08'),
(276, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:50:21'),
(277, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:51:18'),
(278, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:54:20'),
(279, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:55:07'),
(280, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:55:59'),
(281, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:57:17'),
(282, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:57:22'),
(283, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 19:59:21'),
(284, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 20:08:38'),
(285, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 20:08:38'),
(286, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 20:33:02'),
(287, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 20:51:26'),
(288, 3, 'YOOSUFF', 'List of instruments', 'Admin/instrumentList', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:38:32'),
(289, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:39:25'),
(290, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:39:30'),
(291, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:43:24'),
(292, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:39'),
(293, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:40'),
(294, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:41'),
(295, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:41'),
(296, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:41'),
(297, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:41'),
(298, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:41'),
(299, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:41'),
(300, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:42'),
(301, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:42'),
(302, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:45'),
(303, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:45:47'),
(304, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:47:27'),
(305, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:51:24'),
(306, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:52:33'),
(307, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:53:14'),
(308, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 21:59:12'),
(309, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 22:01:31'),
(310, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 22:17:20'),
(311, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 22:17:55'),
(312, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 22:42:37'),
(313, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 22:54:41'),
(314, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 23:12:14'),
(315, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 23:12:23'),
(316, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 23:17:20'),
(317, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 23:17:46'),
(318, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-04 23:53:11'),
(319, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:32:03'),
(320, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:32:15'),
(321, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:37:55'),
(322, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:39:58'),
(323, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:39:58'),
(324, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:49:34'),
(325, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:51:08'),
(326, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:51:33'),
(327, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 09:59:27'),
(328, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 10:34:37'),
(329, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 10:34:39'),
(330, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 10:48:36'),
(331, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 10:54:36'),
(332, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 10:56:33'),
(333, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 11:18:25'),
(334, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 11:19:01'),
(335, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 11:35:18'),
(336, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 11:37:09'),
(337, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 11:37:12'),
(338, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 97.0.4692.99', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'Windows 10', '2022-02-05 11:49:30'),
(339, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 20:43:01'),
(340, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 20:43:06'),
(341, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 20:53:56'),
(342, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 21:51:38'),
(343, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 21:53:03'),
(344, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 22:07:33'),
(345, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 22:07:57'),
(346, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 22:25:49'),
(347, 3, 'YOOSUFF', 'Görev Silme', 'Technical_Incharge/deleteTask', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 22:25:58'),
(348, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 22:26:01'),
(349, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-05 22:35:26'),
(350, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 12:50:22'),
(351, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 12:50:26'),
(352, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 13:51:00'),
(353, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 14:07:07'),
(354, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 14:08:04'),
(355, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 19:27:03'),
(356, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 19:27:12'),
(357, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 19:30:47'),
(358, 3, 'YOOSUFF', 'Görev Düzenleme', 'Admin/editTask', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 19:32:35'),
(359, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 19:38:11'),
(360, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 19:38:11'),
(361, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 20:44:47'),
(362, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 20:44:47'),
(363, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 20:50:06'),
(364, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 20:50:07'),
(365, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 21:35:10'),
(366, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 21:35:16'),
(367, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 21:35:28'),
(368, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:02:12'),
(369, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:03:37'),
(370, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:05:00'),
(371, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:06:46'),
(372, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:16:59'),
(373, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:38:52'),
(374, 7, 'Muneer', 'login', 'Login/loginMe', 3, 'Institute_Manager', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 22:39:10'),
(375, 7, 'Muneer', 'output', 'BaseController/logout', 3, 'Institute_Manager', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:04:46'),
(376, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:19:24'),
(377, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:19:30'),
(378, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:21:00'),
(379, 3, 'YOOSUFF', 'User Deletion', 'Administrative_Incharge/deleteUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:21:06'),
(380, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:22:08'),
(381, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-06 23:22:39');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(382, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 11:42:09'),
(383, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 12:22:19'),
(384, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 14:01:01'),
(385, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 14:01:01'),
(386, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:12:15'),
(387, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:13:13'),
(388, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:13:13'),
(389, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:45:33'),
(390, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:46:33'),
(391, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:46:33'),
(392, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:48:16'),
(393, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 17:52:24'),
(394, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:25:13'),
(395, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:26:33'),
(396, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:27:11'),
(397, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:27:11'),
(398, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:28:36'),
(399, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:28:36'),
(400, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:29:46'),
(401, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:29:46'),
(402, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:34:42'),
(403, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:34:42'),
(404, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:39:12'),
(405, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:39:12'),
(406, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:43:17'),
(407, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:44:06'),
(408, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:44:07'),
(409, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:54:42'),
(410, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:54:42'),
(411, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:59:40'),
(412, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 19:59:40'),
(413, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 20:03:09'),
(414, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 20:03:09'),
(415, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 20:07:18'),
(416, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 20:07:18'),
(417, 3, 'YOOSUFF', 'Adding a Instrument', 'Admin/addInstruments', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 20:09:26'),
(418, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 20:09:26'),
(419, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:30:16'),
(420, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:30:17'),
(421, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:31:11'),
(422, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:31:11'),
(423, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:36:10'),
(424, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:36:10'),
(425, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:49:57'),
(426, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:49:57'),
(427, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:56:20'),
(428, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:56:20'),
(429, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:57:50'),
(430, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:57:50'),
(431, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:59:48'),
(432, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 21:59:48'),
(433, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:02:56'),
(434, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:02:56'),
(435, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:03:51'),
(436, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:03:51'),
(437, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:06:48'),
(438, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:06:48'),
(439, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:07:48'),
(440, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:07:48'),
(441, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:18:32'),
(442, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:18:32'),
(443, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:19:51'),
(444, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:19:51'),
(445, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:20:41'),
(446, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:20:41'),
(447, 3, 'YOOSUFF', 'Instrument Editing', 'Admin/editInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:23:05'),
(448, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-07 22:23:05'),
(449, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:22:53'),
(450, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:22:58'),
(451, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:24:01'),
(452, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:24:17'),
(453, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:25:13'),
(454, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:25:22'),
(455, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:25:22'),
(456, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:27:20'),
(457, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:27:20'),
(458, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:27:52'),
(459, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 12:27:53'),
(460, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:25:03'),
(461, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:25:27'),
(462, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:25:34'),
(463, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:26:35'),
(464, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:26:35'),
(465, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:38:23'),
(466, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:38:30'),
(467, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:38:35'),
(468, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:38:43'),
(469, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:39:08'),
(470, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:39:12'),
(471, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:39:35'),
(472, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:41:38'),
(473, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:41:45'),
(474, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:41:55'),
(475, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:41:57'),
(476, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:42:07'),
(477, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:42:07'),
(478, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:42:10'),
(479, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:43:45'),
(480, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:43:53'),
(481, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 14:43:55'),
(482, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 17:40:23'),
(483, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 17:43:05'),
(484, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 17:44:32'),
(485, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 17:58:25'),
(486, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 17:59:04'),
(487, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 17:59:56'),
(488, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:00:07'),
(489, 3, 'YOOSUFF', 'User Deletion', 'Administrative_Incharge/deleteUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:00:20'),
(490, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:17:15'),
(491, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:17:24'),
(492, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:17:29'),
(493, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:17:37'),
(494, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:17:47'),
(495, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:17:50'),
(496, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:18:03'),
(497, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:18:27'),
(498, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:18:31'),
(499, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:18:49'),
(500, 3, 'YOOSUFF', 'User Deletion', 'Administrative_Incharge/deleteUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:19:28'),
(501, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:24:03'),
(502, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:24:29'),
(503, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:24:40'),
(504, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:27:11'),
(505, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:30:41'),
(506, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:30:41'),
(507, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:43:36'),
(508, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:45:08'),
(509, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:46:31'),
(510, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:47:23'),
(511, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:49:00'),
(512, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:49:09'),
(513, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:49:15'),
(514, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:50:10'),
(515, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:50:21'),
(516, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:50:25'),
(517, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:58:59'),
(518, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 18:59:07'),
(519, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 19:00:44'),
(520, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 19:22:41'),
(521, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 19:23:54'),
(522, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 19:51:35'),
(523, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 19:54:04'),
(524, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 19:54:12'),
(525, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:00:28'),
(526, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:00:43'),
(527, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:01:00'),
(528, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:01:09'),
(529, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:03:48'),
(530, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:04:05'),
(531, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:04:19'),
(532, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:06:02'),
(533, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:06:19'),
(534, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:08:07'),
(535, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:08:16'),
(536, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:08:21'),
(537, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:08:55'),
(538, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:17:53'),
(539, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-08 20:18:00'),
(540, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:26:41'),
(541, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:27:05'),
(542, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:27:31'),
(543, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:27:32'),
(544, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:28:40'),
(545, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:28:41'),
(546, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:48:01'),
(547, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:48:43'),
(548, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 22:48:45'),
(549, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:21:21'),
(550, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:21:36'),
(551, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:22:40'),
(552, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:22:42'),
(553, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:30:54'),
(554, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:31:10'),
(555, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:34:53'),
(556, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:35:11'),
(557, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:35:57'),
(558, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:35:58'),
(559, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:37:51'),
(560, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:40:11'),
(561, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:40:11'),
(562, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:41:03'),
(563, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:43:59'),
(564, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:44:16'),
(565, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:45:24'),
(566, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:45:42'),
(567, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:48:02');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(568, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:48:19'),
(569, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:49:45'),
(570, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:51:31'),
(571, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:53:41'),
(572, 3, 'YOOSUFF', 'Instrument Record Completion', 'User/endInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:53:59'),
(573, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:54:00'),
(574, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:55:10'),
(575, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:55:22'),
(576, 3, 'YOOSUFF', 'Instrument Deletion', 'Admin/deleteInstrument', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-09 23:56:41'),
(577, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:00:25'),
(578, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:04:22'),
(579, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:05:19'),
(580, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:05:33'),
(581, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:06:05'),
(582, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:06:31'),
(583, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 00:17:23'),
(584, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:53:58'),
(585, 3, 'YOOSUFF', 'Instrument Listing', 'Admin/instrumentListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:03'),
(586, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:49'),
(587, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:49'),
(588, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:50'),
(589, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:50'),
(590, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:50'),
(591, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:50'),
(592, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:50'),
(593, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:50'),
(594, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:51'),
(595, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 12:54:51'),
(596, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:26'),
(597, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:26'),
(598, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:26'),
(599, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(600, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(601, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(602, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(603, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(604, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(605, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:27'),
(606, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:33'),
(607, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 13:03:42'),
(608, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 22:31:19'),
(609, 3, 'YOOSUFF', 'Institute Listing', 'Admin/instituteListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 22:31:24'),
(610, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 22:33:28'),
(611, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 22:33:49'),
(612, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:07:31'),
(613, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:07:37'),
(614, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:07:48'),
(615, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:19:48'),
(616, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:19:56'),
(617, 3, 'YOOSUFF', 'login', 'Login/loginMe', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:21:50'),
(618, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:21:56'),
(619, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:22:02'),
(620, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:37:59'),
(621, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:38:02'),
(622, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:00'),
(623, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:00'),
(624, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:01'),
(625, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:01'),
(626, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:01'),
(627, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:01'),
(628, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:01'),
(629, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:01'),
(630, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:02'),
(631, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:41:02'),
(632, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:42:23'),
(633, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:42:27'),
(634, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:48:48'),
(635, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:48:57'),
(636, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:49:03'),
(637, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:49:10'),
(638, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:50:31'),
(639, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:50:36'),
(640, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:51:25'),
(641, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:51:31'),
(642, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:51:33'),
(643, 3, 'YOOSUFF', 'User Permission', 'Admin/givePermission', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:51:46'),
(644, 3, 'YOOSUFF', 'User Listing', 'Administrative_Incharge/userListing', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:51:46'),
(645, 3, 'YOOSUFF', 'Unactivated User Listing', 'Admin/unactivatedUser', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:51:53'),
(646, 3, 'YOOSUFF', 'Error', 'Login/error', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:55:19'),
(647, 3, 'YOOSUFF', 'output', 'BaseController/logout', 2, 'Admin', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:55:23'),
(648, 14, 'Test Last name', 'login', 'Login/loginMe', 7, 'Equipment_User', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:55:34'),
(649, 14, 'Test Last name', 'output', 'BaseController/logout', 7, 'Equipment_User', '::1', 'Chrome 98.0.4758.80', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 'Windows 10', '2022-02-10 23:56:46'),
(650, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:34:58'),
(651, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:35:10'),
(652, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:35:17'),
(653, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:35:19'),
(654, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:35:23'),
(655, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:36:16'),
(656, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:36:23'),
(657, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:36:43'),
(658, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:37:01'),
(659, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:37:11'),
(660, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:37:27'),
(661, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:37:40'),
(662, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:37:47'),
(663, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:39:49'),
(664, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:40:54'),
(665, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:41:28'),
(666, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:44:30'),
(667, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:44:35'),
(668, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:44:36'),
(669, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:44:39'),
(670, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:44:53'),
(671, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:45:02'),
(672, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:45:55'),
(673, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:45:57'),
(674, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:45:59'),
(675, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:46:00'),
(676, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:46:02'),
(677, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:49:59'),
(678, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:54:01'),
(679, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:54:04'),
(680, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:55:53'),
(681, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:55:59'),
(682, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:58:37'),
(683, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 14:59:30'),
(684, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:04:10'),
(685, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:05:02'),
(686, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:05:03'),
(687, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:06:38'),
(688, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:06:40'),
(689, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:06:43'),
(690, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:08:24'),
(691, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:08:38'),
(692, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:08:43'),
(693, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:08:49'),
(694, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:10:43'),
(695, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:10:52'),
(696, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:36:17'),
(697, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:36:43'),
(698, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:39:07'),
(699, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:43:47'),
(700, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:43:48'),
(701, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:48:17'),
(702, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:48:19'),
(703, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:49:34'),
(704, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:49:35'),
(705, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:49:39'),
(706, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:51:00'),
(707, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:51:47'),
(708, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:51:52'),
(709, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:00'),
(710, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:02'),
(711, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:08'),
(712, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:12'),
(713, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:14'),
(714, 1, 'Thasneem', 'Backup Log Upload', 'Admin/logHistoryUpload', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:16'),
(715, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-16 15:52:19'),
(716, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:51:09'),
(717, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:51:13'),
(718, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:51:18'),
(719, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:51:23'),
(720, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:53:34'),
(721, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:53:36'),
(722, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:54:26'),
(723, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:54:27'),
(724, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:59:50'),
(725, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 15:59:51'),
(726, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:01:07'),
(727, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:11:58'),
(728, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:12:29'),
(729, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:15:30'),
(730, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:15:32'),
(731, 1, 'Thasneem', 'Adding Institute', 'Admin/addNewInstitute', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:31:20'),
(732, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:31:21'),
(733, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:33:23'),
(734, 1, 'Thasneem', 'Adding Institute', 'Admin/addNewInstitute', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:33:43'),
(735, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:33:43'),
(736, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 16:34:14'),
(737, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 17:02:20'),
(738, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 17:02:22'),
(739, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 17:25:56'),
(740, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 17:25:58'),
(741, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 17:43:29'),
(742, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 17:43:34'),
(743, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 18:28:30'),
(744, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-18 18:28:36'),
(745, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 04:54:20'),
(746, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 04:54:27'),
(747, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 04:54:44'),
(748, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 04:54:48'),
(749, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 04:56:53'),
(750, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 04:56:59'),
(751, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:04:33'),
(752, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:05:12'),
(753, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:09:47'),
(754, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:17:04'),
(755, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:19:50');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(756, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:22:53'),
(757, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:23:58'),
(758, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:24:33'),
(759, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:24:35'),
(760, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:28:25'),
(761, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:28:27'),
(762, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:36:49'),
(763, 1, 'Thasneem', 'Adding Faculty', 'Admin/addNewFaculty', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:45:41'),
(764, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:45:41'),
(765, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:46:01'),
(766, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:46:29'),
(767, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 05:46:40'),
(768, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:04:45'),
(769, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:04:51'),
(770, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:07:00'),
(771, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:07:15'),
(772, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:07:17'),
(773, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:07:20'),
(774, 1, 'Thasneem', 'Adding Faculty', 'Admin/addNewFaculty', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:46:27'),
(775, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 06:46:27'),
(776, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 07:07:35'),
(777, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 07:07:37'),
(778, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:03:00'),
(779, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:03:03'),
(780, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:08:34'),
(781, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:08:47'),
(782, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:59:49'),
(783, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:59:55'),
(784, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 09:59:56'),
(785, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:01:04'),
(786, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:01:07'),
(787, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:23:34'),
(788, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:25:04'),
(789, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:26:05'),
(790, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:26:09'),
(791, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:44:34'),
(792, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:46:11'),
(793, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:46:52'),
(794, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:49:58'),
(795, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:50:13'),
(796, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:52:59'),
(797, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 10:57:58'),
(798, 1, 'Thasneem', 'Adding Department', 'Admin/addNewDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:00:19'),
(799, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:00:19'),
(800, 1, 'Thasneem', 'Adding Department', 'Admin/addNewDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:01:10'),
(801, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:01:10'),
(802, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:05:59'),
(803, 1, 'Thasneem', 'Adding Department', 'Admin/addNewDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:06:29'),
(804, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:06:29'),
(805, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:15:34'),
(806, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:38:39'),
(807, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:38:52'),
(808, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:38:57'),
(809, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:39:04'),
(810, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:39:06'),
(811, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:39:13'),
(812, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:39:56'),
(813, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:40:09'),
(814, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:40:16'),
(815, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:40:42'),
(816, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:22'),
(817, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:22'),
(818, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:22'),
(819, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(820, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(821, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(822, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(823, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(824, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(825, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 11:41:23'),
(826, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:27:14'),
(827, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:33:24'),
(828, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:33:29'),
(829, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:33:36'),
(830, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:33:59'),
(831, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:38:06'),
(832, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:38:15'),
(833, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 14:38:25'),
(834, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:35:42'),
(835, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:38:24'),
(836, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:39:39'),
(837, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:39:54'),
(838, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:49:57'),
(839, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:50:00'),
(840, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 15:59:56'),
(841, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:15:02'),
(842, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:30:25'),
(843, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:30:47'),
(844, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:31:29'),
(845, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:31:31'),
(846, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:32:58'),
(847, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:52:22'),
(848, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:52:22'),
(849, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:52:57'),
(850, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:53:06'),
(851, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:57:06'),
(852, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 16:57:07'),
(853, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:03:25'),
(854, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:03:32'),
(855, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:06:33'),
(856, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:18:02'),
(857, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:18:31'),
(858, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:18:31'),
(859, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:19:29'),
(860, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:19:32'),
(861, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:19:33'),
(862, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:19:34'),
(863, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:32:40'),
(864, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:33:27'),
(865, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:34:45'),
(866, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 17:46:03'),
(867, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:36:24'),
(868, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:52:11'),
(869, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:52:13'),
(870, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:52:52'),
(871, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:55:48'),
(872, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:55:49'),
(873, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:16'),
(874, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:17'),
(875, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:20'),
(876, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:22'),
(877, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:24'),
(878, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:26'),
(879, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:31'),
(880, 1, 'Thasneem', 'Backup Log Upload', 'Admin/logHistoryUpload', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:37'),
(881, 1, 'Thasneem', 'Backup Log Display', 'Admin/logHistoryBackup', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:58:39'),
(882, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-19 19:59:01'),
(883, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:07:35'),
(884, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:07:55'),
(885, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:08:17'),
(886, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:08:25'),
(887, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:08:32'),
(888, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:11:28'),
(889, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:12:00'),
(890, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:15:40'),
(891, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:15:41'),
(892, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:16:12'),
(893, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:31'),
(894, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:39'),
(895, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:42'),
(896, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:44'),
(897, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:46'),
(898, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:48'),
(899, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:34:52'),
(900, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:36:54'),
(901, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:47:39'),
(902, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:56:18'),
(903, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:56:28'),
(904, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:56:33'),
(905, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:56:45'),
(906, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:58:22'),
(907, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:58:29'),
(908, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 04:59:01'),
(909, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:00:08'),
(910, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:13:22'),
(911, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:13:41'),
(912, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:14:06'),
(913, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:14:09'),
(914, 1, 'Thasneem', 'Adding Laboratory', 'Admin/addNewLaboratory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:14:52'),
(915, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:14:52'),
(916, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:15:26'),
(917, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:15:28'),
(918, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:15:31'),
(919, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:17:02'),
(920, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:18:34'),
(921, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:19:14'),
(922, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:20:23'),
(923, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:36:40'),
(924, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:36:44'),
(925, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:38:15'),
(926, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:38:44'),
(927, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:08'),
(928, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:13'),
(929, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:37'),
(930, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(931, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(932, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(933, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(934, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(935, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(936, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(937, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(938, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(939, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:47:53'),
(940, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(941, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(942, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(943, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(944, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(945, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(946, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(947, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(948, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(949, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:50:53'),
(950, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(951, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(952, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(953, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(954, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(955, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(956, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:35'),
(957, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:36'),
(958, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:36'),
(959, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:53:36'),
(960, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(961, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(962, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(963, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(964, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(965, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(966, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(967, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:24'),
(968, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:25'),
(969, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:25'),
(970, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:39'),
(971, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:39'),
(972, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:39'),
(973, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:39'),
(974, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:39'),
(975, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:39'),
(976, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:40'),
(977, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:40'),
(978, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:40'),
(979, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:54:40'),
(980, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(981, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(982, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(983, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(984, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(985, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(986, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(987, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(988, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(989, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 05:59:28'),
(990, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:00:57'),
(991, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:01:12'),
(992, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:01:25'),
(993, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:02:10'),
(994, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:02:16'),
(995, 1, 'Thasneem', 'User Permission', 'Admin/givePermission', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:03:07'),
(996, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:03:07'),
(997, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:03:13'),
(998, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:26:34'),
(999, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:27:13'),
(1000, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:27:44'),
(1001, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:39:06'),
(1002, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:47:04'),
(1003, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:47:09'),
(1004, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:49:00'),
(1005, 1, 'Thasneem', 'Unactivated User Listing', 'Admin/unactivatedUser', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:53:44'),
(1006, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:53:47'),
(1007, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 06:56:43'),
(1008, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:03:05'),
(1009, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:41'),
(1010, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:43'),
(1011, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:47'),
(1012, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:49'),
(1013, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:51'),
(1014, 1, 'Thasneem', 'Instrument Listing', 'Admin/instrumentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:53'),
(1015, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:53:56'),
(1016, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:54:01'),
(1017, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:54:02'),
(1018, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:54:03'),
(1019, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:22'),
(1020, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:22'),
(1021, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:22'),
(1022, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:22'),
(1023, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:22'),
(1024, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:22'),
(1025, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:23'),
(1026, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:23'),
(1027, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:23'),
(1028, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 07:55:23'),
(1029, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 09:21:43'),
(1030, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:10:57'),
(1031, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:11:03'),
(1032, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:11:13'),
(1033, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:15:10'),
(1034, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:15:18'),
(1035, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:50:02'),
(1036, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 17:50:06'),
(1037, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:03:15'),
(1038, 1, 'Thasneem', 'Institute Editing', 'Admin/editInstitute', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:15:23'),
(1039, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:15:23'),
(1040, 1, 'Thasneem', 'Institute Editing', 'Admin/editInstitute', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:16:00'),
(1041, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:16:01'),
(1042, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:21:22'),
(1043, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:21:32'),
(1044, 1, 'Thasneem', 'User Deletion', 'Administrative_Incharge/deleteUser', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:22:07'),
(1045, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:23:06'),
(1046, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:41:00'),
(1047, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:41:07'),
(1048, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:41:21'),
(1049, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:44:42'),
(1050, 1, 'Thasneem', 'Institute Deletion', 'Admin/deleteInstitute', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-20 18:44:46'),
(1051, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:53:18'),
(1052, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:53:18'),
(1053, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:53:18'),
(1054, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:53:18'),
(1055, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:53:20'),
(1056, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:54:10'),
(1057, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:54:10'),
(1058, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:54:10'),
(1059, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:54:11'),
(1060, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:54:11'),
(1061, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:55:11'),
(1062, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:55:11'),
(1063, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:55:11'),
(1064, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:55:11'),
(1065, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:55:11'),
(1066, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:33'),
(1067, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:33'),
(1068, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:33'),
(1069, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:33'),
(1070, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:33'),
(1071, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:38'),
(1072, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:38'),
(1073, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:38'),
(1074, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:56:38'),
(1075, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:17'),
(1076, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:18'),
(1077, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:18'),
(1078, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:18'),
(1079, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:46'),
(1080, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:46'),
(1081, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:46'),
(1082, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:57:46'),
(1083, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:10'),
(1084, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:10'),
(1085, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:10'),
(1086, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:10'),
(1087, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:44'),
(1088, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:44'),
(1089, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:44'),
(1090, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:58:44'),
(1091, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:49'),
(1092, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:49'),
(1093, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:49'),
(1094, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:49'),
(1095, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:53'),
(1096, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:54'),
(1097, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:54'),
(1098, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:54'),
(1099, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 08:59:54'),
(1100, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:04'),
(1101, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:04'),
(1102, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:04'),
(1103, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:04'),
(1104, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:04'),
(1105, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:08'),
(1106, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:15'),
(1107, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:16'),
(1108, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:16'),
(1109, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:16'),
(1110, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:00:16'),
(1111, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:01:03'),
(1112, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:01:03'),
(1113, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:01:03'),
(1114, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:01:03'),
(1115, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:02:15'),
(1116, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:02:15'),
(1117, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:02:15'),
(1118, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:02:15'),
(1119, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:03:59'),
(1120, 1, 'Thasneem', 'Institute Deletion', 'Admin/deleteInstitute', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:04:15'),
(1121, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:06:17'),
(1122, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:06:20'),
(1123, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:06:38'),
(1124, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:09:21'),
(1125, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:13:59'),
(1126, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:14:25'),
(1127, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:14:42'),
(1128, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:15:21'),
(1129, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:17:57'),
(1130, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:18:39'),
(1131, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:18:53'),
(1132, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:20:52'),
(1133, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:20:57'),
(1134, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:28:05');
INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1135, 1, 'Thasneem', 'Log imaging', 'Admin/logHistory', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:28:09'),
(1136, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:33:26'),
(1137, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:33:40'),
(1138, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 09:33:46'),
(1139, 1, 'Thasneem', 'Faculty Editing', 'Admin/editFaculty', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:40:36'),
(1140, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:40:36'),
(1141, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:48:29'),
(1142, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:50:21'),
(1143, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:52:01'),
(1144, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:13'),
(1145, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:17'),
(1146, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:22'),
(1147, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:25'),
(1148, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:26'),
(1149, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:31'),
(1150, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:33'),
(1151, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:35'),
(1152, 1, 'Thasneem', 'Faculty Editing', 'Admin/editFaculty', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:54'),
(1153, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:53:54'),
(1154, 1, 'Thasneem', 'Faculty Editing', 'Admin/editFaculty', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:54:12'),
(1155, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:54:12'),
(1156, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-21 10:54:41'),
(1157, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:35:55'),
(1158, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:36:05'),
(1159, 1, 'Thasneem', 'User Listing', 'Administrative_Incharge/userListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:36:16'),
(1160, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:40:11'),
(1161, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:40:19'),
(1162, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:40:26'),
(1163, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:40:29'),
(1164, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:40:30'),
(1165, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:40:32'),
(1166, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:42:10'),
(1167, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:42:12'),
(1168, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:54:55'),
(1169, 1, 'Thasneem', 'output', 'BaseController/logout', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 05:55:05'),
(1170, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 06:11:54'),
(1171, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 06:13:23'),
(1172, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 06:13:29'),
(1173, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 06:13:31'),
(1174, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 08:18:25'),
(1175, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 08:18:31'),
(1176, 1, 'Thasneem', 'Institute Listing', 'Admin/instituteListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 08:18:53'),
(1177, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 08:19:03'),
(1178, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 08:19:06'),
(1179, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 08:36:28'),
(1180, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:07:51'),
(1181, 1, 'Thasneem', 'Error', 'Login/error', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:07:54'),
(1182, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:09:14'),
(1183, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:15:05'),
(1184, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:15:05'),
(1185, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:15:47'),
(1186, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:15:47'),
(1187, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:18:06'),
(1188, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:18:06'),
(1189, 1, 'Thasneem', 'login', 'Login/loginMe', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:18:35'),
(1190, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:18:39'),
(1191, 1, 'Thasneem', 'Adding Department', 'Admin/addNewDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:19:23'),
(1192, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:19:24'),
(1193, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:19:32'),
(1194, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:19:32'),
(1195, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:21:02'),
(1196, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:21:08'),
(1197, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:21:08'),
(1198, 1, 'Thasneem', 'Department Editing', 'Admin/editDepartment', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:21:15'),
(1199, 1, 'Thasneem', 'Department Listing', 'Admin/departmentListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:21:15'),
(1200, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 09:21:39'),
(1201, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:12:54'),
(1202, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:12:57'),
(1203, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:16:38'),
(1204, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:16:50'),
(1205, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:16:56'),
(1206, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:19:18'),
(1207, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:19:26'),
(1208, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:25:09'),
(1209, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:25:27'),
(1210, 1, 'Thasneem', 'Faculty Listing', 'Admin/facultyListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:26:12'),
(1211, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:26:19'),
(1212, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:26:23'),
(1213, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:39:20'),
(1214, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:39:24'),
(1215, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:39:29'),
(1216, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:43:01'),
(1217, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:43:06'),
(1218, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:43:08'),
(1219, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:43:11'),
(1220, 1, 'Thasneem', 'Laboratory Listing', 'Admin/laboratoryListing', 1, 'Super_Admin', '::1', 'Chrome 98.0.4758.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'Windows 10', '2022-02-22 10:44:07');

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
(22, 'ithreeshmym@gmail.com', 'rKv2fIPgCUNGRiY', 'Chrome 96.0.4664.93', '::1', 0, 1, '2021-12-14 20:31:28', NULL, NULL),
(23, 'ithreeshmym@gmail.com', 'xF10wzYWIcBmkqT', 'Chrome 96.0.4664.110', '::1', 0, 1, '2021-12-16 06:48:29', NULL, NULL);

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
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_task`
--

INSERT INTO `tbl_task` (`id`, `title`, `comment`, `statusId`, `priorityId`, `permalink`, `createdBy`, `endDtm`, `createdDtm`) VALUES
(3, 'dgghfh', '                                                                                                                                                                                                                                                dhfhffu                                                                                                                                                                                                                                                                                                                ', 2, 1, 'dgghfh', 1, '2022-01-31 17:19:58', '2021-11-17 06:46:04'),
(4, 'book', '                                  book setup                                                  ', 2, 2, 'book', 1, '2022-01-31 13:13:09', '2021-11-20 11:17:25');

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
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
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
(21, 'ti@admin.lk', '$2y$10$DxnJFUFcfsHdvUrWjc780OUQZsYeT4QTDY29ndeBcv93tajXc0Hzq', 'Ti', '1234567898', 6, 1, 1, 20, '2021-11-22 09:28:32', 1, '2021-12-23 09:43:53'),
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
  `user_type_id` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `institute_id` int(10) UNSIGNED DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT 0,
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
  `undefineUser` tinyint(1) NOT NULL DEFAULT 0,
  `user_status` tinyint(4) DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `updatedBy` int(10) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `createdBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `institute_id`, `faculty_id`, `department_id`, `title`, `first_name`, `last_name`, `designation`, `address`, `mobile_number`, `phone_number`, `gender`, `email`, `picture`, `oauth_provider`, `oauth_uid`, `locale`, `link`, `created`, `modified`, `last_login_date`, `last_login_location`, `username`, `password`, `undefineUser`, `user_status`, `isDeleted`, `updatedBy`, `updatedDtm`, `createdBy`) VALUES
(1, 1, 1, 0, 1, 'Ms', 'Mohamed Yoosuff', 'Thasneem', 'Head of the Department', NULL, 788012345, NULL, '', 'thasneemmys@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJw3AgidiamujQF_kwoycUnFrYMr6CQsBqMVjjjN=s96-c', 'google', '103720349026835494004', 'en', '', '2021-12-08 17:26:50', '2022-02-22 11:36:51', NULL, NULL, 'thasneemmys@gmail.com', 'new123', 0, 1, 0, NULL, NULL, 0),
(2, 5, 3, 0, 5, 'Mrs', 'Thasneem', 'Niyas', 'Lecturer', NULL, 788012345, NULL, 'Female', 'thasneemniyas123@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJxMLd2bVT-QbaP4oTvLxtbk-KzxJcenQWiyVhb9=s96-c', 'google', '117636139061528426133', 'en-GB', '', '2021-12-09 07:36:16', '2021-12-09 09:39:12', NULL, NULL, 'thasneemniyas123@gmail.com', 'hello123', 0, 1, 0, 2, '2022-01-06 06:55:15', 0),
(3, 2, 2, 0, 4, 'Mr', 'MOHAMED', 'YOOSUFF', 'Head of the Department', 'Testaddress', 784532340, 114568765, NULL, 'ithreeshmym@gmail.com', NULL, '', '', NULL, '', '2021-12-12 13:34:49', '0000-00-00 00:00:00', NULL, NULL, 'ithreeshmym@gmail.com', 'new123', 0, 1, 0, 3, '2021-12-15 06:47:31', 0),
(4, 2, 1, 0, 1, 'Miss', 'Mohamed', 'Karim', 'Professor', 'testing Address', 784532340, 114568765, 'Male', 'karim@gmail.com', NULL, '', '', NULL, '', '2021-12-14 19:00:44', '0000-00-00 00:00:00', NULL, NULL, 'karim@gmail.com', '123456', 0, 1, 0, NULL, NULL, 0),
(5, 2, 0, 0, 0, 'Dr', 'Ithreesh', 'Yoosuff', '0', '', 0, 0, '', 'new@gmail.com', NULL, '', '', NULL, '', '2021-12-21 19:11:50', '0000-00-00 00:00:00', NULL, NULL, 'hello@gmail.com', 'hello123', 0, 1, 1, 1, '2022-02-20 23:52:07', 3),
(6, 7, 3, 0, 6, 'Prof', 'Thasneem', 'Test', '', '', 2147483647, 0, 'Male', 'sa@admin.lk', NULL, '', '', NULL, '', '2021-12-21 19:21:01', '0000-00-00 00:00:00', NULL, NULL, 'sa1@admin.lk', '123456', 0, 0, 0, 3, '2021-12-31 20:25:54', 3),
(7, 3, 2, 0, 4, 'Mr', 'Ahamed', 'Muneer', 'Senior Deputy Director', '123, AFC road, Colombo 10', 789080650, 117890690, 'Male', 'muneer@yahoo.com', NULL, '', '', NULL, '', '2022-01-02 06:55:12', '0000-00-00 00:00:00', NULL, NULL, 'muneer@yahoo.com', 'hello123', 0, 0, 0, 3, '2022-02-06 23:21:06', 0),
(8, 3, 3, 0, 6, 'Mr', 'Kathar', 'Mohamed', 'Principal', 'Address Test', 2147483647, 117890690, 'Male', 'kathar@gmail.com', NULL, '', '', NULL, '', '2022-01-02 13:21:36', '0000-00-00 00:00:00', NULL, NULL, 'kathar@gmail.com', 'kathar123', 0, 0, 0, 5, '2022-01-02 19:52:04', 0),
(9, 3, 2, 0, 3, 'Ms', 'Hill', 'Mariya', '', 'Testaddress', 751235678, 111234567, 'Female', 'mariya@gmail.com', NULL, '', '', NULL, '', '2022-01-02 13:25:59', '0000-00-00 00:00:00', NULL, NULL, 'mariya@gmail.com', 'mariya123', 0, 0, 0, 3, '2022-01-04 16:27:01', 0),
(10, 7, 0, 0, 0, 'Miss', 'Riya', 'Marina', '', 'Testaddress', 0, 0, 'Female', 'riya@gmail.com', NULL, '', '', NULL, '', '2022-01-02 19:49:45', '0000-00-00 00:00:00', NULL, NULL, 'riya@gmail.com', 'new123', 0, 0, 0, NULL, NULL, 5),
(11, 4, 1, 0, 2, 'Mr', 'Salim', 'Ahamed', '', 'Testaddress', 2147483647, 114568765, 'Male', 'salim@gmail.com', NULL, '', '', NULL, '', '2022-01-02 20:02:54', '0000-00-00 00:00:00', NULL, NULL, 'salim@gmail.com', 'salim123', 0, 0, 1, 3, '2022-02-08 18:19:28', 0),
(12, 0, NULL, 0, NULL, NULL, 'Mohamed', 'Ithreesh', NULL, NULL, NULL, NULL, '', 'ithreeshmym@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJyYOHQRS0qv5npHwNuhQ3REMkDzGN2fiLPnryX6=s96-c', 'google', '100046670405687268944', 'en', '', '2022-01-17 07:10:49', '2022-01-26 10:24:47', NULL, NULL, NULL, NULL, 0, 0, 1, 3, '2022-02-08 18:00:20', 0),
(13, 7, 0, 0, 0, 'Mr', 'Test First Name', 'Test Last Name', '', 'Test address', 784532340, 0, 'Male', 'ithreeshmym@gmail.com', NULL, '', '', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 'ithreeshmym2@gmail.com', 'new123', 1, 0, 0, NULL, NULL, 0),
(14, 7, 1, 0, 5, 'Mr', 'Test First Name', 'Test Last name', 'Director', 'Test address', 2147483647, 0, 'Male', 'ithreeshmym@gmail.com', NULL, '', '', NULL, '', '2022-02-10 23:21:33', '0000-00-00 00:00:00', NULL, NULL, 'ithreeshmym3@gmail.com', 'new123', 1, 0, 0, NULL, NULL, 0),
(15, 6, 2, 0, 9, 'Mr', 'Z', 'Y', 'Principal Scientist', 'Test address', 2147483647, 0, 'Male', 'ithreeshmym@gmail.com', NULL, '', '', NULL, '', '2022-02-10 23:42:15', '0000-00-00 00:00:00', NULL, NULL, 'ithreeshmym4@gmail.com', 'new123', 0, 0, 0, 3, '2022-02-10 23:51:46', 0),
(16, 7, 1, 1, 2, 'Mrs', 'test22', 'test22', 'Assistant director', 'kaleniya', 2147483647, 2147483647, 'Female', 'thasneem@nsf.gov.lk', NULL, '', '', NULL, '', '2022-02-20 11:30:37', '0000-00-00 00:00:00', NULL, NULL, 'thasneem@nsf.gov.lk', '123456', 0, 0, 0, 1, '2022-02-20 11:33:07', 0);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `institute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instrument_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instrument_condition`
--
ALTER TABLE `instrument_condition`
  MODIFY `condition_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instrument_types`
--
ALTER TABLE `instrument_types`
  MODIFY `instrument_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `laboratory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1221;

--
-- AUTO_INCREMENT for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
