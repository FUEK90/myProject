-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 06:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `action` enum('เข้า','ออก') NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `weight_out` decimal(10,2) DEFAULT NULL,
  `status` enum('เข้าคลัง','ออก') NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_name`, `action`, `type`, `weight`, `unit`, `price`, `weight_out`, `status`, `date_time`) VALUES
(1, 'ปลาลิ้นหมา', 'เข้า', 'ใหญ่', 50, 'กก.', 200, NULL, 'เข้าคลัง', '2024-09-27 04:38:30'),
(2, 'ปลาทูยาว', 'เข้า', 'ใหญ่', 150, 'กก.', 100, NULL, 'เข้าคลัง', '2024-09-27 04:38:30'),
(3, 'ปลาฉลาม', 'เข้า', 'เล็ก', 25, 'ขีด', 150, NULL, 'เข้าคลัง', '2024-09-27 04:38:30'),
(4, 'หมึกกล้วย', 'เข้า', 'ตกไซด์', 50, 'ขีด', 200, NULL, 'เข้าคลัง', '2024-09-27 04:38:30'),
(5, 'ปลาตาหวาน', 'เข้า', 'ใหญ่', 100, 'กก.', 150, NULL, 'เข้าคลัง', '2024-09-30 04:29:52'),
(6, 'ปลาดุก', 'เข้า', 'ใหญ่', 50, 'ขีด', 150, NULL, 'เข้าคลัง', '2024-10-02 10:08:04'),
(7, 'ปลาดุก', 'เข้า', 'เล็ก', 150, 'กก.', 150, NULL, 'เข้าคลัง', '2024-10-02 10:09:10'),
(8, 'ปูม้า', 'เข้า', 'ใหญ่', 15, 'กก.', 150, NULL, 'เข้าคลัง', '2024-10-02 10:20:48'),
(9, 'ปลาลิ้นหมาควาย', 'เข้า', 'ใหญ่', 100, 'กก.', 230, NULL, 'เข้าคลัง', '2024-10-06 08:38:46'),
(11, 'หมึกกล้วย', 'เข้า', 'เล็ก', 20, 'ขีด', 200, NULL, 'เข้าคลัง', '2024-10-06 08:59:30'),
(12, 'กุ้งฝอย', 'เข้า', 'เล็ก', 200, 'ขีด', 400, NULL, 'เข้าคลัง', '2024-10-06 09:02:58'),
(13, 'ปลาตะเพียน', 'เข้า', 'ใหญ่', 400, 'กก.', 150, NULL, 'เข้าคลัง', '2024-10-08 05:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_history`
--

CREATE TABLE `inventory_history` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `change_amount` decimal(10,2) NOT NULL,
  `change_type` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `change_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_history`
--

INSERT INTO `inventory_history` (`id`, `product_name`, `change_amount`, `change_type`, `type`, `change_date`) VALUES
(1, 'ปลาลิ้นหมา', 200.00, 'addition', 'ใหญ่', '2024-09-27 11:38:30'),
(2, 'ปลาทูยาว', 350.00, 'addition', 'ใหญ่', '2024-09-27 11:38:30'),
(3, 'ปลาฉลาม', 100.00, 'addition', 'เล็ก', '2024-09-27 11:38:30'),
(4, 'หมึกกล้วย', 200.00, 'addition', 'ตกไซด์', '2024-09-27 11:38:30'),
(5, 'ปลาทูยาว', 50.00, '0', 'ใหญ่', '2024-09-27 11:39:09'),
(6, 'หมึกกล้วย', 100.00, '0', 'ตกไซด์', '2024-09-27 11:39:09'),
(7, 'ปลาลิ้นหมา', 50.00, '0', 'ใหญ่', '2024-09-27 11:45:02'),
(8, 'ปลาทูยาว', 100.00, '0', 'ใหญ่', '2024-09-27 11:45:02'),
(9, 'ปลาฉลาม', 50.00, '0', 'เล็ก', '2024-09-27 11:45:02'),
(10, 'หมึกกล้วย', 100.00, '0', 'ตกไซด์', '2024-09-27 11:45:02'),
(11, 'หมึกกล้วย', 200.00, 'addition', 'ตกไซด์', '2024-09-29 12:57:26'),
(12, 'หมึกกล้วย', 200.00, 'addition', 'ตกไซด์', '2024-09-29 13:01:13'),
(13, 'หมึกกล้วย', 200.00, 'addition', 'ตกไซด์', '2024-09-29 13:03:33'),
(14, 'หมึกกล้วย', 100.00, 'addition', 'ตกไซด์', '2024-09-29 13:04:10'),
(15, 'ปลาตาหวาน', 100.00, 'addition', 'ใหญ่', '2024-09-30 11:29:52'),
(16, 'ปลาลิ้นหมา', 150.00, '0', 'ใหญ่', '2024-09-30 12:28:34'),
(17, 'ปลาทูยาว', 50.00, '0', 'ใหญ่', '2024-09-30 12:28:34'),
(18, 'ปลาดุก', 200.00, 'addition', 'ใหญ่', '2024-10-02 17:08:04'),
(19, 'ปลาดุก', 200.00, 'addition', 'เล็ก', '2024-10-02 17:09:10'),
(20, 'หมึกกล้วย', 100.00, '0', 'ตกไซด์', '2024-10-02 17:10:10'),
(21, 'ปลาดุก', 100.00, '0', 'ใหญ่', '2024-10-02 17:10:10'),
(22, 'ปูม้า', 30.00, 'addition', 'ใหญ่', '2024-10-02 17:20:48'),
(23, 'ปลาฉลาม', 25.00, '0', 'เล็ก', '2024-10-02 17:21:45'),
(24, 'ปลาดุก', 50.00, '0', 'ใหญ่', '2024-10-02 17:21:45'),
(25, 'ปูม้า', 15.00, '0', 'ใหญ่', '2024-10-02 17:21:45'),
(26, 'ปลาลิ้นหมาควาย', 200.00, 'addition', 'ใหญ่', '2024-10-06 15:38:46'),
(27, 'ปลาดุก', 50.00, '0', 'เล็ก', '2024-10-06 15:52:19'),
(28, 'ปลาลิ้นหมาควาย', 50.00, 'addition', 'เล็ก', '2024-10-06 15:53:10'),
(29, 'หมึกกล้วย', 20.00, 'addition', 'เล็ก', '2024-10-06 15:59:30'),
(30, 'หมึกกล้วย', 200.00, '0', 'ตกไซด์', '2024-10-06 15:59:55'),
(31, 'กุ้งฝอย', 40.00, 'addition', 'เล็ก', '2024-10-06 16:02:58'),
(32, 'หมึกกล้วย', 100.00, '0', 'ตกไซด์', '2024-10-06 16:04:17'),
(33, 'ปลาลิ้นหมา', 100.00, '0', 'ใหญ่', '2024-10-08 11:35:41'),
(34, 'ปลาลิ้นหมาควาย', 100.00, '0', 'ใหญ่', '2024-10-08 11:35:41'),
(35, 'ปลาตะเพียน', 500.00, 'addition', 'ใหญ่', '2024-10-08 12:45:35'),
(36, 'ปลาลิ้นหมา', 50.00, '0', 'ใหญ่', '2024-10-08 12:46:33'),
(37, 'หมึกกล้วย', 50.00, '0', 'ตกไซด์', '2024-10-08 12:46:33'),
(38, 'ปลาตะเพียน', 100.00, '0', 'ใหญ่', '2024-10-08 12:46:33'),
(39, 'กุ้งฝอย', 160.00, 'addition', 'ใหญ่', '2024-10-08 12:52:24'),
(40, 'กุ้งฝอย', 160.00, 'addition', 'เล็ก', '2024-10-08 12:53:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_history`
--
ALTER TABLE `inventory_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inventory_history`
--
ALTER TABLE `inventory_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
