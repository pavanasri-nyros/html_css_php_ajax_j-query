-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2020 at 01:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpform`
--

-- --------------------------------------------------------

--
-- Table structure for table `php_form`
--

CREATE TABLE `php_form` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(22) NOT NULL,
  `dob` date NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `php_form`
--

INSERT INTO `php_form` (`id`, `fname`, `lname`, `email`, `dob`, `age`) VALUES
(1, 'pavna', 'sri', 'pari@gmail.com', '2020-06-10', 0),
(2, 'pavan', 'sri', 'asdf@gmail.com', '2020-06-23', 0),
(3, 'pavanasri', 'vinaya', 'paripalepu@gmail.com', '1998-01-18', 0),
(4, 'pavana sri', 'vinaya palepu', 'paripalepu@gmail.com', '1998-01-19', 0),
(5, 'laxmi', 'sri', 'parikirikar@gmail.com', '2020-06-16', 0),
(6, 'pavana', 'sri', 'asdf@gmail.com', '2020-06-16', 0),
(7, 'santhi', 'sri', 'maky@gmail.com', '2020-06-29', 0),
(8, 'pavnaaas', 'asdf', 'asdf@gmail.com', '2020-06-23', 0),
(9, 'asf', 'fb', 'sdf@gmail.com', '2020-06-22', 0),
(10, 'asf', 'fb', 'sdf@gmail.com', '2020-06-22', 0),
(11, 'pavn', 'xcvx', 'asdf@gmail.com', '2020-06-15', 0),
(12, '', '', '', '0000-00-00', 0),
(13, 'pavanasdf', 'asdf', 'asdf@gmail.com', '2020-06-24', 0),
(14, 'pavanasdf', 'asdf', 'asdf@gmail.com', '2020-06-24', 0),
(15, '', '', '', '0000-00-00', 0),
(16, 'pavanasdf', 'asdf', 'asdf@gmail.com', '2020-06-24', 0),
(17, '', '', '', '0000-00-00', 0),
(18, '', '', '', '0000-00-00', 0),
(19, '', '', '', '0000-00-00', 0),
(20, '', '', '', '0000-00-00', 0),
(21, '', '', '', '0000-00-00', 0),
(22, '', '', '', '0000-00-00', 0),
(23, '', '', '', '0000-00-00', 0),
(24, 'adfg', 'asdf', 'bau@gmail.com', '2020-06-16', 0),
(25, 'mvcn', 'xcvn', 'sdf@gmail.com', '2020-06-15', 0),
(26, 'vxcv', 'zv', 'maky@gmail.com', '2020-06-23', 0),
(27, 'gsd', 'sdfg', 'maky@gmail.com', '2020-06-01', 0),
(28, 'sdfg', 'hfdsg', 'maky@gmail.com', '2020-06-23', 0),
(29, 'dc', 'zxcv', 'sdf@gmail.com', '2020-06-22', 0),
(30, 'asdf', 'sdg', 'sdfg', '2020-06-15', 0),
(31, 'sdfg', 'srt', 'parikirikar@gmail.com', '2020-06-29', 0),
(32, 'cvxn', 'rh', 'maky@gmail.com', '2020-06-15', 0),
(33, 'asdf', 'v c', 're@gmail.com', '2020-06-14', 0),
(34, 'fdg', 'sdfg', 'maky@gmail.com', '2020-06-22', 0),
(35, 'fgn', 'dsfg', 'sdf@gmail.com', '2020-06-08', 0),
(36, 'pavana', 'vinaya palepu', 'parikirikar@gmail.com', '2020-06-23', 0),
(37, 'ssdfg', 'asdf', 'sadf@gmail.com', '2020-06-16', 0),
(38, 'sa', 'asd', 'paripalepu@gmail.com', '2020-06-15', 0),
(39, 'asdfasdg', 'asdf', 'asdf@gmail.com', '2020-06-17', 0),
(40, 'sdfkjdsb', 'asdfj', 'sdf@gmail.com', '2020-06-16', 0),
(41, 'pavana', 'vinaya palepu', 'sdf@gmail.com', '2020-06-15', 0),
(42, 'jdhfkajsd', '.ajsdbf', 'sdf@gmail.com', '2020-06-24', 0),
(43, 'jkadb', 'kabjgd', 'maky@gmail.com', '2020-06-17', 0),
(44, 'sdfg', 'sri', 'sdf@gmail.com', '2020-06-15', 0),
(45, 'sdfg', 'vinaya palepu', 'paripalepu@gmail.com', '2020-06-08', 0),
(46, 'laxmi', 'vinaya palepu', 'sdf@gmail.com', '2020-06-17', 0),
(47, 'sdfg', 'vinaya palepu', 'paripalepu@gmail.com', '2020-06-15', 0),
(48, 'pavanasdf', 'vinaya palepu', 'sdf@gmail.com', '2020-06-16', 0),
(49, 'sjdfkasd', 'akdsjf', 'ksajdf', '0000-00-00', 0),
(50, 'pafs', 'dnv', 'paripalepu@gmail.com', '2020-06-14', 0),
(51, 'asdfasdg', 'vinaya palepu', 'paripalepu@gmail.com', '2020-06-16', 0),
(52, 'sdfg', 'sri', 'parikirikar@gmail.com', '2020-06-30', 0),
(53, 'sdfg', 'sri', 'parikirikar@gmail.com', '2020-06-24', 0),
(54, 'jgsdakv ', 'ffd', 'jrfgver', '2020-06-23', 0),
(55, 'joker', 'sad', 'paripalepu@gmail.com', '2020-06-18', 0),
(56, 'pavana', 'sri', 'paripalepu@gmail.com', '2020-06-30', 0),
(57, 'laxmi', 'vinaya palepu', 'parikirikar@gmail.com', '2020-06-15', 0),
(58, 'pavanasdf', 'fb', 'sdfasdf@gmail.com', '2020-06-16', 0),
(59, 'sri', 'vinaya', 'sdfasdf@gmail.com', '2020-06-17', 0),
(60, 'pavanasdf', 'fb', 'maky@gmail.com', '2020-06-23', 0),
(61, 'asdf', 'fb', 'parikirikar@gmail.com', '2020-06-16', 0),
(62, 'pavana', 'fb', 'maky@gmail.com', '2020-06-23', 0),
(63, 'pavanasdf', 'vinaya palepu', 'paripalepu@gmail.com', '2020-06-15', 0),
(64, 'sdfg', 'fb', 'parikirikar@gmail.com', '2020-06-09', 0),
(65, 'asdf', 'fb', 'sdf@gmail.com', '2020-06-02', 0),
(66, 'joker', 'sad', 'paripalepu@gmail.com', '2020-06-16', 0),
(67, 'sruthi', 'vinaya palepu', 'paripalepu@gmail.com', '1998-01-18', 0),
(68, 'dujatha', 'vs', 'sdf@gmail.com', '2020-06-23', 0),
(69, 'fsad', 'vzxvxc', 'sdf@gmail.com', '2020-06-16', 0),
(70, 'pavana', 'vinaya', 'parikirikar@gmail.com', '2020-06-17', 0),
(71, 'sdfg', 'vinaya palepu', 'asdf@gmail.com', '1999-05-18', 21),
(72, 'pavana ', 'sri', 'sdf@gmail.com', '2020-06-17', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `php_form`
--
ALTER TABLE `php_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `php_form`
--
ALTER TABLE `php_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
