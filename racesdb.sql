-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2025 at 07:27 AM
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
-- Table structure for table `addressestbl`
--

CREATE TABLE `addressestbl` (
  `addressid` int(11) NOT NULL,
  `athleteaddressfk` int(11) NOT NULL,
  `addresstypefk` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addressestbl`
--

INSERT INTO `addressestbl` (`addressid`, `athleteaddressfk`, `addresstypefk`, `address`, `city`, `state`, `zip`) VALUES
(1, 1, 1, '7152 Algonquin Road', 'Ocala', 'FL', '37524-5269'),
(2, 2, 1, '1652 Browning Drive', 'Newberry', 'FL', '86256-1245'),
(3, 3, 1, '9568 Crystal Cove Loop', 'Archer', 'FL', '35781'),
(4, 4, 1, '7168 Drano Drive', 'Gainesville', 'FL', '32715-5291'),
(5, 5, 1, '4652 Eraser Way', 'Gainesville', 'FL', '32912'),
(6, 6, 1, '4682 Founder\'s Path', 'Waldo', 'FL', '34521-7458'),
(7, 7, 1, '3714 Glory Flower Lane', 'Gainesville', 'FL', '32815-1659'),
(8, 8, 1, '721 Hugo Hop', 'Alachua', 'FL', '96512-3221'),
(9, 9, 1, '1654 Indigo Way', 'Newberry', 'FL', '32589'),
(10, 10, 1, '9988 Jalopy Junction', 'Archer', 'FL', '34897-4251'),
(11, 11, 1, '7154 Kaleidoscope', 'High Springs', 'FL', '36954-4628'),
(12, 12, 1, '459 Lagoon ', 'Bronson', 'FL', '34586-8569'),
(13, 13, 1, '654 Marblehead ', 'Hawthorne', 'FL', '33654-2568'),
(14, 14, 1, '3687 Northern Lights', 'Waldo', 'FL', '31598-1447'),
(15, 15, 1, '6287 Orlando Drive', 'Otter Creek', 'FL', '32889'),
(16, 16, 1, '5511 Potato Peel Drive', 'High Springs', 'FL', '35874'),
(17, 17, 1, '845 Rugby Drive', 'Ocala', 'FL', '33985-5481'),
(18, 18, 1, '75 Sequoia Street', 'Anthony', 'FL', '32985-4411'),
(19, 19, 1, '95845 Turnover Terrace', 'Orange Heights', 'FL', '32987'),
(20, 20, 1, '754 Vinson Way', 'Gainesville', 'FL', '32619-4503'),
(21, 21, 1, '376 Pizarro Court', 'Santa Fe', 'FL', '38942-6581'),
(22, 22, 1, '9531 Yandy Acres', 'Valdosta', 'GA', '48952-3185'),
(23, 23, 1, '65 Zippy Cove', 'Lake Park', 'GA', '46528-2365');

-- --------------------------------------------------------

--
-- Table structure for table `addresstypestbl`
--

CREATE TABLE `addresstypestbl` (
  `addresstypeid` int(11) NOT NULL,
  `addresstype` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresstypestbl`
--

INSERT INTO `addresstypestbl` (`addresstypeid`, `addresstype`) VALUES
(1, 'Street'),
(2, 'Mailing');

-- --------------------------------------------------------

--
-- Table structure for table `athletestbl`
--

CREATE TABLE `athletestbl` (
  `athleteid` int(11) NOT NULL,
  `genderathletefk` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `athletedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `athletestbl`
--

INSERT INTO `athletestbl` (`athleteid`, `genderathletefk`, `firstname`, `lastname`, `birthday`, `athletedate`) VALUES
(1, 1, 'Anna', 'Ahrens', '2008-09-02', '2022-11-05 00:00:00'),
(2, 2, 'Bob', 'Brown', '2003-11-23', '2018-06-15 00:00:00'),
(3, 2, 'Carl', 'Crawford', '1994-04-07', '2012-02-18 00:00:00'),
(4, 2, 'Dawn', 'Davis', '2012-07-02', '2023-08-12 00:00:00'),
(5, 1, 'Erica', 'Edwards', '2006-02-11', '2021-04-29 00:00:00'),
(6, 3, 'Friend', 'Ferguson', '2011-03-31', '2024-02-28 00:00:00'),
(7, 1, 'Glenda', 'Gunderson', '2013-05-15', '2024-06-10 00:00:00'),
(8, 2, 'Hal', 'Harper', '1991-06-12', '2009-09-12 00:00:00'),
(9, 1, 'Iris', 'Ingles', '2012-10-14', '2023-11-24 00:00:00'),
(10, 2, 'John', 'Jenkins', '1989-08-11', '2002-10-06 00:00:00'),
(11, 2, 'Kris', 'Klepper', '1988-09-13', '2000-04-16 00:00:00'),
(12, 1, 'Leah', 'Larson', '2008-11-03', '2022-05-18 00:00:00'),
(13, 3, 'Marna', 'Mixon', '2006-11-18', '2021-07-12 00:00:00'),
(14, 1, 'Nikki', 'Nabors', '2005-04-07', '2019-06-28 00:00:00'),
(15, 2, 'Oscar', 'Ortega', '2000-12-14', '2015-08-23 00:00:00'),
(16, 1, 'Poly', 'Parker', '1998-02-16', '2012-07-28 00:00:00'),
(17, 2, 'Rick', 'Rogers', '2009-10-12', '2023-01-12 00:00:00'),
(18, 1, 'Sara', 'Sanderson', '2005-11-18', '2022-12-06 00:00:00'),
(19, 2, 'Tom', 'Tucker', '1996-03-14', '2012-05-01 00:00:00'),
(20, 1, 'Violet', 'Vega', '2010-11-18', '2012-08-21 00:00:00'),
(21, 1, 'Wanda', 'Williams', '2001-07-19', '2015-03-12 00:00:00'),
(22, 2, 'Yusef', 'Yonkers', '2011-06-23', '2023-08-01 00:00:00'),
(23, 1, 'Zena', 'Zaster', '2012-02-11', '2023-09-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emailstbl`
--

CREATE TABLE `emailstbl` (
  `emailid` int(11) NOT NULL,
  `athleteemailfk` int(11) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailstbl`
--

INSERT INTO `emailstbl` (`emailid`, `athleteemailfk`, `email`) VALUES
(1, 1, 'anna.ahrens@cox.net'),
(2, 2, 'bob.brown@sfcollege.edu'),
(3, 2, 'robert.brown@att.net'),
(4, 4, 'dawn.davis@tmobile.com'),
(5, 4, 'd.davis@sfcollege.edu'),
(6, 5, 'bigrunner@gainesville.net'),
(7, 6, 'riverwalker@gainesville.net'),
(8, 7, 'driver@cox.com'),
(9, 7, 'glenda.gunderson@sfcollege.edu'),
(10, 9, 'eyes@gainesville.net'),
(11, 10, 'partyguy@uf.edu'),
(12, 11, 'kris.klepper@sfcollege.edu'),
(13, 12, 'beachcomber@verizon.com'),
(14, 13, 'marna.mixon@sfcollege.edu'),
(15, 13, 'hobbiest@gainesville.net'),
(16, 15, 'bandman@att.com'),
(17, 16, 'sportsgirl@florida.net'),
(18, 17, 'rickrrr@att.com'),
(19, 18, 'sarabird@verizon.com'),
(20, 19, 'truckking@gainesville.net'),
(21, 19, 'tom.tucker@sfcollege.edu'),
(22, 20, 'dancer@verizon.com'),
(23, 21, 'mechanic@att.com'),
(24, 22, 'soccerfan@att.net'),
(25, 22, 'yusef.yonkers@sfcollege.edu'),
(26, 23, 'naturegirl@cox.com');

-- --------------------------------------------------------

--
-- Table structure for table `eventstbl`
--

CREATE TABLE `eventstbl` (
  `eventid` int(11) NOT NULL,
  `racenameeventfk` int(11) NOT NULL,
  `racelengtheventfk` int(11) NOT NULL,
  `racetypeeventfk` int(11) NOT NULL,
  `eventdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventstbl`
--

INSERT INTO `eventstbl` (`eventid`, `racenameeventfk`, `racelengtheventfk`, `racetypeeventfk`, `eventdate`) VALUES
(1, 1, 2, 2, '2022-04-18'),
(2, 1, 2, 2, '2023-04-19'),
(3, 1, 2, 2, '2024-04-20'),
(4, 2, 3, 3, '2023-03-24'),
(5, 2, 3, 3, '2024-03-25'),
(6, 3, 5, 3, '2024-04-15'),
(7, 4, 6, 4, '2022-10-18'),
(8, 4, 6, 4, '2023-10-19'),
(9, 5, 6, 4, '2026-10-31'),
(10, 5, 6, 4, '2026-10-31'),
(11, 5, 6, 4, '2026-10-31'),
(12, 5, 6, 4, '2026-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `finishestbl`
--

CREATE TABLE `finishestbl` (
  `finishid` int(11) NOT NULL,
  `racefinishfk` int(11) NOT NULL,
  `finish` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `finishestbl`
--

INSERT INTO `finishestbl` (`finishid`, `racefinishfk`, `finish`) VALUES
(1, 1, '10:21:54'),
(2, 2, '10:17:21'),
(3, 3, '10:19:35'),
(4, 4, '10:23:56'),
(5, 5, '10:22:41'),
(6, 6, '10:21:27'),
(7, 7, '10:19:52'),
(8, 8, '10:29:12'),
(10, 10, '10:24:51'),
(11, 11, '10:21:31'),
(12, 12, '10:18:43'),
(13, 13, '10:20:08'),
(14, 14, '10:19:51'),
(15, 15, '10:21:03'),
(16, 16, '10:20:43'),
(17, 17, '10:18:49'),
(18, 18, '10:19:27'),
(19, 19, '11:38:02'),
(20, 20, '11:42:38'),
(21, 21, '11:39:24'),
(22, 22, '11:44:51'),
(23, 23, '11:41:39'),
(24, 24, '11:43:27'),
(25, 25, '11:38:56'),
(26, 26, '11:39:52'),
(28, 28, '11:39:51'),
(29, 29, '11:45:28'),
(30, 30, '14:54:32'),
(31, 31, '14:39:56'),
(32, 32, '15:03:23'),
(33, 33, '15:01:02'),
(35, 35, '14:53:45'),
(36, 36, '14:59:02'),
(37, 37, '15:03:02'),
(38, 38, '14:36:52'),
(39, 39, '14:42:51'),
(40, 40, '14:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `genderstbl`
--

CREATE TABLE `genderstbl` (
  `genderid` int(11) NOT NULL,
  `genderchar` char(1) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genderstbl`
--

INSERT INTO `genderstbl` (`genderid`, `genderchar`, `gender`) VALUES
(1, 'F', 'Female'),
(2, 'M', 'Male'),
(3, 'T', 'They');

-- --------------------------------------------------------

--
-- Table structure for table `phonestbl`
--

CREATE TABLE `phonestbl` (
  `phoneid` int(11) NOT NULL,
  `athletephonefk` int(11) NOT NULL,
  `phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phonestbl`
--

INSERT INTO `phonestbl` (`phoneid`, `athletephonefk`, `phone`) VALUES
(1, 1, '8706485247'),
(2, 2, '3524956851'),
(3, 3, '3521658745'),
(4, 4, '7704485692'),
(5, 5, '7704625329'),
(6, 6, '3529145214'),
(7, 7, '3527385419'),
(8, 9, '7709556482'),
(9, 10, '8846254126'),
(10, 11, '6654895627'),
(11, 12, '7804658124'),
(12, 13, '3528156541'),
(13, 15, '3524887144'),
(14, 16, '6135274582'),
(15, 16, '5124286555'),
(16, 17, '3524668881'),
(17, 18, '7705124578'),
(18, 19, '9135468457'),
(19, 21, '6254285126'),
(20, 22, '7189254628'),
(21, 23, '3528445533');

-- --------------------------------------------------------

--
-- Table structure for table `racelengthstbl`
--

CREATE TABLE `racelengthstbl` (
  `racelengthid` int(11) NOT NULL,
  `racelength` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `racelengthstbl`
--

INSERT INTO `racelengthstbl` (`racelengthid`, `racelength`) VALUES
(1, '1k'),
(2, '5k'),
(3, '10k'),
(4, '25k'),
(5, '50k'),
(6, '1 Mile');

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
(5, 'Manatee Mile'),
(6, 'Ultimate Manatee Sprint'),
(7, 'Ultimate Manatee Sprint'),
(8, 'Ultimate Manatee Sprint'),
(9, 'Ultimate Manatee Sprint'),
(10, 'Ultimate Manatee Sprint'),
(11, 'Ultimate Manatee Sprint'),
(12, 'Ultimate Manatee Sprint'),
(13, 'Ultimate Manatee Sprint'),
(14, 'Ultimate Mustang Run');

-- --------------------------------------------------------

--
-- Table structure for table `racestbl`
--

CREATE TABLE `racestbl` (
  `raceid` int(11) NOT NULL,
  `athleteracefk` int(11) NOT NULL,
  `eventracefk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `racestbl`
--

INSERT INTO `racestbl` (`raceid`, `athleteracefk`, `eventracefk`) VALUES
(1, 4, 1),
(2, 6, 1),
(3, 12, 1),
(4, 10, 1),
(5, 14, 1),
(6, 4, 2),
(7, 12, 2),
(8, 10, 2),
(9, 16, 2),
(10, 23, 2),
(11, 20, 2),
(12, 22, 2),
(13, 4, 3),
(14, 10, 3),
(15, 3, 3),
(16, 6, 3),
(17, 13, 3),
(18, 15, 3),
(19, 1, 4),
(20, 5, 4),
(21, 12, 4),
(22, 23, 4),
(23, 21, 4),
(24, 22, 4),
(25, 14, 5),
(26, 12, 5),
(27, 7, 5),
(28, 1, 5),
(29, 22, 5),
(30, 2, 6),
(31, 8, 6),
(32, 17, 6),
(33, 23, 6),
(34, 11, 7),
(35, 14, 7),
(36, 15, 7),
(37, 20, 7),
(38, 11, 8),
(39, 16, 8),
(40, 18, 8);

-- --------------------------------------------------------

--
-- Table structure for table `racetypestbl`
--

CREATE TABLE `racetypestbl` (
  `racetypeid` int(11) NOT NULL,
  `racetype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `racetypestbl`
--

INSERT INTO `racetypestbl` (`racetypeid`, `racetype`) VALUES
(1, 'Walk'),
(2, 'Run'),
(3, 'Bike'),
(4, 'Swim'),
(5, 'Triathlon');

-- --------------------------------------------------------

--
-- Table structure for table `startstbl`
--

CREATE TABLE `startstbl` (
  `startid` int(11) NOT NULL,
  `racestartfk` int(11) NOT NULL,
  `start` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `startstbl`
--

INSERT INTO `startstbl` (`startid`, `racestartfk`, `start`) VALUES
(1, 1, '10:00:09'),
(2, 2, '10:00:09'),
(3, 3, '10:00:09'),
(4, 4, '10:00:09'),
(5, 5, '10:00:09'),
(6, 6, '10:02:29'),
(7, 7, '10:02:29'),
(8, 8, '10:02:29'),
(9, 9, '10:02:29'),
(10, 10, '10:02:29'),
(11, 11, '10:02:29'),
(12, 12, '10:02:29'),
(13, 13, '10:04:17'),
(14, 14, '10:04:17'),
(15, 15, '10:04:17'),
(16, 16, '10:04:17'),
(17, 17, '10:04:17'),
(18, 18, '10:04:17'),
(19, 19, '11:01:58'),
(20, 20, '11:01:58'),
(21, 21, '11:01:58'),
(22, 22, '11:01:58'),
(23, 23, '11:01:58'),
(24, 24, '11:01:58'),
(25, 25, '11:02:23'),
(26, 26, '11:02:23'),
(27, 27, '11:02:23'),
(28, 28, '11:02:23'),
(29, 29, '11:02:23'),
(30, 30, '09:01:33'),
(31, 31, '09:01:33'),
(32, 32, '09:01:33'),
(33, 33, '09:01:33'),
(34, 34, '13:00:58'),
(35, 35, '13:00:58'),
(36, 36, '13:00:58'),
(37, 37, '13:00:58'),
(38, 38, '13:02:03'),
(39, 39, '13:02:03'),
(40, 40, '13:02:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressestbl`
--
ALTER TABLE `addressestbl`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `athleteaddressfk` (`athleteaddressfk`),
  ADD KEY `addresstypefk` (`addresstypefk`);

--
-- Indexes for table `addresstypestbl`
--
ALTER TABLE `addresstypestbl`
  ADD PRIMARY KEY (`addresstypeid`);

--
-- Indexes for table `athletestbl`
--
ALTER TABLE `athletestbl`
  ADD PRIMARY KEY (`athleteid`),
  ADD KEY `genderathletefk` (`genderathletefk`);

--
-- Indexes for table `emailstbl`
--
ALTER TABLE `emailstbl`
  ADD PRIMARY KEY (`emailid`),
  ADD KEY `athleteemailfk` (`athleteemailfk`);

--
-- Indexes for table `eventstbl`
--
ALTER TABLE `eventstbl`
  ADD PRIMARY KEY (`eventid`),
  ADD KEY `racenameeventfk` (`racenameeventfk`),
  ADD KEY `racelengtheventfk` (`racelengtheventfk`),
  ADD KEY `racetypeeventfk` (`racetypeeventfk`);

--
-- Indexes for table `finishestbl`
--
ALTER TABLE `finishestbl`
  ADD PRIMARY KEY (`finishid`),
  ADD KEY `racefinishfk` (`racefinishfk`);

--
-- Indexes for table `genderstbl`
--
ALTER TABLE `genderstbl`
  ADD PRIMARY KEY (`genderid`);

--
-- Indexes for table `phonestbl`
--
ALTER TABLE `phonestbl`
  ADD PRIMARY KEY (`phoneid`),
  ADD KEY `athletephonefk` (`athletephonefk`);

--
-- Indexes for table `racelengthstbl`
--
ALTER TABLE `racelengthstbl`
  ADD PRIMARY KEY (`racelengthid`);

--
-- Indexes for table `racenamestbl`
--
ALTER TABLE `racenamestbl`
  ADD PRIMARY KEY (`racenameid`);

--
-- Indexes for table `racestbl`
--
ALTER TABLE `racestbl`
  ADD PRIMARY KEY (`raceid`),
  ADD KEY `athleteracefk` (`athleteracefk`),
  ADD KEY `eventracefk` (`eventracefk`);

--
-- Indexes for table `racetypestbl`
--
ALTER TABLE `racetypestbl`
  ADD PRIMARY KEY (`racetypeid`);

--
-- Indexes for table `startstbl`
--
ALTER TABLE `startstbl`
  ADD PRIMARY KEY (`startid`),
  ADD KEY `racestartfk` (`racestartfk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addressestbl`
--
ALTER TABLE `addressestbl`
  MODIFY `addressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `addresstypestbl`
--
ALTER TABLE `addresstypestbl`
  MODIFY `addresstypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `athletestbl`
--
ALTER TABLE `athletestbl`
  MODIFY `athleteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `emailstbl`
--
ALTER TABLE `emailstbl`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `eventstbl`
--
ALTER TABLE `eventstbl`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `finishestbl`
--
ALTER TABLE `finishestbl`
  MODIFY `finishid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `genderstbl`
--
ALTER TABLE `genderstbl`
  MODIFY `genderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phonestbl`
--
ALTER TABLE `phonestbl`
  MODIFY `phoneid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `racelengthstbl`
--
ALTER TABLE `racelengthstbl`
  MODIFY `racelengthid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `racenamestbl`
--
ALTER TABLE `racenamestbl`
  MODIFY `racenameid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `racestbl`
--
ALTER TABLE `racestbl`
  MODIFY `raceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `racetypestbl`
--
ALTER TABLE `racetypestbl`
  MODIFY `racetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `startstbl`
--
ALTER TABLE `startstbl`
  MODIFY `startid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addressestbl`
--
ALTER TABLE `addressestbl`
  ADD CONSTRAINT `addressestbl_ibfk_1` FOREIGN KEY (`athleteaddressfk`) REFERENCES `athletestbl` (`athleteid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addressestbl_ibfk_2` FOREIGN KEY (`addresstypefk`) REFERENCES `addresstypestbl` (`addresstypeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `athletestbl`
--
ALTER TABLE `athletestbl`
  ADD CONSTRAINT `athletestbl_ibfk_1` FOREIGN KEY (`genderathletefk`) REFERENCES `genderstbl` (`genderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emailstbl`
--
ALTER TABLE `emailstbl`
  ADD CONSTRAINT `emailstbl_ibfk_1` FOREIGN KEY (`athleteemailfk`) REFERENCES `athletestbl` (`athleteid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventstbl`
--
ALTER TABLE `eventstbl`
  ADD CONSTRAINT `eventstbl_ibfk_1` FOREIGN KEY (`racenameeventfk`) REFERENCES `racenamestbl` (`racenameid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventstbl_ibfk_2` FOREIGN KEY (`racelengtheventfk`) REFERENCES `racelengthstbl` (`racelengthid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventstbl_ibfk_3` FOREIGN KEY (`racetypeeventfk`) REFERENCES `racetypestbl` (`racetypeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finishestbl`
--
ALTER TABLE `finishestbl`
  ADD CONSTRAINT `finishestbl_ibfk_1` FOREIGN KEY (`racefinishfk`) REFERENCES `racestbl` (`raceid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phonestbl`
--
ALTER TABLE `phonestbl`
  ADD CONSTRAINT `phonestbl_ibfk_1` FOREIGN KEY (`athletephonefk`) REFERENCES `athletestbl` (`athleteid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `racestbl`
--
ALTER TABLE `racestbl`
  ADD CONSTRAINT `racestbl_ibfk_1` FOREIGN KEY (`athleteracefk`) REFERENCES `athletestbl` (`athleteid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `racestbl_ibfk_2` FOREIGN KEY (`eventracefk`) REFERENCES `eventstbl` (`eventid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `startstbl`
--
ALTER TABLE `startstbl`
  ADD CONSTRAINT `startstbl_ibfk_1` FOREIGN KEY (`racestartfk`) REFERENCES `racestbl` (`raceid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
