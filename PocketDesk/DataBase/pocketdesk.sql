-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 04, 2018 at 11:02 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pocketdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `check_key`
--

CREATE TABLE `check_key` (
  `id` INT(11) NOT NULL,
  `pass_key` VARCHAR(30) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_key`
--

INSERT INTO `check_key` (`id`, `pass_key`) VALUES
(13, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `networkadmins_master`
--

CREATE TABLE `networkadmins_master` (
  `admin_id` INT(11) NOT NULL,
  `network_name` VARCHAR(70) NOT NULL,
  `user_id` VARCHAR(70) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkadmins_master`
--

INSERT INTO `networkadmins_master` (`admin_id`, `network_name`, `user_id`) VALUES
(1, '6thjuneAdvjava', 'shailesh.madhav@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `networkcalendar_master`
--

CREATE TABLE `networkcalendar_master` (
  `entry_id` INT(11) NOT NULL,
  `event_date` DATETIME NOT NULL,
  `event_title` VARCHAR(30) NOT NULL,
  `network_id` INT(11) NOT NULL,
  `status` TINYINT(1) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `networkinvite_master`
--

CREATE TABLE `networkinvite_master` (
  `invite_id` INT(11) NOT NULL,
  `network_name` VARCHAR(70) NOT NULL,
  `user_id` VARCHAR(30) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `invited_id` VARCHAR(70) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkinvite_master`
--

INSERT INTO `networkinvite_master` (`invite_id`, `network_name`, `user_id`, `status`, `invited_id`) VALUES
(1, '6thjuneAdvjava', 'shailesh.madhav@gmail.com', 1, '6thjuneadvjava@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `networkmembers_master`
--

CREATE TABLE `networkmembers_master` (
  `member_id` INT(11) NOT NULL,
  `network_name` VARCHAR(70) NOT NULL,
  `user_id` VARCHAR(70) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkmembers_master`
--

INSERT INTO `networkmembers_master` (`member_id`, `network_name`, `user_id`) VALUES
(1, '6thjuneAdvjava', 'shailesh.madhav@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `networks_master`
--

CREATE TABLE `networks_master` (
  `network_id` INT(11) NOT NULL,
  `network_name` VARCHAR(70) NOT NULL,
  `filepath` VARCHAR(200) NOT NULL,
  `user_id` VARCHAR(70) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networks_master`
--

INSERT INTO `networks_master` (`network_id`, `network_name`, `filepath`, `user_id`) VALUES
(2, '6thjuneAdvjava', '/root/6thjuneadvjava/PocketDesk/web/images/1530593923839baleno.jpg', 'shailesh.madhav@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts_master`
--

CREATE TABLE `posts_master` (
  `post_id` INT(20) NOT NULL,
  `user_id` VARCHAR(30) NOT NULL,
  `network_name` VARCHAR(70) DEFAULT NULL,
  `post_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_content` VARCHAR(1000) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_master`
--

INSERT INTO `posts_master` (`post_id`, `user_id`, `network_name`, `post_date`, `post_content`) VALUES
(1, 'shailesh.madhav@gmail.com', '6thjuneAdvjava', '2018-07-03 05:15:51', 'Hi , This is my first post here in 6thjuneAdvJava. Welcome to Jungle !!! '),
(2, '6thjuneadvjava@gmail.com', '6thjuneAdvjava', '2018-07-03 05:41:59', 'Hi Madhav , Thank you for inviting me to this network , Lets bring the world closer together :p');

-- --------------------------------------------------------

--
-- Table structure for table `tasknotes_master`
--

CREATE TABLE `tasknotes_master` (
  `note_id` INT(11) NOT NULL,
  `task_id` INT(11) NOT NULL,
  `content` VARCHAR(200) NOT NULL,
  `post_date` DATETIME NOT NULL,
  `status` TINYINT(1) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_master`
--

CREATE TABLE `tasks_master` (
  `task_id` INT(11) NOT NULL,
  `task_description` VARCHAR(200) NOT NULL,
  `network_id` INT(11) NOT NULL,
  `user_id` VARCHAR(30) NOT NULL,
  `execution_date` DATETIME NOT NULL,
  `created_date` DATETIME NOT NULL,
  `status` TINYINT(1) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_master`
--

CREATE TABLE `users_master` (
  `user_id` VARCHAR(70) NOT NULL,
  `user_name` VARCHAR(70) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `user_gender` VARCHAR(10) NOT NULL,
  `contact_no` VARCHAR(10) NOT NULL,
  `url_img` VARCHAR(350) NOT NULL,
  `verified` TINYINT(1) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_master`
--

INSERT INTO `users_master` (`user_id`, `user_name`, `password`, `user_gender`, `contact_no`, `url_img`, `verified`) VALUES
('6thjuneadvjava@gmail.com', 'june', '6thjune_jvm', 'Male', '7894561325', 'C:/Users/Siddharth/Documents/NetBeansProjects/PocketDesk/web/images/profile.jpg', 1),
('shailesh.madhav@gmail.com', 'Madhav', 'sh@12345', 'Male', '9619554394', '/root/6thjuneadvjava/PocketDesk/web/images/1530509749162baleno.jpg', 1),
('vin@gmail.com', 'vinamra', 'vin@123', 'Male', '7894561234', '/root/6thjuneadvjava/PocketDesk/web/images/1530509749162baleno.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `check_key`
--
ALTER TABLE `check_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networkadmins_master`
--
ALTER TABLE `networkadmins_master`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `network_name` (`network_name`);

--
-- Indexes for table `networkcalendar_master`
--
ALTER TABLE `networkcalendar_master`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `network_id` (`network_id`);

--
-- Indexes for table `networkinvite_master`
--
ALTER TABLE `networkinvite_master`
  ADD PRIMARY KEY (`invite_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `network_name` (`network_name`);

--
-- Indexes for table `networkmembers_master`
--
ALTER TABLE `networkmembers_master`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `network_name` (`network_name`);

--
-- Indexes for table `networks_master`
--
ALTER TABLE `networks_master`
  ADD PRIMARY KEY (`network_id`),
  ADD UNIQUE KEY `network_name` (`network_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts_master`
--
ALTER TABLE `posts_master`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `network_name` (`network_name`);

--
-- Indexes for table `tasknotes_master`
--
ALTER TABLE `tasknotes_master`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `tasks_master`
--
ALTER TABLE `tasks_master`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `performer_id` (`user_id`),
  ADD KEY `network_id` (`network_id`);

--
-- Indexes for table `users_master`
--
ALTER TABLE `users_master`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `check_key`
--
ALTER TABLE `check_key`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `networkadmins_master`
--
ALTER TABLE `networkadmins_master`
  MODIFY `admin_id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `networkinvite_master`
--
ALTER TABLE `networkinvite_master`
  MODIFY `invite_id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `networkmembers_master`
--
ALTER TABLE `networkmembers_master`
  MODIFY `member_id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `networks_master`
--
ALTER TABLE `networks_master`
  MODIFY `network_id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts_master`
--
ALTER TABLE `posts_master`
  MODIFY `post_id` INT(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `networkadmins_master`
--
ALTER TABLE `networkadmins_master`
  ADD CONSTRAINT `networkadmins_master_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_master` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `networkadmins_master_ibfk_3` FOREIGN KEY (`network_name`) REFERENCES `networks_master` (`network_name`);

--
-- Constraints for table `networkcalendar_master`
--
ALTER TABLE `networkcalendar_master`
  ADD CONSTRAINT `networkcalendar_master_ibfk_1` FOREIGN KEY (`network_id`) REFERENCES `networks_master` (`network_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `networkinvite_master`
--
ALTER TABLE `networkinvite_master`
  ADD CONSTRAINT `networkinvite_master_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_master` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `networkinvite_master_ibfk_3` FOREIGN KEY (`network_name`) REFERENCES `networks_master` (`network_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `networkmembers_master`
--
ALTER TABLE `networkmembers_master`
  ADD CONSTRAINT `networkmembers_master_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_master` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `networkmembers_master_ibfk_3` FOREIGN KEY (`network_name`) REFERENCES `networks_master` (`network_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `networks_master`
--
ALTER TABLE `networks_master`
  ADD CONSTRAINT `networks_master_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_master` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts_master`
--
ALTER TABLE `posts_master`
  ADD CONSTRAINT `posts_master_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_master` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_master_ibfk_3` FOREIGN KEY (`network_name`) REFERENCES `networks_master` (`network_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks_master`
--
ALTER TABLE `tasks_master`
  ADD CONSTRAINT `tasks_master_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_master` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_master_ibfk_3` FOREIGN KEY (`network_id`) REFERENCES `networks_master` (`network_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
