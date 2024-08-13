-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 10, 2024 at 11:28 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
CREATE TABLE IF NOT EXISTS `bids` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(60) NOT NULL,
  `prod_id` varchar(250) NOT NULL,
  `category` varchar(255) NOT NULL,
  `staff_id` varchar(250) NOT NULL,
  `bid_amount` float(20,2) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`t_id`)
); 

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`t_id`, `product_name`, `prod_id`, `category`, `staff_id`, `bid_amount`, `status`, `date_created`) VALUES
(55, 'Electric Stove ', '4', 'Appliances', '12222', 3000.10, NULL, '2024-04-15 12:27:01'),
(54, 'Toyota Hilux', '1', 'Vehicles', '12222', 56000.60, NULL, '2024-04-15 12:24:12'),
(48, 'LG TV 3', '10', 'Appliances', '111111', 5004.00, NULL, '2024-03-27 12:49:53'),
(112, 'LG TV', '5', 'Appliances', '12222', 5003.00, NULL, '2024-07-03 13:05:38'),
(113, 'LG TV', '5', 'Appliances', '111111', 5004.00, NULL, '2024-07-03 13:07:53'),
(114, 'LG TV', '5', 'Appliances', '111111', 5005.00, NULL, '2024-07-03 13:43:38'),
(108, 'LG TV', '5', 'Appliances', '12222', 4000.00, NULL, '2024-06-06 23:18:30'),
(109, 'LG TV', '5', 'Appliances', '111111', 5000.00, NULL, '2024-07-01 23:00:40'),
(110, 'LG TV', '5', 'Appliances', '12222', 5001.00, NULL, '2024-07-03 13:04:14'),
(111, 'LG TV', '5', 'Appliances', '12222', 5002.00, NULL, '2024-07-03 13:04:25'),
(56, 'LG TV', '5', 'Appliances', '12222', 3400.00, NULL, '2024-04-15 21:51:39'),
(57, 'Toyota Hilux', '1', 'Vehicles', '111111', 345666.00, NULL, '2024-04-15 23:43:15'),
(107, 'LG TV', '5', 'Appliances', '12222', 3400.00, NULL, '2024-06-06 23:18:18'),
(106, 'LG TV', '5', 'Appliances', '12222', 3900.00, NULL, '2024-06-06 23:16:42'),
(105, 'LG TV', '5', 'Appliances', '12222', 3800.00, NULL, '2024-06-06 23:16:32'),
(104, 'LG TV', '5', 'Appliances', '12222', 3800.00, NULL, '2024-06-06 23:15:41'),
(103, 'LG TV', '5', 'Appliances', '12222', 3600.00, NULL, '2024-06-06 23:13:45'),
(102, 'LG TV', '5', 'Appliances', '12222', 3500.40, NULL, '2024-06-06 23:11:59'),
(101, 'LG TV', '5', 'Appliances', '12222', 3500.10, NULL, '2024-06-06 23:11:43'),
(100, 'LG TV', '5', 'Appliances', '12222', 3500.00, NULL, '2024-06-06 23:11:13'),
(99, 'LG TV', '5', 'Appliances', '12222', 3000.00, NULL, '2024-06-06 23:07:50'),
(98, 'LG TV', '5', 'Appliances', '12222', 3000.00, NULL, '2024-06-06 23:06:48'),
(97, 'LG TV', '5', 'Appliances', '12222', 3400.00, NULL, '2024-06-06 23:06:00'),
(96, 'LG TV', '5', 'Appliances', '12222', 3499.00, NULL, '2024-06-06 23:05:47'),
(95, 'LG TV', '5', 'Appliances', '111111', 3500.00, NULL, '2024-06-06 23:03:27'),
(94, 'LG TV', '5', 'Appliances', '111111', 3200.00, NULL, '2024-06-06 23:03:07'),
(77, 'Nissan Gtr', '3', 'Vehicles', '111111', 46456.09, NULL, '2024-04-16 00:05:40'),
(76, 'Nissan Gtr', '3', 'Vehicles', '12222', 46456.08, NULL, '2024-04-16 00:03:13'),
(75, 'Nissan Gtr', '3', 'Vehicles', '111111', 46456.01, NULL, '2024-04-16 00:02:10'),
(93, 'Lg Tv 4', '13', 'Appliances', '12222', 3002.00, NULL, '2024-04-25 12:09:34'),
(92, 'Lg Tv 4', '13', 'Appliances', '111111', 3001.00, NULL, '2024-04-25 12:08:34'),
(91, 'Hp Pavilion', '2', 'Laptops', '111111', 5000.00, NULL, '2024-04-16 08:46:44'),
(115, 'LG TV', '5', 'Appliances', '111111', 5006.00, NULL, '2024-07-03 13:43:47'),
(116, 'LG TV', '5', 'Appliances', '12222', 6000.00, NULL, '2024-07-03 13:49:22'),
(117, 'LG TV', '5', 'Appliances', '111111', 6100.00, NULL, '2024-07-04 00:50:15'),
(118, 'LG TV', '5', 'Appliances', '12222', 6200.00, NULL, '2024-07-04 17:25:06'),
(119, 'LG TV', '5', 'Appliances', '111111', 6700.00, NULL, '2024-07-04 19:50:25'),
(120, 'LG TV', '5', 'Appliances', '12222', 987456.00, NULL, '2024-07-05 08:50:22'),
(121, 'School Bus', '14', 'Vehicles', '12222', 79799800.00, NULL, '2024-07-05 09:08:32'),
(122, 'School Bus', '14', 'Vehicles', '111111', 799798005334016.00, NULL, '2024-07-05 09:13:15'),
(123, 'LG TV', '5', 'Appliances', '111111', 1234567.00, NULL, '2024-07-05 09:13:36'),
(134, 'Try Product', '20', 'Machines', '111111', 4000.00, NULL, '2024-08-09 20:22:42'),
(130, 'Test Product 2', '15', 'TEST', '12222', 1234.00, NULL, '2024-07-05 13:53:35'),
(131, 'Elctric Stove', '17', 'product test', '12222', 3000.00, NULL, '2024-07-05 14:45:13'),
(132, 'Samsung TV', '7', 'Appliances', '12222', 4500.00, NULL, '2024-07-12 09:33:51'),
(135, 'Try Product', '20', 'Machines', '12222', 5000.00, NULL, '2024-08-09 20:23:39'),
(136, 'Washing Machine', '19', 'Machines', '12222', 2000.00, NULL, '2024-08-09 20:24:43'),
(137, 'Try Product', '20', 'Machines', '111111', 6000.00, NULL, '2024-08-09 20:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `bids_archive`
--

DROP TABLE IF EXISTS `bids_archive`;
CREATE TABLE IF NOT EXISTS `bids_archive` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(60) NOT NULL,
  `staff_name` varchar(60) NOT NULL,
  `bid_amount` float(20,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`t_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `T_id` int NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(20) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  PRIMARY KEY (`T_id`)
) ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`T_id`, `cat_id`, `cat_name`) VALUES
(1, 'CAT001', 'Vehicles'),
(2, 'CAT002', 'Mobile Phones'),
(3, 'CAT003', 'Laptops'),
(4, 'CAT004', 'Appliances'),
(5, 'CAT005', 'Desktop Computers'),
(6, 'CAT100', 'TEST'),
(7, 'cat 009', 'product test'),
(8, 'CAT101', 'Machines');

-- --------------------------------------------------------

--
-- Table structure for table `categories_archive`
--

DROP TABLE IF EXISTS `categories_archive`;
CREATE TABLE IF NOT EXISTS `categories_archive` (
  `T_id` int NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(20) NOT NULL,
  `cat_name` int NOT NULL,
  PRIMARY KEY (`T_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `T_id` int NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(20) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_bid` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `start_bid_time` datetime NOT NULL,
  `end_bid_time` datetime NOT NULL,
  `img_fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`T_id`)
) ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`T_id`, `prod_id`, `prod_name`, `cat_name`, `description`, `start_bid`, `status`, `start_bid_time`, `end_bid_time`, `img_fname`) VALUES
(13, 'TH550', 'Lg Tv 4', 'Appliances', 'Slightly Used', 3000.00, 0, '2024-04-08 12:00:00', '2024-04-25 12:15:00', 'samsung tv.jpeg'),
(2, 'SB002', 'Hp Pavilion', 'Laptops', '2wertyuikjhgf', 5000.00, 0, '2024-03-12 12:00:00', '2024-05-14 12:00:00', 'hp.jpeg'),
(3, 'SB003', 'Nissan Gtr', 'Vehicles', '1) Slighted Used.\r\n2) AC Not Working.', 46456.00, 0, '2024-03-04 12:00:00', '2024-04-23 12:00:00', 'nissan gtr.jpeg'),
(4, 'SB004', 'Electric Stove ', 'Appliances', '1) Left Burner Not Working\r\n2) Grill Not Working', 3000.00, 0, '2024-03-20 12:00:00', '2024-04-25 18:00:00', 'electric.jpeg'),
(5, 'SB005', 'LG TV', 'Appliances', '1) Power Cable Not Included.\r\n2) Will Be Sold As Is', 3000.00, 0, '2024-03-04 12:00:00', '2025-03-05 12:00:00', 'lg tv.jpeg'),
(6, 'SB08', 'Samsung TV', 'Appliances', 'Test Vibes', 3400.00, 0, '2024-03-25 12:00:00', '2024-03-26 00:00:00', 'samsung tv.jpeg'),
(7, 'SB010', 'Samsung TV', 'Appliances', 'Test Vibes', 3400.00, 0, '2024-07-10 12:00:00', '2024-07-17 12:00:00', 'samsung tv.jpeg'),
(8, 'SB0003', 'Test Product', 'Vehicles', 'QWERTYUI', 3400.00, 0, '2024-03-26 12:00:00', '2024-03-26 20:00:00', 'samsung tv.jpeg'),
(9, 'SB0009', 'Ups', 'Appliances', 'TEST ITEM', 200.00, 0, '2024-03-27 09:00:00', '2024-03-27 09:32:00', 'rmu.jpg'),
(10, 'SB0098', 'LG TV 3', 'Appliances', 'TEST PRODUCT 3', 5000.00, 0, '2024-03-27 12:00:00', '2024-03-27 12:50:00', 'lg tv.jpeg'),
(12, 'WE0095', 'LG TV', 'Laptops', 'Test Product Today', 2000.00, 0, '2024-04-16 12:00:00', '2024-05-07 17:00:00', 'hp.jpeg'),
(14, 'VH1112444', 'School Bus', 'Vehicles', 'TEST Flight', 30000.00, 0, '2024-07-04 15:00:00', '2024-07-05 18:00:00', 'rmu.jpg'),
(15, 'AP990234', 'Test Product 2', 'TEST', 'Test Flight 2.0', 4500.00, 0, '2024-07-05 09:00:00', '2024-07-09 12:00:00', 'image 3.jpg'),
(16, 'ES001', 'Elctric Stove', 'product test', 'Product Testing', 4500.00, 0, '2024-07-05 12:00:00', '2024-07-05 13:45:00', 'rmu.jpg'),
(17, 'ES002', 'Elctric Stove', 'product test', 'Sdfghjkhgf', 3400.00, 0, '2024-07-05 12:00:00', '2024-07-07 12:00:00', 'Regional-Maritime-University.png'),
(19, '098765', 'Washing Machine', 'Machines', 'Slightly Being Used', 4000.00, 0, '2024-08-09 12:00:00', '2024-08-12 12:00:00', 'rmu.jpg'),
(20, '0987656', 'Try Product', 'Machines', 'Wertyu', 2345.00, 0, '2024-08-09 12:00:00', '2024-08-09 20:27:00', 'academic council dashboard.png');

-- --------------------------------------------------------

--
-- Table structure for table `products_archive`
--

DROP TABLE IF EXISTS `products_archive`;
CREATE TABLE IF NOT EXISTS `products_archive` (
  `T_id` int NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(20) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_bid` float NOT NULL,
  `start_bid_time` datetime NOT NULL,
  `end_bid_time` datetime NOT NULL,
  `img_fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`T_id`)
) ;

--
-- Dumping data for table `products_archive`
--

INSERT INTO `products_archive` (`T_id`, `prod_id`, `prod_name`, `cat_name`, `description`, `start_bid`, `start_bid_time`, `end_bid_time`, `img_fname`) VALUES
(1, 'VH001', 'Toyota Hilux', '', '2.5 horse power', 3000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'WIN_20221103_22_12_41_Pro.jpg'),
(2, 'VH002', 'Toyota Corolla', '', '12355', 3000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'WIN_20221103_22_12_41_Pro.jpg'),
(3, 'VH003', 'Toyota Corolla x', '', 'test run', 3000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'WIN_20221103_22_12_41_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(40) NOT NULL,
  `staff_name` varchar(60) NOT NULL,
  `user_name` varchar(70) NOT NULL,
  `password` varchar(254) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Role` int NOT NULL,
  PRIMARY KEY (`t_id`)
) ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`t_id`, `staff_id`, `staff_name`, `user_name`, `password`, `Email`, `Role`) VALUES
(1, 'Admin001', 'Admin', '', '$2y$10$/8rHe8tJ0jbySZvAlSFcX.lpn.5i353g2CaiBl9FDIs8bp9Opyqda', 'admin@gmail.com', 1),
(2, 'RMU000001', 'Ismail Abdulai-Saiku', 'Mantey', '$2y$10$/8rHe8tJ0jbySZvAlSFcX.lpn.5i353g2CaiBl9FDIs8bp9Opyqda', 'abdulai@gmail.com', 0),
(4, 'RMU000002', 'Denzel Washington', 'denny', '$2y$10$/8rHe8tJ0jbySZvAlSFcX.lpn.5i353g2CaiBl9FDIs8bp9Opyqda', 'denzel@rmu.edu.gh', 0),
(5, 'Rmu001', 'Jeff Arhin', 'joeboy', '$2y$12$LXzcHjBUUfCNV4hNwHKMK.FOZIUGzZijuWLQb1yO2N4mgOLFU573u', 'armet@gmail.com', 0),
(6, 'RMU111', 'Ismail Abdulai-Saiku', 'baba', '$2y$12$vLBoFfU6dmZv.VKFAHqK5.7FVCMT8c8cjjfb3UVRMpLwL0eOPIiXy', 'isabdulaisaiku@gmail.com', 0),
(7, '000002', 'Nii Kwei', 'amui', '$2y$12$qiwfF605fwfg3Go.hXfXQeQy9Fveyt4tEO.wfwFG2lkzNptGt5v7K', 'kwei@gmail.com', 0),
(8, '0000021', 'Nii Kwei Hammond', 'Badman', '$2y$12$aZyGlCP9hI9.J4foDlgP1e1m6lADR7zoG72cpiQUvDZ3kSxCk9z62', 'kwei1@gmail.com', 0),
(9, '111111', 'Test User', 'Test', '$2y$12$rS5x8wT4G/V2GGY6fJkBoOo6W9Gbz7tByspIhAPclgrQCCN6Ka1pu', 'test@gmail.com', 0),
(10, '12222', 'Emmanuel Danso', 'Emmanuel', '$2y$12$qvKYa0HlnTkcnpW3w4tCy.cfVqnedupfVsX84KKWZpnXCf24R937S', 'emma@yahoo.com', 0),
(17, 'Rmu110001', 'Nii Adotei Addo', 'Niiaddo', '$2y$12$.vwrncsa69CxY3z9GytwZOjrtBG3qHnGCmSiXGOvgMqlfvhE0pjDG', 'niiadot19@gmail.com', 0),
(18, 'y09876', 'denzel', '12340987', '$2y$10$4PS4QBr4JCmiHtL0U2eKm.8Czi7x.BfheLeS1zXk2HVwaFCM.mz5W', 'mantse', 0),
(23, 'j9223', 'idris', '4509794', '$2y$10$HUnHsvuc1yVevWiG6MydjeIHRxtqUAh5NIjy3WLwl.TL.eTNQ50R.', 'takyi', 0),
(24, 'rmu7770', 'derrick', 'badmanD', '$2y$10$FuywBLmIeBrKX0kb8XTH1eq0HjP9rRJOlg3cqqz17jBpUBqmqucuW', 'der@gmail.com', 0),
(25, 'Jeffery Partey', 'RMU0001230', 'jeffery@gmail.com', '$2y$10$E5VTGlIwtBH1iLptu6sXqu9eXjQPpK5MxnBK1oznQ8vyMZYtGJTDa', 'bolder', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
