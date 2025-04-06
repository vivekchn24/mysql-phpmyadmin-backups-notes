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
-- Database: `vivek_salesman`
--

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
CREATE TABLE IF NOT EXISTS `salesman` (
  `sno` varchar(30) DEFAULT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `bonus` int DEFAULT NULL,
  `doj` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`sno`, `sname`, `salary`, `bonus`, `doj`) VALUES
('a01', 'beena mehta', 30000, 45, '0000-00-00'),
('a02', 'k.l.sahay', 50000, 25, '0000-00-00'),
('b03', 'nisha thakkar', 30000, 35, '0000-00-00'),
('b04', 'leela yadav', 80000, NULL, '0000-00-00'),
('c05', 'gautam gola', 20000, NULL, '0000-00-00'),
('c06', 'trapti garg', 70000, 12, '0000-00-00'),
('d07', 'neena sharma', 50000, 28, '0000-00-00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
