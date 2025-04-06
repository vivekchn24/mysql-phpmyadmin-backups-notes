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
-- Database: `vivek_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `res_chef`
--

DROP TABLE IF EXISTS `res_chef`;
CREATE TABLE IF NOT EXISTS `res_chef` (
  `res_chefname` text NOT NULL,
  `res_chefid` int NOT NULL,
  `res_orderid` int NOT NULL,
  `res_chefexperience` text NOT NULL,
  `res_paymentid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `res_chef`
--

INSERT INTO `res_chef` (`res_chefname`, `res_chefid`, `res_orderid`, `res_chefexperience`, `res_paymentid`) VALUES
('jalarambhai ', 1, 1, '5 years in business', 1),
('kanjibhai', 2, 2, '3 years in business', 2),
('janakbhai', 3, 3, '4 years in business', 3),
('kanubhai', 4, 4, 'recently joined at 25/10/2024.', 4),
('prabhubhai', 5, 5, 'recently joined at 25/10/2024.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `res_order`
--

DROP TABLE IF EXISTS `res_order`;
CREATE TABLE IF NOT EXISTS `res_order` (
  `res_orderid` int NOT NULL,
  `res_ordername` text NOT NULL,
  `res_ordertype` text NOT NULL,
  `res_waiterid` int NOT NULL,
  `res_paymentid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `res_order`
--

INSERT INTO `res_order` (`res_orderid`, `res_ordername`, `res_ordertype`, `res_waiterid`, `res_paymentid`) VALUES
(1, '2 veg manchurian ', 'ontable', 1, 1),
(2, 'veg kadhi khichdi', 'parcel', 2, 2),
(3, '5 grill sandwich ', 'ontable', 3, 3),
(4, '5 paneer kadai \r\n5 butter nan\r\n5 water bottle cold', 'ontable', 4, 4),
(5, '3 alooparatha', 'parcel', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `res_owner`
--

DROP TABLE IF EXISTS `res_owner`;
CREATE TABLE IF NOT EXISTS `res_owner` (
  `res_owner` text NOT NULL,
  `res_name` text NOT NULL,
  `res_id` int NOT NULL,
  `res_waiterid` int NOT NULL,
  `res_chefid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `res_owner`
--

INSERT INTO `res_owner` (`res_owner`, `res_name`, `res_id`, `res_waiterid`, `res_chefid`) VALUES
('manojbhai desai', 'swad restaurant', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_payment`
--

DROP TABLE IF EXISTS `res_payment`;
CREATE TABLE IF NOT EXISTS `res_payment` (
  `res_paymenttype` text NOT NULL,
  `res_paymentid` int NOT NULL,
  `res_orderid` int NOT NULL,
  `res_waiterid` int NOT NULL,
  `res_chefid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `res_payment`
--

INSERT INTO `res_payment` (`res_paymenttype`, `res_paymentid`, `res_orderid`, `res_waiterid`, `res_chefid`) VALUES
('online', 1, 1, 1, 1),
('cash', 2, 2, 2, 2),
('cash', 3, 3, 3, 3),
('online', 4, 4, 4, 4),
('online', 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `res_waiter`
--

DROP TABLE IF EXISTS `res_waiter`;
CREATE TABLE IF NOT EXISTS `res_waiter` (
  `res_waitername` text NOT NULL,
  `res_waiterid` int NOT NULL,
  `res_chefid` int NOT NULL,
  `res_waiterexperience` text NOT NULL,
  `res_orderid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `res_waiter`
--

INSERT INTO `res_waiter` (`res_waitername`, `res_waiterid`, `res_chefid`, `res_waiterexperience`, `res_orderid`) VALUES
('abhi', 1, 1, '2 years in serving', 1),
('dhruvin', 2, 2, '2 years in serving', 2),
('kunj', 3, 3, '4 years in serving', 4),
('kanti', 4, 4, '5 years in business', 4),
('deep', 5, 5, '4 years in serving', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
