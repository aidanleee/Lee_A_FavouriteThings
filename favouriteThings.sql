-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2019 at 10:48 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `favouriteThings`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `img` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `ranking` tinyint(4) NOT NULL,
  `often` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `name`, `title`, `img`, `description`, `ranking`, `often`) VALUES
(1, 'hockey', 'Hockey', 'hockey.jpg', 'One of my favourite things is hockey. I love playing hockey. I grew up playing it and have made so many friends while playing the sport. I will continue to play it for the rest of my life.', 1, 2),
(2, 'sushi', 'Sushi', 'sushi.jpg', 'One of my favourite things is sushi. I love sushi so much. I get it all the time. My favourite things to eat are salmon sashimi and dynamite rolls. I also love dim sum. ', 2, 1),
(3, 'fornite', 'Fortnite', 'fortnite.jpg', 'One of my favourite things is fortnite. I love playing fortnite so much. I play with my friends all night and we love playing together. I love fortnite. and fortnite loves me.\r\n', 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
