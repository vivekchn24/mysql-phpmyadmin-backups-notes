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
-- Database: `vivek_schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `activities_id` int NOT NULL,
  `activities_type` text NOT NULL,
  `teachers_id` int NOT NULL,
  `student_id` int NOT NULL,
  `activities_time` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activities_id`, `activities_type`, `teachers_id`, `student_id`, `activities_time`) VALUES
(1, 'studing', 1, 1, 5),
(2, 'studing', 2, 2, 5),
(3, 'playing', 3, 3, 2),
(4, 'playing', 4, 4, 11),
(5, 'playing', 5, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `exams_id` int NOT NULL,
  `exams_name` text NOT NULL,
  `students_id` int NOT NULL,
  `teachers_id` int NOT NULL,
  `fees_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exams_id`, `exams_name`, `students_id`, `teachers_id`, `fees_id`) VALUES
(1, 'mid', 1, 1, 1),
(2, 'first sem ', 2, 2, 2),
(3, 'first sem', 3, 3, 3),
(4, 'mid', 4, 4, 4),
(5, 'final ', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `fees_id` int NOT NULL,
  `fees_type` text NOT NULL,
  `fees_name` text NOT NULL,
  `student_id` int NOT NULL,
  `teachers_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fees_id`, `fees_type`, `fees_name`, `student_id`, `teachers_id`) VALUES
(1, 'online', 'first sem', 1, 1),
(2, 'cash', 'second sem', 2, 2),
(3, 'cash', 'final exam', 3, 3),
(4, 'online', 'first sem', 4, 4),
(5, 'online', 'second sem', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `students_id` int NOT NULL,
  `students_name` text NOT NULL,
  `students_class` int NOT NULL,
  `student_age` int NOT NULL,
  `teachers_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`students_id`, `students_name`, `students_class`, `student_age`, `teachers_id`) VALUES
(1, 'kailash', 5, 7, 1),
(2, 'vivian', 6, 8, 2),
(3, 'jay', 7, 9, 3),
(4, 'smit', 10, 16, 4),
(5, 'dhruvin', 12, 18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `teachers_id` int NOT NULL,
  `teachers_name` text NOT NULL,
  `teachers_experience` text NOT NULL,
  `teachers_salary` int NOT NULL,
  `students_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teachers_id`, `teachers_name`, `teachers_experience`, `teachers_salary`, `students_id`) VALUES
(1, 'priti', '3 years of teaching', 25000, 1),
(2, 'prabhaben', '4 years of teaching', 28000, 2),
(3, 'alice', '5 years of teaching', 25000, 3),
(4, 'nehal ', '6 years of teaching', 30000, 4),
(5, 'sneha', '5 years of teaching', 40000, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
