-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2018 at 03:08 PM
-- Server version: 5.6.36
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matchgame`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `IDmbr` int(6) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(15) NOT NULL,
  `pswd` varchar(256) NOT NULL,
  `joinTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`IDmbr`, `firstName`, `lastName`, `email`, `user`, `pswd`, `joinTime`) VALUES
(1, 'Brian', 'McClain', 'brianmccln@yahoo.com', 'BrianM', 'abc', '2018-06-05 19:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `IDscore` int(5) NOT NULL,
  `mbrID` int(5) NOT NULL,
  `score` int(6) NOT NULL,
  `seconds` int(5) NOT NULL,
  `attempts` int(4) NOT NULL,
  `matches` int(3) NOT NULL,
  `average` float NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`IDscore`, `mbrID`, `score`, `seconds`, `attempts`, `matches`, `average`, `dateTime`) VALUES
(1, 1, 12345, 135, 36, 12, 0.333, '2018-06-05 19:32:35'),
(2, 1, 7414, 24, 7, 3, 0.429, '2018-06-19 18:39:57'),
(3, 1, 1920, 51, 13, 3, 0.231, '2018-06-19 19:32:06'),
(4, 1, 2958, 51, 15, 4, 0.267, '2018-06-19 19:34:19'),
(5, 1, 40500, 7, 4, 3, 0.75, '2018-06-19 19:52:00'),
(6, 1, 144000, 2, 3, 3, 1, '2018-06-19 19:56:30'),
(7, 1, 75000, 17, 6, 3, 0.5, '2018-06-19 19:58:42'),
(8, 1, 12706, 16, 6, 3, 0.5, '2018-06-19 20:28:04'),
(9, 1, 42954, 20, 23, 12, 0.522, '2018-06-20 03:24:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`IDmbr`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`IDscore`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `IDmbr` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `IDscore` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
