-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2025 at 11:24 PM
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
-- Database: `classroomdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `AssignmentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `AssignmentTitle` varchar(100) NOT NULL,
  `DueDate` date NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttendanceID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `AttendanceDate` date NOT NULL,
  `AttendanceStatus` enum('Present','Absent','Tardy') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `behaviorincidents`
--

CREATE TABLE `behaviorincidents` (
  `IncidentID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `OccurredAt` datetime NOT NULL,
  `IncidentType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `ClassroomID` int(11) NOT NULL,
  `ClassroomName` varchar(100) NOT NULL,
  `RoomNumber` varchar(10) DEFAULT NULL,
  `StaffID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guardianphones`
--

CREATE TABLE `guardianphones` (
  `PhoneID` int(11) NOT NULL,
  `GuardianID` int(11) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `PhoneType` enum('Mobile','Home','Work') DEFAULT 'Mobile'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `GuardianID` int(11) NOT NULL,
  `GuardianFirstName` varchar(50) NOT NULL,
  `GuardianLastName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyears`
--

CREATE TABLE `schoolyears` (
  `SchoolYearID` int(11) NOT NULL,
  `SchoolYearName` varchar(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `StaffFirstName` varchar(50) NOT NULL,
  `StaffLastName` varchar(50) NOT NULL,
  `Role` enum('Teacher','Counselor','Admin','Assistant') NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `studentguardians`
--

CREATE TABLE `studentguardians` (
  `StudentID` int(11) NOT NULL,
  `GuardianID` int(11) NOT NULL,
  `Relationship` enum('Primary','Secondary','Other') DEFAULT 'Primary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `StudentFirstName` varchar(50) NOT NULL,
  `StudentMiddleName` varchar(50) DEFAULT NULL,
  `StudentLastName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `CurrentGrade` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
