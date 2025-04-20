-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 05:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admision`
--

CREATE TABLE `admision` (
  `aid` int(11) NOT NULL,
  `trainer` varchar(60) DEFAULT NULL,
  `plan` varchar(60) DEFAULT NULL,
  `amt` float DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `height` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `focus` varchar(240) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `cname` varchar(60) DEFAULT NULL,
  `cno` varchar(60) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `edate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admision`
--

INSERT INTO `admision` (`aid`, `trainer`, `plan`, `amt`, `sdate`, `height`, `weight`, `focus`, `username`, `cname`, `cno`, `cvv`, `edate`) VALUES
(9, 'mohit gupta', 'Basic Plans', 2000, '2025-02-06', '167', '58', 'Muscles', 'ABC', 'Debit', '145825654', 4555, '2025-03-06'),
(10, 'mohit gupta', 'Basic Plans', 2000, '2025-04-17', '167', '58', 'Muscles', 'sahil', 'Debit', '24713', 425, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

CREATE TABLE `diet` (
  `username` varchar(50) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `meal` varchar(350) DEFAULT NULL,
  `calories` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`username`, `day`, `date`, `meal`, `calories`) VALUES
('ABC', '1', '2025-02-06', 'eGGS', '60'),
('ABC', '2', '2025-02-07', 'UPVAS', '0'),
('sahil', '1', '2025-04-17', 'Paneer', '35');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `username`, `message`) VALUES
(1, 'sam', 'hi sam your plan ends on sunday. reniew it for continue services.'),
(2, 'harry', 'Welcome Harry enjoy our service good luck and all the best!'),
(3, 'joe123', 'Welcome MR.Joe to our gym '),
(4, 'ABC', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '1234'),
(2, 'Manager', 'manager@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `pname` varchar(60) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `features` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `pname`, `duration`, `price`, `features`) VALUES
(2, 'Basic Plans', '1', 2000, 'Fit Start,\r\nCore Essentials, \r\nActive Basics,\r\nWellness Intro.'),
(3, 'Standard Plan', '6', 10000, 'Fitness Plus, Strong Foundations, Power Plan, Dynamic Moves '),
(4, 'Premium Plans', '12', 20000, 'Elite Performance, Champion\'s Choice, Ultimate Fit, Pro Athlete. ');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `exp` int(11) NOT NULL,
  `pass` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `fname`, `lname`, `email`, `mobile`, `exp`, `pass`) VALUES
(4, 'bahu', 'bali', 'bahubali@gmail.com', '1234567809', 3, '1234'),
(6, 'mohit', 'gupta', 'mohit@gmail.com', '1234567809', 3, '12345'),
(7, 'will', 'jacks', 'willjacks@gmail.com', '5431209854', 10, '1212');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(12) NOT NULL,
  `username` varchar(240) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `mobile`, `email`, `address`, `gender`, `username`, `password`) VALUES
(10, 'ABC', 'XYZ', '8805948752', 'ABC@gmail.com', 'dubai', 'male', 'ABC', '123'),
(11, 'sahil', 'chavan', '7451663445', 'sahil@gmail.com', 'pune', 'male', 'sahil', '123');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE `workout` (
  `username` varchar(50) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `excer` varchar(200) DEFAULT NULL,
  `dura` varchar(50) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`username`, `day`, `date`, `excer`, `dura`, `note`) VALUES
('Raj', 1, '2025-02-07', 'Basic', '5', 'NEET kar'),
('Raj', 1, '2025-02-07', 'Basic', '5', 'NiioaS'),
('ABC', 1, '2025-02-06', 'Muscles', '40', 'ANY TWO SETS'),
('ABC', 2, '2025-02-07', 'BACK', '50', 'LIFT'),
('ABC', 3, '2025-02-08', 'SHOulder', '50', 'LIFT'),
('sahil', 1, '2025-04-17', 'Chest', '45', 'Dumbbell press, Incline bar press, Decline bar press');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admision`
--
ALTER TABLE `admision`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admision`
--
ALTER TABLE `admision`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
