-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 12:56 PM
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
-- Database: `gym_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `calories`
--

CREATE TABLE `calories` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(255) DEFAULT NULL,
  `calories` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calories`
--

INSERT INTO `calories` (`id`, `date`, `meal`, `calories`) VALUES
(1, '2025-04-10', 'Lunch', 600);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `available_days` varchar(100) DEFAULT NULL,
  `available_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `available_days`, `available_time`) VALUES
(1, 'Rahul Sharma', 'Monday,Wednesday,Friday', '10:00 AM - 2:00 PM'),
(2, 'Priya Desai', 'Tuesday,Thursday', '11:00 AM - 3:00 PM'),
(3, 'Amit Singh', 'Monday,Tuesday,Wednesday', '9:00 AM - 1:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_sessions`
--

CREATE TABLE `trainer_sessions` (
  `id` int(11) NOT NULL,
  `trainer_name` varchar(100) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `session_time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer_sessions`
--

INSERT INTO `trainer_sessions` (`id`, `trainer_name`, `session_date`, `session_time`) VALUES
(1, 'Priya', '0000-00-00', NULL),
(2, 'John', '2025-04-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workouts`
--

CREATE TABLE `workouts` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `workout` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `sets` int(11) DEFAULT NULL,
  `reps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workouts`
--

INSERT INTO `workouts` (`id`, `user_id`, `date`, `workout`, `duration`, `sets`, `reps`) VALUES
(1, '1', '2025-04-09', 'Chest Press', 45, 4, 12),
(2, '1', '2025-04-08', 'Squats', 50, 5, 10),
(3, '1', '2025-04-07', 'Deadlift', 60, 4, 8),
(4, '1', '2025-04-06', 'Bench Press', 40, 3, 12),
(5, '1', '2025-04-05', 'Treadmill', 30, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calories`
--
ALTER TABLE `calories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_sessions`
--
ALTER TABLE `trainer_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workouts`
--
ALTER TABLE `workouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calories`
--
ALTER TABLE `calories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer_sessions`
--
ALTER TABLE `trainer_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `workouts`
--
ALTER TABLE `workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
