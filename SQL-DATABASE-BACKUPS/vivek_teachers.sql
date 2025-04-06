-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2024 at 06:22 AM
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
-- Database: `vivek_teachers`
--

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

DROP TABLE IF EXISTS `posting`;
CREATE TABLE IF NOT EXISTS `posting` (
  `id` int DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `department`, `place`) VALUES
(1, 'history', 'agra'),
(2, 'mathematics', 'raipur'),
(3, 'computer science', 'delhi');

-- --------------------------------------------------------

--
-- Table structure for table `posting2`
--

DROP TABLE IF EXISTS `posting2`;
CREATE TABLE IF NOT EXISTS `posting2` (
  `id` int NOT NULL,
  `department` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posting2`
--

INSERT INTO `posting2` (`id`, `department`, `place`) VALUES
(1, 'history', 'delhi'),
(2, 'mathematics', 'agra'),
(3, 'computer science', 'delhi ');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `age`, `department`, `doj`, `salary`, `gender`) VALUES
(1, 'jugal', 34, 'computer sc', '2017-01-10', 12000, 'male'),
(2, 'sharmila', 31, 'history', '2008-03-24', 20000, 'fe'),
(3, 'sandeep', 32, 'mathematics', '2016-12-12', 30000, 'male'),
(4, 'sangeeta', 35, 'history', '2015-07-01', 40000, 'fe'),
(5, 'rakesh', 42, 'mathematics', '2007-09-05', 25000, 'male');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
