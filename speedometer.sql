-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 08:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speedometer`
--

-- --------------------------------------------------------

--
-- Table structure for table `direction`
--

CREATE TABLE `direction` (
  `id` int(11) NOT NULL,
  `left_direction` int(11) NOT NULL,
  `right_direction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `direction`
--

INSERT INTO `direction` (`id`, `left_direction`, `right_direction`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 0, 1),
(4, 1, 0),
(5, 0, 1),
(6, 1, 0),
(7, 0, 1),
(8, 1, 0),
(9, 0, 1),
(10, 1, 0),
(11, 0, 1),
(12, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `speedometer`
--

CREATE TABLE `speedometer` (
  `id` int(11) NOT NULL,
  `button_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `speedometer`
--

INSERT INTO `speedometer` (`id`, `button_status`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 0),
(5, 0),
(6, 1),
(7, 0),
(8, 1),
(9, 0),
(10, 1),
(11, 0),
(12, 1),
(13, 0),
(14, 0),
(15, 1),
(16, 1),
(17, 1),
(18, 0),
(19, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedometer`
--
ALTER TABLE `speedometer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `direction`
--
ALTER TABLE `direction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `speedometer`
--
ALTER TABLE `speedometer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
