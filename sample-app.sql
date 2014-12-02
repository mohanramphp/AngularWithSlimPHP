-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2014 at 05:57 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sample-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2228 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `email`, `phone`, `address`, `created_date`, `updated_date`, `last_modified_date`) VALUES
(1, 'Mohan Ram', 'mohanramtest@gmail.com', '9672317645', '10 Ramakrishna St,\r\nChromepet,\r\nChennai - 625531.', '2014-08-01 00:00:00', '2014-08-03 00:00:00', '2014-08-03 19:10:42'),
(2, 'Ram Prasad', 'ramprasadtest@gmail.com', '9674512874', '20 Krishna St,\r\nSaidapet,\r\nChennai - 625531.', '2014-08-02 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:05:56'),
(3, 'Vikram', 'vickramtest@gmail.com', '9672349845', '20 Forest Road,\r\nBaglamedu,\r\nTheni', '2013-10-16 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:10:52'),
(4, 'Ravi', 'ravitest@gmail.com', '9612398457', '45 Gandhi St,\r\nKharadi,\r\nPune.', '2014-08-21 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:10:57'),
(5, 'Gokul', 'gokultest@gmail.com', '674983679', '20 prabhu St,\r\nPatel Road,\r\nNew Delhi.', '2014-08-02 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:05:56'),
(6, 'Ram Mouly', 'rammoulytest@gmail.com', '9674234876', '20 Basin Bridge St,\r\nFort Station,\r\nChennai. ', '2014-08-02 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:10:15'),
(7, 'Vanitha', 'vanithatest@gmail.com', '6738924567', '20 Kamaraj St,\r\nViman Nagar,\r\nPune.', '2014-05-15 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:11:02'),
(8, 'Ramesh', 'rameshtest@gmail.com', '8345612356', '20 Jesus Road,\r\nPatel Nagar,\r\nChennai.', '2014-06-18 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:11:06'),
(9, 'Raja', 'Rajatest@gmail.com', '6734589234', '20 Samala St,\r\nGandhi Nagar,\r\nMumbai.', '2013-06-11 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:11:14'),
(10, 'Goshal', 'goshaltest@gmail.com', '9348237892', '20 Anna St,\r\nSethu Nagar,\r\nMadurai', '2014-08-13 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:11:27'),
(11, 'Gopal', 'gopaltest@gmail.com', '9674567561', '20 Mount Road,\r\nChennai - 600044.', '2013-10-23 00:00:00', '2014-08-01 00:00:00', '2014-08-03 19:11:24'),
(12, 'Mohan Ram', 'mohanramtest@gmail.com', '9672317645', '10 Ramakrishna St,\r\nChromepet,\r\nChennai - 625531.', '2014-08-01 00:00:00', '2014-08-03 00:00:00', '2014-08-03 13:40:42'),
(13, 'Ram Prasad', 'ramprasadtest@gmail.com', '9674512874', '20 Krishna St,\r\nSaidapet,\r\nChennai - 625531.', '2014-08-02 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:35:56'),
(14, 'Vikram', 'vickramtest@gmail.com', '9672349845', '20 Forest Road,\r\nBaglamedu,\r\nTheni', '2013-10-16 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:40:52'),
(15, 'Ravi', 'ravitest@gmail.com', '9612398457', '45 Gandhi St,\r\nKharadi,\r\nPune.', '2014-08-21 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:40:57'),
(16, 'Gokul', 'gokultest@gmail.com', '674983679', '20 prabhu St,\r\nPatel Road,\r\nNew Delhi.', '2014-08-02 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:35:56'),
(17, 'Ram Mouly', 'rammoulytest@gmail.com', '9674234876', '20 Basin Bridge St,\r\nFort Station,\r\nChennai. ', '2014-08-02 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:40:15'),
(18, 'Vanitha', 'vanithatest@gmail.com', '6738924567', '20 Kamaraj St,\r\nViman Nagar,\r\nPune.', '2014-05-15 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:41:02'),
(19, 'Ramesh', 'rameshtest@gmail.com', '8345612356', '20 Jesus Road,\r\nPatel Nagar,\r\nChennai.', '2014-06-18 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:41:06'),
(20, 'Raja', 'Rajatest@gmail.com', '6734589234', '20 Samala St,\r\nGandhi Nagar,\r\nMumbai.', '2013-06-11 00:00:00', '2014-08-01 00:00:00', '2014-08-03 13:41:14');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
