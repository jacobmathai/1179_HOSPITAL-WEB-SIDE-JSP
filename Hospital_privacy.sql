-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2014 at 12:21 PM
-- Server version: 5.1.72
-- PHP Version: 5.3.2-1ubuntu4.22

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Hospital_privacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_enkey`
--

CREATE TABLE IF NOT EXISTS `data_enkey` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pat_id` int(100) NOT NULL,
  `pat_name` varchar(100) NOT NULL,
  `enc_key` varchar(200) NOT NULL,
  `data` varchar(3000) NOT NULL,
  `cun_doctor` varchar(100) NOT NULL,
  `report_subdoctor` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `data_enkey`
--

INSERT INTO `data_enkey` (`id`, `pat_id`, `pat_name`, `enc_key`, `data`, `cun_doctor`, `report_subdoctor`, `number`) VALUES
(20, 1008, 'sumeshm', '17,619847', '277845-564792-564792-564792-564792-564792-564792-257047-257047-257047-257047-257047-257047-257047-257047-257047-257047', '502', '502', '2'),
(4, 1001, 'vysakh', '23,831119', '412983-667045-798567-458858-733154', '500', '500', '1'),
(7, 1001, 'vysakh', '23,831119', '667045-798567-458858-733154-412983-179050-82939-507902-349980-798567', '500', '500', '2'),
(8, 1001, 'vysakh', '23,831119', '667045-798567-458858-733154-412983-179050-82939-507902-349980-798567-412983-272720-765107-747051-730423-272720-765107-730423-765107-747051-730423', '500', '500', '3'),
(10, 1002, 'suresh', '19,591737', '582678-582694-48878-582694-32335-27570-223811-274220', '501', '501', '1'),
(11, 1002, 'suresh', '19,591737', '582678-582694-48878-582694-32335-27570-223811-274220-149409-571406-571406-571406-571406-571406-571406-571406-571406-571406-571406-571406-571406', '501', '501', '2'),
(16, 1000, 'anwer', '31,436433', '72200-161613-85189-161613-40952-320934-305236-326144', '501', '501', '2'),
(15, 1000, 'anwer', '31,436433', '72200-161613-85189-161613-40952-320934-305236-326144-27653-99181-99181-99181-99181-99181-99181-99181-99181-99181-99181-99181-99181-27653-72200-390333-4454-72200-390333-4454-72200', '501', '501', '1'),
(17, 1000, 'anwer', '31,436433', '376358-161613-373198-373198-99181-99181-99181-99181-99181-99181', '501', '501', '2'),
(18, 1000, 'anwer', '31,436433', '376358-161613-373198-373198-99181-99181-99181-99181-99181-99181', '501', '501', '3'),
(19, 1008, 'sumeshm', '17,619847', '588368-483232-283745-283745-214519-214519-214519-214519-214519-214519-126077-588368-257047-489141', '502', '502', '1'),
(24, 1008, 'sumeshm', '17,619847', '423911-423911-423911-423911-423911', '502', '502', '4'),
(23, 1008, 'sumeshm', '17,619847', '257047-508270-50098-257047-508270', '502', '502', '3'),
(25, 1008, 'sumeshm', '17,619847', '588368-588368-439293-588368-588368-439293', '502', '502', '5'),
(26, 1008, 'sumeshm', '17,619847', '235303-277845-489141-214519-214519-596486', '502', '502', '6'),
(27, 1008, 'sumeshm', '17,619847', '6204-6204-6204-6204-6204-6204-6204-423911-423911-423911-235303-235303-235303', '502', '502', '7'),
(28, 1008, 'sumeshm', '17,619847', '439293-439293-439293-439293-439293-439293', '502', '502', '8'),
(29, 1008, 'sumeshm', '17,619847', '439293-588368-439293-588368-593195-439293-588368-593195', '502', '502', '9'),
(30, 1008, 'sumeshm', '17,619847', '50098-391720-593195-287792-283745-593195-287792-283745-50098-391720-593195-287792-283745-50098-391720-593195-287792-283745', '502', '502', '10'),
(31, 1008, 'sumeshm', '17,619847', '439293-588368-593195-439293-593195-588368-593195-593195-593195-439293-588368-439293-593195-439293-391720-593195-588368', '502', '502', '10'),
(32, 1008, 'sumeshm', '17,619847', '564792-257047-235303-257047-6204-489141-283745-257047-287792-287792-257047-310396', '502', '502', '10');

-- --------------------------------------------------------

--
-- Table structure for table `dep_details`
--

CREATE TABLE IF NOT EXISTS `dep_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `dep_details`
--

INSERT INTO `dep_details` (`id`, `department`, `qualification`) VALUES
(1, 'Dermatology', 'MBBS,MD,DM'),
(2, 'Dermatology', 'MD,DNB,PhD'),
(3, 'Dermatology', 'MBBS,MD'),
(4, 'Dermatology', 'MBBS'),
(5, 'Dental', 'DDS,MDent'),
(6, 'Dental', 'DDS,MDS'),
(7, 'Dental', 'DMD,MDent'),
(8, 'Dental', 'DMD,MDS'),
(9, 'Dental', 'DMD'),
(10, 'Dental', 'DDS'),
(11, 'Ophthalmology', 'MBBS,MD,OD'),
(12, 'Ophthalmology', 'MBBS,MD,DO'),
(13, 'Ophthalmology', 'MBBS,OD'),
(14, 'Ophthalmology', 'MBBS,DO'),
(15, 'Neurology', 'MBBS,MD,DM'),
(16, 'Neurology', 'MBBS,MD,DO'),
(17, 'Pediatrics', 'MBBS,MD'),
(18, 'Pediatrics', 'MBBS,MS'),
(19, 'Cardiology', 'MBBS,MD,Cardiology');

-- --------------------------------------------------------

--
-- Table structure for table `doc_details`
--

CREATE TABLE IF NOT EXISTS `doc_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=516 ;

--
-- Dumping data for table `doc_details`
--

INSERT INTO `doc_details` (`id`, `name`, `department`, `qualification`, `experience`, `mobile`, `email`) VALUES
(500, 'akhil', 'Dental', 'BDS', '2year', '9876543218', 'akhilg@gmail.com'),
(501, 'melvin', 'Dermatology', 'MBBS,MD,DM', '5year', '9876543265', 'melvi@gmail.com'),
(502, 'anu', 'Dental', 'DMD,MDS', '3year', '9000111222', 'anu@gmail.com'),
(503, 'sreejith', 'Ophthalmology', 'MBBS,MD,OD', '3year', '9876543276', 'sreejith@gmail.com'),
(504, 'renjth', 'Dental', 'DMD,MDS', '7year', '9876543222', 'renjith@gmail.com'),
(505, 'noushad', 'Dental', 'DDS,MDent', '5year', '9812341265', 'noushu@gmail.com'),
(506, 'binin', 'Ophthalmology', 'MBBS,MD,DO', '2year', '9870003218', 'binin@gmail.com'),
(507, 'jobsin', 'Dermatology', 'MD,DNB,PhD', '2year', '9809341200', 'jobsin@gmail.com'),
(508, 'sajin', 'Ophthalmology', 'MBBS,MD,DO', '5year', '9809312120', 'sajin@gmail.com'),
(509, 'suku', 'Cardiology', 'MBBS,MD,Cardiology', '1year', '9498765432', 'suku@gmail.com'),
(510, 'qwerty', 'Dermatology', 'MBBS,MD,DM', '1year', '9999900033', 'akhilsabu@visiontux.net'),
(514, 'rethishaa', 'Dermatology', 'MBBS,MD,DM', '3year', '9999900033', 'akhilsabu@visiontux.net');

-- --------------------------------------------------------

--
-- Table structure for table `duty_time`
--

CREATE TABLE IF NOT EXISTS `duty_time` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duty_time`
--

INSERT INTO `duty_time` (`id`, `name`, `department`, `timein`, `timeout`) VALUES
(500, 'akhil', 'Dental', '10:00:00', '14:00:00'),
(501, 'melvin', 'Dermatology', '08:00:00', '12:00:00'),
(502, 'anu', 'Dental', '10:00:00', '16:00:00'),
(503, 'sreejith', 'Ophthalmology', '16:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `pat_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `pat_id`, `name`, `email`, `message`, `date`, `time`) VALUES
(1, '1000', 'anwer', 'anwer@gmail.com', 'ahsdgasjdghasjkdgasdasd\r\nsdgfsdghdkfgdfgd\r\ndfgjdfg', '15/11/2013', '12:55:36'),
(2, '1001', 'vysakh', 'vysu@gmail.com', 'kjouyvgmdfsnmd sdjkfsdjk dd', '15/11/2013', '12:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', '1234', 'admin'),
(511, 'qwerty', 'qwerty', 'doctor'),
(512, 'asd512', 'asd512', 'doctor'),
(500, 'akhil500', 'akhil500', 'doctor'),
(502, 'anu502', 'anu502', 'doctor'),
(514, 'rethishaa514', 'rethishaa514', 'doctor'),
(501, 'melvin501', 'melvin501', 'doctor'),
(515, 'aaa515', 'aaa515', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE IF NOT EXISTS `patient_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `doc_id` int(100) NOT NULL,
  `cun_doc` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `house` varchar(100) NOT NULL,
  `place` varchar(20) NOT NULL,
  `post` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'admit',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1011 ;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`id`, `name`, `doc_id`, `cun_doc`, `department`, `house`, `place`, `post`, `district`, `mobile`, `email`, `status`) VALUES
(1000, 'anwer', 501, 'melvin', 'Dermatology', 'asdfgh', 'kaloor', 'kaloor', 'ekm', '9876521265', 'anwer@gmail.com', 'discharged'),
(1001, 'vysakh', 500, 'akhil', 'Dental', 'vysali', 'kuttichira', 'kattachira', 'alappuzha', '9876543200', 'vysu@gmail.com', 'admit'),
(1002, 'suresh', 501, 'melvin', 'Dermatology', 'qwerty', 'nattakam', 'nattakam', 'kottayam', '9182736450', 'suresh@gmail.com', 'admit'),
(1003, 'balan', 504, 'renjth', 'Dental', 'blahhhhh', 'ettumanoor', 'ettumanoor', 'kottayam', '9234876123', 'bala@gmail.com', 'admit'),
(1006, 'mukundan', 503, 'sreejith', 'Ophthalmology', 'asqwed', 'kaloor', 'kaloor', 'ekm', '9809212120', 'mukhundan@gmail.com', 'admit'),
(1007, 'arjun', 501, 'melvin', 'Dermatology', 'arakkal', 'hhhh', 'hhhh', 'tvm', '8710003218', 'arjun@gmail.com', 'admit'),
(1008, 'sumeshm', 502, 'anu', 'Dental', 'vsdf', 'sdfs', 'sdfsd', 'sdfsd', '3987654321', 'sum@visiontux.net', 'admit'),
(1009, 'ssaaqq', 501, 'melvin', 'Dermatology', 'sdfs', 'sdfs', 'sdfsdf', 'sdfsdf', '9999900002', 'akhsdffgu@visiontux.net', 'admit'),
(1010, 'asds', 500, 'akhil', 'Dental', 'asdasd', 'sdgfd', 'dfgd', 'dfgdf', '9999900032', 'sdfsu@visiontux.net', 'admit');

-- --------------------------------------------------------

--
-- Table structure for table `share_1`
--

CREATE TABLE IF NOT EXISTS `share_1` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `patient_id` int(50) NOT NULL,
  `kee` varchar(3000) NOT NULL,
  `cun_doctor` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL DEFAULT 'hospital',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `share_1`
--

INSERT INTO `share_1` (`id`, `patient_id`, `kee`, `cun_doctor`, `location`) VALUES
(1, 1001, '1-115-110-109-109-110-115-104-116-111-109-109-109-117', '500', 'hospital'),
(6, 1000, '1-93-94-89-92-91-84-92-91-94-92-91-91', '501', 'hospital'),
(5, 1002, '1-131-129-128-134-131-124-133-137-129-135-131-135', '501', 'hospital'),
(7, 1008, '1-113-116-109-116-115-111-104-114-109-117-116-112-115', '502', 'hospital');

-- --------------------------------------------------------

--
-- Table structure for table `share_2`
--

CREATE TABLE IF NOT EXISTS `share_2` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `patient_id` int(50) NOT NULL,
  `kee` varchar(3000) NOT NULL,
  `cun_doctor` varchar(50) NOT NULL,
  `specification` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `share_2`
--

INSERT INTO `share_2` (`id`, `patient_id`, `kee`, `cun_doctor`, `specification`) VALUES
(1, 1001, '2-275-270-269-269-270-275-264-276-271-269-269-269-277', '500', 'Dental'),
(6, 1000, '2-193-194-189-192-191-184-192-191-194-192-191-191', '501', 'Dermatology'),
(5, 1002, '2-271-269-268-274-271-264-273-277-269-275-271-275', '501', 'Dermatology'),
(7, 1008, '2-253-256-249-256-255-251-244-254-249-257-256-252-255', '502', 'Dental');

-- --------------------------------------------------------

--
-- Table structure for table `share_3`
--

CREATE TABLE IF NOT EXISTS `share_3` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `patient_id` int(50) NOT NULL,
  `kee` varchar(3000) NOT NULL,
  `cun_doctor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `share_3`
--

INSERT INTO `share_3` (`id`, `patient_id`, `kee`, `cun_doctor`) VALUES
(1, 1001, '3-535-530-529-529-530-535-524-536-531-529-529-529-537', '500'),
(6, 1000, '3-353-354-349-352-351-344-352-351-354-352-351-351', '501'),
(5, 1002, '3-471-469-468-474-471-464-473-477-469-475-471-475', '501'),
(7, 1008, '3-473-476-469-476-475-471-464-474-469-477-476-472-475', '502');

-- --------------------------------------------------------

--
-- Table structure for table `share_4`
--

CREATE TABLE IF NOT EXISTS `share_4` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `patient_id` int(50) NOT NULL,
  `kee` varchar(3000) NOT NULL,
  `cun_doctor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `share_4`
--

INSERT INTO `share_4` (`id`, `patient_id`, `kee`, `cun_doctor`) VALUES
(1, 1001, '4-895-890-889-889-890-895-884-896-891-889-889-889-897', '500'),
(6, 1000, '4-573-574-569-572-571-564-572-571-574-572-571-571', '501'),
(5, 1002, '4-731-729-728-734-731-724-733-737-729-735-731-735', '501'),
(7, 1008, '4-773-776-769-776-775-771-764-774-769-777-776-772-775', '502');

-- --------------------------------------------------------

--
-- Table structure for table `share_5`
--

CREATE TABLE IF NOT EXISTS `share_5` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `patient_id` int(50) NOT NULL,
  `kee` varchar(3000) NOT NULL,
  `cun_doctor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `share_5`
--

INSERT INTO `share_5` (`id`, `patient_id`, `kee`, `cun_doctor`) VALUES
(1, 1001, '5-1355-1350-1349-1349-1350-1355-1344-1356-1351-1349-1349-1349-1357', '500'),
(6, 1000, '5-853-854-849-852-851-844-852-851-854-852-851-851', '501'),
(5, 1002, '5-1051-1049-1048-1054-1051-1044-1053-1057-1049-1055-1051-1055', '501'),
(7, 1008, '5-1153-1156-1149-1156-1155-1151-1144-1154-1149-1157-1156-1152-1155', '502');

-- --------------------------------------------------------

--
-- Table structure for table `share_6`
--

CREATE TABLE IF NOT EXISTS `share_6` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `patient_id` int(50) NOT NULL,
  `kee` varchar(3000) NOT NULL,
  `cun_doctor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `share_6`
--

INSERT INTO `share_6` (`id`, `patient_id`, `kee`, `cun_doctor`) VALUES
(1, 1001, '6-1915-1910-1909-1909-1910-1915-1904-1916-1911-1909-1909-1909-1917', '500'),
(6, 1000, '6-1193-1194-1189-1192-1191-1184-1192-1191-1194-1192-1191-1191', '501'),
(5, 1002, '6-1431-1429-1428-1434-1431-1424-1433-1437-1429-1435-1431-1435', '501'),
(7, 1008, '6-1613-1616-1609-1616-1615-1611-1604-1614-1609-1617-1616-1612-1615', '502');
