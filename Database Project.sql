-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2025 at 12:28 AM
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
-- Database: `elementaryclassroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `AssignmentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `AssignmentTitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DueDate` date NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttendanceID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `AttendanceDate` date NOT NULL,
  `AttendanceStatus` enum('Present','Absent','Tardy') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `behaviorincidents`
--

CREATE TABLE `behaviorincidents` (
  `IncidentID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `OccurredAt` datetime NOT NULL,
  `IncidentType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `ClassroomID` int(11) NOT NULL,
  `ClassroomName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RoomNumber` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StaffID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`ClassroomID`, `ClassroomName`, `RoomNumber`, `StaffID`) VALUES
(1, '5th Grade - Homeroom ', '3-014', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `EnrollmentID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `SchoolYearID` int(11) NOT NULL,
  `EnrollmentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`EnrollmentID`, `StudentID`, `ClassroomID`, `SchoolYearID`, `EnrollmentDate`) VALUES
(1, 1, 1, 1, '2025-08-12'),
(2, 2, 1, 1, '2025-08-12'),
(3, 3, 1, 1, '2025-08-12'),
(4, 4, 1, 1, '2025-08-12'),
(5, 5, 1, 1, '2025-08-12'),
(6, 6, 1, 1, '2025-08-12'),
(7, 7, 1, 1, '2025-08-12'),
(8, 8, 1, 1, '2025-08-12'),
(9, 9, 1, 1, '2025-08-12'),
(10, 10, 1, 1, '2025-08-12'),
(11, 11, 1, 1, '2025-08-12'),
(12, 12, 1, 1, '2025-08-12'),
(13, 13, 1, 1, '2025-08-12'),
(14, 14, 1, 1, '2025-08-12'),
(15, 15, 1, 1, '2025-08-12'),
(16, 16, 1, 1, '2025-08-12'),
(17, 17, 1, 1, '2025-08-12'),
(18, 18, 1, 1, '2025-08-12'),
(19, 19, 1, 1, '2025-08-12'),
(20, 20, 1, 1, '2025-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `AssignmentID` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `GradedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guardianphones`
--

CREATE TABLE `guardianphones` (
  `PhoneID` int(11) NOT NULL,
  `GuardianID` int(11) NOT NULL,
  `PhoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhoneType` enum('Mobile','Home','Work') COLLATE utf8mb4_unicode_ci DEFAULT 'Mobile'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardianphones`
--

INSERT INTO `guardianphones` (`PhoneID`, `GuardianID`, `PhoneNumber`, `PhoneType`) VALUES
(1, 1, '(352) 425-1234', 'Mobile'),
(2, 2, '(352) 431-1234', 'Mobile'),
(3, 3, '(252) 564-1234', 'Mobile'),
(4, 4, '(352) 278-1234', 'Mobile'),
(5, 5, '(352) 362-1234', 'Mobile'),
(6, 6, '(352) 438-1234', 'Mobile'),
(7, 7, '(352) 512-1234', 'Mobile'),
(8, 8, '(863) 484-1234', 'Mobile'),
(9, 9, '(563) 239-1234', 'Mobile'),
(10, 10, '(813) 732-1234', 'Mobile'),
(11, 11, '(352) 777-1234', 'Mobile'),
(12, 12, '(754) 303-1234', 'Mobile'),
(13, 13, '(352) 817-1234', 'Mobile'),
(14, 14, '(352) 280-1234', 'Mobile'),
(15, 15, '(352) 730-1234', 'Mobile'),
(16, 16, '(863) 221-1234', 'Mobile'),
(17, 17, '(352) 615-1234', 'Mobile'),
(18, 18, '(352) 299-1234', 'Mobile'),
(19, 19, '(352) 299-2345', 'Mobile'),
(20, 20, '(352) 512-4567', 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `GuardianID` int(11) NOT NULL,
  `GuardianFirstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GuardianLastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`GuardianID`, `GuardianFirstName`, `GuardianLastName`, `Email`) VALUES
(1, 'SMITH', 'one', 'smith.one@parents.com'),
(2, 'WILLIAMS', 'TWO', 'williams.two@parents.com'),
(3, 'CRAWFORD', 'THREE', 'crawford.three@parents.com'),
(4, 'DIOKAS', 'FOUR', 'diokas.four@parents.com'),
(5, 'DANIELS', 'FIVE', 'daniels.five@parents.com'),
(6, 'GAGNE', 'SIX', 'gagne.six@parents.com'),
(7, 'REYES', 'SEVEN', 'reyes.seven@parents.com'),
(8, 'ESPINAL', 'EIGHT', 'espinal.eight@parents.com'),
(9, 'GRADERT', 'NINE', 'gradert.nine@parents.com'),
(10, 'WOOD', 'TEN', 'wood.ten@parents.com'),
(11, 'HUDSON', 'ELEVEN', 'hudson.eleven@parents.com'),
(12, 'WORKMAN', 'TWELVE', 'workman.twelve@parents.com'),
(13, 'LAINHART', 'THIRTEEN', 'lainhart.thirteen@parents.com'),
(14, 'LEVERETTE', 'FOURTEEN', 'leverette.fourteen@parents.com'),
(15, 'GODWIN', 'FIFTEEN', 'godwin.fifteen@parents.com'),
(16, 'MCNULTY,', 'SEVENTEEN', 'mcnulty,.seventeen@parents.com'),
(17, 'RAMIREZ', 'SIXTEEN', 'ramirez.sixteen@parents.com'),
(18, 'RICHARDSON', 'EIGHTEEN', 'richardson.eighteen@parents.com'),
(19, 'SANDERS', 'NINETEEN', 'sanders.nineteen@parents.com'),
(20, 'HANES', 'TWENTY', 'hanes.twenty@parents.com');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyears`
--

CREATE TABLE `schoolyears` (
  `SchoolYearID` int(11) NOT NULL,
  `SchoolYearName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schoolyears`
--

INSERT INTO `schoolyears` (`SchoolYearID`, `SchoolYearName`, `StartDate`, `EndDate`) VALUES
(1, '2025-2026', '2025-08-12', '2026-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `StaffFirstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StaffLastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role` enum('Teacher','Counselor','Admin','Assistant') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffFirstName`, `StaffLastName`, `Role`, `Email`) VALUES
(1, 'Tech', 'Reyes', 'Teacher', 'me@marion.k12.fl.us'),
(2, 'Alex', 'Doe', 'Counselor', 'alex@marion.k12.fl.us');

-- --------------------------------------------------------

--
-- Table structure for table `studentguardians`
--

CREATE TABLE `studentguardians` (
  `StudentID` int(11) NOT NULL,
  `GuardianID` int(11) NOT NULL,
  `Relationship` enum('Primary','Secondary','Other') COLLATE utf8mb4_unicode_ci DEFAULT 'Primary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentguardians`
--

INSERT INTO `studentguardians` (`StudentID`, `GuardianID`, `Relationship`) VALUES
(1, 1, 'Primary'),
(2, 2, 'Primary'),
(3, 3, 'Primary'),
(4, 4, 'Primary'),
(5, 5, 'Primary'),
(6, 6, 'Primary'),
(7, 7, 'Primary'),
(8, 8, 'Primary'),
(9, 9, 'Primary'),
(10, 10, 'Primary'),
(11, 11, 'Primary'),
(12, 12, 'Primary'),
(13, 13, 'Primary'),
(14, 14, 'Primary'),
(15, 15, 'Primary'),
(16, 16, 'Primary'),
(17, 17, 'Primary'),
(18, 18, 'Primary'),
(19, 19, 'Primary'),
(20, 20, 'Primary');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `StudentFirstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StudentMiddleName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StudentLastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `CurrentGrade` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `StudentFirstName`, `StudentMiddleName`, `StudentLastName`, `Email`, `Gender`, `DateOfBirth`, `CurrentGrade`) VALUES
(1, 'COLVIN', 'A', 'SER', 'colvin.ser@marion.k12.fl.us', 'M', '2015-08-05', 5),
(2, 'KEVIN', 'EUGENE', 'JR', 'kevin.jr@marion.k12.fl.us', 'M', '2015-08-17', 5),
(3, 'TAELOR', 'ELEE', 'FORD', 'taelor.ford@marion.k12.fl.us', 'F', '2015-08-20', 5),
(4, 'CARSON', 'THOMAS', 'DIO', 'carson.dio@marion.k12.fl.us', 'M', '2015-08-24', 5),
(5, 'ZAIDYN', 'E', 'EDWARDS', 'zaidyn.edwards@marion.k12.fl.us', 'M', '2015-08-29', 5),
(6, 'PENELOPE', 'LUCILLE', 'LOPEZ', 'penelope.lopez@marion.k12.fl.us', 'F', '2015-09-10', 5),
(7, 'ALEXANDER', 'REYES', 'NOVEZ   ', 'alexander.novez   @marion.k12.fl.us', 'M', '2015-09-22', 5),
(8, 'BRAYDEN', 'ESPIN', 'GORDITO', 'brayden.gordito@marion.k12.fl.us', 'M', '2015-08-12', 5),
(9, 'DREW', 'SAMUEL', 'CARROTS', 'drew.carrots@marion.k12.fl.us', 'M', '2015-08-14', 5),
(10, 'MAX', 'ALFRED', 'PICKLES', 'max.pickles@marion.k12.fl.us', 'M', '2015-08-17', 5),
(11, 'REECE', 'BLAKE', 'SSH', 'reece.ssh@marion.k12.fl.us', 'M', '2015-08-16', 5),
(12, 'DAISY', 'ANGEL GRACE', 'TDP', 'daisy.tdp@marion.k12.fl.us', 'F', '2015-08-25', 5),
(13, 'SAVANNAH', 'DESIREE', 'UDP', 'savannah.udp@marion.k12.fl.us', 'F', '2015-08-08', 5),
(14, 'AVA', 'MARIE', 'CDN', 'ava.cdn@marion.k12.fl.us', 'F', '2015-08-05', 5),
(15, 'MALACHI', 'ISAIAH', 'TCP', NULL, 'M', '2015-08-25', 5),
(16, 'EMALYNN', 'VIOLET', 'NFV', 'emalynn.nfv@marion.k12.fl.us', 'F', '2016-03-09', 5),
(17, 'BRIAN', NULL, 'VPC', 'brian.vpc@marion.k12.fl.us', 'M', '2014-12-24', 5),
(18, 'MAJOR', 'MARCUS', 'IDS', 'major.ids@marion.k12.fl.us', 'M', '2015-10-31', 5),
(19, 'PAUL', 'MICHAEL', 'IPS', 'paul.ips@marion.k12.fl.us', 'M', '2025-06-12', 5),
(20, 'KYLIANN', 'MARIE', 'DNS', 'kylian.dns@marion.k12.fl.us', 'F', '2015-07-09', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`AssignmentID`),
  ADD KEY `ClassroomID` (`ClassroomID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`AttendanceID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`,`ClassroomID`,`AttendanceDate`),
  ADD KEY `ClassroomID` (`ClassroomID`);

--
-- Indexes for table `behaviorincidents`
--
ALTER TABLE `behaviorincidents`
  ADD PRIMARY KEY (`IncidentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `ClassroomID` (`ClassroomID`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`ClassroomID`),
  ADD UNIQUE KEY `ClassroomName` (`ClassroomName`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`,`ClassroomID`,`SchoolYearID`),
  ADD KEY `ClassroomID` (`ClassroomID`),
  ADD KEY `SchoolYearID` (`SchoolYearID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`,`AssignmentID`),
  ADD KEY `AssignmentID` (`AssignmentID`);

--
-- Indexes for table `guardianphones`
--
ALTER TABLE `guardianphones`
  ADD PRIMARY KEY (`PhoneID`),
  ADD UNIQUE KEY `PhoneNumber` (`PhoneNumber`),
  ADD KEY `GuardianID` (`GuardianID`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`GuardianID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `schoolyears`
--
ALTER TABLE `schoolyears`
  ADD PRIMARY KEY (`SchoolYearID`),
  ADD UNIQUE KEY `SchoolYearName` (`SchoolYearName`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `studentguardians`
--
ALTER TABLE `studentguardians`
  ADD PRIMARY KEY (`StudentID`,`GuardianID`),
  ADD KEY `GuardianID` (`GuardianID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`);

--
-- Constraints for table `behaviorincidents`
--
ALTER TABLE `behaviorincidents`
  ADD CONSTRAINT `behaviorincidents_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `behaviorincidents_ibfk_2` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`);

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`),
  ADD CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`SchoolYearID`) REFERENCES `schoolyears` (`SchoolYearID`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`AssignmentID`) REFERENCES `assignments` (`AssignmentID`);

--
-- Constraints for table `guardianphones`
--
ALTER TABLE `guardianphones`
  ADD CONSTRAINT `guardianphones_ibfk_1` FOREIGN KEY (`GuardianID`) REFERENCES `guardians` (`GuardianID`);

--
-- Constraints for table `studentguardians`
--
ALTER TABLE `studentguardians`
  ADD CONSTRAINT `studentguardians_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `studentguardians_ibfk_2` FOREIGN KEY (`GuardianID`) REFERENCES `guardians` (`GuardianID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
