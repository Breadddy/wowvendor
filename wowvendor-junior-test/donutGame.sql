-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 13, 2021 at 12:24 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WowVendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `donutGame`
--

CREATE TABLE `donutGame` (
  `ID` int(11) NOT NULL,
  `ROCK_POSITION` int(11) NOT NULL,
  `TIME` int(11) NOT NULL,
  `JUMP_POS` int(11) NOT NULL,
  `ROCK_SIZE` int(11) NOT NULL,
  `IS_WIN` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donutGame`
--

INSERT INTO `donutGame` (`ID`, `ROCK_POSITION`, `TIME`, `JUMP_POS`, `ROCK_SIZE`, `IS_WIN`) VALUES
(17, 396, 5756, 278, 75, 1),
(18, 346, 5747, 224, 79, 1),
(19, 600, 5669, 482, 74, 1),
(20, 627, 5680, 532, 51, 1),
(21, 687, 5625, 604, 40, 1),
(22, 451, 5657, 342, 65, 1),
(23, 278, 5670, 164, 71, 1),
(24, 545, 5666, 440, 61, 1),
(25, 721, 5668, 620, 57, 1),
(26, 471, 5747, 386, 41, 1),
(27, 766, 5716, 672, 50, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donutGame`
--
ALTER TABLE `donutGame`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donutGame`
--
ALTER TABLE `donutGame`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
