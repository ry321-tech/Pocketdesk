-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 02:20 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `id` int(11) NOT NULL,
  `pass_key` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_key`
--

INSERT INTO `check_key` (`id`, `pass_key`) VALUES
(1, '1524466698250'),
(2, 'used'),
(3, 'used'),
(4, 'used'),
(5, 'used'),
(6, 'used'),
(7, 'used'),
(8, 'used'),
(9, 'used'),
(10, 'used'),
(11, 'used'),
(12, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `networkadmins_master`
--

CREATE TABLE `networkadmins_master` (
  `admin_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `user_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkadmins_master`
--

INSERT INTO `networkadmins_master` (`admin_id`, `network_name`, `user_id`) VALUES
(5, 'mickey', 'siddharth.95thakur@yahoo.com'),
(6, 'mickeyfinal', 'siddharth.95thakur@yahoo.com'),
(11, 'RashmiNetwork', 'rashmi@gmail.com'),
(12, 'ter', 'siddharth.95thakur@gmail.com'),
(13, 'siddharth2', 'siddharth.95thakur@gmail.com'),
(14, 'khushbu', 'khushbu@gmail.com'),
(15, 'mickeynetwork', 'mickey.95thakur@gmail.com'),
(16, 'thakur', 'thakur@gmail.com'),
(17, 'Rama_Network', 'rama@gmail.com'),
(18, 'thakur.sweety', 'priyanka.199thakur@gmail.com'),
(19, 'network', 'siddharth.95thakur@yahoo.com'),
(20, 'Siddharth_Network', 'siddharth.95thakur@gmail.com'),
(21, 'abcnetwork', 'abc@gmail.com'),
(22, 'Test', 'sid.95thakur@rediffmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `networkcalendar_master`
--

CREATE TABLE `networkcalendar_master` (
  `entry_id` int(11) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_title` varchar(30) NOT NULL,
  `network_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `networkinvite_master`
--

CREATE TABLE `networkinvite_master` (
  `invite_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `invited_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkinvite_master`
--

INSERT INTO `networkinvite_master` (`invite_id`, `network_name`, `user_id`, `status`, `invited_id`) VALUES
(12, 'mickeyfinal', 'siddharth.95thakur@yahoo.com', 1, 'siddharth.95thakur@gmail.com'),
(15, 'RashmiNetwork', 'rashmi@gmail.com', 1, 'siddharth.95thakur@gmail.com'),
(16, 'ter', 'siddharth.95thakur@gmail.com', 1, 'sid.95thakur@gmail.com'),
(19, 'ter', 'siddharth.95thakur@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(20, 'khushbu', 'khushbu@gmail.com', 0, '19aprkhushi@gmail.com'),
(21, 'siddharth2', 'siddharth.95thakur@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(22, 'thakur', 'thakur@gmail.com', 1, 'sid.95thakur@gmail.com'),
(23, 'thakur', 'thakur@gmail.com', 1, 'siddharth.95thakur@gmail.com'),
(24, 'RashmiNetwork', 'rashmi@gmail.com', 1, 'sid.95thakur@gmail.com'),
(25, 'Rama_Network', 'rama@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(26, 'mickeyfinal', 'siddharth.95thakur@yahoo.com', 0, 'siddharth.95thakur@gmail.com'),
(27, 'thakur.sweety', 'priyanka.199thakur@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(28, 'network', 'siddharth.95thakur@yahoo.com', 0, 'shubhamrastogi010@gmail.com'),
(29, 'Siddharth_Network', 'siddharth.95thakur@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(30, 'mickeyfinal', 'siddharth.95thakur@yahoo.com', 1, 'mickey.95thakur@gmail.com'),
(31, 'ter', 'siddharth.95thakur@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(32, 'RashmiNetwork', 'rashmi@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(33, 'Siddharth_Network', 'siddharth.95thakur@gmail.com', 1, 'sid.95thakur@gmail.com'),
(34, 'Siddharth_Network', 'siddharth.95thakur@gmail.com', 1, 'mickey.95thakur@gmail.com'),
(35, 'Siddharth_Network', 'siddharth.95thakur@gmail.com', 1, 'rama@gmail.com'),
(36, 'Siddharth_Network', 'siddharth.95thakur@gmail.com', 1, 'priyanka.199thakur@gmail.com'),
(37, 'mickeynetwork', 'mickey.95thakur@gmail.com', 1, 'sid.95thakur@gmail.com'),
(39, 'Test', 'sid.95thakur@rediffmail.com', 1, 'mickey.95thakur@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `networkmembers_master`
--

CREATE TABLE `networkmembers_master` (
  `member_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `user_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networkmembers_master`
--

INSERT INTO `networkmembers_master` (`member_id`, `network_name`, `user_id`) VALUES
(17, 'mickey', 'siddharth.95thakur@yahoo.com'),
(21, 'mickeyfinal', 'siddharth.95thakur@yahoo.com'),
(22, 'mickeyfinal', 'siddharth.95thakur@gmail.com'),
(29, 'RashmiNetwork', 'rashmi@gmail.com'),
(33, 'ter', 'siddharth.95thakur@gmail.com'),
(35, 'siddharth2', 'siddharth.95thakur@gmail.com'),
(41, 'khushbu', 'khushbu@gmail.com'),
(43, 'mickeynetwork', 'mickey.95thakur@gmail.com'),
(44, 'thakur', 'thakur@gmail.com'),
(45, 'thakur', 'sid.95thakur@gmail.com'),
(46, 'thakur', 'siddharth.95thakur@gmail.com'),
(47, 'Rama_Network', 'rama@gmail.com'),
(48, 'Rama_Network', 'mickey.95thakur@gmail.com'),
(49, 'thakur.sweety', 'priyanka.199thakur@gmail.com'),
(50, 'thakur.sweety', 'mickey.95thakur@gmail.com'),
(51, 'network', 'siddharth.95thakur@yahoo.com'),
(52, 'Siddharth_Network', 'siddharth.95thakur@gmail.com'),
(54, 'mickeyfinal', 'mickey.95thakur@gmail.com'),
(57, 'Siddharth_Network', 'sid.95thakur@gmail.com'),
(60, 'Siddharth_Network', 'priyanka.199thakur@gmail.com'),
(61, 'abcnetwork', 'abc@gmail.com'),
(63, 'mickeynetwork', 'sid.95thakur@gmail.com'),
(64, 'Test', 'sid.95thakur@rediffmail.com'),
(65, 'Test', 'mickey.95thakur@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `networks_master`
--

CREATE TABLE `networks_master` (
  `network_id` int(11) NOT NULL,
  `network_name` varchar(70) NOT NULL,
  `filepath` varchar(200) NOT NULL,
  `user_id` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networks_master`
--

INSERT INTO `networks_master` (`network_id`, `network_name`, `filepath`, `user_id`) VALUES
(110, 'mickey', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1523814877488rk.jpg', 'siddharth.95thakur@yahoo.com'),
(111, 'mickeyfinal', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1523815234889ffc.jpg', 'siddharth.95thakur@yahoo.com'),
(120, 'RashmiNetwork', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1523875999952Pink_Fresh_Tulips_1280_x_800_widescreen.jpg', 'rashmi@gmail.com'),
(123, 'ter', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1523957173542ee.jpg', 'siddharth.95thakur@gmail.com'),
(124, 'siddharth2', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524046473446thumb-03.jpg', 'siddharth.95thakur@gmail.com'),
(125, 'khushbu', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524133927664thumb-02.jpg', 'khushbu@gmail.com'),
(126, 'mickeynetwork', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524164788885thumb-11.jpg', 'mickey.95thakur@gmail.com'),
(127, 'thakur', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\152419988323002.jpg', 'thakur@gmail.com'),
(128, 'Rama_Network', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\15242927242141523647363352ffc.jpg', 'rama@gmail.com'),
(129, 'thakur.sweety', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524533378226download (1).jpg', 'priyanka.199thakur@gmail.com'),
(130, 'network', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524556713446download (2).jpg', 'siddharth.95thakur@yahoo.com'),
(131, 'Siddharth_Network', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524597350953download.jpg', 'siddharth.95thakur@gmail.com'),
(132, 'abcnetwork', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1525079754226de.jpg', 'abc@gmail.com'),
(133, 'Test', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1525435045690intro-bg.jpg', 'sid.95thakur@rediffmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts_master`
--

CREATE TABLE `posts_master` (
  `post_id` int(20) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `network_name` varchar(70) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_content` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_master`
--

INSERT INTO `posts_master` (`post_id`, `user_id`, `network_name`, `post_date`, `post_content`) VALUES
(43, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-19 19:00:17', 'Computer science is the study of the theory, experimentation, and engineering that form the basis for the design and use of computers. It is the scientific and practical approach to computation and its applications and the systematic study of the feasibility, structure.\r\nAT 12:29 AM\r\nFriday, 20 April '),
(44, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-19 19:01:22', 'Its fields can be divided into a variety of theoretical and practical disciplines. Some fields, such as computational complexity theory (which explores the fundamental properties of computational and intractable problems), are highly abstract.\r\n12:30 AM\r\nFriday, 20 April 2018 (IST)'),
(45, 'mickey.95thakur@gmail.com', 'siddharth2', '2018-04-19 19:03:29', 'The earliest foundations of what would become computer science predate the invention of the modern digital computer. Machines for calculating fixed numerical tasks such as the abacus have existed since antiquity, aiding in computations such as multiplication and division.\r\n12:33 AM\r\nFriday, 20 April'),
(46, 'mickey.95thakur@gmail.com', 'mickeynetwork', '2018-04-19 19:06:59', 'this is mickey group'),
(47, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-19 19:42:58', 'If you can use CSS then you can use padding or margin. See Box model, and for Internet Explorer, also read Internet Explorer box model bug. If whitespace becomes.'),
(48, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-19 19:45:06', 'Steps. Insert a non-breaking space. Normally, HTML will only display one space between words, no matter how many times you press the space bar. Insert white space of different widths. Indent paragraphs with CSS. Create a line break. Define a paragraph if needed. Use pre-formatted text to read spaces'),
(49, 'siddharth.95thakur@yahoo.com', 'mickeyfinal', '2018-04-19 20:18:56', 'hi'),
(50, 'thakur@gmail.com', 'thakur', '2018-04-20 04:59:44', 'this is thakur first post'),
(51, 'siddharth.95thakur@gmail.com', 'thakur', '2018-04-20 05:02:55', 'this is siddharth post in thakur network'),
(52, 'thakur@gmail.com', 'thakur', '2018-04-20 05:04:49', 'this is post at 10:34'),
(53, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-20 09:59:21', 'hjghjghj'),
(55, 'siddharth.95thakur@gmail.com', 'ter', '2018-04-21 03:55:49', 'hi ter ist homepage testing'),
(56, 'siddharth.95thakur@gmail.com', 'thakur', '2018-04-21 04:20:36', 'hi its time 9:50 am'),
(57, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-21 04:37:01', 'hi'),
(62, 'siddharth.95thakur@gmail.com', 'ter', '2018-04-21 04:47:14', 'hi'),
(63, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-21 04:47:22', 'hello'),
(65, 'siddharth.95thakur@gmail.com', 'ter', '2018-04-21 04:55:13', 'hi bro'),
(66, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-21 04:55:30', 'this is siddharth network'),
(68, 'siddharth.95thakur@gmail.com', 'mickey', '2018-04-21 04:59:06', 'hi this is mickey group'),
(69, 'siddharth.95thakur@gmail.com', 'RashmiNetwork', '2018-04-21 04:59:32', 'hi this is rashmi group'),
(70, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-21 05:22:26', 'this is 10:52'),
(71, 'siddharth.95thakur@gmail.com', 'ter', '2018-04-21 05:22:53', '\r\nIts fields can be divided into a variety of theoretical and practical disciplines. Some fields, such as computational complexity theory (which explores the fundamental properties of computational and intractable problems), are highly abstradddddddddddddddddddct. 12:30 AM Friday, 20 April 2018 (IST)'),
(72, 'rashmi@gmail.com', 'RashmiNetwork', '2018-04-21 05:42:03', 'this is first post in rashmi network'),
(74, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-21 06:24:36', 'this is  11:54 AM'),
(77, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-21 06:28:01', 'hi '),
(78, 'rama@gmail.com', 'Rama_Network', '2018-04-21 06:39:27', 'hi this is my first post'),
(79, 'rama@gmail.com', 'Rama_Network', '2018-04-21 06:41:06', 'hi this is my second post'),
(80, 'rama@gmail.com', 'Rama_Network', '2018-04-21 06:41:23', 'hi this is my third post'),
(81, 'mickey.95thakur@gmail.com', 'Rama_Network', '2018-04-21 06:48:38', 'this is mickey'),
(82, 'mickey.95thakur@gmail.com', 'mickeynetwork', '2018-04-22 18:52:38', 'Hi i am in mickey network'),
(83, 'siddharth.95thakur@yahoo.com', 'mickey', '2018-04-23 07:44:10', 'hi hi'),
(84, 'priyanka.199thakur@gmail.com', 'thakur.sweety', '2018-04-24 01:30:24', 'hi i am sweety'),
(85, 'mickey.95thakur@gmail.com', 'thakur.sweety', '2018-04-24 01:35:15', 'hi sweety i am mickey'),
(86, 'mickey.95thakur@gmail.com', 'thakur.sweety', '2018-04-24 07:26:04', 'hi i am mickey'),
(87, 'siddharth.95thakur@yahoo.com', 'network', '2018-04-24 07:58:48', 'kcmds'),
(88, 'siddharth.95thakur@gmail.com', 'Siddharth_Network', '2018-04-24 19:03:24', 'hi this is my first post'),
(89, 'siddharth.95thakur@yahoo.com', 'mickeyfinal', '2018-04-25 15:34:11', 'hi'),
(90, 'siddharth.95thakur@gmail.com', 'siddharth2', '2018-04-25 19:56:37', 'hi this is siddharth'),
(91, 'siddharth.95thakur@gmail.com', 'Siddharth_Network', '2018-04-25 20:03:49', 'i am trying to complete my work.'),
(92, 'siddharth.95thakur@yahoo.com', 'mickeyfinal', '2018-04-26 07:39:53', 'HI '),
(93, 'siddharth.95thakur@yahoo.com', 'mickey', '2018-04-27 14:28:02', 'hello'),
(94, 'siddharth.95thakur@yahoo.com', 'mickey', '2018-04-30 09:30:11', 'Hi this is 3 o clock'),
(95, 'siddharth.95thakur@yahoo.com', 'mickeyfinal', '2018-04-30 09:31:23', 'hi this is mickey final network where i want to write some text'),
(96, 'siddharth.95thakur@yahoo.com', 'network', '2018-04-30 09:32:03', 'India is a vast South Asian country with diverse terrain â?? from Himalayan peaks to Indian Ocean coastline â?? and history reaching back 5 millennia. In the north, Mughal Empire landmarks include Delhiâ??s Red Fort complex and massive Jama Masjid mosque, plus Agraâ??s iconic Taj Mahal mausoleum.'),
(97, 'mickey.95thakur@gmail.com', 'mickeynetwork', '2018-05-04 11:26:32', 'Hi guys'),
(98, 'mickey.95thakur@gmail.com', 'Test', '2018-05-04 12:05:10', 'Hi Test Network Members which is created by sid.95thakur@yahoo.com'),
(99, 'sid.95thakur@rediffmail.com', 'Test', '2018-05-04 12:03:40', 'hi i am sid'),
(100, 'mickey.95thakur@gmail.com', 'mickeynetwork', '2018-05-04 12:07:32', 'hi this is mickeynetwork\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tasknotes_master`
--

CREATE TABLE `tasknotes_master` (
  `note_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `post_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_master`
--

CREATE TABLE `tasks_master` (
  `task_id` int(11) NOT NULL,
  `task_description` varchar(200) NOT NULL,
  `network_id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `execution_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_master`
--

CREATE TABLE `users_master` (
  `user_id` varchar(70) NOT NULL,
  `user_name` varchar(70) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `url_img` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_master`
--

INSERT INTO `users_master` (`user_id`, `user_name`, `password`, `user_gender`, `contact_no`, `url_img`) VALUES
('abc@gmail.com', 'Abc', '1234', 'Male', '9300458555', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDeskraw\\web\\images\\1525080107778download (1).jpg'),
('khushbu@gmail.com', 'Khushbu Shrivastava', '123', 'Female', '9685387805', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524133894738thumb-12.jpg'),
('mickey.95thakur@gmail.com', 'Mickey Thakur', '123456', 'Male', '8547854785', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524689215032de.jpg'),
('pocketdeskweb@gmail.com', 'PocketDesk Test', '1234', 'Male', '8659552555', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\profile.jpg'),
('priyanka.199thakur@gmail.com', 'Priyanka Thakur', '1234', 'Female', '9713682744', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524533395350download (2).jpg'),
('rama@gmail.com', 'Rama Singh', '1234', 'Female', '8659955199', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\15242928267231523741950789Fire_autumn_1280_x_800_widescreen.jpg'),
('rashmi@gmail.com', 'Rashmi Rai', '1234', 'Female', '8659955789', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1525080790124images.jpg'),
('S@gmail.com', 'Siddharth Singh Thakur', '1234', 'Male', '9826758456', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\profile.jpg'),
('shubham@gmail.com', 'Shubham', '1234', 'Male', '5285218528', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\profile.jpg'),
('sid.95thakur@gmail.com', 'Sid Thakur', '1234', 'Male', '9999999999', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1523876194140nam.jpg'),
('sid.95thakur@rediffmail.com', 'Siddharth Test', '1234', 'Male', '8888888888', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\15254350037582.jpg'),
('siddharth.95thakur@gmail.com', 'Siddharth Singh', '123456', 'Male', '8659955198', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524689079692images.jpg'),
('siddharth.95thakur@yahoo.com', 'Siddharth Yahoo', '1234', 'Male', '8659955198', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\1524670535923intro-bg.jpg'),
('thakur@gmail.com', 'Thakur', '1234', 'Male', '8654477777', 'C:\\Users\\Siddharth\\Documents\\NetBeansProjects\\PocketDesk\\web\\images\\152420024226801.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `networkadmins_master`
--
ALTER TABLE `networkadmins_master`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `networkinvite_master`
--
ALTER TABLE `networkinvite_master`
  MODIFY `invite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `networkmembers_master`
--
ALTER TABLE `networkmembers_master`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `networks_master`
--
ALTER TABLE `networks_master`
  MODIFY `network_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `posts_master`
--
ALTER TABLE `posts_master`
  MODIFY `post_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
