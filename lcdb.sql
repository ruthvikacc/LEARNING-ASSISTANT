-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 07:21 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lcdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploadfile`
--

CREATE TABLE `uploadfile` (
  `id` int(10) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadfile`
--

INSERT INTO `uploadfile` (`id`, `filename`, `type`) VALUES
(0, '16564-Unit-3.pdf', 'application/pdf'),
(0, '82690-HIVE.pdf', 'application/pdf'),
(0, '27914-1467602511158.jpg', 'image/jpeg'),
(0, '68097-WIT-IV-I-CSE-1-MS-Week-2.pdf', 'application/pdf'),
(0, '1. MS Academic Plan & Model Question Paper.pdf', 'application/pdf'),
(0, 'v1.mp4', 'video/mp4'),
(0, 'globe.mp4', 'video/mp4'),
(0, 'coping skills.png', 'image/png'),
(0, 'math image.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `school` varchar(50) NOT NULL,
  `is_approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `password`, `contact`, `school`, `is_approved`) VALUES
('swetha', 'swetha363.sl@gmail.com', '1234', '9010438825', 'school 1', 1),
('shriya', 'vshriya@gmail.com', '12345', '9010438829', 'School 4', 0),
('KANNA', 'ruthv@gmail.com', '7890', '9865321478', 'Govt High School,Himayat Nagar, Hyderabad', 0),
('Soukya', 's@gmaul.com', '12345', '9865321478', 'Govt High School,Himayat Nagar, Hyderabad', 0),
('Ruthvika', 'ruth@gmail.com', 'Rut@123', '7075486456', 'Govt High School,panjagutta, Hyderabad', 0),
('sou', 'sou@gmail.com', '1234', '7796541230', 'Govt High School,Himayat Nagar, Hyderabad', 0),
('John', 'John@gmail.com', 'qwerty', '7796541230', 'Govt High School,pragathi nagar, Hyderabad', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
