-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 02:19 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `check_url`
--

CREATE TABLE `check_url` (
  `url_id` int(11) NOT NULL,
  `check_url` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_url`
--

INSERT INTO `check_url` (`url_id`, `check_url`) VALUES
(40, 'http://localhost:8084/PocketDesk/VerifyUser.jsp?email=mickey.95thakur@gmail.com&nw_name=Siddharth_Network'),
(48, 'http://localhost:8084/PocketDesk/VerifyUser.jsp?email=mickey.95thakur@gmail.com&nw_name=Test'),
(42, 'http://localhost:8084/PocketDesk/VerifyUser.jsp?email=priyanka.199thakur@gmail.com&nw_name=Siddharth_Network'),
(41, 'http://localhost:8084/PocketDesk/VerifyUser.jsp?email=rama@gmail.com&nw_name=Siddharth_Network'),
(47, 'http://localhost:8084/PocketDesk/VerifyUser.jsp?email=sid.95thakur@gmail.com&nw_name=mickeynetwork'),
(43, 'http://localhost:8084/PocketDesk/VerifyUser.jsp?email=sid.95thakur@gmail.com&nw_name=mickeynetworkh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `check_url`
--
ALTER TABLE `check_url`
  ADD PRIMARY KEY (`url_id`),
  ADD UNIQUE KEY `check_url` (`check_url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `check_url`
--
ALTER TABLE `check_url`
  MODIFY `url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
