-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 03:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataleakage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `askkey`
--

CREATE TABLE `askkey` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `k` varchar(38) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `askkey`
--

INSERT INTO `askkey` (`id`, `user`, `filename`, `status`, `reciver`, `k`) VALUES
(25, 'a1', 'data3', 'yes', 'admin', 'key3'),
(26, 'a1', 'data4', 'yes', 'admin', 'key4'),
(27, 'a3', 'data1', 'yes', 'admin', 'key1'),
(28, 'a5', 'data1', 'yes', 'admin', 'key1'),
(29, 'a2', 'data3', 'yes', 'admin', 'key3'),
(30, 'a4', 'data4', 'yes', 'admin', 'key4');

-- --------------------------------------------------------

--
-- Table structure for table `leaker`
--

CREATE TABLE `leaker` (
  `id` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `probability` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaker`
--

INSERT INTO `leaker` (`id`, `name`, `probability`) VALUES
('a1', 'user1', 0),
('a2', 'user2', 0),
('a3', 'user3', 0),
('a4', 'user4', 0),
('a5', 'user5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `sender`, `email`, `reciver`, `msg`) VALUES
(20, 'admin', 'a3@gmail.com', 'a3', 'Key sent'),
(24, 'admin', 'a5@gmail.com', 'a5', 'Key as been sent'),
(27, 'admin', 'a1@gmail.com', 'a1', 'test'),
(28, 'admin', 'a2@gmail.com', 'a2', 'Key for data 3 sent'),
(29, 'admin', 'a4@gmail.com', 'a4', 'Test message on localhost');

-- --------------------------------------------------------

--
-- Table structure for table `presentation`
--

CREATE TABLE `presentation` (
  `subject` varchar(50) NOT NULL,
  `Topic` text NOT NULL,
  `fname` varchar(100) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presentation`
--

INSERT INTO `presentation` (`subject`, `Topic`, `fname`, `time`) VALUES
('data1', 'key1', 'T1.txt', '2021-11-29'),
('data2', 'key2', 'T2.txt', '2021-11-29'),
('data3', 'key3', 'T3.txt', '2021-11-29'),
('data4', 'key4', 'T4.txt', '2021-11-29'),
('data5', 'key5', 'T5.txt', '2021-11-29'),
('data6', 'key6', 'T6.txt', '2021-11-29'),
('data7', 'key7', 'T7.txt', '2021-11-30'),
('data8', 'key8', 'T8.txt', '2022-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `subject` varchar(50) NOT NULL,
  `Topic` text NOT NULL,
  `sendto` varchar(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`subject`, `Topic`, `sendto`, `time`) VALUES
('data3', 'key3', 'a1', '2021-11-29'),
('data1', 'key1', 'a3', '2021-11-29'),
('data4', 'key4', 'a1', '2021-11-29'),
('data1', 'key1', 'a5', '2021-11-30'),
('data3', 'key3', 'a2', '2021-12-11'),
('data4', 'key4', 'a4', '2022-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `userid` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `userid`, `password`, `emailid`) VALUES
('user1', 'a1', 'a1P', 'a1@gmail.com'),
('user2', 'a2', 'a2P', 'a2@gmail.com'),
('user3', 'a3', 'a3P', 'a3@gmail.com'),
('user4', 'a4', 'a4P', 'a4@gmail.com'),
('user5', 'a5', 'a5P', 'a5@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `askkey`
--
ALTER TABLE `askkey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaker`
--
ALTER TABLE `leaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `askkey`
--
ALTER TABLE `askkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
