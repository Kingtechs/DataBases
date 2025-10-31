-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2025 at 08:44 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `racesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `racenamestbl`
--

CREATE TABLE `racenamestbl` (
  `racenameid` int(11) NOT NULL,
  `racename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `racenamestbl`
--

INSERT INTO `racenamestbl` (`racenameid`, `racename`) VALUES
(1, 'Gainesville Fun Run'),
(2, 'Ocala Heart Association Run'),
(3, 'Cedar Key Dash'),
(4, 'Ray\'s Swim Tampa!'),
(5, 'Manatee Mile');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `racenamestbl`
--
ALTER TABLE `racenamestbl`
  ADD PRIMARY KEY (`racenameid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `racenamestbl`
--
ALTER TABLE `racenamestbl`
  MODIFY `racenameid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
