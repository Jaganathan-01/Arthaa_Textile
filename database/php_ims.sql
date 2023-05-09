-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 11:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(5) NOT NULL,
  `bill_id` varchar(50) NOT NULL,
  `product_company` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_unit` varchar(20) NOT NULL,
  `packing_size` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `bill_id`, `product_company`, `product_name`, `product_unit`, `packing_size`, `price`, `qty`) VALUES
(1, '1', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '3'),
(2, '2', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '3'),
(7, '7', 'Zudio', 'Womens Kurthi', 'unit', '2', '600', '6');

-- --------------------------------------------------------

--
-- Table structure for table `billing_header`
--

CREATE TABLE `billing_header` (
  `id` int(5) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `bill_type` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `bill_no` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_header`
--

INSERT INTO `billing_header` (`id`, `full_name`, `bill_type`, `date`, `bill_no`, `username`) VALUES
(1, 'kayethri', 'Debit', '2023-04-11', '00001', 'admin'),
(2, 'kayethri', 'Cash', '2023-04-11', '00002', 'admin'),
(3, 'kayethri', 'Debit', '2023-04-11', '00003', 'admin'),
(4, 'kayethri', 'Debit', '2023-04-11', '00004', 'admin'),
(5, 'kayethri', 'Cash', '2023-04-11', '00005', 'admin'),
(6, 'kayethri', 'Cash', '2023-04-12', '00006', 'admin'),
(7, 'kayethri', 'Cash', '2023-04-12', '00007', 'admin'),
(8, 'kayethri', 'Debit', '2023-04-12', '00008', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `company_name`
--

CREATE TABLE `company_name` (
  `id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_name`
--

INSERT INTO `company_name` (`id`, `company_name`) VALUES
(12, 'Texvalley'),
(13, 'Zudio'),
(14, 'Trends');

-- --------------------------------------------------------

--
-- Table structure for table `party_info`
--

CREATE TABLE `party_info` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `businessname` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `party_info`
--

INSERT INTO `party_info` (`id`, `firstname`, `lastname`, `businessname`, `contact`, `address`, `city`) VALUES
(3, 'kayethri', 'dhanapal', 'Textiles', '7397041101', 'Modakurichi,Erode.', 'Erode');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `packing_size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_name`, `product_name`, `unit`, `packing_size`) VALUES
(14, 'Texvalley', 'Womens Kurthi', 'unit', '2'),
(15, 'Zudio', 'Womens Kurthi', 'unit', '2');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE `purchase_master` (
  `id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `packing_size` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `party_name` varchar(100) NOT NULL,
  `purchase_type` varchar(100) NOT NULL,
  `expiry_date` date NOT NULL,
  `purchase_date` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_master`
--

INSERT INTO `purchase_master` (`id`, `company_name`, `product_name`, `unit`, `packing_size`, `quantity`, `price`, `party_name`, `purchase_type`, `expiry_date`, `purchase_date`, `username`) VALUES
(29, 'Zudio', 'Womens Kurthi', 'unit', '2', '5', '500', 'Textiles', 'Cash', '2023-04-12', '2023-04-12', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `return_products`
--

CREATE TABLE `return_products` (
  `id` int(5) NOT NULL,
  `return_by` varchar(50) NOT NULL,
  `bill_no` varchar(10) NOT NULL,
  `return_date` varchar(15) NOT NULL,
  `product_company` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_unit` varchar(20) NOT NULL,
  `packing_size` varchar(20) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_qty` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_products`
--

INSERT INTO `return_products` (`id`, `return_by`, `bill_no`, `return_date`, `product_company`, `product_name`, `product_unit`, `packing_size`, `product_price`, `product_qty`, `total`) VALUES
(1, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(2, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(3, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(4, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(5, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(6, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(7, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(8, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(9, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(10, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(11, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(12, 'admin', '', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(13, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(14, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(15, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(16, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(17, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(18, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(19, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(20, 'admin', '00004', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '7', '7000'),
(21, 'admin', '00005', '2023-04-11', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '1', '1000'),
(22, '00008', 'admin', '2023-04-12', 'Zudio', 'Womens Kurthi', 'unit', '2', '600', '1', '600'),
(23, 'admin', '00006', '2023-04-12', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '1', '1000'),
(24, 'admin', '00003', '2023-05-08', 'Texvalley', 'Womens Kurthi', 'unit', '2', '1000', '10', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `id` int(5) NOT NULL,
  `product_company` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `packing_size` varchar(100) NOT NULL,
  `product_qty` varchar(5) NOT NULL,
  `product_selling_price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`id`, `product_company`, `product_name`, `product_unit`, `packing_size`, `product_qty`, `product_selling_price`) VALUES
(10, 'Texvalley', 'Womens Kurthi', 'unit', '2', '74', '1000'),
(11, 'Zudio', 'Womens Kurthi', 'unit', '2', '9', '600');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(5) NOT NULL,
  `unit` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit`) VALUES
(15, 'XS'),
(16, 'S'),
(17, 'M'),
(18, 'L'),
(19, 'XL'),
(20, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `role`, `status`) VALUES
(25, 'admin', 'admin', 'admin', 'admin', 'admin', 'active'),
(29, 'user', 'user', 'user', 'user', 'user', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_header`
--
ALTER TABLE `billing_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_name`
--
ALTER TABLE `company_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_info`
--
ALTER TABLE `party_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_master`
--
ALTER TABLE `purchase_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_products`
--
ALTER TABLE `return_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `billing_header`
--
ALTER TABLE `billing_header`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_name`
--
ALTER TABLE `company_name`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `party_info`
--
ALTER TABLE `party_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchase_master`
--
ALTER TABLE `purchase_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `return_products`
--
ALTER TABLE `return_products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stock_master`
--
ALTER TABLE `stock_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
