-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 11, 2020 at 06:29 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `doc_cat`
--

DROP TABLE IF EXISTS `doc_cat`;
CREATE TABLE IF NOT EXISTS `doc_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_cat`
--

INSERT INTO `doc_cat` (`id`, `cat_name`) VALUES
(1, 'Personal Documents'),
(2, 'Canadian Entity Documents'),
(3, 'Current Entity Documents');

-- --------------------------------------------------------

--
-- Table structure for table `lu_documents`
--

DROP TABLE IF EXISTS `lu_documents`;
CREATE TABLE IF NOT EXISTS `lu_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_catID` int(11) NOT NULL,
  `document_name` varchar(75) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign key` (`doc_catID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lu_documents`
--

INSERT INTO `lu_documents` (`id`, `doc_catID`, `document_name`) VALUES
(1, 1, 'Passport'),
(2, 1, 'Photo'),
(3, 2, 'North American Clients List'),
(4, 2, 'Potential Clients in North America'),
(5, 2, 'Business Letters Support'),
(6, 2, 'VDI Team Development Exercise'),
(7, 2, 'Team Group Photo'),
(8, 3, 'Certificate of Incorporation'),
(9, 3, 'Technology and Intellectual Property'),
(10, 3, 'Vendor Contracts'),
(11, 3, 'Lease Contracts'),
(12, 3, 'Pending Cases and Litigations'),
(13, 3, 'Minutes of Meetings');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lu_documents`
--
ALTER TABLE `lu_documents`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`doc_catID`) REFERENCES `doc_cat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
