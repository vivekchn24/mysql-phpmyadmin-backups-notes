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
-- Database: `vivek_hos`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `doa` date DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `name`, `city`, `phone`, `doa`, `department`) VALUES
(1000001, 'RITVIK GARG', 'DELHI', 68476213, '2021-12-10', 'SURGERY'),
(1000002, 'RAHI ARORA', 'MUMBAI', 36546321, '2022-01-08', 'MEDICINE'),
(1000003, 'MAHEK BHATT', 'DELHI', 68421879, '2022-02-02', 'CARDIOLOGY'),
(1000004, 'SOUMIK RAO', 'DELHI', 26543266, '2022-01-11', 'MEDICINE'),
(1000005, 'SURESH SOOD', 'BANFALORE', 65432442, '2021-03-09', 'SURGERY');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
