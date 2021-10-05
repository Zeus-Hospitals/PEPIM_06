-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 11:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeus`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `name` varchar(60) NOT NULL,
  `nic` varchar(60) NOT NULL,
  `contct_no` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  `time` varchar(60) NOT NULL,
  `doctor_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`name`, `nic`, `contct_no`, `date`, `time`, `doctor_name`) VALUES
('ewrewr', '234343', '3425534', '23432', '234', 'wrw');

-- --------------------------------------------------------

--
-- Table structure for table `icu`
--

CREATE TABLE `icu` (
  `icu_bed_number` varchar(20) NOT NULL,
  `availability` int(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `patient_nic` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icu`
--

INSERT INTO `icu` (`icu_bed_number`, `availability`, `patient_id`, `patient_nic`, `address`, `contact_number`) VALUES
('1231311', 123123123, '123123', '123123123', '1231321231', '1112221122'),
('234234', 34222, '1434341', '43213', 'asdfaf', '1122112211'),
('2343', 4234, '34234', '234', '2432341', '1111111111'),
('243234', 342342, 'w2343', '23423423', 'wrrewr', '1111111111'),
('qwewq', 12321, '213123', '213123', 'qee', '1111111111');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userName` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userName`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` varchar(15) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `patient_name` varchar(20) NOT NULL,
  `patient_age` int(20) NOT NULL,
  `patient_address` varchar(20) NOT NULL,
  `patient_contact` varchar(20) NOT NULL,
  `patient_admission` varchar(20) NOT NULL,
  `patient_state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `nic`, `patient_name`, `patient_age`, `patient_address`, `patient_contact`, `patient_admission`, `patient_state`) VALUES
('1231231', '213231', 'dsds', 12312, 'adsda', '123131', '123231', 'critical'),
('23423', '434334', 'asdasd', 23, 'asd', '1111111111', 'dasda', 'critical'),
('ewqe', 'qwewqe', 'weq', 243234, 'erqer', '3421111111', '324', 'discharged');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_number` varchar(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `job_role` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `home_address` varchar(20) NOT NULL,
  `telephone_number` varchar(20) NOT NULL,
  `duty_shift` varchar(20) NOT NULL,
  `vaccination` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_number`, `full_name`, `job_role`, `age`, `home_address`, `telephone_number`, `duty_shift`, `vaccination`) VALUES
('DR0901', 'Dr.Janaka ', 'doctor', 45, 'sdaasd', '1111111111', 'night', 'vaccinated'),
('DRIC', 'Dr.Naveen', 'doctor', 21, 'dsfs', '1212121212', 'day', 'vaccinated');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `name`, `category`, `brand`, `quantity`) VALUES
('234234', '32432', 'Oxygen Bottles', 'errwwer', 230);

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `nic` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `first_dose_date` varchar(30) NOT NULL,
  `second_dose_date` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`nic`, `name`, `address`, `contact`, `brand`, `first_dose_date`, `second_dose_date`, `price`) VALUES
('sadas', 'asdas', 'sdada', '3443', 'asdasd', 'asdasd', 'sdad', '13134');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `icu`
--
ALTER TABLE `icu`
  ADD PRIMARY KEY (`icu_bed_number`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`nic`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
