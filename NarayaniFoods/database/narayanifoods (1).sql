-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 06:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `narayanifoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '12345'),
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `message`) VALUES
(2, 'abc@gmail.com', 'asfdasd'),
(3, 'abc@gmail.com', 'asdad'),
(4, 'sahil@gmail.com', 'increase menu'),
(5, 'omkar@gmail.com', 'good service'),
(6, 'ilhan@gmail.com', 'good taste'),
(7, 'abc@gmail.com', 'Real Authentic taste');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `date`) VALUES
(30, 'Omkar', 'omkar@gmail.com', '1234567890', 'jarag nagar', 'cod', 'Podi Idli(1), Idli Crumbs(1)', '80', '2024-04-22 21:53:26'),
(31, 'Yash Gurav', 'yash@gmail.com', '1234567890', 'pachgaon', 'cod', 'Dosa(1), Podi Idli(1), Coffee(1), Bun Jam(1)', '115', '2024-04-22 22:02:37'),
(32, 'parth', 'parth@gmail.com', '1234567890', 'manglwar peth', 'cod', 'Appe(1)', '30', '2024-04-22 22:10:26'),
(33, 'Ilhan', 'ilhan@gmail.com', '1234567890', 'R K nagar', 'cod', 'Podi Idli(1), Tea(1), Bun Maska(1)', '70', '2024-04-22 22:14:15'),
(34, 'atharv narayanpure', 'atharv@gmail.com', '1234567890', 'jarag nagar', 'cod', 'Uttappam(1), Tea(1), Sponge Dosa(1), Bun Maska(1)', '120', '2024-04-23 09:36:48'),
(35, 'Parth Mane', 'parth@gmail.com', '1234567890', 'Mangalwar peth', 'cod', 'Idli Crumbs(1), Dosa(1), Bun Maska(1), Tea(1)', '105', '2024-04-24 00:25:10'),
(36, 'Ninad', 'ninad@gmail.com', '1234567890', 'Jarag Nagar', 'cod', 'Masala Dosa(1), Tea(1), Podi Idli(1)', '90', '2024-04-25 08:17:51'),
(37, 'Ninad', 'abc@gmail.com', '9370108068', 'Kolhapur', 'cod', 'Idli(1), Dosa(1), Tea(1)', '80', '2024-04-29 16:57:24'),
(38, 'Manoj ', 'abc@gmail.com', '1234567890', 'Jarag Nagar', 'cod', 'Appe(1), Dosa(1), Coffee(1)', '85', '2024-04-29 22:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Idli', '35', 1, 'images/idli.jpg', 'p1000'),
(2, 'Podi Idli', '40', 1, 'images/podiidli.jpg', 'p1001'),
(3, 'Idli Crumbs', '40', 1, 'images/idlicrumbs.jpeg', 'p1002'),
(4, 'Appe', '30', 1, 'images/appe.jpg', 'p1003'),
(5, 'Medu Vada', '40', 1, 'images/meduvada.jpg', 'p1004'),
(6, 'Idli and Vada', '40', 1, 'images/mix.jpg', 'p1005'),
(7, 'Dosa', '35', 1, 'images/dosa.jpg', 'p1006'),
(8, 'Masala Dosa', '40', 1, 'images/masaladosa.jpg', 'p1007'),
(9, 'Sponge Dosa', '40', 1, 'images/spongedosa.jpg', 'p1008'),
(10, 'Uttappam', '50', 1, 'images/uttappam.jpeg', 'p1009'),
(11, 'Tea', '10', 1, 'images/tea.png', 'p1010'),
(12, 'Coffee', '20', 1, 'images/cofee.jpg', 'p1011'),
(13, 'Bun Maska', '20', 1, 'images/bunmaska.jpg', 'p1012'),
(14, 'Bun Jam', '20', 1, 'images/bunjam.jpg', 'p1013');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `name`, `username`, `email`, `password`, `phone`, `address`) VALUES
(1, 'omkar Manoj Kulkarni', 'omkar', 'omkar@gmail.com', 'admin', 8381198652, 'jarag nagar kolhapur'),
(2, 'Parth pratap Mane', 'parth', 'parth@gmail.com', '12345', 97431237, 'shivaji peth kolhapur'),
(3, 'yash yuvraj gurav', 'yash', 'yash@gmail.com', '12345', 6542321346, 'pachgoan'),
(4, 'Sandeep Suresh Kulka', 'sandeep', 'sandeep@gamil.com', '12345', 12333652, 'jarag nagar'),
(5, 'ninad khadilkar', 'ninad123', 'niand@gamil.com', '12345', 12333652, 'subhash nagar'),
(6, 'ilhan m pirjade ', 'ilhan123', 'ilhan@gamil.com', '12345', 1233365244, 'r k nagar'),
(7, 'manoj shankar kulkar', 'manoj', 'manoj@gmail.com', '12345', 1233365244, 'jarag nagar'),
(8, 'anant dhanajay kulka', 'anant', 'anant@gmaiol.com', 'admin', 12333652, 'chikodi'),
(9, 'atharvaa narayanpure', 'atharv12345', 'abc@gmail.com', '12345', 1234567890, 'Kakks'),
(10, 'Sarang Bhave', 'admin', 'admin@email.com', '12345', 987654321, 'Shivswarup Nagar'),
(11, 'Sahil Fepade', 'sahil', 'abc@email.com', '12345', 1234567890, 'Pachgaon'),
(12, 'Rajwardhan Patil', 'raj', 'raj@gmail.com', '12345', 1234567890, 'Jarag Nagar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
