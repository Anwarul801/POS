-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2018 at 07:32 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `qty`) VALUES
(3, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Laptops'),
(2, 'Desktop PC\'s'),
(3, 'Tablets'),
(5, 'Mobile Phone');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(5, 'Mamun', 'Sukhrabad', '01750539804'),
(9, 'Sayem', '101/4,Pulparbazar,Mohammadpur', '0177169191'),
(10, 'Nipon', 'Mohammad pur', '01742987655'),
(11, 'Sagor', 'Kisorgonj', '01723333333'),
(27, 'Sajib', 'Rajshahi', '0172829292');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(11, 2, 'Purchase', 1, 1, '2018-01-28 20:29:16'),
(12, 2, 'Purchase', 6, 3, '2018-01-28 20:29:16'),
(13, 2, 'Purchase', 4, 8, '2018-01-28 20:52:46'),
(14, 2, 'Purchase', 1, 4, '2018-01-28 21:25:40'),
(15, 2, 'Purchase', 2, 5, '2018-01-28 21:25:40'),
(16, 1, 'Update Quantity', 12, 100, '2018-01-29 20:30:33'),
(17, 1, 'Purchase', 3, 12, '2018-01-30 00:17:08'),
(18, 1, 'Purchase', 1, 10, '2018-01-30 00:21:30'),
(19, 2, 'Purchase', 3, 3, '2018-01-30 14:56:57'),
(20, 2, 'Purchase', 2, 4, '2018-01-30 14:56:57'),
(21, 2, 'Purchase', 15, 4, '2018-01-30 15:02:12'),
(22, 2, 'Purchase', 2, 2, '2018-02-15 02:17:37'),
(23, 2, 'Purchase', 3, 4, '2018-02-15 02:17:37'),
(24, 2, 'Purchase', 3, 5, '2018-02-15 02:23:29'),
(25, 2, 'Purchase', 3, 5, '2018-02-17 21:46:23'),
(26, 1, 'Purchase', 2, 12, '2018-02-18 21:03:56'),
(27, 1, 'Purchase', 3, 23, '2018-02-18 21:03:56'),
(28, 1, 'Purchase', 1, 3, '2018-02-18 21:05:01'),
(29, 1, 'Purchase', 2, 3, '2018-02-18 21:05:01'),
(30, 6, 'Add Product', 23, 15, '2018-02-18 21:18:32'),
(31, 2, 'Purchase', 3, 1, '2018-02-18 21:20:45'),
(32, 2, 'Purchase', 23, 1, '2018-02-18 21:20:46'),
(33, 5, 'Purchase', 3, 2, '2018-03-05 15:57:56'),
(34, 5, 'Purchase', 4, 7, '2018-03-05 15:57:56'),
(35, 1, 'Purchase', 1, 6, '2018-03-05 19:27:50'),
(36, 1, 'Purchase', 2, 8, '2018-03-06 01:10:25'),
(37, 1, 'Purchase', 1, 9, '2018-03-06 01:10:25'),
(38, 1, 'Purchase', 1, 3, '2018-03-27 18:12:31'),
(39, 1, 'Purchase', 2, 5, '2018-03-27 18:12:31'),
(40, 5, 'Purchase', 3, 6, '2018-03-27 21:16:08'),
(41, 6, 'Add Product', 24, 100, '2018-03-28 12:21:28'),
(42, 6, 'Add Product', 25, 0, '2018-03-28 12:33:57'),
(43, 5, 'Purchase', 2, 4, '2018-03-28 13:05:07'),
(44, 5, 'Purchase', 3, 9, '2018-03-28 13:05:07'),
(45, 5, 'Purchase', 4, 8, '2018-03-28 13:05:08'),
(46, 5, 'Purchase', 2, 5, '2018-03-28 17:40:32'),
(47, 5, 'Purchase', 3, 8, '2018-03-28 17:40:32'),
(48, 5, 'Purchase', 8, 6, '2018-03-28 17:40:32'),
(49, 5, 'Purchase', 11, 6, '2018-03-28 17:40:32'),
(50, 5, 'Purchase', 4, 8, '2018-03-28 17:45:40'),
(51, 5, 'Purchase', 9, 3, '2018-03-28 17:45:40'),
(52, 10, 'Purchase', 3, 7, '2018-03-31 01:52:18'),
(53, 10, 'Purchase', 4, 7, '2018-03-31 01:52:18'),
(54, 10, 'Purchase', 2, 3, '2018-03-31 13:25:14'),
(55, 10, 'Purchase', 3, 45, '2018-03-31 13:25:14'),
(56, 29, 'Purchase', 20, 3, '2018-03-31 16:46:57'),
(57, 29, 'Purchase', 21, 3, '2018-03-31 16:46:57'),
(58, 29, 'Purchase', 18, 3, '2018-03-31 16:46:57'),
(59, 29, 'Purchase', 2, 5, '2018-03-31 16:51:20'),
(60, 29, 'Purchase', 1, 5, '2018-03-31 16:51:20'),
(61, 29, 'Purchase', 3, 5, '2018-03-31 16:51:20'),
(62, 29, 'Purchase', 1, 5, '2018-03-31 16:57:41'),
(63, 29, 'Purchase', 2, 5, '2018-03-31 16:57:41'),
(64, 29, 'Purchase', 3, 5, '2018-03-31 16:57:41'),
(65, 6, 'Add Product', 25, 100, '2018-03-31 16:59:40'),
(66, 10, 'Purchase', 3, 5, '2018-04-04 11:34:14'),
(67, 10, 'Purchase', 4, 5, '2018-04-04 11:34:14'),
(68, 10, 'Purchase', 14, 2, '2018-04-04 11:34:14'),
(69, 26, 'Purchase', 1, 5, '2018-04-04 12:16:45'),
(70, 26, 'Purchase', 4, 55, '2018-04-04 12:16:45'),
(71, 26, 'Purchase', 8, 6, '2018-04-04 12:16:46'),
(72, 6, 'Add Product', 25, 1000, '2018-04-04 12:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `customarid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `offer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`customarid`, `customer_name`, `offer`) VALUES
(1, 'Sojib', '10%'),
(2, 'Tamim', '5%');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', 899, 840, 'upload/1.jpg', 14),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', 799, 887, 'upload/2.jpg', 13),
(3, 2, 'DELL Inspiron 15 5000 15.6', 599, 832, 'upload/3.jpg', 14),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14', 399, 884, 'upload/4.jpg', 14),
(5, 1, 'APPLE MacBook Air 13.3', 879, 9900, 'upload/5.jpg', 13),
(6, 1, 'DELL Inspiron 15 5000 15', 449, 997, 'upload/6.jpg', 14),
(8, 1, 'ASUS Transformer Mini T102HA 10.1', 549, 988, 'upload/8.jpg', 14),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', 599, 997, 'upload/9.jpg', 13),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', 599, 1000, 'upload/10.jpg', 14),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', 489, 994, 'upload/11.jpg', 6),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', 799, 1000, 'upload/13.jpg', 6),
(14, 2, 'LENOVO Legion Y520 Gaming PC', 899, 998, 'upload/14.jpg', 14),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', 999, 996, 'upload/15.jpg', 13),
(16, 2, 'C SPECIALIST Vortex Core II Gaming PC', 649, 1000, 'upload/16.jpg', 14),
(18, 3, 'AMAZON Fire HD 8 Tablet With Alexa (2017) - 16 GB, Black', 79, 997, 'upload/18.jpg', 6),
(19, 3, 'AMAZON Fire HD 8 Tablet With Alexa (2017) - 32 GB, Black', 9900, 1000, 'upload/19.jpg', 6),
(20, 3, 'APPLE 9.7', 339, 987, 'upload/20.jpg', 13),
(21, 3, 'APPLE 9.7', 339, 997, 'upload/21.jpg', 13),
(22, 3, 'APPLE 10.5', 619, 1000, 'upload/22.jpg', 13),
(24, 3, 'samsung j7', 15000, 100, 'upload/in-galaxy-j7-pro-j730gm-sm-j730gzdwins-gold-73072245_1522218088.jpg', 6),
(25, 1, 'DCL Laptop ', 32000, 1000, 'upload/dcl-650x659_1522822728.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(11, 9, 2248.97, '2018-01-28 20:29:16'),
(12, 10, 3192, '2018-01-28 20:52:46'),
(13, 9, 7591, '2018-01-28 21:25:40'),
(14, 10, 7188, '2018-01-30 00:17:08'),
(15, 11, 8990, '2018-01-30 00:21:30'),
(16, 12, 4993, '2018-01-30 14:56:57'),
(17, 9, 3999.96, '2018-01-30 15:02:12'),
(18, 10, 0, '2018-02-09 21:09:12'),
(19, 12, 3994, '2018-02-15 02:17:36'),
(20, 12, 2995, '2018-02-15 02:23:29'),
(21, 12, 2995, '2018-02-17 21:46:23'),
(22, 11, 23365, '2018-02-18 21:03:56'),
(23, 11, 5094, '2018-02-18 21:05:01'),
(24, 12, 15599, '2018-02-18 21:20:45'),
(25, 5, 3991, '2018-03-05 15:57:56'),
(26, 11, 5394, '2018-03-05 19:27:49'),
(27, 10, 14483, '2018-03-06 01:10:25'),
(28, 9, 6692, '2018-03-27 18:12:31'),
(29, 5, 3594, '2018-03-27 21:16:08'),
(30, 5, 11779, '2018-03-28 13:05:07'),
(31, 5, 15026.82, '2018-03-28 17:40:31'),
(32, 5, 4991.97, '2018-03-28 17:45:40'),
(33, 10, 6986, '2018-03-31 01:52:17'),
(34, 10, 29352, '2018-03-31 13:25:14'),
(37, 12, 11485, '2018-03-31 16:57:40'),
(38, 10, 6789.98, '2018-04-04 11:34:14'),
(39, 26, 29734, '2018-04-04 12:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`userid`, `customer_name`, `address`, `contact`) VALUES
(21, 'Tamim', 'Jamal pur', '01718818191'),
(22, 'Rahat', 'Borishal', '0181818181'),
(23, 'Sumon', 'Sylhet', '0181818181');

-- --------------------------------------------------------

--
-- Table structure for table `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(13, 8, 1, 99),
(14, 8, 2, 20),
(15, 9, 2, 10),
(16, 10, 2, 10),
(17, 10, 3, 12),
(18, 10, 4, 8),
(19, 11, 1, 1),
(20, 11, 6, 3),
(21, 12, 4, 8),
(22, 13, 1, 4),
(23, 13, 2, 5),
(24, 14, 3, 12),
(27, 16, 2, 4),
(28, 17, 15, 4),
(29, 19, 2, 2),
(30, 19, 3, 4),
(31, 20, 3, 5),
(32, 21, 3, 5),
(33, 22, 2, 12),
(34, 22, 3, 23),
(35, 23, 1, 3),
(40, 25, 4, 7),
(41, 26, 1, 6),
(42, 27, 2, 8),
(43, 27, 1, 9),
(44, 28, 1, 3),
(45, 28, 2, 5),
(46, 29, 3, 6),
(47, 30, 2, 4),
(48, 30, 3, 9),
(49, 30, 4, 8),
(50, 31, 2, 5),
(51, 31, 3, 8),
(52, 31, 8, 6),
(53, 31, 11, 6),
(54, 32, 4, 8),
(55, 32, 9, 3),
(56, 33, 3, 7),
(57, 33, 4, 7),
(58, 34, 2, 3),
(59, 34, 3, 45),
(60, 35, 20, 3),
(61, 35, 21, 3),
(62, 35, 18, 3),
(63, 36, 2, 5),
(64, 36, 1, 5),
(65, 36, 3, 5),
(66, 37, 1, 5),
(67, 37, 2, 5),
(68, 37, 3, 5),
(69, 38, 3, 5),
(70, 38, 4, 5),
(71, 38, 14, 2),
(72, 39, 1, 5),
(73, 39, 4, 55),
(74, 39, 8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(6, 'Faisal Ahmed', 'Mirpur', '01912424217'),
(13, 'Rana', 'Bogra', '01750539804'),
(14, 'Dipta ', 'Narayongonj', '075456612'),
(25, 'Rajib', 'Rajshahi', '0188101');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(5, 'mamun', 'e976b291bbb156ca179899fde964f443', 2),
(6, 'faisal', 'f4668288fdbf9773dd9779d412942905', 3),
(9, 'sayem', '709ca0cd9eb443ba7bb7e3bb58e69706', 2),
(10, 'nipon', '153e42f8b5be43e565343691c2f015f3', 2),
(11, 'sagor', '5365c82e6ff858263619d46731ea2d70', 2),
(13, 'rana', '90a1e95dba0d3d9c11e3f220cc4f7879', 3),
(14, 'dipta', '35f6952b33479cc3db46df3a6f99deb6', 3),
(21, 'tamim', 'tamim', 4),
(22, 'rahat', 'rahat', 4),
(23, 'sumon', 'sumon', 4),
(25, 'rajib', '3f4802081623f4d210d68449785658b3', 3),
(27, 'sojib', '7f555568deda61f2eae9eb040ce60a6f', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`customarid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `customarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
