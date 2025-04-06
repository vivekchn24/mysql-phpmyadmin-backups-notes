-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2024 at 06:21 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivek_hospmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `hos_activities`
--

DROP TABLE IF EXISTS `hos_activities`;
CREATE TABLE IF NOT EXISTS `hos_activities` (
  `hos_activitiesid` int NOT NULL,
  `hos_activitiesname` text NOT NULL,
  `hos_doctorid` int NOT NULL,
  `hos_patientsid` int NOT NULL,
  `hos_paymentid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hos_activities`
--

INSERT INTO `hos_activities` (`hos_activitiesid`, `hos_activitiesname`, `hos_doctorid`, `hos_patientsid`, `hos_paymentid`) VALUES
(1, 'walking', 1, 1, 1),
(2, 'walking', 2, 2, 2),
(3, 'walking', 3, 3, 3),
(4, 'walking', 4, 4, 4),
(5, 'walking', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hos_doctors`
--

DROP TABLE IF EXISTS `hos_doctors`;
CREATE TABLE IF NOT EXISTS `hos_doctors` (
  `hos_doctorid` int NOT NULL,
  `hos_doctorname` text NOT NULL,
  `hos_doctorexperience` text NOT NULL,
  `hos_doctorsalary` int NOT NULL,
  `hos_nurseid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hos_doctors`
--

INSERT INTO `hos_doctors` (`hos_doctorid`, `hos_doctorname`, `hos_doctorexperience`, `hos_doctorsalary`, `hos_nurseid`) VALUES
(1, 'kantibhai', '5 years of experience', 55000, 1),
(2, 'prabhubhai', '3 years in business', 58000, 2),
(3, 'kishanbhai', '4 years of experience', 60000, 3),
(4, 'hirenbhai', '8 years of business', 65000, 4),
(3, 'kishanbhai', '3 years of experience', 58000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hos_nurses`
--

DROP TABLE IF EXISTS `hos_nurses`;
CREATE TABLE IF NOT EXISTS `hos_nurses` (
  `hos_nursesid` int NOT NULL,
  `hos_nursesname` text NOT NULL,
  `hos_nursesexperience` text NOT NULL,
  `hos_nursessalary` int NOT NULL,
  `hos_patientsid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hos_nurses`
--

INSERT INTO `hos_nurses` (`hos_nursesid`, `hos_nursesname`, `hos_nursesexperience`, `hos_nursessalary`, `hos_patientsid`) VALUES
(1, 'jaya', '1 year of experience', 15000, 1),
(2, 'kanta', '3 years of experience', 20000, 2),
(3, 'aditi', '4 years of experience', 25000, 3),
(4, 'esha', '6 years of experience', 30000, 4),
(5, 'alice', '5 years of experience', 35000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hos_patients`
--

DROP TABLE IF EXISTS `hos_patients`;
CREATE TABLE IF NOT EXISTS `hos_patients` (
  `hos_patientsid` int NOT NULL,
  `hos_patientsname` text NOT NULL,
  `hos_patientstreetment` text NOT NULL,
  `hos_nursesid` int NOT NULL,
  `hos_doctorid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hos_patients`
--

INSERT INTO `hos_patients` (`hos_patientsid`, `hos_patientsname`, `hos_patientstreetment`, `hos_nursesid`, `hos_doctorid`) VALUES
(1, 'kunj', 'eyecheckup', 1, 1),
(2, 'dhruvin', 'teeth checkup', 2, 2),
(3, 'sarthak', 'cold fever', 3, 3),
(4, 'jash', 'cough ', 4, 4),
(5, 'janak', 'cold fever', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hos_payments`
--

DROP TABLE IF EXISTS `hos_payments`;
CREATE TABLE IF NOT EXISTS `hos_payments` (
  `hos_paymentid` int NOT NULL,
  `hos_paymentname` text NOT NULL,
  `hos_paymenttype` text NOT NULL,
  `hos_patientsid` int NOT NULL,
  `hos_nurseid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hos_payments`
--

INSERT INTO `hos_payments` (`hos_paymentid`, `hos_paymentname`, `hos_paymenttype`, `hos_patientsid`, `hos_nurseid`) VALUES
(1, 'general checkup', 'online', 1, 1),
(2, 'general checkup', 'cash', 2, 2),
(3, 'general checkup', 'cash', 3, 3),
(4, 'general checkup', 'online', 4, 4),
(5, 'general checkup', 'online', 5, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
