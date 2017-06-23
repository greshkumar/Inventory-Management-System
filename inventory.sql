-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2016 at 06:32 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `pID` int(4) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `unit_price` float NOT NULL,
  `quantity` int(5) NOT NULL,
  `selling_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pID`, `pname`, `type`, `unit_price`, `quantity`, `selling_price`) VALUES
(101, 'pepsi 1.5ltr', 'soft drink', 80, 120, 88),
(102, 'pepsi 500ml', 'soft drink', 40, 85, 44),
(103, 'pepsi 300ml', 'soft drink', 25, 132, 27.5),
(201, 'nesvita', 'milk', 35, 50, 38.5),
(202, 'Nestle Milk Pack 1ltr', 'Milk', 110, 120, 121),
(203, 'Nestle Red Grapes', 'Juice', 30, 184, 33),
(204, 'Nestle Orange', 'Juice', 30, 142, 33),
(301, 'Sunsilk Conditioner', 'Shampoo', 190, 85, 209),
(303, 'Sunsilk Black shine', 'shampoo', 170, 3, 187),
(400, 'pantene', 'Shampoo', 190, 50, 209),
(401, 'surf excel 1kg', 'ditergent powder', 250, 430, 275),
(402, 'surf exel 500g', 'ditergent', 120, 200, 132),
(408, 'Pantene large', 'Shampoo', 174, 20, 191.4),
(501, 'sooper family pack', 'busicuit', 30, 120, 33),
(502, 'Gala family pack', 'biscutis', 30, 100, 33),
(503, 'Peanut Pista family pack', 'biscuits', 30, 100, 33),
(507, 'Pakola rose', 'juice', 30, 100, 33);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `pID` int(4) NOT NULL,
  `ptID` int(4) NOT NULL,
  `quantity` int(10) NOT NULL,
  `net_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`pID`, `ptID`, `quantity`, `net_cost`) VALUES
(101, 1, 120, 9600),
(102, 1, 90, 3600),
(103, 1, 150, 3750),
(201, 2, 70, 2450),
(202, 2, 120, 13200),
(203, 2, 200, 6000),
(204, 2, 150, 4500),
(301, 3, 100, 19000),
(303, 3, 3, 510),
(401, 4, 500, 125000),
(402, 4, 200, 24000),
(501, 5, 120, 3600),
(502, 6, 100, 3000),
(503, 7, 100, 3000),
(507, 8, 100, 3000),
(400, 9, 50, 9500),
(408, 10, 20, 3480);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `ptID` int(4) NOT NULL,
  `purchase_date` date NOT NULL,
  `total_cost` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`ptID`, `purchase_date`, `total_cost`) VALUES
(1, '2015-11-30', 16950),
(2, '2015-11-30', 43100),
(3, '2015-11-30', 62610),
(4, '2015-11-30', 149000),
(5, '2015-11-30', 152600),
(6, '2015-11-30', 3000),
(7, '2015-11-30', 3000),
(8, '2015-12-01', 3000),
(9, '2015-12-25', 9500),
(10, '2015-12-25', 3480);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `pID` int(4) NOT NULL,
  `stID` int(4) NOT NULL,
  `quantity` int(10) NOT NULL,
  `net_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`pID`, `stID`, `quantity`, `net_cost`) VALUES
(201, 1, 10, 385),
(103, 1, 14, 385),
(103, 2, 4, 110),
(203, 2, 13, 429),
(204, 2, 8, 264),
(102, 3, 5, 220),
(201, 3, 10, 385),
(203, 3, 3, 99),
(401, 4, 70, 19250);

-- --------------------------------------------------------

--
-- Table structure for table `sale_order`
--

CREATE TABLE IF NOT EXISTS `sale_order` (
  `stID` int(4) NOT NULL,
  `sale_date` date NOT NULL,
  `total_cost` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_order`
--

INSERT INTO `sale_order` (`stID`, `sale_date`, `total_cost`) VALUES
(1, '2015-11-30', 770),
(2, '2015-11-30', 803),
(3, '2015-12-01', 704),
(4, '2015-12-25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `sID` int(4) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(12) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `email` text
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sID`, `sname`, `address`, `phone`, `city`, `country`, `email`) VALUES
(12, 'taha syed', 'malir halt', '0336-3093963', 'karachi', 'pakistan', 'tahasyed@gmail.com'),
(13, 'humble imran', 'gulistan-e-johar', '0336-2096304', 'karachi', 'pakistan', 'humbleimran@gmail.com'),
(14, 'zain rajani', 'tariq road', '0345-2340110', 'karachi', 'pakistan', 'zainrajani@gmail.com'),
(15, 'Nouman', 'tariq road', '0342-2980270', 'karachi', 'pakistan', 'nouman@yahoo.com'),
(16, 'Amaar Ali', 'shop no: 9 near al-madina juice corner anarkali bazar', '0312-2130966', 'lahore', 'pakistan', 'amaarali@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE IF NOT EXISTS `supplies` (
  `pID` int(4) NOT NULL,
  `sID` int(4) NOT NULL,
  `supply_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`pID`, `sID`, `supply_date`) VALUES
(101, 12, '2015-11-30'),
(102, 12, '2015-11-30'),
(103, 12, '2015-11-30'),
(201, 13, '2015-11-30'),
(202, 13, '2015-11-30'),
(203, 13, '2015-11-30'),
(204, 13, '2015-11-30'),
(301, 14, '2015-11-30'),
(301, 14, '2015-11-30'),
(303, 14, '2015-11-30'),
(401, 15, '2015-11-30'),
(402, 15, '2015-11-30'),
(501, 16, '2015-11-30'),
(502, 16, '2015-11-30'),
(503, 16, '2015-11-30'),
(507, 14, '2015-12-01'),
(400, 12, '2015-12-25'),
(408, 12, '2015-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uID` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uID`, `uname`, `password`, `type`) VALUES
('chandras123', 'Chandras', '132075', 'Sales Person'),
('deepak123', 'Deepak Raj', '132147', 'Owner'),
('sidhant123', 'Sidhant', '132099', 'Stock Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD KEY `pID` (`pID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptID_2` (`ptID`),
  ADD KEY `pID_2` (`pID`),
  ADD KEY `ptID_3` (`ptID`),
  ADD KEY `ptID_4` (`ptID`),
  ADD KEY `ptID_5` (`ptID`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`ptID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD KEY `pID` (`pID`),
  ADD KEY `stID` (`stID`);

--
-- Indexes for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD PRIMARY KEY (`stID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sID`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD KEY `pID` (`pID`),
  ADD KEY `sID` (`sID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `ptID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sale_order`
--
ALTER TABLE `sale_order`
  MODIFY `stID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purREFprod` FOREIGN KEY (`pID`) REFERENCES `product` (`pID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purREFpur_ord` FOREIGN KEY (`ptID`) REFERENCES `purchase_order` (`ptID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `salREFprod` FOREIGN KEY (`pID`) REFERENCES `product` (`pID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `salREFsal_ord` FOREIGN KEY (`stID`) REFERENCES `sale_order` (`stID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supREFsupplier` FOREIGN KEY (`sID`) REFERENCES `supplier` (`sID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
