-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2025 at 05:43 AM
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
-- Database: `devicesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressestbl`
--

CREATE TABLE `addressestbl` (
  `addressid` int(11) NOT NULL,
  `clientaddressfk` int(11) NOT NULL,
  `addresstypefk` int(11) NOT NULL,
  `address1` varchar(75) NOT NULL,
  `address2` varchar(75) NOT NULL,
  `apt` varchar(15) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(25) NOT NULL,
  `shortstate` char(2) NOT NULL,
  `zip` char(5) NOT NULL,
  `zip4` char(4) NOT NULL,
  `addressdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addressestbl`
--

INSERT INTO `addressestbl` (`addressid`, `clientaddressfk`, `addresstypefk`, `address1`, `address2`, `apt`, `city`, `state`, `shortstate`, `zip`, `zip4`, `addressdate`) VALUES
(1, 1, 1, '4862 Amber Drive', '', '254', 'Suwannee', 'Florida', 'FL', '33817', '5247', '2019-11-15 00:00:00'),
(2, 1, 2, '4862 Amber Drive', '', '254', 'Suwannee', 'Florida', 'FL', '33817', '5247', '2019-11-15 00:00:00'),
(3, 2, 1, '7246 Blue Drive', '', '6', 'Gainesville', 'Florida', 'FL', '32612', '7152', '2012-07-18 00:00:00'),
(4, 2, 2, '7246 Blue Drive', '', '6', 'Gainesville', 'Florida', 'FL', '32612', '7152', '2012-07-18 00:00:00'),
(5, 3, 1, '953 Clay Street', '', '23', 'Flagler', 'Florida', 'FL', '36519', '', '2017-01-21 00:00:00'),
(6, 3, 2, '953 Clay Street', '', '', 'Flagler', 'Florida', 'FL', '36519', '', '2017-01-21 00:00:00'),
(7, 4, 2, 'PO Box 2587', '', '', 'Orlando', 'Florida', 'FL', '39327', '2587', '2019-10-03 00:00:00'),
(8, 2, 3, '4869 Elongated Avenue', '', '154', 'Gainesville', 'Florida', 'FL', '32621', '', '2016-11-05 00:00:00'),
(9, 6, 1, '748 Fresca Freeway', '', '', 'Suwannee', 'Florida', 'FL', '33817', '', '2021-04-28 00:00:00'),
(10, 7, 1, '92715 Gateway Glen', '', '', 'Orlando', 'Florida', 'FL', '39321', '', '2020-03-29 00:00:00'),
(11, 7, 2, '92715 Gateway Glen', '', '', 'Orlando', 'Florida', 'FL', '39321', '', '2020-03-29 00:00:00'),
(12, 8, 2, '6748 Hatcher Highway', '', 'Suite 408', 'Gainesville', 'Florida', 'FL', '32644', '', '2017-02-18 00:00:00'),
(13, 6, 2, '3451 Indigo Loop', '', '', 'Tampa', 'Florida', 'FL', '38714', '', '2014-12-05 00:00:00'),
(14, 9, 1, '8594 NW 89th Street', '', '16', 'Gainesville', 'Florida', 'FL', '32589', '', '2012-06-02 00:00:00'),
(15, 10, 2, '365 Jingle Way', '', '', 'Gainesville', 'Florida', 'FL', '32621', '', '2017-04-23 00:00:00'),
(16, 7, 3, '7486 Knuckle Keep', '', '', 'Gainesville', 'Florida', 'FL', '32607', '', '2011-08-02 00:00:00'),
(17, 6, 3, '49587 Big Mall Road', 'Anderson Building', 'Suite 231', 'Gainesville', 'Florida', 'FL', '32607', '9574', '2014-05-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `addresstypestbl`
--

CREATE TABLE `addresstypestbl` (
  `addresstypeid` int(11) NOT NULL,
  `addresstype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresstypestbl`
--

INSERT INTO `addresstypestbl` (`addresstypeid`, `addresstype`) VALUES
(1, 'Physical'),
(2, 'Mailing`'),
(3, 'Office');

-- --------------------------------------------------------

--
-- Table structure for table `carrierstbl`
--

CREATE TABLE `carrierstbl` (
  `carrierid` int(11) NOT NULL,
  `carrier` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carrierstbl`
--

INSERT INTO `carrierstbl` (`carrierid`, `carrier`) VALUES
(1, 'AT&T'),
(2, 'T-Mobile'),
(3, 'Verizon'),
(4, 'UScellular'),
(5, 'GatorNet');

-- --------------------------------------------------------

--
-- Table structure for table `clientstbl`
--

CREATE TABLE `clientstbl` (
  `clientid` int(11) NOT NULL,
  `genderclientfk` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `commonname` varchar(50) NOT NULL,
  `initial` char(1) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `clientdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientstbl`
--

INSERT INTO `clientstbl` (`clientid`, `genderclientfk`, `firstname`, `commonname`, `initial`, `lastname`, `birthday`, `clientdate`) VALUES
(1, 1, 'Allan', 'Allan', 'A', 'Akers', '1997-08-12', '2009-11-23 00:00:00'),
(2, 2, 'Barbara', 'Bee', 'B', 'Baker', '2012-11-03', '2022-12-18 00:00:00'),
(3, 1, 'Christopher', 'Chris', 'C', 'Carlisle', '1959-08-12', '2018-03-15 00:00:00'),
(4, 1, 'David', 'Dredd', 'D', 'Dreadnaught', '1992-09-15', '2020-06-18 00:00:00'),
(5, 2, 'Eliza', 'Liz', 'E', 'Eccles', '1967-05-12', '2016-08-12 00:00:00'),
(6, 2, 'Funda', 'Funda', 'F', 'Fernandez', '2001-10-12', '2013-01-31 00:00:00'),
(7, 2, 'Glenda', 'Glenda', 'G', 'Goode', '1960-09-27', '2014-03-23 00:00:00'),
(8, 1, 'Henry', 'Hank', 'H', 'Hawkins', '1982-06-19', '2016-07-07 00:00:00'),
(9, 2, 'Isabella', 'Izzy', 'I', 'Inkster', '1987-10-03', '2018-11-11 00:00:00'),
(10, 2, 'Josephine', 'Jo', 'J', 'Jenkins', '2012-08-21', '2019-03-21 00:00:00'),
(11, 2, 'Karla', 'Karla', 'K', 'King', '1994-02-18', '2018-08-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contactsphones`
--

CREATE TABLE `contactsphones` (
  `contactphoneid` int(11) NOT NULL,
  `contactphonefk` int(11) NOT NULL,
  `contacttypefk` int(11) NOT NULL,
  `contactphone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactsphones`
--

INSERT INTO `contactsphones` (`contactphoneid`, `contactphonefk`, `contacttypefk`, `contactphone`) VALUES
(1, 15, 3, '7906458245'),
(2, 15, 2, '3522956548'),
(3, 15, 3, '4047594521'),
(4, 15, 1, '6294558451'),
(5, 7, 1, '2167536455'),
(6, 7, 3, '3816913254'),
(7, 1, 3, '2162336584'),
(8, 1, 4, '8704225965'),
(9, 1, 2, '6295736582'),
(10, 10, 3, '4049556521'),
(11, 10, 3, '3529448452'),
(12, 10, 1, '3526448591'),
(13, 10, 2, '7906332654'),
(14, 10, 3, '8704986573'),
(15, 3, 3, '2165887965'),
(16, 3, 2, '3816495681'),
(17, 3, 2, '6292865412'),
(18, 3, 3, '8703714592'),
(19, 12, 3, '4043541289'),
(20, 12, 3, '3526297534'),
(21, 12, 2, '2165996485'),
(22, 12, 1, '3526421553'),
(23, 9, 4, '8706158351'),
(24, 9, 1, '3529514524'),
(25, 9, 2, '8705896251'),
(26, 9, 2, '3816195482'),
(27, 2, 2, '3524865958'),
(28, 2, 4, '3527954628'),
(29, 2, 2, '4045876158'),
(30, 2, 3, '6294665267'),
(31, 2, 3, '3526158439'),
(32, 2, 3, '3528516452'),
(33, 13, 3, '3523715458'),
(34, 13, 3, '3528251625'),
(35, 13, 3, '3526115428'),
(36, 14, 1, '3816285654'),
(37, 14, 3, '2168465221'),
(38, 14, 3, '3528447519'),
(39, 11, 4, '3524958652'),
(40, 11, 1, '4046295419'),
(41, 11, 3, '8709426572'),
(42, 11, 3, '8706225558'),
(43, 8, 3, '7906448885'),
(44, 8, 3, '7904856255'),
(45, 8, 3, '3524995556'),
(46, 6, 2, '7906255566'),
(47, 6, 2, '7908115663'),
(48, 6, 2, '7908153355'),
(49, 4, 1, '7906154284'),
(50, 4, 2, '3524512556'),
(51, 4, 2, '7906186554'),
(52, 5, 3, '3529564851'),
(53, 5, 3, '2168254554'),
(54, 5, 3, '3818654271'),
(55, 5, 3, '3525946273');

-- --------------------------------------------------------

--
-- Table structure for table `contactstbl`
--

CREATE TABLE `contactstbl` (
  `contactid` int(11) NOT NULL,
  `simcontactfk` int(11) NOT NULL,
  `contactfirst` varchar(50) NOT NULL,
  `contactlast` varchar(50) NOT NULL,
  `contactemail` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactstbl`
--

INSERT INTO `contactstbl` (`contactid`, `simcontactfk`, `contactfirst`, `contactlast`, `contactemail`) VALUES
(1, 15, 'Carl', 'Decker', 'carl.decker@gator.net'),
(2, 15, 'Scott', 'Goode', 'scotty@gmail.com'),
(3, 15, 'John', 'Jenkins', 'johnjjj@verizon.com'),
(4, 15, 'Dana', 'Smith', 'dana.smith@kingsley.net'),
(5, 7, 'Verna', 'Carl', 'datadriven@ufuniv.edu'),
(6, 7, 'Paula', 'Preston', 'paulariver@att.net'),
(7, 1, 'Glenda', 'Jenkins', 'glenda.jenkins@gator.net'),
(8, 1, 'Mark', 'Norris', 'norrisavenger@att.net'),
(9, 1, 'Wilda', 'Tom', 'wildawild@verizon.com'),
(10, 10, 'Oscar', 'Jones', 'oscargrump@cox.com'),
(11, 10, 'Donna', 'Dixon', 'donna.dixon@gmail.com'),
(12, 10, 'Donna', 'Dixon', 'd.dixon@ufuniv.edu'),
(13, 10, 'Terry', 'Baker', 'terry.baker@gator.net'),
(14, 10, 'Sue', 'Peters', 'sue.peters@atomic.net'),
(15, 3, 'John', 'Anderson', 'johninocala@ocala.net'),
(16, 3, 'Gene', 'Allen', 'genegeneallen@gmail.com'),
(17, 3, 'Annette', 'Williams', 'annetteinwaldo@att.com'),
(18, 3, 'Colton', 'Wentz', 'contonn@cox.com'),
(19, 12, 'Bill', 'Martin', 'billmartin@gmail.com'),
(20, 12, 'Deborah', 'Dean', 'debbiedean@fun.com'),
(21, 12, 'Karla', 'Andrews', 'karlaknowsbest@att.net'),
(22, 12, 'Violet', 'Dean', 'violet123@gmail.com'),
(23, 9, 'Tim', 'Jones', 'timmyjones@verizon.com'),
(24, 9, 'Eve', 'Williams', 'evebronson@gator.net'),
(25, 9, 'Carla', 'Baker', 'carlainnewberry@cox.com'),
(26, 9, 'Jim', 'Stearns', 'jim.stearns12@att.net'),
(27, 2, 'Wilda', 'Carlson', 'wilda.carlson@att.net'),
(28, 2, 'Katie', 'Lincoln', 'katie.lincoln@gmail.com'),
(29, 2, 'Woody', 'Decker', 'woody.decker@att.net'),
(30, 2, 'Monica', 'Timmons', 'monica.timmons@gci.net'),
(31, 2, 'Carol', 'Morris', 'carol. morris@att.net'),
(32, 2, 'Tamara', 'Knowles', 'tammyknowles@gator.net'),
(33, 13, 'George', 'Hawkins', 'george.hawkins@cox.net'),
(34, 13, 'Dan', 'Smith', 'dan-driver@cox.net'),
(35, 13, 'Steve', 'King', 'steve.king@gator.net'),
(36, 14, 'Bob', 'Collins', 'robertinraces@gmail.com'),
(37, 14, 'Paula', 'Minton', 'paulam@cox.net'),
(38, 14, 'Alice', 'Smedley', 'alice.smedley@att.net'),
(39, 11, 'Don', 'Carlson', 'doncarlson@sfcollege.edu'),
(40, 11, 'Megan', 'Hendricks', 'meganmagician@ufuniv.edu'),
(41, 11, 'Vikki', 'Allen', 'vikki.allen@att.net'),
(42, 11, 'Sue', 'VanAllen', 'susan-gator@gator.net'),
(43, 8, 'Carol', 'King', 'carol.king@verizon.com'),
(44, 8, 'Debbie', 'Thomas', 'deboraht@att.net'),
(45, 8, 'Dawn', 'Hoskins', 'dawnh@sfcollege.edu'),
(46, 6, 'Patty', 'Gunderson', 'patty.gunderson@att.net'),
(47, 6, 'Sophie', 'Allen', 'sophie.allen@gator.net'),
(48, 6, 'Blanche', 'Drinker', 'blanchedrinker@att.net'),
(49, 4, 'Bill', 'Scott', 'bill.scott34@gator.net'),
(50, 4, 'Dean', 'Breyfogle', 'dean.b@att.net'),
(51, 4, 'Karen', 'Smith', 'karen.smith123@att.net'),
(52, 5, 'Larry', 'Martin', 'lawrence.martin12@gmail.com'),
(53, 5, 'Paul', 'Ellis', 'paul.ellis34@att.net'),
(54, 5, 'Scott', 'VanZant', 'scott.vanzant2@sfcollege.edu'),
(55, 5, 'Vincent', 'Baker', 'vincebaker@gator.net');

-- --------------------------------------------------------

--
-- Table structure for table `contacttypes`
--

CREATE TABLE `contacttypes` (
  `contacttypeid` int(11) NOT NULL,
  `contacttype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacttypes`
--

INSERT INTO `contacttypes` (`contacttypeid`, `contacttype`) VALUES
(1, 'Family'),
(2, 'Friend'),
(3, 'Neighbor'),
(4, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `devicestbl`
--

CREATE TABLE `devicestbl` (
  `deviceid` int(11) NOT NULL,
  `clientdevicefk` int(11) NOT NULL,
  `modeldevicefk` int(11) NOT NULL,
  `imei` char(15) NOT NULL,
  `devicedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devicestbl`
--

INSERT INTO `devicestbl` (`deviceid`, `clientdevicefk`, `modeldevicefk`, `imei`, `devicedate`) VALUES
(1, 1, 3, '79760947932528', '2023-07-18 00:00:00'),
(2, 2, 2, '79325289754560', '2023-11-03 00:00:00'),
(3, 2, 8, '97545605890202', '2024-05-19 00:00:00'),
(4, 3, 5, '58902023614372', '2021-02-19 00:00:00'),
(5, 4, 3, '36143723310428', '2022-11-29 00:00:00'),
(6, 4, 9, '33104283085065', '2024-03-16 00:00:00'),
(7, 6, 6, '30850655038758', '2020-01-19 00:00:00'),
(8, 6, 1, '50387584850556', '2021-08-16 00:00:00'),
(9, 6, 8, '48505565110821', '2024-03-01 00:00:00'),
(10, 8, 9, '51108215570645', '2023-04-07 00:00:00'),
(11, 8, 7, '55706454816806', '2023-07-18 00:00:00'),
(12, 9, 4, '48168068762940', '2024-02-27 00:00:00'),
(13, 10, 8, '87629403436356', '2018-10-02 00:00:00'),
(14, 10, 2, '34363566592567', '2022-08-12 00:00:00'),
(15, 10, 9, '65925678238461', '2023-05-23 00:00:00'),
(16, 11, 3, '82384616682964', '2024-09-21 00:00:00'),
(17, 2, 3, '66829646616454', '2022-03-18 00:00:00'),
(18, 4, 9, '66164549303871', '2024-06-12 00:00:00'),
(19, 8, 2, '93038717603120', '2024-10-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emailstbl`
--

CREATE TABLE `emailstbl` (
  `emailid` int(11) NOT NULL,
  `clientemailfk` int(11) NOT NULL,
  `emailtypefk` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `emaildate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailstbl`
--

INSERT INTO `emailstbl` (`emailid`, `clientemailfk`, `emailtypefk`, `email`, `emaildate`) VALUES
(1, 1, 1, 'allan@att.com', '2015-07-18 00:00:00'),
(2, 2, 1, 'barbara@gainesville.ci.fl.us', '2019-07-31 00:00:00'),
(3, 2, 2, 'barbara@sfcollege.edu', '2016-08-21 00:00:00'),
(4, 2, 2, 'barbara@bignews.com', '2012-09-28 00:00:00'),
(5, 3, 1, 'chris@constantchronicles.com', '2015-06-21 00:00:00'),
(6, 5, 1, 'eliza@broncobusters.info', '2001-02-27 00:00:00'),
(7, 6, 1, 'funda@sfcollege.edu', '2006-12-05 00:00:00'),
(8, 6, 2, 'funda@ufuniv.edu', '2009-05-30 00:00:00'),
(9, 6, 2, 'funda@artcolony.com', '1998-10-25 00:00:00'),
(10, 7, 2, 'glenda@naturelovers.com', '2007-05-21 00:00:00'),
(11, 7, 1, 'glenda@sierraclub.com', '2003-07-09 00:00:00'),
(12, 8, 2, 'henry@heavylifters.info', '2011-03-21 00:00:00'),
(13, 8, 2, 'henry@sfcollege.edu', '2013-04-21 00:00:00'),
(14, 8, 2, 'henry@gainesvillegrapplers.com', '2018-02-18 00:00:00'),
(15, 8, 1, 'henry@florida.state.us', '2002-01-16 00:00:00'),
(16, 9, 1, 'issa@gainesvillefolkcenter.com', '2007-01-27 00:00:00'),
(17, 9, 2, 'isabella@sfcollege.edu', '2019-11-21 00:00:00'),
(18, 11, 1, 'karla@healthyliving.com', '2014-05-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emailtypestbl`
--

CREATE TABLE `emailtypestbl` (
  `emailtypeid` int(11) NOT NULL,
  `emailtype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailtypestbl`
--

INSERT INTO `emailtypestbl` (`emailtypeid`, `emailtype`) VALUES
(1, 'Primary'),
(2, 'Secondary');

-- --------------------------------------------------------

--
-- Table structure for table `genderstbl`
--

CREATE TABLE `genderstbl` (
  `genderid` int(11) NOT NULL,
  `genderchar` char(1) NOT NULL,
  `gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genderstbl`
--

INSERT INTO `genderstbl` (`genderid`, `genderchar`, `gender`) VALUES
(1, 'M', 'Male'),
(2, 'F', 'Female'),
(3, 'T', 'They');

-- --------------------------------------------------------

--
-- Table structure for table `mfgrstbl`
--

CREATE TABLE `mfgrstbl` (
  `mfgrid` int(11) NOT NULL,
  `mfgr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mfgrstbl`
--

INSERT INTO `mfgrstbl` (`mfgrid`, `mfgr`) VALUES
(1, 'Apple'),
(2, 'LG'),
(3, 'Motorola'),
(4, 'Samsung'),
(5, 'Blackberry');

-- --------------------------------------------------------

--
-- Table structure for table `modelstbl`
--

CREATE TABLE `modelstbl` (
  `modelid` int(11) NOT NULL,
  `mfgrmodelfk` int(11) NOT NULL,
  `model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modelstbl`
--

INSERT INTO `modelstbl` (`modelid`, `mfgrmodelfk`, `model`) VALUES
(1, 1, 'iPhone11'),
(2, 1, 'iPhone13'),
(3, 1, 'iPhone15'),
(4, 2, 'V60'),
(5, 2, 'VN220'),
(6, 3, 'Edge'),
(7, 3, 'Razr'),
(8, 4, 'A55'),
(9, 4, 'S24');

-- --------------------------------------------------------

--
-- Table structure for table `planstbl`
--

CREATE TABLE `planstbl` (
  `planid` int(11) NOT NULL,
  `carrierplanfk` int(11) NOT NULL,
  `planname` varchar(30) NOT NULL,
  `planprice` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `planstbl`
--

INSERT INTO `planstbl` (`planid`, `carrierplanfk`, `planname`, `planprice`) VALUES
(1, 1, 'Bronze Bomber', '39.00'),
(2, 1, 'Sunny Silver', '54.00'),
(3, 1, 'Glitzy Gold', '84.00'),
(4, 2, 'Bronze Age', '43.00'),
(5, 2, 'Silver Satin', '52.00'),
(6, 2, 'Gold Goodies', '81.00'),
(7, 3, 'Bronze Bonus', '41.00'),
(8, 3, 'Silver Sneakers', '57.00'),
(9, 3, 'Gold Goodness', '79.00');

-- --------------------------------------------------------

--
-- Table structure for table `servicestbl`
--

CREATE TABLE `servicestbl` (
  `serviceid` int(11) NOT NULL,
  `simservicefk` int(11) NOT NULL,
  `planservicefk` int(11) NOT NULL,
  `activate` datetime NOT NULL,
  `terminate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servicestbl`
--

INSERT INTO `servicestbl` (`serviceid`, `simservicefk`, `planservicefk`, `activate`, `terminate`) VALUES
(1, 1, 1, '2015-06-12 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 1, '2020-08-19 00:00:00', '2021-08-30 00:00:00'),
(3, 2, 3, '2021-09-01 00:00:00', '0000-00-00 00:00:00'),
(4, 3, 1, '2008-12-06 00:00:00', '0000-00-00 00:00:00'),
(5, 4, 5, '2012-04-21 00:00:00', '0000-00-00 00:00:00'),
(6, 5, 6, '2018-11-06 00:00:00', '0000-00-00 00:00:00'),
(7, 6, 8, '2009-04-19 00:00:00', '2011-06-27 00:00:00'),
(8, 6, 1, '2011-06-27 00:00:00', '2014-03-29 00:00:00'),
(9, 6, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 7, 2, '2021-07-18 00:00:00', '0000-00-00 00:00:00'),
(11, 8, 6, '2024-08-19 00:00:00', '0000-00-00 00:00:00'),
(12, 9, 3, '2015-03-19 00:00:00', '2016-02-18 00:00:00'),
(13, 9, 6, '2016-02-18 00:00:00', '2019-05-24 00:00:00'),
(14, 9, 9, '2019-05-24 00:00:00', '0000-00-00 00:00:00'),
(15, 10, 1, '2023-08-02 00:00:00', '0000-00-00 00:00:00'),
(16, 11, 7, '2024-12-06 00:00:00', '0000-00-00 00:00:00'),
(17, 12, 6, '2017-06-29 00:00:00', '0000-00-00 00:00:00'),
(18, 13, 8, '2013-05-31 00:00:00', '2016-09-30 00:00:00'),
(19, 13, 2, '2016-09-30 00:00:00', '0000-00-00 00:00:00'),
(20, 14, 6, '2020-01-04 00:00:00', '2021-01-31 00:00:00'),
(21, 14, 5, '2021-01-31 00:00:00', '2022-03-18 00:00:00'),
(22, 14, 7, '2022-03-18 00:00:00', '0000-00-00 00:00:00'),
(23, 15, 2, '2007-09-01 00:00:00', '0000-00-00 00:00:00'),
(24, 16, 9, '2009-11-07 00:00:00', '0000-00-00 00:00:00'),
(25, 17, 7, '2018-04-07 00:00:00', '2020-06-14 00:00:00'),
(26, 17, 9, '2020-06-14 00:00:00', '0000-00-00 00:00:00'),
(27, 18, 6, '2016-01-31 00:00:00', '0000-00-00 00:00:00'),
(28, 19, 2, '2007-10-20 00:00:00', '2010-11-15 00:00:00'),
(29, 19, 8, '2010-11-15 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `simstbl`
--

CREATE TABLE `simstbl` (
  `simid` int(11) NOT NULL,
  `devicefk` int(11) NOT NULL,
  `iccid` char(22) NOT NULL,
  `phone` char(10) NOT NULL,
  `simdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `simstbl`
--

INSERT INTO `simstbl` (`simid`, `devicefk`, `iccid`, `phone`, `simdate`) VALUES
(1, 1, '270015124880178023', '3525158752', '2023-06-30 00:00:00'),
(2, 2, '280016341678373545', '8707376360', '2023-09-01 00:00:00'),
(3, 3, '58001813892302814', '2696546615', '2023-11-15 00:00:00'),
(4, 4, '370022957454924284', '4074466489', '2023-02-15 00:00:00'),
(5, 5, '260015124617247670', '3528845299', '2024-05-21 00:00:00'),
(6, 7, '590012957221126105', '3521919383', '2021-06-18 00:00:00'),
(7, 8, '470018138573718918', '3523856099', '2022-09-18 00:00:00'),
(8, 9, '160015124130299473', '8706961856', '2020-12-02 00:00:00'),
(9, 10, '14001512494416680', '6184093844', '2021-04-13 00:00:00'),
(10, 11, '340016341724973417', '4076807381', '2024-07-18 00:00:00'),
(11, 12, '360018138943249383', '3528615326', '2023-08-12 00:00:00'),
(12, 13, '410022957776522160', '2692787281', '2022-10-31 00:00:00'),
(13, 14, '580015124432514060', '3525487680', '2023-01-13 00:00:00'),
(14, 15, '640016341120477612', '4077778636', '2024-06-02 00:00:00'),
(15, 16, '280018138994405694', '3527359153', '2018-11-02 00:00:00'),
(16, 17, '83001813821746086', '8703888536', '2022-03-31 00:00:00'),
(17, 18, '580022957150869739', '6186415803', '2023-10-29 00:00:00'),
(18, 19, '280015124516276403', '3524849386', '2024-02-19 00:00:00'),
(19, 2, '845755126487251987', '7085268245', '2020-01-09 00:00:00'),
(20, 9, '345812567485296581', '9805243412', '2021-09-18 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressestbl`
--
ALTER TABLE `addressestbl`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `clientaddressfk` (`clientaddressfk`),
  ADD KEY `addresstypefk` (`addresstypefk`);

--
-- Indexes for table `addresstypestbl`
--
ALTER TABLE `addresstypestbl`
  ADD PRIMARY KEY (`addresstypeid`);

--
-- Indexes for table `carrierstbl`
--
ALTER TABLE `carrierstbl`
  ADD PRIMARY KEY (`carrierid`);

--
-- Indexes for table `clientstbl`
--
ALTER TABLE `clientstbl`
  ADD PRIMARY KEY (`clientid`),
  ADD KEY `genderclientfk` (`genderclientfk`);

--
-- Indexes for table `contactsphones`
--
ALTER TABLE `contactsphones`
  ADD PRIMARY KEY (`contactphoneid`),
  ADD KEY `contactphonefk` (`contactphonefk`),
  ADD KEY `contacttypefk` (`contacttypefk`);

--
-- Indexes for table `contactstbl`
--
ALTER TABLE `contactstbl`
  ADD PRIMARY KEY (`contactid`),
  ADD KEY `simcontactfk` (`simcontactfk`);

--
-- Indexes for table `contacttypes`
--
ALTER TABLE `contacttypes`
  ADD PRIMARY KEY (`contacttypeid`);

--
-- Indexes for table `devicestbl`
--
ALTER TABLE `devicestbl`
  ADD PRIMARY KEY (`deviceid`),
  ADD UNIQUE KEY `imei` (`imei`),
  ADD KEY `clientdevicefk` (`clientdevicefk`),
  ADD KEY `modeldevicefk` (`modeldevicefk`);

--
-- Indexes for table `emailstbl`
--
ALTER TABLE `emailstbl`
  ADD PRIMARY KEY (`emailid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `clientemailfk` (`clientemailfk`),
  ADD KEY `emailtypefk` (`emailtypefk`);

--
-- Indexes for table `emailtypestbl`
--
ALTER TABLE `emailtypestbl`
  ADD PRIMARY KEY (`emailtypeid`);

--
-- Indexes for table `genderstbl`
--
ALTER TABLE `genderstbl`
  ADD PRIMARY KEY (`genderid`);

--
-- Indexes for table `mfgrstbl`
--
ALTER TABLE `mfgrstbl`
  ADD PRIMARY KEY (`mfgrid`);

--
-- Indexes for table `modelstbl`
--
ALTER TABLE `modelstbl`
  ADD PRIMARY KEY (`modelid`),
  ADD KEY `mfgrmodelfk` (`mfgrmodelfk`);

--
-- Indexes for table `planstbl`
--
ALTER TABLE `planstbl`
  ADD PRIMARY KEY (`planid`),
  ADD KEY `carrierplanfk` (`carrierplanfk`);

--
-- Indexes for table `servicestbl`
--
ALTER TABLE `servicestbl`
  ADD PRIMARY KEY (`serviceid`),
  ADD KEY `simservicefk` (`simservicefk`),
  ADD KEY `planservicefk` (`planservicefk`);

--
-- Indexes for table `simstbl`
--
ALTER TABLE `simstbl`
  ADD PRIMARY KEY (`simid`),
  ADD UNIQUE KEY `iccid` (`iccid`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `devicefk` (`devicefk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addressestbl`
--
ALTER TABLE `addressestbl`
  MODIFY `addressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `addresstypestbl`
--
ALTER TABLE `addresstypestbl`
  MODIFY `addresstypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carrierstbl`
--
ALTER TABLE `carrierstbl`
  MODIFY `carrierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clientstbl`
--
ALTER TABLE `clientstbl`
  MODIFY `clientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contactsphones`
--
ALTER TABLE `contactsphones`
  MODIFY `contactphoneid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contactstbl`
--
ALTER TABLE `contactstbl`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contacttypes`
--
ALTER TABLE `contacttypes`
  MODIFY `contacttypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `devicestbl`
--
ALTER TABLE `devicestbl`
  MODIFY `deviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `emailstbl`
--
ALTER TABLE `emailstbl`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `emailtypestbl`
--
ALTER TABLE `emailtypestbl`
  MODIFY `emailtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genderstbl`
--
ALTER TABLE `genderstbl`
  MODIFY `genderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mfgrstbl`
--
ALTER TABLE `mfgrstbl`
  MODIFY `mfgrid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modelstbl`
--
ALTER TABLE `modelstbl`
  MODIFY `modelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `planstbl`
--
ALTER TABLE `planstbl`
  MODIFY `planid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `servicestbl`
--
ALTER TABLE `servicestbl`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `simstbl`
--
ALTER TABLE `simstbl`
  MODIFY `simid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addressestbl`
--
ALTER TABLE `addressestbl`
  ADD CONSTRAINT `addressestbl_ibfk_1` FOREIGN KEY (`addresstypefk`) REFERENCES `addresstypestbl` (`addresstypeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addressestbl_ibfk_2` FOREIGN KEY (`clientaddressfk`) REFERENCES `clientstbl` (`clientid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clientstbl`
--
ALTER TABLE `clientstbl`
  ADD CONSTRAINT `clientstbl_ibfk_1` FOREIGN KEY (`genderclientfk`) REFERENCES `genderstbl` (`genderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contactsphones`
--
ALTER TABLE `contactsphones`
  ADD CONSTRAINT `contactsphones_ibfk_1` FOREIGN KEY (`contactphonefk`) REFERENCES `contactstbl` (`contactid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contactsphones_ibfk_2` FOREIGN KEY (`contacttypefk`) REFERENCES `contacttypes` (`contacttypeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contactstbl`
--
ALTER TABLE `contactstbl`
  ADD CONSTRAINT `contactstbl_ibfk_1` FOREIGN KEY (`simcontactfk`) REFERENCES `simstbl` (`simid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `devicestbl`
--
ALTER TABLE `devicestbl`
  ADD CONSTRAINT `devicestbl_ibfk_1` FOREIGN KEY (`clientdevicefk`) REFERENCES `clientstbl` (`clientid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `devicestbl_ibfk_2` FOREIGN KEY (`modeldevicefk`) REFERENCES `modelstbl` (`modelid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emailstbl`
--
ALTER TABLE `emailstbl`
  ADD CONSTRAINT `emailstbl_ibfk_1` FOREIGN KEY (`emailtypefk`) REFERENCES `emailtypestbl` (`emailtypeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modelstbl`
--
ALTER TABLE `modelstbl`
  ADD CONSTRAINT `modelstbl_ibfk_1` FOREIGN KEY (`mfgrmodelfk`) REFERENCES `mfgrstbl` (`mfgrid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `planstbl`
--
ALTER TABLE `planstbl`
  ADD CONSTRAINT `planstbl_ibfk_1` FOREIGN KEY (`carrierplanfk`) REFERENCES `carrierstbl` (`carrierid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servicestbl`
--
ALTER TABLE `servicestbl`
  ADD CONSTRAINT `servicestbl_ibfk_1` FOREIGN KEY (`planservicefk`) REFERENCES `planstbl` (`planid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicestbl_ibfk_2` FOREIGN KEY (`simservicefk`) REFERENCES `simstbl` (`simid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simstbl`
--
ALTER TABLE `simstbl`
  ADD CONSTRAINT `simstbl_ibfk_1` FOREIGN KEY (`devicefk`) REFERENCES `devicestbl` (`deviceid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
