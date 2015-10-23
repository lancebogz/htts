-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2015 at 01:53 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `httsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admtfromdbl`
--

CREATE TABLE IF NOT EXISTS `admtfromdbl` (
`id` int(5) NOT NULL,
  `admtfrom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admtwrontdcdbl`
--

CREATE TABLE IF NOT EXISTS `admtwrontdcdbl` (
`id` int(10) NOT NULL,
  `res_code` varchar(10) NOT NULL,
  `resident` int(5) NOT NULL,
  `primdiag` int(5) NOT NULL,
  `dt_hdc` int(10) NOT NULL,
  `dt_nh` int(10) NOT NULL,
  `dt_dow` int(10) NOT NULL,
  `admt_stat` int(5) NOT NULL,
  `hospital` int(5) NOT NULL,
  `medplan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cliniciandbl`
--

CREATE TABLE IF NOT EXISTS `cliniciandbl` (
`id` int(5) NOT NULL,
  `clinician` varchar(100) NOT NULL,
  `clinician_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fallsactpriodbl`
--

CREATE TABLE IF NOT EXISTS `fallsactpriodbl` (
`id` int(5) NOT NULL,
  `fallsactprio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fallsinjurydbl`
--

CREATE TABLE IF NOT EXISTS `fallsinjurydbl` (
`id` int(5) NOT NULL,
  `fallsinjury` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fallslocationdbl`
--

CREATE TABLE IF NOT EXISTS `fallslocationdbl` (
`id` int(5) NOT NULL,
  `fallslocation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fallslogdbl`
--

CREATE TABLE IF NOT EXISTS `fallslogdbl` (
`id` int(5) NOT NULL,
  `dt_fallslog` varchar(10) NOT NULL,
  `dt_tod` varchar(10) NOT NULL,
  `resident` int(5) NOT NULL,
  `dt_dow` varchar(10) NOT NULL,
  `location` int(5) NOT NULL,
  `actfall` int(5) NOT NULL,
  `injury` int(5) NOT NULL,
  `reportable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fallsprtdbl`
--

CREATE TABLE IF NOT EXISTS `fallsprtdbl` (
`id` int(5) NOT NULL,
  `fallsprt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medplandbl`
--

CREATE TABLE IF NOT EXISTS `medplandbl` (
`id` int(5) NOT NULL,
  `medplan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nursedbl`
--

CREATE TABLE IF NOT EXISTS `nursedbl` (
`id` int(5) NOT NULL,
  `nurse` varchar(100) NOT NULL,
  `nurse_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmtstatdbl`
--

CREATE TABLE IF NOT EXISTS `pmtstatdbl` (
`id` int(5) NOT NULL,
  `pmtstat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primdiagadmtdbl`
--

CREATE TABLE IF NOT EXISTS `primdiagadmtdbl` (
`id` int(5) NOT NULL,
  `primdiagadmt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primdiagdbl`
--

CREATE TABLE IF NOT EXISTS `primdiagdbl` (
`id` int(5) NOT NULL,
  `diagnosis` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primdiagtlogdbl`
--

CREATE TABLE IF NOT EXISTS `primdiagtlogdbl` (
`id` int(5) NOT NULL,
  `primdiagtlog` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primssdbl`
--

CREATE TABLE IF NOT EXISTS `primssdbl` (
`id` int(5) NOT NULL,
  `primss` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pulcersrcdbl`
--

CREATE TABLE IF NOT EXISTS `pulcersrcdbl` (
`id` int(5) NOT NULL,
  `dt_ulcersrc` int(10) NOT NULL,
  `resident` int(5) NOT NULL,
  `ulcerstg` int(5) NOT NULL,
  `ulcersrc` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pulcerwrsdbl`
--

CREATE TABLE IF NOT EXISTS `pulcerwrsdbl` (
`id` int(5) NOT NULL,
  `dt_pulcerwrs` varchar(10) NOT NULL,
  `resident` int(5) NOT NULL,
  `ulcerstg_prev` int(5) NOT NULL,
  `ulcerstg_cur` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purposenhsdbl`
--

CREATE TABLE IF NOT EXISTS `purposenhsdbl` (
`id` int(5) NOT NULL,
  `purposenhs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `residentdbl`
--

CREATE TABLE IF NOT EXISTS `residentdbl` (
`id` int(5) NOT NULL,
  `resident` varchar(100) NOT NULL,
  `resident_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `translogdbl`
--

CREATE TABLE IF NOT EXISTS `translogdbl` (
`id` int(5) NOT NULL,
  `resident` varchar(100) NOT NULL,
  `purposenhs` int(5) NOT NULL,
  `admitfrom` int(5) NOT NULL,
  `pmtstat` int(5) NOT NULL,
  `dt_trans` varchar(10) NOT NULL,
  `trans_tod` varchar(10) NOT NULL,
  `clinician` int(5) NOT NULL,
  `nurse` int(5) NOT NULL,
  `primss` int(5) NOT NULL,
  `primdiag` int(5) NOT NULL,
  `trans_outc` int(5) NOT NULL,
  `transplan` int(5) NOT NULL,
  `snflenstay` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translogdbl`
--

INSERT INTO `translogdbl` (`id`, `resident`, `purposenhs`, `admitfrom`, `pmtstat`, `dt_trans`, `trans_tod`, `clinician`, `nurse`, `primss`, `primdiag`, `trans_outc`, `transplan`, `snflenstay`) VALUES
(1, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `transplandbl`
--

CREATE TABLE IF NOT EXISTS `transplandbl` (
`id` int(5) NOT NULL,
  `transplan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trans_outcdbl`
--

CREATE TABLE IF NOT EXISTS `trans_outcdbl` (
`id` int(5) NOT NULL,
  `trans_outc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ulcersrcdbl`
--

CREATE TABLE IF NOT EXISTS `ulcersrcdbl` (
`id` int(5) NOT NULL,
  `ulcersrc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ulcerstgdbl`
--

CREATE TABLE IF NOT EXISTS `ulcerstgdbl` (
`id` int(5) NOT NULL,
  `ulcerstg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admtfromdbl`
--
ALTER TABLE `admtfromdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admtwrontdcdbl`
--
ALTER TABLE `admtwrontdcdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliniciandbl`
--
ALTER TABLE `cliniciandbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fallsactpriodbl`
--
ALTER TABLE `fallsactpriodbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fallsinjurydbl`
--
ALTER TABLE `fallsinjurydbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fallslocationdbl`
--
ALTER TABLE `fallslocationdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fallslogdbl`
--
ALTER TABLE `fallslogdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fallsprtdbl`
--
ALTER TABLE `fallsprtdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medplandbl`
--
ALTER TABLE `medplandbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursedbl`
--
ALTER TABLE `nursedbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmtstatdbl`
--
ALTER TABLE `pmtstatdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primdiagadmtdbl`
--
ALTER TABLE `primdiagadmtdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primdiagdbl`
--
ALTER TABLE `primdiagdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primdiagtlogdbl`
--
ALTER TABLE `primdiagtlogdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primssdbl`
--
ALTER TABLE `primssdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulcersrcdbl`
--
ALTER TABLE `pulcersrcdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulcerwrsdbl`
--
ALTER TABLE `pulcerwrsdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purposenhsdbl`
--
ALTER TABLE `purposenhsdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residentdbl`
--
ALTER TABLE `residentdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translogdbl`
--
ALTER TABLE `translogdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transplandbl`
--
ALTER TABLE `transplandbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_outcdbl`
--
ALTER TABLE `trans_outcdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulcersrcdbl`
--
ALTER TABLE `ulcersrcdbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulcerstgdbl`
--
ALTER TABLE `ulcerstgdbl`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admtfromdbl`
--
ALTER TABLE `admtfromdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admtwrontdcdbl`
--
ALTER TABLE `admtwrontdcdbl`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliniciandbl`
--
ALTER TABLE `cliniciandbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fallsactpriodbl`
--
ALTER TABLE `fallsactpriodbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fallsinjurydbl`
--
ALTER TABLE `fallsinjurydbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fallslocationdbl`
--
ALTER TABLE `fallslocationdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fallslogdbl`
--
ALTER TABLE `fallslogdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fallsprtdbl`
--
ALTER TABLE `fallsprtdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medplandbl`
--
ALTER TABLE `medplandbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nursedbl`
--
ALTER TABLE `nursedbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmtstatdbl`
--
ALTER TABLE `pmtstatdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primdiagadmtdbl`
--
ALTER TABLE `primdiagadmtdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primdiagdbl`
--
ALTER TABLE `primdiagdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primdiagtlogdbl`
--
ALTER TABLE `primdiagtlogdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primssdbl`
--
ALTER TABLE `primssdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pulcersrcdbl`
--
ALTER TABLE `pulcersrcdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pulcerwrsdbl`
--
ALTER TABLE `pulcerwrsdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purposenhsdbl`
--
ALTER TABLE `purposenhsdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `residentdbl`
--
ALTER TABLE `residentdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `translogdbl`
--
ALTER TABLE `translogdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transplandbl`
--
ALTER TABLE `transplandbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trans_outcdbl`
--
ALTER TABLE `trans_outcdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ulcersrcdbl`
--
ALTER TABLE `ulcersrcdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ulcerstgdbl`
--
ALTER TABLE `ulcerstgdbl`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
