-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 03:57 PM
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
(1, 1, 'imgs/family1.jpg', 'Family is my safe haven.', '#D3D3D3'),
(2, 1, 'imgs/family2.jpg', 'Their love keeps me grounded.', '#D3D3D3'),
(3, 1, 'imgs/family3.jpg', 'Together, we create priceless memories.', '#D3D3D3'),
(4, 2, 'imgs/friends1.jpg', 'Friends are the siblings we choose.', '#D3D3D3'),
(5, 2, 'imgs/friends2.jpg', 'They bring joy to every moment.', '#D3D3D3'),
(6, 2, 'imgs/friends3.jpg', 'Life feels lighter with them around.', '#D3D3D3'),
(7, 3, 'imgs/sports1.jpg', 'Sports teach discipline and teamwork.', '#D3D3D3'),
(8, 3, 'imgs/sports2.jpg', 'The thrill of the game is unmatched.', '#D3D3D3'),
(9, 3, 'imgs/sports3.jpg', 'Winning or losing, it’s all about passion.', '#D3D3D3'),
(10, 4, 'imgs/travel1.jpg', 'Traveling opens the heart and mind.', '#D3D3D3'),
(11, 4, 'imgs/travel2.jpg', 'Each place tells a unique story.', '#D3D3D3'),
(12, 4, 'imgs/travel3.jpg', 'Memories made on the road last forever.', '#D3D3D3');

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
(1, 'My Family Island', 'Family is love and support', 'Family is the cornerstone of our lives, providing unconditional love, unwavering support, and a sense of belonging. They are the ones who celebrate our successes, comfort us in our struggles, and create a foundation of trust and care.', '#AEC6CF', 'imgs/family.jpg', 'active'),
(2, 'My Friendship Island', 'Friends are life’s treasures', 'Friends bring light into our lives, offering laughter, understanding, and companionship. They stand by us through thick and thin, sharing moments that turn into cherished memories. True friends enrich our lives in ways that words can hardly express.', '#AEC6CF', 'imgs/friends.jpg', 'active'),
(3, 'My Sports Island', 'Sports inspire growth and unity', 'Sports teach us resilience, teamwork, and the value of persistence. Whether playing or watching, they bring people together, spark passion, and foster a spirit of healthy competition. It’s not just about winning; it’s about the journey and lessons learned along the way.', '#AEC6CF', 'imgs/sports.jpg', 'active'),
(4, 'My Travel Island', 'Travel broadens the soul', 'Traveling is an enriching experience that takes us beyond the familiar and into the wonders of the world. It opens our hearts to new cultures, landscapes, and perspectives. Every journey becomes a story, every destination a chapter in the book of our lives.', '#AEC6CF', 'imgs/travel.jpg', 'active');

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
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
