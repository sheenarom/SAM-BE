-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 02:48 PM
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
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(4, 1, 'Family1.jpeg', 'Celebrating the New Year with my Family.', '#D687EB'),
(5, 1, 'Family2.jpeg', 'Family day in the mountain.', '#D687EB'),
(6, 1, 'Family3.jpeg', 'These shared experiences can create a sense of belonging and trust, which is often what makes my classmates feel like an extended family to me.', '#FF0000'),
(8, 2, 'Nclcian.jpeg', 'Best friends since senior high school.', '#6495ed'),
(9, 2, 'Annepunan.jpeg', 'College Besties since 1st year.', '#6495ed'),
(10, 2, 'Badjao.jpg', 'Best friends are those special people who bring joy, support, and comfort into my life. They\'re the ones that i can trust with your deepest thoughts, share your victories with, and lean on during tough times.', '#6495ed'),
(11, 2, 'Japan.jpg', 'Japan is an incredible dream destination, offering a blend of modern innovation and rich cultural history.', '#87ceeb'),
(12, 3, 'Siargao.jpg', 'Siargao is a beautiful island in the Philippines known for its stunning natural landscapes and laid back vibe. ', '#87ceeb'),
(13, 3, 'Korea.jpg', 'Korea has become a top destination for many travelers, offering bustling cities like Seoul, with its mix of traditional palaces and futuristic skyscrapers.', '#87ceeb'),
(14, 3, 'Player.jpg', 'Being a player of both basketball and volleyball shows my versatility and athleticism. ', '#bc8f8f'),
(15, 3, 'Basketball.jpeg', 'Basketball is a sport that brings together skill, strategy, and teamwork.', '#bc8f8f'),
(16, 4, 'Volleyball.jpeg', 'Volleyball is more than just a sport it\'s a passion that offers both physical challenge and excitement. ', '#bc8f8f');

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Family Island', 'More memories with Family.', 'This island represents the love, support, and connections I have with my family. It is a place where memories are created and cherished.\r\n\r\n\r\n\r\n\r\n\r\n', '#D687EB', 'Family1.jpeg', 'active'),
(2, 'Friendship Island', 'Where friendships bloom forever.', 'This island holds the friendships I value. It’s where laughter, trust, and shared experiences build lasting bonds.', '#6495ed', 'Annepunan.jpeg', 'active'),
(3, 'Travel Island', 'Dream Destination\r\n', 'This island represents the joy of exploration and adventure. It holds memories of new places and experiences.', '#87ceeb', 'Japan.jpg', 'active'),
(4, 'Sports Island', 'A sports i enjoy the most.', 'Sports teach discipline, teamwork, and perseverance. This island represents my passion for physical activity and sportsmanship.', '#bc8f8f', 'Player.jpg', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
