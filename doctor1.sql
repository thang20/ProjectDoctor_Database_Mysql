-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 07:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor1`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `cardID` int(11) NOT NULL,
  `cardNumber` varchar(50) DEFAULT NULL,
  `cardMoney` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`cardID`, `cardNumber`, `cardMoney`) VALUES
(1, '123123', '99969.0'),
(2, '1231231', '11000.0');

-- --------------------------------------------------------

--
-- Table structure for table `cmnd`
--

CREATE TABLE `cmnd` (
  `cmndID` int(11) NOT NULL,
  `cmndimgback` varchar(50) DEFAULT NULL,
  `cmndimgfront` varchar(50) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cmnd`
--

INSERT INTO `cmnd` (`cmndID`, `cmndimgback`, `cmndimgfront`, `userKey`, `number`) VALUES
(2, 'cmnd/thang1-back.png', 'cmnd/thang1-front.png', 96, '');

-- --------------------------------------------------------

--
-- Table structure for table `commentapost`
--

CREATE TABLE `commentapost` (
  `commentID` int(11) NOT NULL,
  `commentText` varchar(50) DEFAULT NULL,
  `commentImage` text DEFAULT NULL,
  `commentDate` varchar(50) DEFAULT NULL,
  `commentTime` varchar(50) DEFAULT NULL,
  `peopleID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commentapost`
--

INSERT INTO `commentapost` (`commentID`, `commentText`, `commentImage`, `commentDate`, `commentTime`, `peopleID`, `postID`) VALUES
(9, 'kakak', '0', '26/02/2022', '17:28', 96, 15),
(11, '1', '0', '26/02/2022', '18:00', 96, 15),
(12, '1', '0', '26/02/2022', '18:00', 96, 15),
(13, '1', '0', '26/02/2022', '18:01', 96, 15),
(14, 'kaka', '0', '26/02/2022', '18:20', 96, 15),
(15, '123', '0', '26/02/2022', '18:22', 96, 15),
(21, '123', '0', '26/02/2022', '18:48', 96, 14),
(23, '11231213', 'comment/thang1-1511231213', '11/03/2022', '20:56', 96, 15),
(24, 'I\'m so sad', '0', '13/03/2022', '22:18', 96, 17),
(25, 'it good', 'comment/thang1-17it good', '13/03/2022', '22:19', 96, 17),
(26, 'cancer', 'comment/thang1-17cancer', '13/03/2022', '22:19', 96, 17),
(27, 'Hello', 'comment/thang@1-14Hello', '19/04/2022', '21:30', 101, 14),
(28, 'Hello Thang', '0', '23/04/2022', '14:23', 96, 18),
(29, 'Im Bich', 'comment/thang1-18Im Bich', '23/04/2022', '14:24', 96, 18);

-- --------------------------------------------------------

--
-- Table structure for table `commentapostdt`
--

CREATE TABLE `commentapostdt` (
  `commentapostdtID` int(11) NOT NULL,
  `commentdtText` text DEFAULT NULL,
  `commentdtDate` varchar(50) DEFAULT NULL,
  `commentdtTime` varchar(50) DEFAULT NULL,
  `peopleID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commentapostdt`
--

INSERT INTO `commentapostdt` (`commentapostdtID`, `commentdtText`, `commentdtDate`, `commentdtTime`, `peopleID`, `postID`) VALUES
(10, 'Minh Anh Hospital has a doctor specializing in urology and genitourinary. Please visit the hospital on Tuesday, 3, and 7 mornings of the week because this disease needs a thorough examination to be consulted', '23/04/2022', '15:41', 100, 8);

-- --------------------------------------------------------

--
-- Table structure for table `endow`
--

CREATE TABLE `endow` (
  `endowID` int(11) NOT NULL,
  `endowcode` varchar(50) DEFAULT NULL,
  `endowmoney` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `endow`
--

INSERT INTO `endow` (`endowID`, `endowcode`, `endowmoney`) VALUES
(1, '123123', '0'),
(2, 'thangnngch18753', '1000'),
(3, '1231231', '1000'),
(4, '12312311', '0'),
(5, '123123111', '0');

-- --------------------------------------------------------

--
-- Table structure for table `healcv`
--

CREATE TABLE `healcv` (
  `healcvID` int(11) NOT NULL,
  `healcvKey` int(11) DEFAULT NULL,
  `healcvresult` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healcv`
--

INSERT INTO `healcv` (`healcvID`, `healcvKey`, `healcvresult`) VALUES
(1, 96, '0-0-0-0-0-0-0-0-0-0-0-0-0'),
(2, 102, '1-0-0-0-0-0-0-1-0-0-0-0-0'),
(3, 96, '0-0-0-0-0-0-0-0-0-0-0-0-0');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `historyID` int(11) NOT NULL,
  `historyDate` varchar(50) DEFAULT NULL,
  `historyMoney` varchar(50) DEFAULT NULL,
  `historyMoneyadd` varchar(50) DEFAULT NULL,
  `historyRemind` varchar(150) DEFAULT NULL,
  `historyTime` varchar(50) DEFAULT NULL,
  `historyType` varchar(50) DEFAULT NULL,
  `historyKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`historyID`, `historyDate`, `historyMoney`, `historyMoneyadd`, `historyRemind`, `historyTime`, `historyType`, `historyKey`) VALUES
(1, '11/03/2022', '206496.0', '100', 'Deposit money from bank account', '20:51', '0', 96),
(2, '13/03/2022', '206396.0', '100', 'Redeem 1000 bonus points', '14:39', '1', 96),
(6, '13/03/2022', '217548', '0', 'Sign up for services Test Covid19 at home from National Lung Hospital (-50 Points)', '15:12', '0', 96),
(7, '13/03/2022', '217349', '0', 'Sign up for services Home check-up service from Hanoi Medical University Hospital (-199 Points)', '21:20', '0', 96),
(10, '13/03/2022', '206396.0', '50', 'Transfer money to CarePay (0938218666) - NGUYEN NGOC THANG', '22:26', '2', 96),
(11, '13/03/2022', '206396.0', '50', 'Receive money from (0938218666) - NGUYEN NGOC THANG', '22:26', '0', 96),
(12, '17/03/2022', '206396.0', '700', 'Transfer money to CarePay (0938218666) - NGUYEN NGOC THANG', '17:42', '2', 96),
(13, '17/03/2022', '206396.0', '700', 'Receive money from (0938218666) - NGUYEN NGOC THANG', '17:42', '0', 96),
(14, '16/04/2022', '206508.0', '12', 'Deposit money from bank account', '20:46', '0', 96),
(15, '16/04/2022', '206518.0', '10', 'Deposit money from bank account', '20:47', '0', 96),
(16, '16/04/2022', '206528.0', '10', 'Deposit money from bank account', '20:48', '0', 96),
(17, '16/04/2022', '205528.0', '1000', 'Withdraw money to wallet', '20:58', '2', 96),
(18, '16/04/2022', '205527.0', '1', 'Withdraw money to wallet', '20:59', '2', 96),
(19, '19/04/2022', '205527.0', '100', 'Transfer money to CarePay (0938218666) - NGUYEN NGOC THANG', '21:21', '2', 96),
(20, '19/04/2022', '205527.0', '100', 'Receive money from (0938218666) - NGUYEN NGOC THANG', '21:21', '0', 96),
(21, '19/04/2022', '205404.0', '123', 'transfer money to account (123123123)', '21:24', '2', 96),
(22, '21/04/2022', '99.0', '1', 'Redeem 10 bonus points', '09:53', '1', 102),
(23, '21/04/2022', '94.0', '5', 'Supporting children with serious illnesses', '09:54', '2', 102),
(24, '22/04/2022', '207404.0', '1000', 'Deposit money from bank account', '21:48', '0', 96),
(25, '22/04/2022', '206404.0', '1000', 'Redeem 10000 bonus points', '21:49', '1', 96),
(26, '22/04/2022', '205404.0', '1000', 'Redeem 10000 bonus points', '21:50', '1', 96),
(27, '22/04/2022', '202404.0', '3000', 'Supporting children with serious illnesses', '21:53', '2', 96),
(28, '23/04/2022', '201404.0', '1000', 'Transfer money to CarePay (0938218666) - Bui Thi Bich', '14:05', '2', 96),
(29, '23/04/2022', '1094.0', '1000', 'Receive money from (0972809182) - NGUYEN NGOC THANG', '14:05', '0', 102),
(30, '23/04/2022', '200404.0', '1000', 'transfer money to account (123123)', '14:08', '2', 96),
(31, '23/04/2022', '199404.0', '1000', 'Withdraw money to wallet', '14:12', '2', 96),
(33, '23/04/2022', '199404.0', '1000', 'Deposit money from bank account', '14:14', '0', 96),
(34, '23/04/2022', '417150', '0', 'Sign up for services Home check-up service from Hanoi Medical University Hospital (-199 Points)', '15:44', '0', 96),
(35, '24/04/2022', '417100', '0', 'Sign up for services Test Covid19 at home from National Lung Hospital (-50 Points)', '21:04', '0', 96);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospitalID` int(11) NOT NULL,
  `hospitalName` varchar(50) DEFAULT NULL,
  `hospitalAddress` varchar(50) DEFAULT NULL,
  `hospitalImage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospitalID`, `hospitalName`, `hospitalAddress`, `hospitalImage`) VALUES
(1, 'National Lung Hospital', '463 Đ. Hoang Hoa Tham, Vinh Phu, Ba Dinh, Ha noi', 'hospital/39111'),
(2, 'Hanoi Medical University Hospital', '1 P. Ton That Tung, Kim Lien, Dong Da, Ha noi', 'hospital/39112');

-- --------------------------------------------------------

--
-- Table structure for table `infordoctor`
--

CREATE TABLE `infordoctor` (
  `infordoctorID` int(11) NOT NULL,
  `infordoctorchungchi` text DEFAULT NULL,
  `infordoctoristrk` varchar(50) DEFAULT NULL,
  `infordoctorist` varchar(50) DEFAULT NULL,
  `infordoctorhospital` varchar(100) NOT NULL,
  `infordoctorspec` varchar(100) NOT NULL,
  `infordoctorKey` int(11) DEFAULT NULL,
  `infordoctoriscall` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infordoctor`
--

INSERT INTO `infordoctor` (`infordoctorID`, `infordoctorchungchi`, `infordoctoristrk`, `infordoctorist`, `infordoctorhospital`, `infordoctorspec`, `infordoctorKey`, `infordoctoriscall`) VALUES
(13, 'doctor/chungchi/thangd15.393886984306635', '1', '1', 'National Lung Hospital', 'On-demand examination', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `lichadminathome`
--

CREATE TABLE `lichadminathome` (
  `lichadminathomeID` int(11) NOT NULL,
  `lichadminathomeActive` varchar(50) DEFAULT NULL,
  `lichadminathomeDate` varchar(50) DEFAULT NULL,
  `lichadminathomeTime` varchar(50) DEFAULT NULL,
  `clientKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lichadminathome`
--

INSERT INTO `lichadminathome` (`lichadminathomeID`, `lichadminathomeActive`, `lichadminathomeDate`, `lichadminathomeTime`, `clientKey`) VALUES
(1, 'being', '20/04/2022', '8:30', 96),
(2, 'not yet', '23/4/2022', '13:30', 96);

-- --------------------------------------------------------

--
-- Table structure for table `lichdt`
--

CREATE TABLE `lichdt` (
  `lichdtID` int(11) NOT NULL,
  `lichdtTime` varchar(50) DEFAULT NULL,
  `lichdtDate` varchar(50) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `doctorKey` int(11) DEFAULT NULL,
  `active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lichdt`
--

INSERT INTO `lichdt` (`lichdtID`, `lichdtTime`, `lichdtDate`, `userKey`, `doctorKey`, `active`) VALUES
(1, '8:30', '20/3/2022', 96, 100, 'end'),
(2, '8:30', '19/4/2022', 96, 100, 'end'),
(3, '10:30', '19/4/2022', 96, 100, 'end'),
(5, '7:30', '19/4/2022', 96, 100, 'not yet'),
(6, '7:30', '23/4/2022', 96, 100, 'end'),
(7, '8:30', '20/04/2022', 96, 100, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newID` int(11) NOT NULL,
  `newText` varchar(200) DEFAULT NULL,
  `newNumberLike` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `newImage` text DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newID`, `newText`, `newNumberLike`, `date`, `time`, `newImage`, `id`) VALUES
(13, 'I\'m sorry', 0, '25/02/2022', '20:48', '0', 96),
(14, 'do you have any questions?', 2, '25/02/2022', '20:55', '0', 95),
(15, 'hehhehe', 0, '25/02/2022', '21:02', '0', 95),
(16, 'kakak', 1, '11/03/2022', '23:52', 'post/thang1kakak', 96),
(17, '12312312312ed1', 1, '11/03/2022', '23:55', 'post/thang112312312312ed1', 96),
(18, 'Im Thang', 0, '23/04/2022', '14:21', 'post/thang1Im ', 96);

-- --------------------------------------------------------

--
-- Table structure for table `nhathuoc`
--

CREATE TABLE `nhathuoc` (
  `nhathuocID` int(11) NOT NULL,
  `nhathuocName` varchar(50) DEFAULT NULL,
  `hospitalKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhathuoc`
--

INSERT INTO `nhathuoc` (`nhathuocID`, `nhathuocName`, `hospitalKey`) VALUES
(1, 'Levothyroxine', 1),
(2, 'Memantine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyonline`
--

CREATE TABLE `pharmacyonline` (
  `pharmacyonlineID` int(11) NOT NULL,
  `pharmacyonlineImage` text DEFAULT NULL,
  `pharmacyonlineDate` varchar(50) DEFAULT NULL,
  `pharmacyonlineTime` varchar(50) DEFAULT NULL,
  `pharmacyonlineKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacyonline`
--

INSERT INTO `pharmacyonline` (`pharmacyonlineID`, `pharmacyonlineImage`, `pharmacyonlineDate`, `pharmacyonlineTime`, `pharmacyonlineKey`) VALUES
(3, 'toa/thang128.124294896197533', '16/03/2022', '14:19', 96),
(4, 'toa/thang129.237203474456095', '16/03/2022', '15:13', 96),
(5, 'toa/thang126.19938436030857', '23/04/2022', '15:08', 96);

-- --------------------------------------------------------

--
-- Table structure for table `qa`
--

CREATE TABLE `qa` (
  `QAID` int(11) NOT NULL,
  `QAKey` int(11) DEFAULT NULL,
  `QAText` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qa`
--

INSERT INTO `qa` (`QAID`, `QAKey`, `QAText`) VALUES
(1, 102, 'I HAVE SOME QA'),
(2, 96, 'I have some questions');

-- --------------------------------------------------------

--
-- Table structure for table `qadoctor`
--

CREATE TABLE `qadoctor` (
  `qadoctorID` int(11) NOT NULL,
  `qadoctorDate` varchar(50) DEFAULT NULL,
  `qadoctorTime` varchar(50) DEFAULT NULL,
  `qadoctorText` text DEFAULT NULL,
  `qadoctorKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qadoctor`
--

INSERT INTO `qadoctor` (`qadoctorID`, `qadoctorDate`, `qadoctorTime`, `qadoctorText`, `qadoctorKey`) VALUES
(8, '23/04/2022', '15:36', 'Yes, the doctor told me that my foreskin had swollen lymph nodes underneath. When I wore underwear, I had symptoms of itching. The doctor could explain to me what disease I am having and how to treat it. what\'s up, thanks', 96);

-- --------------------------------------------------------

--
-- Table structure for table `recodmedicin`
--

CREATE TABLE `recodmedicin` (
  `recodmedicinID` int(11) NOT NULL,
  `recodmedicinEX` text DEFAULT NULL,
  `recodmedicinDrug` text DEFAULT NULL,
  `recodmedicinKQ` text DEFAULT NULL,
  `lichdtKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recodmedicin`
--

INSERT INTO `recodmedicin` (`recodmedicinID`, `recodmedicinEX`, `recodmedicinDrug`, `recodmedicinKQ`, `lichdtKey`) VALUES
(1, '-Blood tests-urine test', '-Levothyroxine+2-Memantine+5', 'Blood fats-Diabetes-', 2),
(2, '-Blood tests-urine test', '-Levothyroxine+1', 'Good-Good-', 1),
(3, '-Blood tests-urine test', '-Levothyroxine+2', '111-111-', 3),
(4, '-Blood tests-urine test', '-Levothyroxine+2-Memantine+1', 'Tieu Duong-Mau nhiem mo-', 6);

-- --------------------------------------------------------

--
-- Table structure for table `registeriamge`
--

CREATE TABLE `registeriamge` (
  `registeriamgeID` int(11) NOT NULL,
  `registeriamgeType` varchar(50) DEFAULT NULL,
  `registeriamgeKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registeriamge`
--

INSERT INTO `registeriamge` (`registeriamgeID`, `registeriamgeType`, `registeriamgeKey`) VALUES
(1, 'Xray', 100),
(3, 'Skill', 100);

-- --------------------------------------------------------

--
-- Table structure for table `relativeprofile`
--

CREATE TABLE `relativeprofile` (
  `relativeid` int(11) NOT NULL,
  `relative` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `relativedateofbirth` varchar(50) DEFAULT NULL,
  `relativesex` varchar(50) DEFAULT NULL,
  `relativephone` varchar(50) DEFAULT NULL,
  `relativecity` varchar(50) DEFAULT NULL,
  `relativedistrict` varchar(50) DEFAULT NULL,
  `relativeward` varchar(50) DEFAULT NULL,
  `relativeaddress` varchar(50) DEFAULT NULL,
  `idkey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relativeprofile`
--

INSERT INTO `relativeprofile` (`relativeid`, `relative`, `fullname`, `relativedateofbirth`, `relativesex`, `relativephone`, `relativecity`, `relativedistrict`, `relativeward`, `relativeaddress`, `idkey`) VALUES
(2, 'MOM', 'Bui Ngoc Bich', '15/07/1973', 'female', '0906246666', 'Hai Duong', 'Tan Dan', 'Kinh mon', '174 Thuong Chieu111', 96),
(3, 'DAD', 'Nguyen Van Kien', '07/04/1968', 'male', '0906246111', 'Hai Duong', 'Tan Dan', 'Kinh Mon', '174 Thuong Chieu', 96),
(4, 'BRO', 'Nguyen Duc Truong', '04/12/2003', 'male', '0869122003', 'Hai Duong', 'Tan Dan', 'Kinh Mon', '174 Thuong Chieu', 96),
(11, 'Frient', 'Tran Duc Khiem', '10/10/2000', 'male', '0979040836', 'Ha noi', 'Cau giay', 'Quan Hoa', '173 Quan hoa', 96),
(19, 'Frient', 'Nguyen Minh Duc', '09/10/2000', 'male', '0972809123', 'Tan Dan', 'Kinh Mon', 'Hai Duong', '137 Hai duong', 96),
(20, 'Son', 'Nguyen Ngoc Thang', '10/10/2000', 'male', '0973809183', 'Tan dan', 'Kinh Mon', 'Hai Duong', '173 Hoang Hoa Tham', 102),
(21, 'Dad', 'Nguyen Van Kien', '22/04/1967', 'male', '0938218666', 'Tan Dan', 'Kinh Mon', 'Hai Duong', '136 Thuong Chieu', 96);

-- --------------------------------------------------------

--
-- Table structure for table `remind`
--

CREATE TABLE `remind` (
  `remindID` int(11) NOT NULL,
  `remind` varchar(150) DEFAULT NULL,
  `remindDate` varchar(50) DEFAULT NULL,
  `remindTime` varchar(50) DEFAULT NULL,
  `remindKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `remind`
--

INSERT INTO `remind` (`remindID`, `remind`, `remindDate`, `remindTime`, `remindKey`) VALUES
(5, 'NGUYEN NGOC THANG have On-demand examination at Hanoi Medical University Hospital', '06/03/2022', '8:30', 96),
(6, 'Bui Ngoc Bich have Urology examination at National Lung Hospital', '7/3/2022', '8:30', 96),
(7, 'Bui Ngoc Bich have Test at home', '07/03/2022', '13:00', 96),
(8, 'NGUYEN NGOC THANG have Test at home', '07/03/2022', '8:30', 96),
(9, 'Nguyen Van Kien have On-demand examination at Hanoi Medical University Hospital', '07/03/2022', '8:30', 96),
(10, 'Nguyen Van Kien have Cardiology examination at Hanoi Medical University Hospital', '13/03/2022', '8:30', 96),
(11, 'NGUYEN NGOC THANG have Test at home', '13/03/2022', '8:30', 96),
(12, 'Bui Ngoc Bich have Cardiology examination at Hanoi Medical University Hospital', '17/03/2022', '8:30', 96),
(13, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '7:30', 96),
(14, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(15, 'NGUYEN NGOC THANG have On-demand examination at Hanoi Medical University Hospital', '20/03/2022', '7:30', 96),
(16, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(17, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(18, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(19, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(20, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(21, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '7:30', 96),
(22, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(23, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(24, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(25, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '20/03/2022', '8:30', 96),
(26, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '19/04/2022', '8:30', 96),
(27, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '19/04/2022', '10:30', 96),
(28, 'NGUYEN NGOC THANG have Test at home', '20/04/2022', '8:30', 96),
(29, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '19/4/2022', '10:30', 96),
(30, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '19/4/2022', '7:30', 96),
(31, 'NGUYEN NGOC THANG have On-demand examination at National Lung Hospital', '23/4/2022', '7:30', 96),
(32, 'NGUYEN NGOC THANG have Test at home', '23/4/2022', '13:30', 96);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roleName` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roleName`) VALUES
(1, 'doctor'),
(2, 'user'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleID` int(11) NOT NULL,
  `scheduleremind` varchar(50) DEFAULT NULL,
  `scheduletime` varchar(50) DEFAULT NULL,
  `scheduledate` varchar(50) DEFAULT NULL,
  `schedulekey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleID`, `scheduleremind`, `scheduletime`, `scheduledate`, `schedulekey`) VALUES
(2, 'Take medicines', '9:00 ', '10/10/2022', 96),
(69, 'take medicien', '21:36', '13/4/2022', 96),
(74, 'Happy birthday', '10:03', '21/4/2022', 102),
(75, 'Take Medicine', '10:04', '21/4/2022', 102),
(78, 'example', '22:12', '22/4/2022', 96);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(11) NOT NULL,
  `serviceContent` text DEFAULT NULL,
  `serviceMoney` varchar(50) DEFAULT NULL,
  `pserviceImage` varchar(50) DEFAULT NULL,
  `serviceKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `serviceContent`, `serviceMoney`, `pserviceImage`, `serviceKey`) VALUES
(1, 'Home check-up service', '199', 'service/1', 2),
(2, 'Test Covid19 at home', '50', 'service/2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicespec`
--

CREATE TABLE `servicespec` (
  `servicespecID` int(11) NOT NULL,
  `servicespecName` varchar(50) DEFAULT NULL,
  `specKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicespec`
--

INSERT INTO `servicespec` (`servicespecID`, `servicespecName`, `specKey`) VALUES
(1, 'Blood tests', 1),
(2, 'urine test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skin`
--

CREATE TABLE `skin` (
  `skinID` int(11) NOT NULL,
  `skinImage` varchar(50) DEFAULT NULL,
  `skinKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `specialistID` int(11) NOT NULL,
  `specialistName` varchar(50) DEFAULT NULL,
  `specialistImage` text DEFAULT NULL,
  `hospitalkey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`specialistID`, `specialistName`, `specialistImage`, `hospitalkey`) VALUES
(1, 'On-demand examination', NULL, 1),
(2, 'Vaccination consultation', NULL, 1),
(3, 'Cardiology examination', NULL, 1),
(4, 'Cancer examination', NULL, 1),
(5, 'Urology examination', NULL, 1),
(6, 'Outpatient examination/outpatient', NULL, 1),
(7, 'Therapeutic materials', NULL, 1),
(9, 'Internal examination', NULL, 1),
(10, 'Cancer resistance test', NULL, 1),
(11, 'Oriental medicine examination', NULL, 1),
(12, 'Eye exam', NULL, 1),
(13, 'General examination', NULL, 1),
(14, 'Dental visit', NULL, 1),
(16, 'Obstetric/Gynecological Examination', NULL, 1),
(18, 'Ear, nose and throat examination', NULL, 1),
(19, 'Gastrointestinal examination', NULL, 1),
(20, 'Dermatological examination', NULL, 1),
(21, 'Medical examination, respiratory examination', NULL, 1),
(22, 'On-demand examination', NULL, 2),
(23, 'Cardiology examination', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `usercard`
--

CREATE TABLE `usercard` (
  `usercardID` int(11) NOT NULL,
  `userKey` int(11) DEFAULT NULL,
  `cardKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercard`
--

INSERT INTO `usercard` (`usercardID`, `userKey`, `cardKey`) VALUES
(5, 96, 2);

-- --------------------------------------------------------

--
-- Table structure for table `userendow`
--

CREATE TABLE `userendow` (
  `userendowID` int(11) NOT NULL,
  `userkey` int(11) DEFAULT NULL,
  `endowkey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userendow`
--

INSERT INTO `userendow` (`userendowID`, `userkey`, `endowkey`) VALUES
(1, 96, 1),
(2, 102, 1),
(7, 96, 2),
(8, 96, 5);

-- --------------------------------------------------------

--
-- Table structure for table `usernew`
--

CREATE TABLE `usernew` (
  `usernewID` int(11) NOT NULL,
  `usernewLike` varchar(10) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `newKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usernew`
--

INSERT INTO `usernew` (`usernewID`, `usernewLike`, `userKey`, `newKey`) VALUES
(4, '1', 96, 17),
(5, '0', 96, 14),
(6, '0', 100, 17),
(7, '1', 101, 14),
(8, '1', 102, 16),
(10, '0', 96, 18);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `apartmentnumber` varchar(50) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `accumulatedpoints` int(11) DEFAULT NULL,
  `carepayactive` int(50) NOT NULL DEFAULT 0,
  `rolekey` int(11) NOT NULL,
  `setlock` varchar(10) NOT NULL,
  `addcard` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `phone`, `image`, `dateofbirth`, `sex`, `city`, `township`, `ward`, `apartmentnumber`, `money`, `accumulatedpoints`, `carepayactive`, `rolekey`, `setlock`, `addcard`) VALUES
(95, 'bot1', 'bot1', '123123', '789789789', 'user/thang1.72541768914099', '', 'male', '', '', '', '', 0, 0, 0, 2, '0', '0'),
(96, 'NGUYEN NGOC THANG', 'thang1', '123123', '0972809182', 'user/thang18.79050629373012', '10/10/2000', 'female', 'Hai duong', 'kinh mon', 'tan dan', '138 thuong chieu', 200404, 417100, 1, 2, '1', '1'),
(100, 'Doctor : Ngoc Thang', 'thangd', '123123', '0979050835', 'user/thangd7.382514039571065', '10/10/2000', 'male', 'Hai duong', 'Kinh mon', 'Tan Dan', '110 Thuong chieu', 0, 0, 0, 1, '0', '0'),
(101, ' bot2', 'bot2', '123123', '456456456', 'user/thang@15.237473003611036', '', 'male', '', '', '', '', 0, 0, 0, 2, '0', '0'),
(102, 'Bui Thi Bich', 'bich@gmail', '123123', '0938218666', 'user/bich@gmail4.017039985435947', '07/07/1973', 'female', 'Tan Dan', 'Kinh Mon', 'Hai Duong', '197 Thuong chieu', 1094, 100, 0, 2, '0', '0'),
(103, 'ADMIN', 'admin', '123123', '096664565', 'user/admin4.637419201509768', '', 'male', '', '', '', '', 0, 0, 0, 3, '0', '0'),
(104, 'Nguyen Ngoc Thang', 'thang@gmail', '123123', '0906246555', 'user/thang@gmail5.328221763969522', '10/10/2000', 'female', 'Tan Dan', 'Kinh Mon', 'Hai Duong', '138 thuong chieu', 0, 0, 0, 2, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `xray`
--

CREATE TABLE `xray` (
  `xrayID` int(11) NOT NULL,
  `xrayImage` text DEFAULT NULL,
  `xrayKey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xray`
--

INSERT INTO `xray` (`xrayID`, `xrayImage`, `xrayKey`) VALUES
(4, 'runs\\detect\\exp2', 96),
(5, 'runs\\detect\\exp3', 96),
(6, 'runs\\detect\\exp4', 96),
(7, 'runs\\detect\\exp10', 96),
(8, 'runs\\detect\\exp11', 96),
(9, 'runs\\detect\\exp18', 96),
(10, 'runs\\detect\\exp13', 96),
(11, 'runs\\detect\\exp14', 96),
(12, 'runs\\detect\\exp17', 96),
(13, 'runs\\detect\\exp18', 96);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`cardID`);

--
-- Indexes for table `cmnd`
--
ALTER TABLE `cmnd`
  ADD PRIMARY KEY (`cmndID`),
  ADD KEY `userKey` (`userKey`);

--
-- Indexes for table `commentapost`
--
ALTER TABLE `commentapost`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `peopleID` (`peopleID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `commentapostdt`
--
ALTER TABLE `commentapostdt`
  ADD PRIMARY KEY (`commentapostdtID`),
  ADD KEY `peopleID` (`peopleID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `endow`
--
ALTER TABLE `endow`
  ADD PRIMARY KEY (`endowID`);

--
-- Indexes for table `healcv`
--
ALTER TABLE `healcv`
  ADD PRIMARY KEY (`healcvID`),
  ADD KEY `healcvKey` (`healcvKey`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`historyID`),
  ADD KEY `historyKey` (`historyKey`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospitalID`);

--
-- Indexes for table `infordoctor`
--
ALTER TABLE `infordoctor`
  ADD PRIMARY KEY (`infordoctorID`),
  ADD KEY `infordoctorKey` (`infordoctorKey`);

--
-- Indexes for table `lichadminathome`
--
ALTER TABLE `lichadminathome`
  ADD PRIMARY KEY (`lichadminathomeID`),
  ADD KEY `clientKey` (`clientKey`);

--
-- Indexes for table `lichdt`
--
ALTER TABLE `lichdt`
  ADD PRIMARY KEY (`lichdtID`),
  ADD KEY `userKey` (`userKey`),
  ADD KEY `doctorKey` (`doctorKey`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newID`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nhathuoc`
--
ALTER TABLE `nhathuoc`
  ADD PRIMARY KEY (`nhathuocID`),
  ADD KEY `hospitalKey` (`hospitalKey`);

--
-- Indexes for table `pharmacyonline`
--
ALTER TABLE `pharmacyonline`
  ADD PRIMARY KEY (`pharmacyonlineID`),
  ADD KEY `pharmacyonlineKey` (`pharmacyonlineKey`);

--
-- Indexes for table `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`QAID`),
  ADD KEY `QAKey` (`QAKey`);

--
-- Indexes for table `qadoctor`
--
ALTER TABLE `qadoctor`
  ADD PRIMARY KEY (`qadoctorID`),
  ADD KEY `qadoctorKey` (`qadoctorKey`);

--
-- Indexes for table `recodmedicin`
--
ALTER TABLE `recodmedicin`
  ADD PRIMARY KEY (`recodmedicinID`),
  ADD KEY `lichdtKey` (`lichdtKey`);

--
-- Indexes for table `registeriamge`
--
ALTER TABLE `registeriamge`
  ADD PRIMARY KEY (`registeriamgeID`),
  ADD KEY `registeriamgeKey` (`registeriamgeKey`);

--
-- Indexes for table `relativeprofile`
--
ALTER TABLE `relativeprofile`
  ADD PRIMARY KEY (`relativeid`),
  ADD KEY `idkey` (`idkey`);

--
-- Indexes for table `remind`
--
ALTER TABLE `remind`
  ADD PRIMARY KEY (`remindID`),
  ADD KEY `remindKey` (`remindKey`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleID`),
  ADD KEY `schedulekey` (`schedulekey`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `serviceKey` (`serviceKey`);

--
-- Indexes for table `servicespec`
--
ALTER TABLE `servicespec`
  ADD PRIMARY KEY (`servicespecID`),
  ADD KEY `specKey` (`specKey`);

--
-- Indexes for table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`skinID`),
  ADD KEY `skinKey` (`skinKey`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`specialistID`),
  ADD KEY `hospitalkey` (`hospitalkey`);

--
-- Indexes for table `usercard`
--
ALTER TABLE `usercard`
  ADD PRIMARY KEY (`usercardID`),
  ADD KEY `userKey` (`userKey`),
  ADD KEY `cardKey` (`cardKey`);

--
-- Indexes for table `userendow`
--
ALTER TABLE `userendow`
  ADD PRIMARY KEY (`userendowID`),
  ADD KEY `userkey` (`userkey`),
  ADD KEY `endowkey` (`endowkey`);

--
-- Indexes for table `usernew`
--
ALTER TABLE `usernew`
  ADD PRIMARY KEY (`usernewID`),
  ADD KEY `userKey` (`userKey`),
  ADD KEY `newKey` (`newKey`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `xray`
--
ALTER TABLE `xray`
  ADD PRIMARY KEY (`xrayID`),
  ADD KEY `xrayKey` (`xrayKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `cardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cmnd`
--
ALTER TABLE `cmnd`
  MODIFY `cmndID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commentapost`
--
ALTER TABLE `commentapost`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `commentapostdt`
--
ALTER TABLE `commentapostdt`
  MODIFY `commentapostdtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `endow`
--
ALTER TABLE `endow`
  MODIFY `endowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `healcv`
--
ALTER TABLE `healcv`
  MODIFY `healcvID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `historyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospitalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `infordoctor`
--
ALTER TABLE `infordoctor`
  MODIFY `infordoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lichadminathome`
--
ALTER TABLE `lichadminathome`
  MODIFY `lichadminathomeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lichdt`
--
ALTER TABLE `lichdt`
  MODIFY `lichdtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nhathuoc`
--
ALTER TABLE `nhathuoc`
  MODIFY `nhathuocID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacyonline`
--
ALTER TABLE `pharmacyonline`
  MODIFY `pharmacyonlineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qa`
--
ALTER TABLE `qa`
  MODIFY `QAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qadoctor`
--
ALTER TABLE `qadoctor`
  MODIFY `qadoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recodmedicin`
--
ALTER TABLE `recodmedicin`
  MODIFY `recodmedicinID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registeriamge`
--
ALTER TABLE `registeriamge`
  MODIFY `registeriamgeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `relativeprofile`
--
ALTER TABLE `relativeprofile`
  MODIFY `relativeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `remind`
--
ALTER TABLE `remind`
  MODIFY `remindID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `servicespec`
--
ALTER TABLE `servicespec`
  MODIFY `servicespecID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skin`
--
ALTER TABLE `skin`
  MODIFY `skinID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `specialistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `usercard`
--
ALTER TABLE `usercard`
  MODIFY `usercardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userendow`
--
ALTER TABLE `userendow`
  MODIFY `userendowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usernew`
--
ALTER TABLE `usernew`
  MODIFY `usernewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `xray`
--
ALTER TABLE `xray`
  MODIFY `xrayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cmnd`
--
ALTER TABLE `cmnd`
  ADD CONSTRAINT `cmnd_ibfk_1` FOREIGN KEY (`userKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `commentapost`
--
ALTER TABLE `commentapost`
  ADD CONSTRAINT `commentapost_ibfk_1` FOREIGN KEY (`peopleID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `commentapost_ibfk_2` FOREIGN KEY (`postID`) REFERENCES `news` (`newID`);

--
-- Constraints for table `commentapostdt`
--
ALTER TABLE `commentapostdt`
  ADD CONSTRAINT `commentapostdt_ibfk_1` FOREIGN KEY (`peopleID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `commentapostdt_ibfk_2` FOREIGN KEY (`postID`) REFERENCES `qadoctor` (`qadoctorID`);

--
-- Constraints for table `healcv`
--
ALTER TABLE `healcv`
  ADD CONSTRAINT `healcv_ibfk_1` FOREIGN KEY (`healcvKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`historyKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `infordoctor`
--
ALTER TABLE `infordoctor`
  ADD CONSTRAINT `infordoctor_ibfk_1` FOREIGN KEY (`infordoctorKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `lichadminathome`
--
ALTER TABLE `lichadminathome`
  ADD CONSTRAINT `lichadminathome_ibfk_1` FOREIGN KEY (`clientKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `lichdt`
--
ALTER TABLE `lichdt`
  ADD CONSTRAINT `lichdt_ibfk_1` FOREIGN KEY (`userKey`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lichdt_ibfk_2` FOREIGN KEY (`doctorKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `nhathuoc`
--
ALTER TABLE `nhathuoc`
  ADD CONSTRAINT `nhathuoc_ibfk_1` FOREIGN KEY (`hospitalKey`) REFERENCES `hospital` (`hospitalID`);

--
-- Constraints for table `pharmacyonline`
--
ALTER TABLE `pharmacyonline`
  ADD CONSTRAINT `pharmacyonline_ibfk_1` FOREIGN KEY (`pharmacyonlineKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `qa`
--
ALTER TABLE `qa`
  ADD CONSTRAINT `qa_ibfk_1` FOREIGN KEY (`QAKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `qadoctor`
--
ALTER TABLE `qadoctor`
  ADD CONSTRAINT `qadoctor_ibfk_1` FOREIGN KEY (`qadoctorKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `recodmedicin`
--
ALTER TABLE `recodmedicin`
  ADD CONSTRAINT `recodmedicin_ibfk_1` FOREIGN KEY (`lichdtKey`) REFERENCES `lichdt` (`lichdtID`);

--
-- Constraints for table `registeriamge`
--
ALTER TABLE `registeriamge`
  ADD CONSTRAINT `registeriamge_ibfk_1` FOREIGN KEY (`registeriamgeKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `relativeprofile`
--
ALTER TABLE `relativeprofile`
  ADD CONSTRAINT `relativeprofile_ibfk_1` FOREIGN KEY (`idkey`) REFERENCES `users` (`id`);

--
-- Constraints for table `remind`
--
ALTER TABLE `remind`
  ADD CONSTRAINT `remind_ibfk_1` FOREIGN KEY (`remindKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`schedulekey`) REFERENCES `users` (`id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`serviceKey`) REFERENCES `hospital` (`hospitalID`);

--
-- Constraints for table `servicespec`
--
ALTER TABLE `servicespec`
  ADD CONSTRAINT `servicespec_ibfk_1` FOREIGN KEY (`specKey`) REFERENCES `specialist` (`specialistID`);

--
-- Constraints for table `skin`
--
ALTER TABLE `skin`
  ADD CONSTRAINT `skin_ibfk_1` FOREIGN KEY (`skinKey`) REFERENCES `users` (`id`);

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_ibfk_1` FOREIGN KEY (`hospitalkey`) REFERENCES `hospital` (`hospitalID`);

--
-- Constraints for table `usercard`
--
ALTER TABLE `usercard`
  ADD CONSTRAINT `usercard_ibfk_1` FOREIGN KEY (`userKey`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usercard_ibfk_2` FOREIGN KEY (`cardKey`) REFERENCES `card` (`cardID`);

--
-- Constraints for table `userendow`
--
ALTER TABLE `userendow`
  ADD CONSTRAINT `userendow_ibfk_1` FOREIGN KEY (`userkey`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userendow_ibfk_2` FOREIGN KEY (`endowkey`) REFERENCES `endow` (`endowID`);

--
-- Constraints for table `usernew`
--
ALTER TABLE `usernew`
  ADD CONSTRAINT `usernew_ibfk_1` FOREIGN KEY (`userKey`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usernew_ibfk_2` FOREIGN KEY (`newKey`) REFERENCES `news` (`newID`);

--
-- Constraints for table `xray`
--
ALTER TABLE `xray`
  ADD CONSTRAINT `xray_ibfk_1` FOREIGN KEY (`xrayKey`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
