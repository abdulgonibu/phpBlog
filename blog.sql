-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 09:30 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(1) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_name` text NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_email`, `admin_name`, `admin_pass`) VALUES
(1, 'abdulgoni.me@gmail.com', 'Abdul Goni', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(1) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_des`) VALUES
(5, 'Sports', 'Sports'),
(6, 'About Us', ''),
(7, 'Contact Us', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(255) NOT NULL,
  `post_title` varchar(60) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_img` varchar(255) NOT NULL,
  `post_cat` int(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_comment_count` int(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_summery` varchar(255) NOT NULL,
  `post_tag` varchar(255) NOT NULL,
  `post_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `post_img`, `post_cat`, `post_date`, `post_comment_count`, `post_author`, `post_summery`, `post_tag`, `post_status`) VALUES
(4, 'BLog Post', 'BLog Post', '292834580_606988590840561_1303207418756150549_n.jpg', 6, '2022-07-18', 3, 'Admin', 'BLog Post', 'BLog Post', 1),
(5, 'BLog Post', 'afsdf', '292834577_738323537253453_3536015324974408_n.jpg', 6, '2022-07-18', 3, 'Admin', 'BLog Post', 'BLog Post', 1),
(6, 'BLog Post', 'sdfgdsf', '292834580_606988590840561_1303207418756150549_n.jpg', 7, '2022-07-18', 3, 'Admin', 'sdfsdf', 'dsfdsf', 1),
(7, 'BLog Post', 'dsgfds', '292834580_606988590840561_1303207418756150549_n.jpg', 6, '2022-07-18', 3, 'Admin', 'sdfdsf', 'sdfdsf', 1),
(8, 'Abdul Goni', 'sdfsdf', '292834577_738323537253453_3536015324974408_n.jpg', 6, '2022-07-18', 3, 'Admin', 'sdfdsf', 'sdfdsf', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `post_with_cat`
-- (See below for the actual view)
--
CREATE TABLE `post_with_cat` (
`post_id` int(255)
,`post_title` varchar(60)
,`post_content` longtext
,`post_img` varchar(255)
,`post_author` varchar(255)
,`post_date` date
,`post_comment_count` int(255)
,`post_summery` varchar(255)
,`post_tag` varchar(255)
,`post_status` tinyint(3)
,`cat_id` int(1)
,`cat_name` text
);

-- --------------------------------------------------------

--
-- Structure for view `post_with_cat`
--
DROP TABLE IF EXISTS `post_with_cat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `post_with_cat`  AS SELECT `posts`.`post_id` AS `post_id`, `posts`.`post_title` AS `post_title`, `posts`.`post_content` AS `post_content`, `posts`.`post_img` AS `post_img`, `posts`.`post_author` AS `post_author`, `posts`.`post_date` AS `post_date`, `posts`.`post_comment_count` AS `post_comment_count`, `posts`.`post_summery` AS `post_summery`, `posts`.`post_tag` AS `post_tag`, `posts`.`post_status` AS `post_status`, `category`.`cat_id` AS `cat_id`, `category`.`cat_name` AS `cat_name` FROM (`posts` join `category` on(`posts`.`post_cat` = `category`.`cat_id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
