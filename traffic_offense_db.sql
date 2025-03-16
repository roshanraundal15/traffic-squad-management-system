-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 10:48 AM
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
-- Database: `traffic_offense_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `challan`
--

CREATE TABLE `challan` (
  `image1` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `challan`
--

INSERT INTO `challan` (`image1`, `remark`) VALUES
('image.jpg', 'No license '),
('image.jpg', 'No Parking'),
('IMG_6160.jpeg', 'Overspending ');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_list`
--

CREATE TABLE `drivers_list` (
  `id` int(30) NOT NULL,
  `license_id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = suspended, 3 = banned',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers_list`
--

INSERT INTO `drivers_list` (`id`, `license_id_no`, `name`, `status`, `date_created`, `date_updated`) VALUES
(5, '4354658', 'Shaikh, Faizal J', 1, '2024-10-21 13:03:43', NULL),
(6, '475546', 'Pao, Soham S', 1, '2024-10-21 13:08:17', NULL),
(7, '3', 'Raul, Aryan M', 1, '2024-10-21 13:09:05', NULL),
(8, '4', 'Patil, Sujal S', 1, '2024-10-21 13:09:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drivers_meta`
--

CREATE TABLE `drivers_meta` (
  `driver_id` int(30) DEFAULT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers_meta`
--

INSERT INTO `drivers_meta` (`driver_id`, `meta_field`, `meta_value`, `date_updated`) VALUES
(5, 'license_id_no', '4354658', '2024-10-21 13:03:43'),
(5, 'lastname', 'shaikh', '2024-10-21 13:03:43'),
(5, 'firstname', 'Faizal', '2024-10-21 13:03:43'),
(5, 'middlename', 'J', '2024-10-21 13:03:43'),
(5, 'dob', '2024-06-11', '2024-10-21 13:03:43'),
(5, 'present_address', 'asfserg', '2024-10-21 13:03:43'),
(5, 'permanent_address', 'f', '2024-10-21 13:03:43'),
(5, 'civil_status', 'Single', '2024-10-21 13:03:43'),
(5, 'nationality', 'india', '2024-10-21 13:03:43'),
(5, 'contact', '1111111111', '2024-10-21 13:03:43'),
(5, 'license_type', 'Professional', '2024-10-21 13:03:43'),
(5, 'image_path', '', '2024-10-21 13:03:43'),
(5, 'driver_id', '5', '2024-10-21 13:03:43'),
(6, 'license_id_no', '475546', '2024-10-21 13:08:17'),
(6, 'lastname', 'pao', '2024-10-21 13:08:17'),
(6, 'firstname', 'soham', '2024-10-21 13:08:17'),
(6, 'middlename', 's', '2024-10-21 13:08:17'),
(6, 'dob', '2024-10-25', '2024-10-21 13:08:17'),
(6, 'present_address', 'sfvvsffvs', '2024-10-21 13:08:17'),
(6, 'permanent_address', 'df', '2024-10-21 13:08:17'),
(6, 'civil_status', 'Single', '2024-10-21 13:08:17'),
(6, 'nationality', 'india', '2024-10-21 13:08:17'),
(6, 'contact', '2222222222', '2024-10-21 13:08:17'),
(6, 'license_type', 'Professional', '2024-10-21 13:08:17'),
(6, 'image_path', '', '2024-10-21 13:08:17'),
(6, 'driver_id', '6', '2024-10-21 13:08:17'),
(7, 'license_id_no', '3', '2024-10-21 13:09:05'),
(7, 'lastname', 'raul', '2024-10-21 13:09:05'),
(7, 'firstname', 'Aryan', '2024-10-21 13:09:05'),
(7, 'middlename', 'M', '2024-10-21 13:09:05'),
(7, 'dob', '2024-10-16', '2024-10-21 13:09:05'),
(7, 'present_address', 'dskvhdgsxvhsbhi', '2024-10-21 13:09:05'),
(7, 'permanent_address', 'sdiduufv', '2024-10-21 13:09:05'),
(7, 'civil_status', 'Single', '2024-10-21 13:09:05'),
(7, 'nationality', 'india', '2024-10-21 13:09:05'),
(7, 'contact', '3333333333', '2024-10-21 13:09:05'),
(7, 'license_type', 'Professional', '2024-10-21 13:09:05'),
(7, 'image_path', '', '2024-10-21 13:09:05'),
(7, 'driver_id', '7', '2024-10-21 13:09:05'),
(8, 'license_id_no', '4', '2024-10-21 13:09:47'),
(8, 'lastname', 'patil', '2024-10-21 13:09:47'),
(8, 'firstname', 'sujal', '2024-10-21 13:09:47'),
(8, 'middlename', 's', '2024-10-21 13:09:47'),
(8, 'dob', '2024-10-25', '2024-10-21 13:09:47'),
(8, 'present_address', 'dsuhs', '2024-10-21 13:09:47'),
(8, 'permanent_address', 'difuuh', '2024-10-21 13:09:47'),
(8, 'civil_status', 'Single', '2024-10-21 13:09:47'),
(8, 'nationality', 'india', '2024-10-21 13:09:47'),
(8, 'contact', '4444444444', '2024-10-21 13:09:47'),
(8, 'license_type', 'Professional', '2024-10-21 13:09:47'),
(8, 'image_path', '', '2024-10-21 13:09:47'),
(8, 'driver_id', '8', '2024-10-21 13:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `offenses`
--

CREATE TABLE `offenses` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `fine` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offenses`
--

INSERT INTO `offenses` (`id`, `code`, `name`, `description`, `fine`, `status`, `date_created`, `date_updated`) VALUES
(1, '2', 'Driving without License', 'This is a traffic offense for driving without License', 1000, 1, '2021-08-19 09:14:43', '2024-10-21 13:12:59'),
(2, '1', 'over speeding', '&lt;p&gt;this offense is of overspeeding&lt;/p&gt;', 5000, 1, '2021-08-19 13:54:51', '2024-10-21 13:11:29'),
(3, '3', 'not wearing seatbelt', '&lt;p&gt;this offence is of not wearing seatbelt&lt;/p&gt;', 1000, 1, '2024-10-21 13:13:33', NULL),
(4, '4', 'traffic signal violations', '&lt;p&gt;this offence is violating signal&lt;/p&gt;', 500, 1, '2024-10-21 13:14:23', '2024-10-21 13:15:06'),
(5, '5', 'Drunk and drive', '&lt;p&gt;This offence is of drunk and drive&lt;/p&gt;', 10000, 1, '2024-10-21 13:15:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offense_items`
--

CREATE TABLE `offense_items` (
  `driver_offense_id` int(30) NOT NULL,
  `offense_id` int(30) DEFAULT NULL,
  `fine` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offense_items`
--

INSERT INTO `offense_items` (`driver_offense_id`, `offense_id`, `fine`, `status`, `date_created`) VALUES
(3, 5, 10000, 0, '2024-10-21 15:55:00'),
(3, 3, 1000, 0, '2024-10-21 15:55:00'),
(4, 3, 1000, 0, '2024-10-21 15:55:00'),
(5, 1, 1000, 0, '2024-10-21 16:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `offense_list`
--

CREATE TABLE `offense_list` (
  `id` int(30) NOT NULL,
  `driver_id` int(30) NOT NULL,
  `officer_name` text NOT NULL,
  `officer_id` text NOT NULL,
  `ticket_no` text NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offense_list`
--

INSERT INTO `offense_list` (`id`, `driver_id`, `officer_name`, `officer_id`, `ticket_no`, `total_amount`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(3, 8, 'chalu pandey', '12', '1', 11000, '', 0, '2024-10-21 15:55:00', NULL),
(4, 7, 'chalu pandey', '023', '4', 1000, '', 0, '2024-10-21 15:55:00', NULL),
(5, 6, 'hntfr', 'chal', '6584', 1000, '', 0, '2024-10-21 16:04:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `police_users`
--

CREATE TABLE `police_users` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police_users`
--

INSERT INTO `police_users` (`username`, `name`, `password`) VALUES
('Aryan123', 'Aryan', '165669f10483da5f34d1b4ccc25bf308'),
('Roshan12', 'Roshan ', '1b084e5a64c118c6c1ecb06d9564ddbc');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Traffic Squad Management'),
(6, 'short_name', 'TSM'),
(11, 'logo', 'uploads/1729496220_WhatsApp Image 2024-10-21 at 13.06.28_70774809.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1629334140_traffic_bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(9, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', 'uploads/1629336240_avatar.jpg', NULL, 2, '2021-08-19 09:24:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers_list`
--
ALTER TABLE `drivers_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `offenses`
--
ALTER TABLE `offenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD KEY `driver_offense_id` (`driver_offense_id`),
  ADD KEY `offense_id` (`offense_id`);

--
-- Indexes for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers_list`
--
ALTER TABLE `drivers_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offenses`
--
ALTER TABLE `offenses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `offense_list`
--
ALTER TABLE `offense_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD CONSTRAINT `drivers_meta_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD CONSTRAINT `offense_items_ibfk_1` FOREIGN KEY (`driver_offense_id`) REFERENCES `offense_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offense_items_ibfk_2` FOREIGN KEY (`offense_id`) REFERENCES `offenses` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD CONSTRAINT `offense_list_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
