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
-- Database: `vivek_sportclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `club_admin`
--

DROP TABLE IF EXISTS `club_admin`;
CREATE TABLE IF NOT EXISTS `club_admin` (
  `club_name` text NOT NULL,
  `club_age` int NOT NULL,
  `club_experience` text NOT NULL,
  `club_desigination` text NOT NULL,
  `club_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `club_admin`
--

INSERT INTO `club_admin` (`club_name`, `club_age`, `club_experience`, `club_desigination`, `club_id`) VALUES
('sai sports club', 25, '25 years', 'adajan,surat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
CREATE TABLE IF NOT EXISTS `coach` (
  `coach_name` text NOT NULL,
  `coach_id` int NOT NULL,
  `coach_desigination` text NOT NULL,
  `coach_experience` text NOT NULL,
  `games_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coach_name`, `coach_id`, `coach_desigination`, `coach_experience`, `games_id`) VALUES
('sai', 1, 'senior sport coach ', '30', 1),
('raghu', 2, 'senior chess player', '10 years at national level', 2),
('manish', 3, 'senior badminton player', '15 years of state championship', 3),
('natubhai', 4, 'senior table tennis player', 'gold-medalist at state championship', 4),
('jayantibhai', 5, 'senior carrom player', 'district level gold-medalist', 5);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `games_id` int NOT NULL,
  `games_name` text NOT NULL,
  `games_type` text NOT NULL,
  `coach_id` int NOT NULL,
  `player_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`games_id`, `games_name`, `games_type`, `coach_id`, `player_id`) VALUES
(1, 'cricket', 'outdoor games', 1, 1),
(2, 'chess', 'indoor', 2, 2),
(3, 'badminton', 'indoor', 3, 3),
(4, 'table-tennis', 'indoor', 4, 4),
(5, 'carrom', 'indoor', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int NOT NULL,
  `payment_type` text NOT NULL,
  `player_id` int NOT NULL,
  `coach_id` int NOT NULL,
  `games_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `player_id`, `coach_id`, `games_id`) VALUES
(1, 'online ', 1, 1, 1),
(2, 'offline', 2, 2, 2),
(3, 'online', 3, 3, 3),
(4, 'offline', 4, 4, 4),
(5, 'offline', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `player_id` int NOT NULL,
  `player_name` text NOT NULL,
  `player_desigination` text NOT NULL,
  `player_experience` text NOT NULL,
  `coach_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `player_desigination`, `player_experience`, `coach_id`) VALUES
(1, 'rajat', 'captain of the cricket team', 'played 15 year in state tournament', 1),
(2, 'dhiraj', 'junior chess player at district level', '5 years of college level', 2),
(3, 'kunj', 'junior badminton player at state championship', 'state level champion', 3),
(4, 'jay', 'senior table-tennis player', '5 year\'s of state championship', 4),
(5, 'suresh', 'junior carrom player', '5 year\'s of district level champion', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
