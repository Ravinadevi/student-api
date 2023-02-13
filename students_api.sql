-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 10:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `students_api_1`
--

CREATE TABLE `students_api_1` (
  `Rollno` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_api_1`
--

INSERT INTO `students_api_1` (`Rollno`, `Name`, `Email_id`) VALUES
('javina123', 'ravina', 'ravina@gmail.com'),
('ravina123', 'ravina', 'ravina@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students_api_2`
--

CREATE TABLE `students_api_2` (
  `Rollno` varchar(50) DEFAULT NULL,
  `Father_name` varchar(50) DEFAULT NULL,
  `Mothers_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_api_2`
--

INSERT INTO `students_api_2` (`Rollno`, `Father_name`, `Mothers_name`, `city`) VALUES
('javina123', 'Rajagopal', 'Dhanalakshmi', 'Pondicherry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_api_1`
--
ALTER TABLE `students_api_1`
  ADD PRIMARY KEY (`Rollno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
