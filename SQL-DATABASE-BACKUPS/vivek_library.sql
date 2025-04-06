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
-- Database: `vivek_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookissues`
--

DROP TABLE IF EXISTS `bookissues`;
CREATE TABLE IF NOT EXISTS `bookissues` (
  `bookissues_id` int NOT NULL,
  `bookissues_name` text NOT NULL,
  `bookissues_title` text NOT NULL,
  `payment_id` int NOT NULL,
  `student_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookissues`
--

INSERT INTO `bookissues` (`bookissues_id`, `bookissues_name`, `bookissues_title`, `payment_id`, `student_id`) VALUES
(1, 'pearsion geometry maths book', 'math book', 1, 1),
(2, 'cooking learning book', 'cook by learning', 2, 2),
(3, 'sql book ', 'sql book', 3, 3),
(4, 'python book', 'python book', 4, 4),
(5, 'excel book', 'excel book', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `books_name` text NOT NULL,
  `books_id` int NOT NULL,
  `books_type` text NOT NULL,
  `student_id` int NOT NULL,
  `library_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`books_name`, `books_id`, `books_type`, `student_id`, `library_id`) VALUES
('geometry maths book', 1, 'maths or education book', 1, 1),
('cooking book', 2, 'cooking learning', 2, 1),
('sql book', 3, 'educational', 3, 1),
('python book', 4, 'python book', 4, 1),
('excel book', 5, 'excel book', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_admin`
--

DROP TABLE IF EXISTS `library_admin`;
CREATE TABLE IF NOT EXISTS `library_admin` (
  `library_id` int NOT NULL,
  `library_name` text NOT NULL,
  `library_age` int NOT NULL,
  `books_id` int NOT NULL,
  `student_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `library_admin`
--

INSERT INTO `library_admin` (`library_id`, `library_name`, `library_age`, `books_id`, `student_id`) VALUES
(1, 'peace library', 25, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int NOT NULL,
  `payment_name` text NOT NULL,
  `payment_type` text NOT NULL,
  `student_id` int NOT NULL,
  `bookissues_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_name`, `payment_type`, `student_id`, `bookissues_id`) VALUES
(1, 'math book ', 'online', 1, 1),
(2, 'cooking_learning book purchase', 'online', 2, 2),
(3, 'sql book', 'offline', 3, 3),
(4, 'python book', 'offline', 4, 4),
(5, 'excel book', 'online', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int NOT NULL,
  `student_name` text NOT NULL,
  `bookissues_id` int NOT NULL,
  `books_id` int NOT NULL,
  `books_type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `bookissues_id`, `books_id`, `books_type`) VALUES
(1, 'kailash', 1, 1, 'maths or education'),
(2, 'poonam', 2, 2, 'cooking learning'),
(3, 'sarthak', 3, 3, 'sql education book'),
(4, 'jainam', 4, 4, 'python book'),
(5, 'vaibhav', 5, 5, 'excel book');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
