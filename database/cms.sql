-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2020 at 06:41 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(4, 'JAVA'),
(5, 'OOP'),
(6, 'Procedural PHP');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(3, 5, 'abhishek', 'abhi@gmail.com', 'this is an awesome course', 'approved', '2020-09-27'),
(4, 5, 'vikas', 'vikas@gmail.com', 'fabulous course', 'approved', '2020-09-27'),
(5, 6, 'shital', 'shital@reddifmail.com', 'php is very beautiful', 'approved', '2020-09-27'),
(6, 8, 'abhay', 'abhay@yahoo.com', 'oop is very reusable concept', 'approved', '2020-09-27'),
(7, 5, 'Petter', 'petter@gmail.com', 'This is just another piece of comment. ', 'approved', '2020-09-27'),
(8, 7, 'anant', 'anant@gmail.com', 'hey there, how you doing ', 'unapproved', '2020-09-27'),
(9, 6, 'walin', 'walin@gmail.com', 'ia ma walin', 'unapproved', '2020-09-27'),
(10, 8, 'akash', 'akash@dhag.com', 'this is testing comment', 'unapproved', '2020-09-27'),
(11, 5, 'count', 'checking@testing.com', 'this is increasing count by 1', 'unapproved', '2020-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(255) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(5, 1, 'Web Bootstrap course', 'Edwin Diaz sir', '2020-09-27', 'image_3.jpg', 'this is an awesome post regarding Bootstrap!!!!          ', 'bootstrap,courses,class,great', 7, 'published'),
(6, 3, 'Best PHP Course Ever', 'Edwin Diaz', '2020-09-25', 'image_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean semper vel mauris vitae luctus. In volutpat fermentum eros quis dignissim. Mauris quis neque augue. Ut vel mauris mi. Nullam gravida, felis in posuere semper, felis dolor placerat tortor, a laoreet purus purus et dui. Aliquam eget nisl volutpat, fermentum ante sed, varius tellus. Duis ipsum mi, ornare nec finibus sit amet, lacinia ac ex. Pellentesque fermentum id augue at eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean semper vel mauris vitae luctus. In volutpat fermentum eros quis dignissim. Mauris quis neque augue. Ut vel mauris mi. Nullam gravida, felis in posuere semper, felis dolor placerat tortor, a laoreet purus purus et dui. Aliquam eget nisl volutpat, fermentum ante sed, varius tellus. Duis ipsum mi, ornare nec finibus sit amet, lacinia ac ex. Pellentesque fermentum id augue at eleifend. \r\n  ', 'PHP, test', 6, 'Draft'),
(8, 5, 'Example post Number 200', 'AMIT', '2020-09-25', 'image_3.jpg', 'this is an OOP course with bootstrap', 'bootstrap', 6, 'draft'),
(9, 2, 'Example post 1', 'Edwin Diaz', '2020-09-27', 'image_4.jpg', 'this is an awesome javascript course', 'javascript,courses,class,great', 0, 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'rico', '123', 'Rico', 'Swave', 'ricoswave@gmail.com', '', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
