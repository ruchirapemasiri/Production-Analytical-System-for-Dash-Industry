-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 06:10 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dash`
--

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `date` varchar(50) NOT NULL,
  `unit_name` varchar(50) NOT NULL,
  `supervisor_id` varchar(50) NOT NULL,
  `present_employee` int(11) NOT NULL,
  `absance_employee` int(11) NOT NULL,
  `total_production` int(11) NOT NULL,
  `damage_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`date`, `unit_name`, `supervisor_id`, `present_employee`, `absance_employee`, `total_production`, `damage_count`) VALUES
('2021-08-22', 'Handle Unit', 'dash001', 100, 2, 550, 3),
('2021-08-23', 'Print Unit', 'dash001', 99, 1, 500, 5),
('2021-08-24', 'Print Unit', 'dash001', 10, 90, 100, 95),
('2021-08-25', 'Print Unit', 'dash001', 56, 44, 1300, 100);

-- --------------------------------------------------------

--
-- Table structure for table `productionmanager`
--

CREATE TABLE `productionmanager` (
  `id` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `security_question` varchar(100) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productionmanager`
--

INSERT INTO `productionmanager` (`id`, `name`, `password`, `age`, `security_question`, `answer`) VALUES
('dash011', 'dush', '345', 34, 'What high school did you attend?', 'kandy');

-- --------------------------------------------------------

--
-- Table structure for table `sup`
--

CREATE TABLE `sup` (
  `id` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `security_question` varchar(250) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sup`
--

INSERT INTO `sup` (`id`, `name`, `password`, `age`, `security_question`, `answer`) VALUES
('dash001', 'kamal', '456', 23, 'What high school did you attend?', 'pcc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`date`,`unit_name`);

--
-- Indexes for table `productionmanager`
--
ALTER TABLE `productionmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sup`
--
ALTER TABLE `sup`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
