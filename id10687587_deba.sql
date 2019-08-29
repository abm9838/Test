-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2019 at 04:46 PM
-- Server version: 10.3.16-MariaDB
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
-- Database: `id10687587_deba`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `fname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phnumber` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `doby` int(5) NOT NULL,
  `dobm` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dobd` int(5) NOT NULL,
  `loc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bg` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gen` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `email`, `phnumber`, `doby`, `dobm`, `dobd`, `loc`, `bg`, `gen`) VALUES
('Debasish', 'debasish.kisan@gmail.com', '1234567890', 2000, '10', 5, 'rorkels', 'A-', 'Male'),
('Debasish', 'debasish.kisan@gmail.com', '09853694959', 1980, 'jan', 1, 'fdfefe', 'B+', 'Male'),
('Hdhehejs', 'djdhdjdn@gmail.com', '845484694', 1985, 'Aug', 7, 'Gsbsbsbs', 'O-', 'Male'),
('Ffg', 'vgggghb@gg.com', '555588', 1983, 'june', 8, 'Gyyygf', 'AB-', 'Female'),
('Ffg', 'vgggghb@gg.com', '555588', 1983, 'june', 8, 'Gyyygf', 'AB-', 'Female'),
('abhay', 'xyz@asf.com', '65465654646', 1988, 'june', 13, 'hyderabad', 'A+', 'Male'),
('abhay', 'xyz@asf.com', '6546565464', 1988, 'june', 13, 'hyderabad', 'A+', 'Male'),
('Debasish', 'debasish.kisan@gmail.com', '09853694959', 1981, 'mar', 5, 'Rourkela', 'B-', 'Male'),
('Ffg', 'vgggghb@gg.com', '5555555', 1982, 'may', 6, 'Gyyygf', 'A+', 'Female'),
('dggd', 'subhashreesahoo112@nn', '432424', 1990, 'Dec', 13, 'gfhgfh', 'A+', 'Male'),
('Debasish', 'debasish.kisan@gmail.com', '09853694959', 1983, 'Aug', 9, 'Rourkela', 'AB-', 'Male'),
('Hd', 'hsh@gh.com', '8852336980', 1982, 'apr', 5, 'Gsh', 'A+', 'Female'),
('xyz', 'xyz@gmail.com', '1212121212', 1991, 'Sep', 15, 'hyderabad', 'AB+', 'Male'),
('Test1', 'xyz@gmail.com', '1212121212', 1984, 'mar', 13, 'Hyderabad', 'B-', 'Male'),
('Hd', 'vhhgf@bhgg', '55588', 1983, 'june', 6, 'Gguuh', 'AB+', 'Female');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
