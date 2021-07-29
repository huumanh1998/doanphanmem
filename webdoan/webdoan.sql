-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 04:55 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webdoan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'manh', 'manh@gmail.com', 'manhadmin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_binhluan`
--

CREATE TABLE IF NOT EXISTS `tbl_binhluan` (
`binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(255) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `binhluan` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `tensanpham`, `binhluan`, `product_id`, `blog_id`, `image`) VALUES
(4, '1', '1', '1', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
`brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Sony'),
(4, 'Oppo'),
(5, 'Xiaomi'),
(6, 'Nokia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
`cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(3, 2, '2ee247ortboikqhear2jes4k00', 'oppo reno5', '9000000', 6, '61f78d7cc1.png'),
(4, 1, '2ee247ortboikqhear2jes4k00', 'Iphone 11', '20000000', 5, '084212a297.png'),
(12, 1, '0hfob9ed4djd8jru5p282a67t1', 'Iphone 11', '20000000', 1, '084212a297.png'),
(14, 1, 'gpv1b1sdvv90sauogmnma6o4k3', 'Iphone 11', '20000000', 1, '084212a297.png'),
(15, 3, 'gpv1b1sdvv90sauogmnma6o4k3', 'Iphone 12', '25000000', 1, 'c1e7f7e745.png'),
(16, 4, 'gpv1b1sdvv90sauogmnma6o4k3', 'samsung note 20', '19000000', 1, 'c86cedbf9a.png'),
(17, 8, 'hr73b1d5li5aac30ome44ogod0', 'oppo reno4', '8000000', 3, '474c358304.png'),
(27, 6, 'kk9m5q5metbaq8c6rl56sc2ce4', 'Samsung s20', '20000000', 1, '68ff3ecf4d.png'),
(28, 1, 'kk9m5q5metbaq8c6rl56sc2ce4', 'Iphone 11', '20000000', 1, '084212a297.png'),
(39, 3, '6974069g7ej39erhcttmvd6hv2', 'Iphone 12', '25000000', 1, 'c1e7f7e745.png'),
(40, 6, '8u8gov8l8dbqmjcmm8q0qid1j7', 'Samsung s20', '20000000', 1, '68ff3ecf4d.png'),
(42, 21, 'ra5lm16nuh85h0uo1ovfv530s0', 'iPhone 12 Pro Max 512GB', '38890000', 1, 'ffa0033df5.jpg'),
(45, 19, 'j1er0qosu52e9344cc11jar3i0', 'iPhone 12', '24890000', 1, '22854a217f.jpg'),
(48, 24, '5evtjg80f06fk3smiov99d8iv6', 'Samsung Galaxy Z Fold2', '50000000', 1, '34af7c6ab7.jpg'),
(53, 41, '1kmpviatopldm72ge7vu7mm736', 'Iphone 12', '123', 1, 'e1bd924ff6.png'),
(54, 42, '1kmpviatopldm72ge7vu7mm736', 'Iphone 13', '3132', 1, '6ea9507fef.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(6, 'Äiá»‡n thoáº¡i Nokia'),
(7, 'Äiá»‡n thoáº¡i Iphone'),
(8, 'Äiá»‡n thoáº¡i Samsung'),
(9, 'Äiá»‡n thoáº¡i Xiaomi'),
(10, 'Äiá»‡n thoáº¡i Oppo'),
(11, 'Äiá»‡n thoáº¡i Sony');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE IF NOT EXISTS `tbl_compare` (
`id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(10, 3, 29, 'Oppo Reno 5 Marvel', '9690000', 'a55c051810.jpg'),
(11, 4, 29, 'Oppo Reno 5 Marvel', '9690000', 'a55c051810.jpg'),
(12, 4, 35, 'Sony Xperia 5', '7990000', '2299440c34.jpg'),
(13, 4, 15, 'Xiaomi Mi 11 5G', '20990000', 'ee67c31c38.jpg'),
(14, 5, 21, 'iPhone 12 Pro Max 512GB', '38890000', 'ffa0033df5.jpg'),
(15, 6, 21, 'iPhone 12 Pro Max 512GB', '38890000', 'ffa0033df5.jpg'),
(16, 3, 42, 'Iphone 13', '3132', '6ea9507fef.jpg'),
(17, 3, 41, 'Iphone 12', '123', 'e1bd924ff6.png'),
(18, 3, 39, 'Iphone 12', '24900', 'edd8db0fd9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
`contactId` int(11) NOT NULL,
  `contactName` varchar(255) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `contactPhone` varchar(255) NOT NULL,
  `contactDesc` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contactId`, `contactName`, `contactEmail`, `contactPhone`, `contactDesc`) VALUES
(3, 'Máº¡nh', 'manh98@gmail.com', '0397052760', 'cáº§n há»— trá»£'),
(4, 'Máº¡nh', 'manh98@gmail.com', '0397052760', 'cáº§n há»— trá»£');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Chu Há»¯u Máº¡nh', '233 Pháº¡m VÄƒn Äá»“ng', 'Kon Tum', 'VN', '12345678', '0397052760', 'chmanh98@gmail.com', '6c63bc87c542f064de323412d5c30054'),
(4, 'Há»¯u Máº¡nh', '233 Pháº¡m VÄƒn Äá»“ng, Kon Tum', 'Kon Tum', 'VN', '123456', '0397052760', 'manh98@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Chu Há»¯u Máº¡nh', '233 Pháº¡m VÄƒn Äá»“ng, Kon Tum', 'Kon Tum', 'VN', '123456', '0397052760', 'huumanh@gmail.com', '6c63bc87c542f064de323412d5c30054'),
(6, 'Há»¯u Máº¡nh', '233 Pháº¡m VÄƒn Äá»“ng, Kon Tum', 'Kon Tum', 'VN', '123456', '0397052760', 'manh123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
`id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) DEFAULT '0',
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(19, 8, 'oppo reno4', 3, 1, '8000000', '474c358304.png', 2, '2021-04-13 08:37:07'),
(20, 36, 'Sony Xperia 5 II', 3, 1, '23990000', '2470348ee4.jpg', 1, '2021-04-21 06:34:37'),
(21, 22, 'Samsung Galaxy S21 Ultra', 4, 1, '33990000', '12da17db02.jpg', 1, '2021-04-24 12:47:09'),
(22, 17, 'iPhone 12 Pro', 5, 1, '36990000', 'bd2c20d165.jpg', 2, '2021-07-09 08:19:51'),
(23, 19, 'iPhone 12', 3, 1, '24890000', '22854a217f.jpg', 1, '2021-07-13 01:50:45'),
(24, 21, 'iPhone 12 Pro Max 512GB', 3, 1, '38890000', 'ffa0033df5.jpg', 0, '2021-07-13 01:50:45'),
(25, 36, 'Sony Xperia 5 II', 3, 1, '23990000', '2470348ee4.jpg', 0, '2021-07-13 01:51:44'),
(26, 19, 'iPhone 12', 6, 2, '49780000', '22854a217f.jpg', 1, '2021-07-13 02:17:44'),
(27, 39, 'Iphone 12', 3, 1, '24900', 'edd8db0fd9.jpg', 1, '2021-07-27 02:28:45'),
(28, 43, 'iPhone 12 Pro Max 512GB', 3, 1, '23990000', '2a56f67f01.jpg', 0, '2021-07-29 02:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
`productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quanti` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`, `quanti`) VALUES
(43, 'iPhone 12 Pro Max 512GB', 7, 1, '<p>Ä‘ang cáº­p nháº­t</p>', 0, '23990000', '2a56f67f01.jpg', 0),
(44, 'Iphone 11', 7, 1, '<p>Ä‘ang cáº­p nháº­t</p>', 1, '11490000', '98501aaf6e.jpg', 0),
(45, 'Sony Xperia 5', 11, 3, '<p>Ä‘ang cáº­p nháº­t</p>', 0, '7990000', 'c93a7bee7a.jpg', 0),
(46, 'Samsung Note 20', 8, 2, '<p>Ä‘ang cáº­p nháº­t</p>', 0, '20000000', '074a8d068d.jpg', 0),
(47, 'Oppo Reno 5 Marvel', 10, 4, '<p>Ä‘ang cáº­p nháº­t</p>', 0, '7990000', '5a52339328.jpg', 0),
(48, 'Xiaomi Mi 10T Pro', 9, 5, '<p>Ä‘ang cáº­p nháº­t</p>', 1, '11490000', '0702ade2ee.jpg', 0),
(49, 'Nokia 5.4', 6, 6, '<p>Ä‘ang cáº­p nháº­t</p>', 1, '3490000', 'f14d0d959f.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
`sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(3, 'abc', '18733d638f.png', 1),
(4, 'slider 2', '3329959f6e.png', 1),
(5, 'slider 3', '78d213d033.png', 1),
(6, 'slider 4', 'f21128bff7.png', 1),
(7, 'slide 1', '87f9b5c79a.jpg', 0),
(8, 'slide 2', '6cc3bee15c.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE IF NOT EXISTS `tbl_wishlist` (
`id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 19, 'iPhone 12', '24890000', '22854a217f.jpg'),
(4, 4, 24, 'Samsung Galaxy Z Fold2', '50000000', '34af7c6ab7.jpg'),
(5, 4, 21, 'iPhone 12 Pro Max 512GB', '38890000', 'ffa0033df5.jpg'),
(6, 4, 23, 'Samsung Galaxy Note 20 Ultra', '29990000', 'c2b51a2b54.jpg'),
(7, 5, 21, 'iPhone 12 Pro Max 512GB', '38890000', 'ffa0033df5.jpg'),
(8, 6, 24, 'Samsung Galaxy Z Fold2', '50000000', '34af7c6ab7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
 ADD PRIMARY KEY (`binhluan_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
 ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
 ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
 ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
 ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
 ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
