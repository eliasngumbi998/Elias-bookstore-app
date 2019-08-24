-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 24, 2019 at 05:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elias_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_records_store`
--

CREATE TABLE `book_records_store` (
  `Book_No` bigint(20) NOT NULL,
  `Book` varchar(150) NOT NULL,
  `Price` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_records_store`
--

INSERT INTO `book_records_store` (`Book_No`, `Book`, `Price`) VALUES
(1, 'C++ for Starters', '125.50'),
(2, 'Java AWT Package', '178.50'),
(3, 'Visual Basic 2010 Ultimate Manual', '196.50'),
(4, 'Working with Crystal Reports in Visual Basic 2010', '186.75'),
(5, 'SQL Server 2008 R2 With Enma', '198.00'),
(6, 'Java Server Page with Netbeans', '178.50'),
(7, 'Active Server Page from Scratch', '172.00'),
(8, 'PHP with Elias', '165.00'),
(9, 'MySQL and PHP in 24Hours with Elias', '189.00'),
(10, 'Adobe PhotoShop CS5: Web-Design', '145.25'),
(11, 'Leraning Python Tutorials with Elias', '250.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_records_store`
--
ALTER TABLE `book_records_store`
  ADD PRIMARY KEY (`Book_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_records_store`
--
ALTER TABLE `book_records_store`
  MODIFY `Book_No` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
