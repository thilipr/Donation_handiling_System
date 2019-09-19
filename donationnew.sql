-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 06:52 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donationnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `donator`
--

CREATE TABLE `donator` (
  `DonatorID` int(11) NOT NULL,
  `Donator_Name` varchar(45) DEFAULT NULL,
  `contactNo` int(200) NOT NULL,
  `E-mailAddress` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donator`
--

INSERT INTO `donator` (`DonatorID`, `Donator_Name`, `contactNo`, `E-mailAddress`, `Address`, `active`) VALUES
(10001, 'Social Services Department', 332256506, 'ssdepartment@gmail.com', 'No 12, Miriswatta, Gampaha', 'active'),
(10002, 'Sethsevana Fund Raising Organization ', 332294532, 'sethsevana@gmail.com', 'No 34, Kirillawala, Kadawatha', 'active'),
(10004, 'Diriya Fund Raising Organization', 332262354, 'diriya@gmail.com', 'N0 78, Iriyawatiya, Kelaniya', 'deactive'),
(10005, 'Nawanaguma Fund Raising Organization', 332259632, 'nawanaguma@gmail.com', 'No 24, Yakkala, Gampaha', 'active'),
(10006, 'Saviya Fund Raising Organization', 332272489, 'saviya@gmail.com', 'No 89, Kirindiwela, Gampaha', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `donator_has_f_fund`
--

CREATE TABLE `donator_has_f_fund` (
  `fundID` int(1) NOT NULL,
  `DonatorID` int(50) NOT NULL,
  `receiveddate` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donator_has_f_fund`
--

INSERT INTO `donator_has_f_fund` (`fundID`, `DonatorID`, `receiveddate`, `amount`) VALUES
(90003, 10002, '12/30/18', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `donator_has_n_fund`
--

CREATE TABLE `donator_has_n_fund` (
  `fundID` int(100) NOT NULL,
  `DonatorID` int(100) NOT NULL,
  `receiveddate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donator_has_n_fund`
--

INSERT INTO `donator_has_n_fund` (`fundID`, `DonatorID`, `receiveddate`) VALUES
(80002, 70002, '1/2/19');

-- --------------------------------------------------------

--
-- Table structure for table `fdonation`
--

CREATE TABLE `fdonation` (
  `donationID` int(100) NOT NULL,
  `m_amount` int(100) NOT NULL,
  `d_category` varchar(100) NOT NULL,
  `fundID` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fdonation`
--

INSERT INTO `fdonation` (`donationID`, `m_amount`, `d_category`, `fundID`) VALUES
(60003, 1500, 'educational (A/L)', 90003),
(60005, 800, 'senior citizen living relief', 90004),
(60006, 300, 'disable living relief', 90005),
(60007, 500, 'educational(O/L)', 90006),
(60008, 500, 'disease assistance', 90007),
(60009, 400, 'public(adults with dependents)', 90008),
(60010, 350, 'pubic(adults without dependents)', 90009),
(60011, 600, 'public (widow with dependents)', 90010),
(60012, 550, 'public(widow without dependents)', 90011),
(60014, 300, 'disable living relief', 90005);

-- --------------------------------------------------------

--
-- Table structure for table `f_fund`
--

CREATE TABLE `f_fund` (
  `fundID` int(100) NOT NULL,
  `fcategory` varchar(100) NOT NULL,
  `reqamount` int(100) NOT NULL,
  `availablequantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_fund`
--

INSERT INTO `f_fund` (`fundID`, `fcategory`, `reqamount`, `availablequantity`) VALUES
(90003, 'educational(A/L)', 3000, 0),
(90004, 'senior citizen living relief', 0, 0),
(90005, 'disable living relief', 0, 0),
(90006, 'educational(O/L)', 0, 0),
(90007, 'disease assistance', 0, 0),
(90008, 'public(adults with dependents)', 0, 0),
(90009, 'public(adults without dependents)', 0, 0),
(90010, 'public(widow with dependents)', 0, 0),
(90011, 'public(widow without dependents)', 0, 0),
(90012, 'JAVx', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `f_issue`
--

CREATE TABLE `f_issue` (
  `donationID` int(100) NOT NULL,
  `RecipientID` int(100) NOT NULL,
  `issuedate` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `paymentID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_issue`
--

INSERT INTO `f_issue` (`donationID`, `RecipientID`, `issuedate`, `amount`, `paymentID`) VALUES
(60009, 40016, '1/1/19', 400, 45001);

-- --------------------------------------------------------

--
-- Table structure for table `ndonation`
--

CREATE TABLE `ndonation` (
  `donationID` int(100) NOT NULL,
  `d_type` varchar(100) NOT NULL,
  `fundID` int(100) DEFAULT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ndonation`
--

INSERT INTO `ndonation` (`donationID`, `d_type`, `fundID`, `quantity`) VALUES
(70002, 'crutches', 80002, 1),
(70003, 'wheel chair', 80003, 1),
(70004, 'spectacles', 80005, 1),
(70005, 'artificial upper limb', 80006, 1),
(70006, 'caliper shoes', 80008, 1),
(70007, 'walking stick', 80009, 1),
(70008, 'forearm crutches', 80010, 1),
(70009, 'walker', 80012, 1),
(70011, 'eye lense', 80015, 1),
(70013, 'braille machine', 80013, 1),
(70014, 'hearing aid', 80014, 1);

-- --------------------------------------------------------

--
-- Table structure for table `n_fund`
--

CREATE TABLE `n_fund` (
  `fundID` int(11) NOT NULL,
  `Ntype` varchar(100) DEFAULT NULL,
  `reqquantity` int(100) NOT NULL,
  `availablequantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `n_fund`
--

INSERT INTO `n_fund` (`fundID`, `Ntype`, `reqquantity`, `availablequantity`) VALUES
(80002, 'crutches', 1, 0),
(80003, 'wheel chair', 0, 0),
(80005, 'spectacles', 0, 0),
(80006, 'artificial upper limb', 0, 0),
(80007, 'artificial lower limb', 0, 0),
(80008, 'caliper shoes', 0, 0),
(80009, 'walking stick', 0, 0),
(80010, 'forearm crutches', 0, 0),
(80012, 'walker', 0, 0),
(80013, 'braille machine', 0, 0),
(80014, 'hearing aid', 0, 0),
(80015, 'eye lense', 2, 1),
(80016, 'gsjkbx', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `n_issue`
--

CREATE TABLE `n_issue` (
  `donationID` int(100) NOT NULL,
  `RecipientID` int(100) NOT NULL,
  `issuedate` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `paymentID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postoffice`
--

CREATE TABLE `postoffice` (
  `postal_code` int(100) NOT NULL,
  `postofficeName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postoffice`
--

INSERT INTO `postoffice` (`postal_code`, `postofficeName`) VALUES
(10660, 'Pugoda'),
(11030, 'Udugampola'),
(11040, 'Bemmulla'),
(11050, 'Delgoda'),
(11052, 'Ambagaspitiya'),
(11063, 'Naranwala'),
(11122, 'Alawala'),
(11126, 'Urapola'),
(11222, 'Nawana'),
(11354, 'Niwandama'),
(11380, 'Ekala'),
(11536, 'Akaragama'),
(11550, 'Minuwangoda'),
(11670, 'Malwana'),
(11710, 'Wliveriya'),
(11725, 'Radawana'),
(11890, 'Pasyala');

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `RecipientID` int(100) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `Grama_Niladhari_Division` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `contactNo` int(20) NOT NULL,
  `registered_date` varchar(100) DEFAULT NULL,
  `postal_code` int(100) NOT NULL,
  `dtype` varchar(100) NOT NULL,
  `active` varchar(100) NOT NULL,
  `renew` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`RecipientID`, `Name`, `DOB`, `Grama_Niladhari_Division`, `Gender`, `Address`, `contactNo`, `registered_date`, `postal_code`, `dtype`, `active`, `renew`) VALUES
(40014, 'Sithara Hansani', '12/6/83', 'Karanyakamulla', 'Female', 'No 23., Naranwala Rd., Weliweriya', 774568521, '12/9/19', 11536, 'public(widow with dependents)', 'active', 'y'),
(40015, 'Gihan Fernando', '12/4/73', 'Gampaha Atluthgama', 'Male', 'No 45., Naranwala Rd., Weliweriya', 718529341, '12/8/19', 10660, 'hearing aid', 'active', 'y'),
(40016, 'Piyadasa Perera', '12/2/58', '-Select Grama Niladhari Division-', 'Male', 'No 67.,  Rathupaswala, Miriswatta', 724105206, '12/2/19', 11052, 'public(adults with dependents)', 'active', 'y'),
(40017, 'Erandhathi Madegama', '12/4/72', 'Kirindivita', 'Female', 'No 98., Ananda Mw., Rathupaswala', 727419635, '12/18/17', 11122, 'public(widow with dependents)', 'active', 'y'),
(40018, 'Hema Peries', '12/3/46', 'Akaravita', 'Female', 'No 78., Pahala Yagoda, Pugoda', 714567895, '12/6/16', 11040, 'braille machine', 'active', 'y'),
(40019, 'Seetha Perera', '1/5/76', 'Akaravita', 'Female', 'No 45, Galwala Rd., Makola', 712583694, '1/10/19', 11122, 'pubic(adults without dependents)', 'active', 'y'),
(40020, 'Sunil Perera', '1/4/83', 'Kirindivita', 'Male', 'No 34, Siyambalape Watta, Delgoda', 721472586, '1/3/19', 10660, 'forearm crutches', 'active', 'y'),
(40021, 'Kosala Madhushan', '1/7/04', 'Mabima', 'Male', 'No. 54, ', 704567891, '1/2/19', 10660, 'educational(O/L)', 'active', 'y'),
(40022, 'Deepthi Dharshani', '1/2/73', 'Boraliyawatta', 'Female', 'No. 67, Reanwala Rd., Naranwala', 767531598, '1/4/19', 11122, 'forearm crutches', 'active', 'y'),
(40023, 'Dulani Pieris', '1/9/73', 'Markevita South', 'Female', 'No. 35, Kehelhena, Udupila', 714568529, '1/10/19', 11052, 'disable living relief', 'active', 'y'),
(40024, 'gayara', '1/2/19', 'Akaravita', 'Female', 'makola', 714719402, '2019-01-02', 11380, 'crutches', 'inactive', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `ucontact` varchar(200) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `uname`, `uaddress`, `ucontact`, `uemail`, `password`) VALUES
(12004, 'Nisansala Pieris', 'No 75, Ananda Mw., Gampaha', '0713438521', 'nisan@gmail.com', 'nisansala'),
(12003, 'Gayan Sanjeewa', 'No 34, Udugampola, Gampaha', '0773438645', 'gayan@gmail.com', 'gayan'),
(12002, 'Erandhi Madagama', 'No 34, Udupila, Delgoda', '0775668645', 'erandhi@gmail.com', 'erandhi'),
(12001, 'Wathsala Perera', 'No. 23, Udumulla Rd,Nugegoda', '0774567891', 'Wathsala@gmail.com', 'wathsala'),
(12005, 'Nipuna Randunu', 'No. 63, Ananda Mw., Rathupaswala', '0723438921', 'nipuna@gmail.com', 'nipuna'),
(12006, 'Maheshi Gunathilaka', 'No. 63, Palawatta, Battaramulla', '0783438456', 'maheshi@gmail.com', 'maheshi'),
(12007, 'Kasun Gunathilaka', 'No. 56 , Aldeniya , Kadawatha', '0783433006', 'kasun@gmail.com', 'kasun'),
(12008, 'Madhuri Nimesha', 'No. 78., Ganemulla , Kadawatha', '0713432007', 'madhuri@gmail.com', 'madhuri'),
(12009, 'Hansaka Dias', 'No. 78., Thalahena , Malabe', '0768972056', 'hansaka@gmail.com', 'hansaka'),
(12010, 'Pabasara Mudhalige', 'No. 78., Weliweriya, Gampaha', '0776376368', 'pabasara@gmail.com', 'pabasara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donator`
--
ALTER TABLE `donator`
  ADD PRIMARY KEY (`DonatorID`);

--
-- Indexes for table `donator_has_f_fund`
--
ALTER TABLE `donator_has_f_fund`
  ADD PRIMARY KEY (`fundID`,`DonatorID`),
  ADD KEY `fundID` (`fundID`,`DonatorID`),
  ADD KEY `DonatorID` (`DonatorID`);

--
-- Indexes for table `donator_has_n_fund`
--
ALTER TABLE `donator_has_n_fund`
  ADD PRIMARY KEY (`fundID`,`DonatorID`),
  ADD KEY `fundID` (`fundID`,`DonatorID`),
  ADD KEY `DonatorID` (`DonatorID`);

--
-- Indexes for table `fdonation`
--
ALTER TABLE `fdonation`
  ADD PRIMARY KEY (`donationID`),
  ADD KEY `fundID` (`fundID`);

--
-- Indexes for table `f_fund`
--
ALTER TABLE `f_fund`
  ADD PRIMARY KEY (`fundID`);

--
-- Indexes for table `f_issue`
--
ALTER TABLE `f_issue`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `donationID` (`donationID`,`RecipientID`),
  ADD KEY `RecipientID` (`RecipientID`);

--
-- Indexes for table `ndonation`
--
ALTER TABLE `ndonation`
  ADD PRIMARY KEY (`donationID`),
  ADD KEY `fundID` (`fundID`);

--
-- Indexes for table `n_fund`
--
ALTER TABLE `n_fund`
  ADD PRIMARY KEY (`fundID`);

--
-- Indexes for table `n_issue`
--
ALTER TABLE `n_issue`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `donationID` (`donationID`,`RecipientID`),
  ADD KEY `RecipientID` (`RecipientID`);

--
-- Indexes for table `postoffice`
--
ALTER TABLE `postoffice`
  ADD PRIMARY KEY (`postal_code`);

--
-- Indexes for table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`RecipientID`),
  ADD KEY `fk_Student_PostOffice1_idx` (`postal_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donator`
--
ALTER TABLE `donator`
  MODIFY `DonatorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `fdonation`
--
ALTER TABLE `fdonation`
  MODIFY `donationID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60015;
--
-- AUTO_INCREMENT for table `f_fund`
--
ALTER TABLE `f_fund`
  MODIFY `fundID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90013;
--
-- AUTO_INCREMENT for table `ndonation`
--
ALTER TABLE `ndonation`
  MODIFY `donationID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80015;
--
-- AUTO_INCREMENT for table `n_fund`
--
ALTER TABLE `n_fund`
  MODIFY `fundID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80017;
--
-- AUTO_INCREMENT for table `recipient`
--
ALTER TABLE `recipient`
  MODIFY `RecipientID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40025;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12011;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `donator_has_f_fund`
--
ALTER TABLE `donator_has_f_fund`
  ADD CONSTRAINT `donator_has_f_fund_ibfk_2` FOREIGN KEY (`fundID`) REFERENCES `f_fund` (`fundID`);

--
-- Constraints for table `donator_has_n_fund`
--
ALTER TABLE `donator_has_n_fund`
  ADD CONSTRAINT `donator_has_n_fund_ibfk_3` FOREIGN KEY (`fundID`) REFERENCES `n_fund` (`fundID`);

--
-- Constraints for table `fdonation`
--
ALTER TABLE `fdonation`
  ADD CONSTRAINT `fdonation_ibfk_2` FOREIGN KEY (`fundID`) REFERENCES `f_fund` (`fundID`);

--
-- Constraints for table `f_issue`
--
ALTER TABLE `f_issue`
  ADD CONSTRAINT `f_issue_ibfk_1` FOREIGN KEY (`RecipientID`) REFERENCES `recipient` (`RecipientID`),
  ADD CONSTRAINT `f_issue_ibfk_2` FOREIGN KEY (`donationID`) REFERENCES `fdonation` (`donationID`);

--
-- Constraints for table `ndonation`
--
ALTER TABLE `ndonation`
  ADD CONSTRAINT `ndonation_ibfk_1` FOREIGN KEY (`fundID`) REFERENCES `n_fund` (`fundID`);

--
-- Constraints for table `n_issue`
--
ALTER TABLE `n_issue`
  ADD CONSTRAINT `n_issue_ibfk_1` FOREIGN KEY (`donationID`) REFERENCES `ndonation` (`donationID`),
  ADD CONSTRAINT `n_issue_ibfk_2` FOREIGN KEY (`RecipientID`) REFERENCES `recipient` (`RecipientID`);

--
-- Constraints for table `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`postal_code`) REFERENCES `postoffice` (`postal_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
