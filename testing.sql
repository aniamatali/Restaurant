-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 25, 2017 at 11:57 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`) VALUES
(135, 'Barbecue'),
(136, 'starbucks'),
(137, 'harbucks'),
(138, 'dog'),
(139, 'efij');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `hours` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `cuisine_id`, `hours`) VALUES
(32, 'Sleep', 43, '0000-00-00'),
(33, 'drink', 46, '0000-00-00'),
(34, 'Homework', 53, '0000-00-00'),
(35, 'Study', 53, '0000-00-00'),
(36, 'study', 54, '0000-00-00'),
(37, 'aaaa', 66, '0000-00-00'),
(38, 'ccccc', 66, '0000-00-00'),
(42, 'aifjoafj', 67, '0000-00-00'),
(43, 'Study', 86, '0000-00-00'),
(44, 'Chores', 86, '0000-00-00'),
(45, 'Doghouse', 86, '0000-00-00'),
(46, 'iewfjoewifj', 86, '0000-00-00'),
(48, 'Homework', 87, '2010-12-01'),
(49, 'Homework', 89, '2010-12-01'),
(50, 'Eat', 89, '0000-00-00'),
(51, 'hhhh', 90, '0000-00-00'),
(52, 'hhhh', 90, '2017-12-12'),
(53, 'homework', 91, '2000-01-02'),
(54, 'fff', 92, '2017-10-11'),
(55, 'aaa', 92, '2017-12-27'),
(56, 'iqejwii', 92, '2017-01-04'),
(57, 'klkl', 92, '2017-10-03'),
(58, 'TEsting', 95, '2017-10-25'),
(59, 'oiy', 0, 'oiy'),
(60, 'Blah Blah', 0, '300'),
(61, 'Blah Blah', 0, '300'),
(62, 'Blah Blah', 0, '300'),
(63, 'Blah Blah', 0, '300'),
(64, 'Blah Blah', 0, '300'),
(65, 'Blah Blah', 0, '300'),
(66, 'Blah Blah', 0, '300'),
(67, 'Blah Blah', 0, '300'),
(68, 'Blah Blah', 0, '300'),
(69, 'Blah Blah', 0, '300'),
(70, 'Blah Blah', 0, '300'),
(71, 'Blah Blah', 0, '300'),
(72, 'aaaa', 0, ''),
(73, 'aaaaaaa', 0, ''),
(74, 'coffee', 0, 'blah'),
(75, 'sdsdvsdv', 0, ''),
(76, 'sdf', 0, 'sdf'),
(77, 'asd', 0, 'sd'),
(78, 'asd', 0, 'sd'),
(79, 'harbucks', 0, '300'),
(80, 'xxxxxxx', 0, 'xxxxx'),
(81, 'aaaaaaaaa', 0, 'aaaaaaaaa'),
(82, 'aaaaaaaaa', 0, 'aaaaaaaaa'),
(83, 'aaaaaaaaa', 0, 'aaaaaaaaa'),
(84, 'aaaaaaaaa', 0, 'aaaaaaaaa'),
(85, 'aaaaaaaaa', 0, 'aaaaaaaaa'),
(86, 'asd', 0, 'asdasdasd'),
(87, 'asd', 0, 'asdasdasd'),
(88, 'asd', 0, 'asdasdasd'),
(89, 'asd', 0, 'asdasdasd'),
(90, 'qw', 0, 'qw'),
(91, 'qw', 0, 'qw'),
(92, 'qw', 0, 'qw'),
(93, 'qw', 0, 'qw'),
(94, 'qw', 0, 'qw'),
(95, 'qw', 0, 'qw'),
(96, 'qw', 0, 'qw'),
(97, 'qw', 0, 'qw'),
(98, 'qw', 0, 'qw'),
(99, 'qw', 0, 'qw'),
(100, 'qw', 0, 'qw'),
(101, 'qw', 0, 'qw'),
(102, 'qw', 0, 'qw'),
(103, 'qw', 0, 'qw'),
(104, 'qw', 0, 'qw'),
(105, 'qw', 0, 'qw'),
(106, 'qw', 0, 'qw'),
(107, 'qw', 137, 'qw'),
(108, 'uh oh', 137, 'afasdfasf'),
(109, 'French Restaurant', 0, '9:00pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
