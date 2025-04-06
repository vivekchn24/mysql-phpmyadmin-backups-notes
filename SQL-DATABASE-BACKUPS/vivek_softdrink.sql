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
-- Database: `vivek_softdrink`
--

-- --------------------------------------------------------

--
-- Table structure for table `softdrink`
--

DROP TABLE IF EXISTS `softdrink`;
CREATE TABLE IF NOT EXISTS `softdrink` (
  `drinkcode` int DEFAULT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `calories` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `softdrink`
--

INSERT INTO `softdrink` (`drinkcode`, `dname`, `price`, `calories`) VALUES
(101, 'lime and lemon', 22, 120),
(102, 'apple drink', 20, 120),
(103, 'nature nectar', 17, 115),
(104, 'green mango', 17, 140),
(105, 'aam panna', 22, 135),
(106, 'mango juice bahaar', 13, 150);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
