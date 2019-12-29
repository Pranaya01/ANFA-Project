-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2019 at 04:28 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_anfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `row_id` int(11) NOT NULL,
  `category_id` int(30) NOT NULL,
  `category_title` varchar(30) NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(30) DEFAULT NULL,
  `modifiedDate` date DEFAULT current_timestamp(),
  `modifiedBy` varchar(30) DEFAULT NULL,
  `isDeleted` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`row_id`, `category_id`, `category_title`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 'user_type', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(2, 2, 'news_type', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(3, 3, 'club_division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(4, 4, 'gender', '2019-12-16', 'Adminn', '0000-00-00', '', 'No'),
(5, 5, 'country', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(6, 6, 'status', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(7, 7, 'tournament_type', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(8, 8, 'club_name', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(9, 9, 'position', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(10, 10, 'kit_brand', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(11, 11, 'venue', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(12, 12, 'affiliation', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(13, 13, 'match_status', '2019-12-29', 'Admin', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_value`
--

CREATE TABLE `category_value` (
  `row_id` int(11) NOT NULL,
  `cvalue_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(30) NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(30) DEFAULT NULL,
  `modifiedDate` date DEFAULT current_timestamp(),
  `modifiedBy` varchar(30) DEFAULT NULL,
  `isDeleted` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_value`
--

INSERT INTO `category_value` (`row_id`, `cvalue_id`, `category_id`, `category_name`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 100, 1, 'Admin', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(2, 101, 1, 'Editor', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(3, 102, 2, 'Competition', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(4, 103, 2, 'ANFA', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(5, 104, 2, 'Development', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(6, 105, 2, 'Mens Football', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(7, 106, 2, 'Womens Football', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(8, 107, 3, 'A Division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(9, 108, 3, 'B Division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(10, 109, 3, 'C Division', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(11, 110, 4, 'Male', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(12, 111, 4, 'Female', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(13, 112, 4, 'Others', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(15, 113, 5, 'Nepal', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(16, 114, 5, 'India', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(17, 115, 5, 'Bangladesh', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(18, 116, 5, 'Sri Lanka', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(19, 117, 5, 'Maldivies ', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(20, 118, 5, 'Pakistan', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(21, 119, 5, 'Bhutan', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(22, 120, 5, 'Others', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(23, 121, 6, 'Active', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(24, 122, 6, 'Inactive', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(25, 123, 7, 'League', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(26, 124, 7, 'Knockout', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(27, 125, 8, 'Armed Police Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(28, 126, 8, 'Brigade Boys Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(29, 127, 8, 'Chyasal Youth Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(30, 128, 8, 'Friends Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(31, 129, 8, 'Himalayan Sherpa Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(32, 130, 8, 'Jawalakhel Youth Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(33, 131, 8, 'Machindra Club ', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(34, 132, 8, 'Manang Marsyangdi Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(35, 133, 8, 'Nepal Police Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(36, 134, 8, 'New Road Team', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(37, 135, 8, 'Sankata Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(38, 136, 8, 'Saraswati Youth Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(39, 137, 8, 'Three Star Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(40, 138, 8, 'Tribhuwan Army Club', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(41, 139, 8, 'GoalKeeper', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(42, 140, 9, 'Defender', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(43, 141, 9, 'Midfielder', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(44, 142, 9, 'Forward', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(45, 143, 10, 'Kelme', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(46, 144, 10, 'Adidas', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(47, 145, 10, 'Attsh', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(48, 146, 10, 'Nike', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(49, 147, 10, 'Li Ning', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(50, 148, 11, 'Dasarath Stadium, Tripureshwor', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(51, 149, 11, 'ANFA Complex, Satdobato', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(52, 150, 12, 'ANFA', '2019-12-16', 'Admin', '0000-00-00', '', 'No'),
(53, 151, 13, 'Played', '2019-12-29', 'Admin', '0000-00-00', NULL, NULL),
(54, 152, 13, 'Not Played', '2019-12-29', 'Admin', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `row_id` int(11) DEFAULT NULL,
  `club_id` int(11) NOT NULL,
  `club_name` int(11) DEFAULT NULL,
  `club_description` text DEFAULT NULL,
  `club_founded_date` varchar(20) DEFAULT NULL,
  `club_address` varchar(30) DEFAULT NULL,
  `club_email` varchar(30) DEFAULT NULL,
  `club_division` int(11) DEFAULT NULL,
  `club_affiliation` int(11) DEFAULT NULL,
  `home_jersey_colour` varchar(30) DEFAULT NULL,
  `away_jersey_colour` varchar(30) DEFAULT NULL,
  `club_sponsor` varchar(50) DEFAULT NULL,
  `kit_brand` int(11) DEFAULT NULL,
  `club_logo` varchar(30) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `createdBy` varchar(30) DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedBy` varchar(30) DEFAULT NULL,
  `isDeleted` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`row_id`, `club_id`, `club_name`, `club_description`, `club_founded_date`, `club_address`, `club_email`, `club_division`, `club_affiliation`, `home_jersey_colour`, `away_jersey_colour`, `club_sponsor`, `kit_brand`, `club_logo`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 125, 'The Armed Police Force Club, commonly known as the APF Club, is a departmental armed police sporting club of Nepal. They currently play in the top division of the country.\n', '2001 A.D.', 'Swoyambhu, Kathmandu', 'computersection@apf.gov.np', 107, 150, 'Grey', 'White', 'Agni Mahindra', 143, 'apf.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(2, 2, 126, 'Brigade Boys Club is a Nepalese football club from Lalitpur that was established in 1987, which plays in the town of Kathmandu. They play in the Nepalese first division, the Nepal A- Division League.\n\n', '1987 A.D.', 'Manbhawan, Lalitpur', '', 107, 150, 'White', 'Yellow', 'Jyoti Bikash Bank', 143, 'bbc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(3, 3, 127, 'Founded in 1981 Chyasal Youth Club was established with a mission, Sports for health and fitness for the community and national pride. They Place in the A divison flight of Neapli A division league.\n\n', '1981 A.D.', 'Chysal, Lalitpur', '', 107, 150, 'Blue', 'Red', 'Himalayan College of Engineering', 143, 'cyc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(4, 4, 128, 'Friends Club is situated in Kopundole Lalitpur. This club is known for nurturing young talent of Nepalese Football. Friends Club has produced more than 200 national football players till date. It remained only a football club that every now and then organized certain social activities.\n\n', '1972 A.D.', 'Kupondole, Lalitpur', 'friendsclubkopundole@gmail.com', 107, 150, 'Blue', 'Red', 'Nepal Investment Bank', 143, 'fc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(5, 5, 129, 'Himalayan Sherpa Club is a topflight association football club from Nepal.. Himalayan Sherpa Club has won the title of Sindhu Gold Cup, Sayapatri Gold Cup, Butwol and 1st runners up in All Star Cup in Aabu Khaireni.\n\n', '', 'Hattigauda, Kathmandu', 'ktsherpa@gmail.com', 107, 150, 'Orange', 'White', 'Yeti Airlines', 143, 'hsc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(6, 6, 130, 'Established in 2029 B.S. Jawalakhel Youth Club is a social organization with focus on Sports and Social services. JYC is also social organization as it has been conducting various activities like Blood Donation, Health Camp, and Environment Awareness Program.\n', '1952 A.D.', 'Jawalakhel, Lalitpur', 'info@jyc.com.np', 107, 150, 'White', 'Blue', 'Prabhu Bank', 143, 'jyc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(7, 7, 131, '\n\nEstablished in 1973, Machhindra FC is a top flight Nepali football team from the central Kathmandu neighborhood of Keltole. The club finished in 6th place in the 2005/06 Martyrs League.\n\n', '1973 A.D.', 'MasanGalli, Kathmandu', 'machhindraclub1973@gmail.com', 107, 150, 'Red', 'White', 'San Miguel, Pepe Pizaa', 143, 'mfc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(8, 8, 132, 'Manang Marshyangdi Club is based in Swayambhu, Kathmandu. They play in the Nepalese first division, the Nepal A- Division League. They are in top spot for winning National League Championships and hey have won 7 National Leagues Championships Title.\n\n', '1982 A.D', 'Nayabazar, Kathmandu', '\nmanangmarshyangdi@gmail.com\n', 107, 150, 'Sky Blue', 'Green/White', 'Manang Trust', 143, 'mmc,png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(9, 9, 133, 'Nepal Police Club formerly known as Mahendra Police Club is departmental police football and cricket club of Nepal. They currently play in the top division of the country.\n\n', '1952 A.D.', 'Maharajgunj, Kathmandu', 'info@nepalpolice.gov.np', 107, 150, 'Blue', 'White', 'Nepal Telecom', 143, 'npc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(10, 10, 134, 'N.R.T. was established in 1991 BS (1934 AD). It has distinction to be a pioneer in the sport who has camouflaged a football team that mobilized youth against the autocratic Rana regime that ruled for 104 years.\n\n\n', '1934 A.D.', 'Tripureshwor, Kathmandu', 'kkm@nrt.org.np', 107, 150, 'Green', 'Blue', '', 143, 'nrt.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(11, 11, 135, 'Sankata Boys Sports Club , established in 1954 is a Nepali footbal club, which plays in the town of Kathmandu. They generally play in the Nepali first division games.\n', '1951 A.D.', 'Sankata Temple, Kathmandu', '', 107, 150, 'Blue', 'Red', '', 143, 'sc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(12, 12, 136, '.\nSaraswoti Youth Club is a topflight association football club from Nepal. They play at 25,000 capacity Dasarath Rangasala Stadium.', '1977 A.D', 'Airport, Kathmandu', 'uttamsab@yahoo.com', 107, 150, 'White', 'Blue', '', 143, 'syc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(13, 13, 137, 'Three Star Club is a Nepali football club based in Patan, Lalitpur. The club had a modest beginning in 2031B.S. A group of enthusiastic young people of Patan Durbar Square, Mangal Bazar established the club for sports development, social service, personality development and brotherhood.\n\n', '1974 A.D', 'Mangalbazar, Lalitpur', 'thrstarclub@yahoo.com', 107, 150, 'Blue', 'White', 'Ruslan Vodka', 144, 'tsc.png', '2019-12-16', 'Admin', NULL, NULL, NULL),
(14, 14, 138, 'Nepal Army Club, previously known as Tribhuvan Army Club, is the departmental Army sporting club of Nepal. They currently play in the top division of the country.\n\n', '1951 A.D', 'Lagankhel, Lalitpur', 'dte-dpr@nepalarmy.mil.np ', 107, 150, 'Maroon', 'Green', 'Pulsar', 143, 'tac.png', '2019-12-16', 'Admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_match_stats`
--

CREATE TABLE `detail_match_stats` (
  `row_id` int(11) NOT NULL,
  `match_detail_stats_id` int(128) NOT NULL,
  `tournament_id` int(128) DEFAULT NULL,
  `match_id` int(128) DEFAULT NULL,
  `club_1_possession` varchar(20) DEFAULT NULL,
  `club_2_possession` varchar(20) DEFAULT NULL,
  `club_1_shots` int(11) DEFAULT NULL,
  `club_2_shots` int(11) DEFAULT NULL,
  `club_1_shots_on_target` int(11) DEFAULT NULL,
  `club_2_shots_on_target` int(11) DEFAULT NULL,
  `club_1_passes` int(11) DEFAULT NULL,
  `club_2_passes` int(11) DEFAULT NULL,
  `club_1_offside` int(11) DEFAULT NULL,
  `club_2_offside` int(11) DEFAULT NULL,
  `club_1_corners` int(11) DEFAULT NULL,
  `club_2_corners` int(11) DEFAULT NULL,
  `club_1_fouls` int(11) DEFAULT NULL,
  `club_2_fouls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_match_stats`
--

INSERT INTO `detail_match_stats` (`row_id`, `match_detail_stats_id`, `tournament_id`, `match_id`, `club_1_possession`, `club_2_possession`, `club_1_shots`, `club_2_shots`, `club_1_shots_on_target`, `club_2_shots_on_target`, `club_1_passes`, `club_2_passes`, `club_1_offside`, `club_2_offside`, `club_1_corners`, `club_2_corners`, `club_1_fouls`, `club_2_fouls`) VALUES
(1, 1, 1, 1, '57%', '43%', 14, 16, 5, 3, 225, 168, 6, 1, 3, 2, 6, 12),
(2, 2, 1, 2, '57%', '43%', 14, 16, 5, 3, 225, 168, 6, 1, 3, 2, 6, 12),
(3, 3, 1, 3, '43%', '57%', 5, 4, 3, 2, 53, 70, 1, 3, 2, 3, 8, 4),
(4, 4, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 6, '57%', '43%', 5, 6, 1, 6, 216, 192, 8, 9, 2, 0, 4, 2),
(7, 7, 1, 7, '45%', '55%', 12, 8, 12, 8, 125, 200, 5, 9, 7, 1, 2, 3),
(8, 8, 1, 8, '42%', '58%', 13, 12, 2, 12, 125, 174, 2, 3, 2, 2, 21, 9),
(9, 9, 1, 9, '58%', '42%', 21, 11, 5, 3, 212, 155, 3, 2, 4, 2, 16, 10),
(10, 10, 1, 10, '54%', '46%', 7, 12, 0, 3, 149, 126, 1, 3, 11, 10, 1, 3),
(11, 11, 1, 11, '48%', '52%', 7, 12, 0, 3, 149, 126, 1, 3, 11, 10, 1, 3),
(12, 12, 1, 12, '54%', '46%', 9, 17, 3, 5, 251, 216, 4, 1, 3, 6, 10, 9),
(13, 13, 1, 13, '63%', '37%', 9, 15, 4, 4, 220, 131, 2, 4, 9, 6, 22, 16),
(14, 14, 1, 14, '52%', '48%', 14, 9, 4, 3, 194, 179, 2, 5, 3, 5, 21, 17),
(15, 15, 1, 15, '65%', '35%', 18, 3, 10, 1, 381, 202, 6, 1, 11, 0, 11, 10),
(16, 16, 1, 16, '65%', '35%', 15, 12, 7, 5, 303, 164, 3, 0, 12, 3, 9, 19),
(17, 17, 1, 17, '56%', '44%', 7, 15, 1, 6, 267, 206, 2, 4, 2, 6, 11, 9),
(18, 18, 1, 18, '52%', '48%', 17, 13, 6, 5, 119, 108, 4, 3, 13, 6, 11, 15),
(19, 19, 1, 19, '58%', '42%', 10, 5, 3, 2, 185, 134, 2, 7, 4, 3, 22, 12),
(20, 20, 1, 20, '45%', '55%', 8, 16, 4, 8, 320, 385, 2, 5, 4, 6, 9, 5),
(21, 21, 1, 21, '54%', '46%', 7, 18, 2, 5, 275, 234, 1, 2, 2, 3, 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `row_id` int(11) NOT NULL,
  `match_id` int(128) NOT NULL,
  `tournament_id` int(128) DEFAULT NULL,
  `club_1` int(11) DEFAULT NULL,
  `club_2` int(11) DEFAULT NULL,
  `matchDate` varchar(30) NOT NULL,
  `KickOffTime` time(6) DEFAULT NULL,
  `venue` int(11) DEFAULT NULL,
  `club_1_score` int(128) NOT NULL,
  `club_2_score` int(128) NOT NULL,
  `club_1_result` varchar(256) NOT NULL,
  `club_2_result` varchar(256) NOT NULL,
  `match_status` int(11) NOT NULL,
  `createdDate` date DEFAULT NULL,
  `createdBy` varchar(30) DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedBy` varchar(30) DEFAULT NULL,
  `isDeleted` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`row_id`, `match_id`, `tournament_id`, `club_1`, `club_2`, `matchDate`, `KickOffTime`, `venue`, `club_1_score`, `club_2_score`, `club_1_result`, `club_2_result`, `match_status`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 1, 131, 126, '12/14/2019', '15:00:00.000000', 149, 2, 0, 'W', 'L', 151, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 138, 128, '12/16/2019', '12:30:00.000000', 149, 2, 1, 'W', 'L', 151, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 135, 127, '12/16/2019', '13:00:00.000000', 148, 0, 2, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 136, 134, '12/17/2019', '13:00:00.000000', 149, 0, 4, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 133, 129, '12/17/2019', '15:00:00.000000', 148, 0, 0, 'D', 'D', 151, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 137, 130, '12/18/2019', '15:00:00.000000', 148, 0, 0, 'D', 'D', 151, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 125, 132, '12/18/2019', '13:00:00.000000', 148, 0, 2, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 127, 131, '12/20/2019', '13:00:00.000000', 149, 1, 1, 'D', 'D', 151, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 126, 128, '12/20/2019', '15:00:00.000000', 148, 2, 0, 'W', 'D', 151, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 136, 130, '12/21/2019', '13:00:00.000000', 149, 0, 1, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 135, 134, '12/21/2019', '15:00:00.000000', 148, 0, 1, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, 125, 129, '12/22/2019', '15:00:00.000000', 148, 0, 0, 'D', 'D', 151, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, 138, 132, '12/23/2019', '13:00:00.000000', 149, 0, 1, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, 137, 133, '12/23/2019', '15:00:00.000000', 148, 1, 0, 'W', 'L', 151, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, 131, 128, '12/25/2019', '13:00:00.000000', 149, 3, 0, 'W', 'L', 151, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, 127, 134, '12/25/2019', '15:00:00.000000', 148, 0, 2, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 126, 132, '12/26/2019', '13:00:00.000000', 149, 0, 1, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 135, 130, '12/26/2019', '15:00:00.000000', 148, 1, 1, 'D', 'D', 151, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, 138, 129, '12/27/2019', '13:00:00.000000', 149, 2, 0, 'W', 'L', 151, NULL, NULL, NULL, NULL, NULL),
(20, 20, 1, 136, 133, '12/27/2019', '15:00:00.000000', 148, 0, 2, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(21, 21, 1, 125, 137, '12/28/2019', '15:00:00.000000', 148, 0, 1, 'L', 'W', 151, NULL, NULL, NULL, NULL, NULL),
(22, 22, 1, 134, 131, '12/30/2019', '13:00:00.000000', 149, 0, 0, '', '', 152, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, 128, 132, '12/31/2019', '15:00:00.000000', 149, 0, 0, '', '', 152, NULL, NULL, NULL, NULL, NULL),
(24, 24, 1, 127, 130, '12/31/2019', '13:00:00.000000', 149, 0, 0, '', '', 152, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, 126, 129, '1/1/2019', '15:00:00.000000', 149, 0, 0, '', '', 152, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `row_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `news_title` varchar(256) NOT NULL,
  `news_description` text NOT NULL,
  `news_type` int(11) DEFAULT NULL,
  `news_image` varchar(256) NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(256) DEFAULT NULL,
  `modifiedDate` date DEFAULT current_timestamp(),
  `modifiedBy` varchar(256) DEFAULT NULL,
  `isDeleted` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `player_data`
--

CREATE TABLE `player_data` (
  `row_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `date_of_birth` varchar(30) DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `player_position` int(11) DEFAULT NULL,
  `player_country` int(11) DEFAULT NULL,
  `player_status` int(11) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `goal_score` varchar(11) DEFAULT NULL,
  `goal_assist` varchar(11) DEFAULT NULL,
  `clean_sheet` int(11) DEFAULT NULL,
  `red_card` int(11) DEFAULT NULL,
  `yellow_card` int(11) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `createdBy` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player_data`
--

INSERT INTO `player_data` (`row_id`, `player_id`, `club_id`, `first_name`, `last_name`, `full_name`, `date_of_birth`, `place_of_birth`, `gender`, `player_position`, `player_country`, `player_status`, `image`, `goal_score`, `goal_assist`, `clean_sheet`, `red_card`, `yellow_card`, `createdDate`, `createdBy`) VALUES
(1, 1, 1, 'Yubraj', 'Khadka', 'Yubraj Khadka', '6/15/1996', '', 110, 0, 113, 121, 'apfYubraj Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(2, 2, 1, 'Santosh', 'Shrestha', 'Santosh Shrestha', '8/4/1988', '', 110, 0, 113, 121, 'apfSantosh Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(3, 3, 1, 'Shyam Kumar', 'Nepali', 'Shyam Kumar Nepali', '9/13/1992', '', 110, 0, 113, 121, 'apfShyam K 113i.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(4, 4, 1, 'Ram Kumar', 'Kumal', 'Ram Kumar Kumal', '9/10/1994', '', 110, 141, 113, 121, 'apfRam K Kumal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(5, 5, 1, 'Amrit Kumar', 'Chaudhary', 'Amrit Kumar Chaudhary', '1/18/1993', '', 110, 139, 113, 121, 'apfAmrit K Chaudhary.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(6, 6, 1, 'Prabin Kumar', 'Syangtan', 'Prabin Kumar Syangtan', '3/15/1993', '', 110, 142, 113, 121, 'apfPrabin K Syangtan.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(7, 7, 1, 'Sudip', 'Shikhrakar', 'Sudip Shikhrakar', '9/21/1989', '', 110, 140, 113, 121, 'apfSudip Shikhrakar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(8, 8, 1, 'Milan', 'Rai', 'Milan Rai', '11/4/1980', '', 110, 0, 113, 121, 'apfMilan Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(9, 9, 1, 'Nabin ', 'Lama', 'Nabin  Lama', '3/25/1992', '', 110, 141, 113, 121, 'apfNabin Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(10, 10, 1, 'Hari', 'Karki', 'Hari Karki', '11/16/1993', '', 110, 0, 113, 121, 'apfHari Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(11, 11, 1, 'Bikey', 'Tamang', 'Bikey Tamang', '6/25/1993', '', 110, 0, 113, 121, 'apfBikey Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(12, 12, 1, 'Birendra Prakash', 'Yadav', 'Birendra Prakash Yadav', '11/9/1997', '', 110, 0, 113, 121, 'apfBirendra P Yadav.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(13, 13, 1, 'Raju', 'Yogi', 'Raju Yogi', '11/18/1986', '', 110, 0, 113, 121, 'apfRaju Yogi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(14, 14, 1, 'Ramesh', 'Dangal', 'Ramesh Dangal', '2/5/1988', '', 110, 140, 113, 121, 'apfRamesh Dangal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(15, 15, 1, 'Rajiv', 'Lopchan', 'Rajiv Lopchan', '4/2/2002', '', 110, 141, 113, 121, 'apfRajiv Lopchan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(16, 16, 1, 'Biswas', 'Udas', 'Biswas Udas', '1/16/2000', '', 110, 0, 113, 121, 'apfBiswas Udas.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(17, 17, 1, 'Niraj', 'Chaudhary', 'Niraj Chaudhary', '7/21/2002', '', 110, 0, 113, 121, 'apfNiraj Chaudhary.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(18, 18, 1, 'Top Bahadur', 'Bista (Captain)', 'Top Bahadur Bista (Captain)', '2/13/1988', '', 110, 140, 113, 121, 'apfTop B Bista.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(19, 19, 1, 'Santosh Kumar', 'Katuwal', 'Santosh Kumar Katuwal', '1/27/1993', '', 110, 0, 113, 121, 'apfSantosh K Katuwal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(20, 20, 1, 'Raman', 'Rasaili', 'Raman Rasaili', '8/23/1994', '', 110, 0, 113, 121, 'apfRaman Rasaili.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(21, 21, 1, 'Aashish', 'Lama', 'Aashish Lama', '12/1/1996', '', 110, 141, 113, 121, 'apfAashish Lama.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(22, 22, 1, 'Rabi', 'Thing', 'Rabi Thing', '9/3/1996', '', 110, 0, 113, 121, 'apfRabi Thing.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(23, 23, 1, 'Rajan', 'Gurung', 'Rajan Gurung', '4/15/2000', '', 110, 140, 113, 121, 'apfRajan Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(24, 24, 1, 'Buddhiman', 'Rai', 'Buddhiman Rai', '3/23/1998', '', 110, 141, 113, 121, 'apfBuddhiman Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(25, 25, 1, 'Pradip', 'Lama', 'Pradip Lama', '10/1/1998', '', 110, 0, 113, 121, 'apfPradip Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(26, 26, 1, 'Akash', 'Budha Magar', 'Akash Budha Magar', '2/14/2002', '', 110, 0, 113, 121, 'apfAkash Budha Magar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(27, 27, 1, 'Prakash', 'Pun', 'Prakash Pun', '5/26/2000', '', 110, 0, 113, 121, 'apfPrakash Pun.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(28, 28, 1, 'Rohit', 'Thapa', 'Rohit Thapa', '11/4/1992', '', 110, 0, 113, 121, 'apfRohit Thapa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(29, 29, 1, 'Mani Kumar', 'Lama', 'Mani Kumar Lama', '3/24/1996', '', 110, 0, 113, 121, 'apfMani K Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(30, 30, 1, 'Man Bahadur', 'Rana Magar', 'Man Bahadur Rana Magar', '11/22/1993', '', 110, 0, 113, 121, 'apfMan B Rana Magar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(31, 31, 1, 'Amit', 'Lama', 'Amit Lama', '11/21/1999', '', 110, 0, 113, 121, 'apfAmit Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(32, 32, 1, 'Bikash', 'Lama', 'Bikash Lama', '7/23/1997', '', 110, 0, 113, 121, 'apfBikash Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(33, 33, 2, 'Birjesh', 'Chaudhary', 'Birjesh Chaudhary', '7/9/2002', '', 110, 142, 113, 121, 'bbcBirjesh Chaudhary.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(34, 34, 2, 'Jeevan', 'Bhattarai', 'Jeevan Bhattarai', '3/30/2000', '', 110, 139, 113, 121, 'bbcJeevan Bhattarai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(35, 35, 2, 'Anjal', 'Maharjan', 'Anjal Maharjan', '2/4/2002', '', 110, 140, 113, 121, 'bbcAnjal Maharjan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(36, 36, 2, 'Dipenk', 'Raj Singh', 'Dipenk Raj Singh', '9/30/1996', '', 110, 140, 113, 121, 'bbcDipenk R Singh.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(37, 37, 2, 'Jaya', 'Gurung', 'Jaya Gurung', '11/30/2002', '', 110, 141, 113, 121, 'bbcJaya Gurung.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(38, 38, 2, 'Manoj', 'Rai', 'Manoj Rai', '3/16/1995', '', 110, 140, 113, 121, 'bbcManoj Rai.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(39, 39, 2, 'Padam', 'Bhattarai', 'Padam Bhattarai', '1/8/2002', '', 110, 140, 113, 121, 'bbcPadam Bhattarai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(40, 40, 2, 'Rajat', 'Tiwari', 'Rajat Tiwari', '7/11/2001', '', 110, 141, 113, 121, 'bbcRajat Tiwari.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(41, 41, 2, 'Ritik Kumar', 'Khadka', 'Ritik Kumar Khadka', '4/23/2001', '', 110, 141, 113, 121, 'bbcRitik K Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(42, 42, 2, 'Roshan', 'Dong', 'Roshan Dong', '9/13/2002', '', 110, 140, 113, 121, 'bbcRoshan Dong.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(43, 43, 2, 'Roshan', 'Rana Magar', 'Roshan Rana Magar', '10/19/2002', '', 110, 141, 113, 121, 'bbcRoshan Rana Magar.jepg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(44, 44, 2, 'Bishal', 'Sunar', 'Bishal Sunar', '2/9/2002', '', 110, 139, 113, 121, 'bbcBishal Sunar.jpeg', '', '', 1, 0, 0, '0000-00-00', 'Admin'),
(45, 45, 2, 'Prithivi', 'Chaudhary', 'Prithivi Chaudhary', '4/4/2002', '', 110, 140, 113, 121, 'bbcPrithivi Chaudhary.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(46, 46, 2, 'Subit', 'Karki', 'Subit Karki', '8/30/1994', '', 110, 140, 113, 121, 'bbcSubit Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(47, 47, 2, 'Raju', 'Shrestha', 'Raju Shrestha', '4/17/1999', '', 110, 142, 113, 121, 'bbcRaju Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(48, 48, 2, 'Bijay', 'Gurung', 'Bijay Gurung', '10/11/1985', '', 110, 141, 113, 121, 'bbcBijaya Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(49, 49, 2, 'Rabindra', 'Basnet', 'Rabindra Basnet', '1/12/1991', '', 110, 140, 113, 121, 'bbcRabindra Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(50, 50, 2, 'Tajudeen Adekunle', 'Busari', 'Tajudeen Adekunle Busari', '12/3/1991', '', 110, 140, 120, 121, 'bbcTajudeen A Busari.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(51, 51, 2, 'Randip', 'Paudel', 'Randip Paudel', '10/6/2002', '', 110, 140, 113, 121, 'bbcRandip Paudel.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(52, 52, 2, 'Shishir', 'Lekhi', 'Shishir Lekhi', '1/27/2002', '', 110, 141, 113, 121, 'bbcShishir Lekhi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(53, 53, 2, 'Anil', 'Gurung (Captain)', 'Anil Gurung (Captain)', '9/17/1986', '', 110, 142, 113, 121, 'bbcAnil Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(54, 54, 2, 'Uttam', 'Gurung', 'Uttam Gurung', '1/11/1991', '', 110, 141, 113, 121, 'bbcUttam Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(55, 55, 3, 'Junichi', 'Ozawa', 'Junichi Ozawa', '8/18/1991', '', 110, 0, 113, 121, 'cycJunichi Ozawa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(56, 56, 3, 'Hayato', 'Wakino', 'Hayato Wakino', '4/10/1993', '', 110, 142, 113, 121, 'cycHayto Wakino.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(57, 57, 3, 'Taiga', 'Nakamura', 'Taiga Nakamura', '9/22/1995', '', 110, 140, 113, 121, 'cycTaiga Nakamura.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(58, 58, 3, 'Sanjaya', 'Rajbahak', 'Sanjaya Rajbahak', '3/29/1994', '', 110, 140, 113, 121, 'cycSanjaya RajBahak.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(59, 59, 3, 'Abishek', 'Baral', 'Abishek Baral', '4/9/2000', '', 110, 139, 113, 121, 'cycAbishek Baral.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(60, 60, 3, 'Sunil', 'Bal', 'Sunil Bal', '1/1/1998', '', 110, 141, 113, 121, 'cycSunil Bal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(61, 61, 3, 'Alan', 'Neupane', 'Alan Neupane', '6/24/1996', '', 110, 139, 113, 121, 'cycAlan Neupane.jpeg', '', '', 1, 0, 0, '0000-00-00', 'Admin'),
(62, 62, 3, 'Jenish', 'Prajapati', 'Jenish Prajapati', '9/21/2000', '', 110, 142, 113, 121, 'cycJenish Prajapati.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(63, 63, 3, 'Purna Bahadur', 'Gurung', 'Purna Bahadur Gurung', '2/24/1998', '', 110, 0, 113, 121, 'cycPurna B Gurung .jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(64, 64, 3, 'Dinesh', 'Rajbanshi', 'Dinesh Rajbanshi', '4/4/1998', '', 110, 140, 113, 121, 'cycDinesh Rajbhanshi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(65, 65, 3, 'Nitin', 'Thapa', 'Nitin Thapa', '2/7/2002', '', 110, 141, 113, 121, 'cycNitin Thapa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(66, 66, 3, 'Susan', 'Lama', 'Susan Lama', '9/21/2000', '', 110, 0, 113, 121, 'cycSusan Lama .jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(67, 67, 3, 'Karma', 'Sherpa', 'Karma Sherpa', '12/27/2002', '', 110, 0, 113, 121, 'cycKarma Sherpa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(68, 68, 3, 'Abishek', 'Limbu', 'Abishek Limbu', '12/13/1994', '', 110, 140, 113, 121, 'cycAbishek Limbu.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(69, 69, 3, 'Amir', 'Shrestha', 'Amir Shrestha', '12/30/1991', '', 110, 141, 113, 121, 'cycAmir Shrestha.jpeg', '', '1', 0, 0, 1, '0000-00-00', 'Admin'),
(70, 70, 3, 'Chetan', 'Kumar Tharu', 'Chetan Kumar Tharu', '2/17/1991', '', 110, 0, 113, 121, 'cycChetan K Tharu.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(71, 71, 3, 'Gaurab', 'Budhathoki', 'Gaurab Budhathoki', '2/14/1998', '', 110, 140, 113, 121, 'cycGaurab Budhathoki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(72, 72, 3, 'Hemant', 'Thapa Magar', 'Hemant Thapa Magar', '1/7/1998', '', 110, 141, 113, 121, 'cycHemant T Magar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(73, 73, 3, 'Narendra', 'Chaudhary', 'Narendra Chaudhary', '5/18/1997', '', 110, 140, 113, 121, 'cycNarendra Chaudhary.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(74, 74, 3, 'Santosh', 'Mahat', 'Santosh Mahat', '1/21/2002', '', 110, 140, 113, 121, 'cycSantosh Mahat .jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(75, 75, 3, 'Santosh', 'Shahukhala (Captiain)', 'Santosh Shahukhala (Captiain)', '1/10/1988', '', 110, 142, 113, 121, 'cycSantosh Shahukhala.jpeg', '3', '', 0, 0, 0, '0000-00-00', 'Admin'),
(76, 76, 3, 'Sunil', 'Khadka', 'Sunil Khadka', '11/7/1994', '', 110, 0, 113, 121, 'cycSunil Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(77, 77, 3, 'Sunny', 'Byanjankar', 'Sunny Byanjankar', '4/20/2001', '', 110, 0, 113, 121, 'cycSunny Byanjankar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(78, 78, 3, 'Tshring', 'Gurung', 'Tshring Gurung', '2/21/1998', '', 110, 0, 113, 121, 'cycTshring Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(79, 79, 3, 'Sushil Kumar', 'Yadav', 'Sushil Kumar Yadav', '10/5/1998', '', 110, 0, 113, 121, 'cycSushil K Yadav.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(80, 80, 4, 'Prezen', 'Tamang', 'Prezen Tamang', '7/14/2000', '', 110, 0, 113, 121, 'fcPrezen Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(81, 81, 4, 'Sojit', 'Gurung', 'Sojit Gurung', '1/28/2000', '', 110, 139, 113, 121, 'fcSojit Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(82, 82, 4, 'Aashish', 'Kc', 'Aashish Kc', '1/1/2000', '', 110, 0, 113, 121, 'fcAashish Kc.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(83, 83, 4, 'Asim', 'Bhusal', 'Asim Bhusal', '3/14/2002', '', 110, 0, 113, 121, 'fcAsim Bhusal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(84, 84, 4, 'Bikash', 'Lama', 'Bikash Lama', '5/30/1996', '', 110, 142, 113, 121, 'fcBikash Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(85, 85, 4, 'Felipe Martins De', 'Sauza', 'Felipe Martins De Sauza', '12/26/1977', 'Sao Paulo', 110, 141, 120, 121, 'fcFelipe D M  Sauza.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(86, 86, 4, 'Dev', 'Limbu', 'Dev Limbu', '2/28/1998', '', 110, 139, 113, 121, 'fcDev Limbu.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(87, 87, 4, 'Rumesh', 'Bartaula', 'Rumesh Bartaula', '3/7/2000', '', 110, 142, 113, 121, 'fcRumesh Bartaula.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(88, 88, 4, 'Sanish', 'Shrestha', 'Sanish Shrestha', '11/9/2000', '', 110, 140, 113, 121, 'fcSanish Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(89, 89, 4, 'Sanjog', 'Maharjan', 'Sanjog Maharjan', '5/8/1995', '', 110, 142, 113, 121, 'fcSanjog Maharjan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(90, 90, 4, 'Saroj', 'Yonjan Lama', 'Saroj Yonjan Lama', '11/17/1993', '', 110, 140, 113, 121, 'fcSaroj Y Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(91, 91, 4, 'Sudans', 'Mahato', 'Sudans Mahato', '8/7/1998', '', 110, 0, 113, 121, 'fcSudans Mahato.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(92, 92, 4, 'Shakti', 'Rai', 'Shakti Rai', '9/21/1990', '', 110, 142, 113, 121, 'fcShakti Rai.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(93, 93, 4, 'Raj', 'Kandangwa', 'Raj Kandangwa', '3/21/1994', '', 110, 141, 113, 121, 'fcRaj Kandangwa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(94, 94, 4, 'Yadu', 'Silwal', 'Yadu Silwal', '8/12/1998', '', 110, 142, 113, 121, 'fcYadu Silwal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(95, 95, 4, 'Nisen', 'Subba', 'Nisen Subba', '3/27/2003', '', 110, 142, 113, 121, 'fcNisen Subba.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(96, 96, 4, 'Sujan', 'Pulami', 'Sujan Pulami', '1/18/2002', '', 110, 140, 113, 121, 'fcSujan Pulami.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(97, 97, 4, 'Mahesh', 'Shah', 'Mahesh Shah', '2/11/2003', '', 110, 142, 113, 121, 'fcMahesh Shah.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(98, 98, 4, 'Ajit', 'Magar', 'Ajit Magar', '3/4/2000', '', 110, 140, 113, 121, 'fcAjit Magar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(99, 99, 4, 'Bicky', 'Thapa', 'Bicky Thapa', '7/6/1989', '', 110, 141, 113, 121, 'fcBicky Thapa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(100, 100, 4, 'Bishow', 'Adhikari', 'Bishow Adhikari', '5/2/1993', '', 110, 141, 113, 121, 'fcBishow Adhikari.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(101, 101, 4, 'Anil', 'Maharjan', 'Anil Maharjan', '4/9/2002', '', 110, 141, 113, 121, 'fcAnil Maharjan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(102, 102, 5, 'Khamir Glison', 'Kandangwa', 'Khamir Glison Kandangwa', '3/6/1993', '', 110, 0, 113, 121, 'hycKhamir G Kandangwa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(103, 103, 5, 'Rabi', 'Thapa Magar', 'Rabi Thapa Magar', '2/23/1993', '', 110, 0, 113, 121, 'hycRabi T Magar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(104, 104, 5, 'Kshitiz', 'Khadka', 'Kshitiz Khadka', '3/23/1997', '', 110, 0, 113, 121, 'hycKshitiz Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(105, 105, 5, 'Kailash', 'Basnet', 'Kailash Basnet', '2/17/2000', '', 110, 0, 113, 121, 'hycKailash Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(106, 106, 5, 'Chiring', 'Tamang Lama', 'Chiring Tamang Lama', '4/7/2002', '', 110, 0, 113, 121, 'hycChiring T Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(107, 107, 5, 'Ashish', 'Gurung', 'Ashish Gurung', '4/15/1996', '', 110, 0, 113, 121, 'hycAshish Gurung.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(108, 108, 5, 'Kishor', 'Giri', 'Kishor Giri', '12/14/1995', '', 110, 139, 113, 121, 'hycKishor Giri.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(109, 109, 5, 'Bishwash', 'Shrestha', 'Bishwash Shrestha', '4/10/1997', '', 110, 0, 113, 121, 'hycBishwash Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(110, 110, 5, 'Diwash', 'Urau', 'Diwash Urau', '8/23/1998', '', 110, 0, 113, 121, 'hycDiwash Urau.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(111, 111, 5, 'Niraj', 'Basnet', 'Niraj Basnet', '9/20/1995', '', 110, 0, 113, 121, 'hycNiraj Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(112, 112, 5, 'Bikash', 'Rai', 'Bikash Rai', '12/12/1988', '', 110, 0, 113, 121, 'hycBikash Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(113, 113, 5, 'Binod', 'Gurung', 'Binod Gurung', '5/14/1996', '', 110, 0, 113, 121, 'hycBinod Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(114, 114, 5, 'Chop Bahadur', 'Uchai', 'Chop Bahadur Uchai', '2/21/2000', '', 110, 0, 113, 121, 'hycChop B Uchai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(115, 115, 5, 'Abhimanyu', 'Poudel', 'Abhimanyu Poudel', '12/30/2000', '', 110, 0, 113, 121, 'hycAbhimanyu Poudel.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(116, 116, 5, 'Suraj', 'Hamal', 'Suraj Hamal', '1/2/1997', '', 110, 0, 113, 121, 'hycSuraj Hamal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(117, 117, 5, 'Ulrich', 'Siewe', 'Ulrich Siewe', '2/17/1996', '', 110, 0, 120, 121, 'hycUlrich Siewe.jpeg', '', '', 0, 0, 2, '0000-00-00', 'Admin'),
(118, 118, 5, 'Stephane Samir Dieu Beni', 'Binong', 'Stephane Samir Dieu Beni Binong', '8/7/1997', '', 110, 0, 113, 121, 'hycStephane S D B Binong.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(119, 119, 5, 'Sunil', 'Lama', 'Sunil Lama', '6/11/2000', '', 110, 0, 113, 121, 'hycSunil Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(120, 120, 5, 'Nirajan', 'Gurung', 'Nirajan Gurung', '5/18/1994', '', 110, 0, 113, 121, 'hycNirajan Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(121, 121, 5, 'Bishal', 'Shrestha', 'Bishal Shrestha', '8/13/2000', '', 110, 0, 113, 121, 'hycBishal Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(122, 122, 5, 'Roshan', 'Thakuri', 'Roshan Thakuri', '12/17/1997', '', 110, 0, 113, 121, 'hycRoshan Thakuri.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(123, 123, 5, 'Samundra', 'Pudasaini', 'Samundra Pudasaini', '8/10/2000', '', 110, 0, 113, 121, 'hycSamundra Pudasaini.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(124, 124, 5, 'Man Bahadur', 'Tamang (Captain)', 'Man Bahadur Tamang (Captain)', '3/3/1994', '', 110, 0, 113, 121, 'hycMan B Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(125, 125, 5, 'Bijaya', 'Shrestha', 'Bijaya Shrestha', '2/2/1999', '', 110, 0, 113, 121, 'hycBijaya Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(126, 126, 5, 'Tridev', 'Gurung', 'Tridev Gurung', '7/20/1996', '', 110, 0, 113, 121, 'hycTridev Gurung.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(127, 127, 5, 'Bhison', 'Gurung', 'Bhison Gurung', '3/17/1996', '', 110, 0, 113, 121, 'hycBhison Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(128, 128, 5, 'Sanjay', 'Dhimal', 'Sanjay Dhimal', '8/17/2000', '', 110, 0, 113, 121, 'hycSanjay Dhimal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(129, 129, 6, 'Fode', 'Fofana', 'Fode Fofana', '10/12/1996', '', 110, 0, 120, 121, 'jycFode Fofana.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(130, 130, 6, 'Gautam', 'Shrestha', 'Gautam Shrestha', '2/21/2000', '', 110, 0, 113, 121, 'jycGautam Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(131, 131, 6, 'Kuldip', 'Karki', 'Kuldip Karki', '1/16/1992', '', 110, 0, 113, 121, 'jycKuldip Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(132, 132, 6, 'Suraj Jeu', 'Thakuri', 'Suraj Jeu Thakuri', '12/19/2000', '', 110, 0, 113, 121, 'jycSuraj Jeu Thakuri.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(133, 133, 6, 'Tekendra', 'Thapa', 'Tekendra Thapa', '8/18/1994', '', 110, 0, 113, 121, 'jycTekendra Thapa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(134, 134, 6, 'Aruj', 'Singh', 'Aruj Singh', '10/5/1999', '', 110, 0, 113, 121, 'jycAruj Singh.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(135, 135, 6, 'Suraj', 'Ghimire', 'Suraj Ghimire', '2/23/1995', '', 110, 0, 113, 121, 'jycSurajGhimire.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(136, 136, 6, 'Dady junior', 'Wamba', 'Dady junior Wamba', '1/20/1998', '', 110, 0, 120, 121, 'jycDady J Wamba.jpeg', '2', '', 0, 0, 1, '0000-00-00', 'Admin'),
(137, 137, 6, 'Dilan', 'Loktam', 'Dilan Loktam', '9/19/1986', '', 110, 0, 113, 121, 'jycDilan Loktam.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(138, 138, 6, 'Sameer', 'Karki', 'Sameer Karki', '5/31/1992', '', 110, 0, 113, 121, 'jycSameer Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(139, 139, 6, 'Bijay', 'Ghalan', 'Bijay Ghalan', '10/2/1992', '', 110, 0, 113, 121, 'jycBijay Ghalan .jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(140, 140, 6, 'Bimal', 'Ghising', 'Bimal Ghising', '6/19/2000', '', 110, 0, 113, 121, 'jycBimal Ghising.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(141, 141, 6, 'Manish', 'Paudel', 'Manish Paudel', '8/11/1999', '', 110, 0, 113, 121, 'jycManish Paudel.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(142, 142, 6, 'Gaurab', 'Shrestha', 'Gaurab Shrestha', '10/20/1996', '', 110, 0, 113, 121, 'jycGaurab Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(143, 143, 6, 'Abisek', 'Waiba', 'Abisek Waiba', '2/10/2004', '', 110, 0, 113, 121, 'jycAbisek Waiba.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(144, 144, 6, 'Arun', 'Blon', 'Arun Blon', '5/1/1998', '', 110, 0, 113, 121, 'jycArun Blon.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(145, 145, 6, 'Sujit', 'Budhathoki', 'Sujit Budhathoki', '10/26/1995', '', 110, 0, 113, 121, 'jycSujit Budhathoki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(146, 146, 6, 'Yogya', 'Pradhan', 'Yogya Pradhan', '6/30/1998', '', 110, 0, 113, 121, 'jycYogya Pradhan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(147, 147, 6, 'Bishal', 'Tamang', 'Bishal Tamang', '9/3/1998', '', 110, 0, 113, 121, 'jycBishal Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(148, 148, 6, 'Nir Bahadur', 'Ale', 'Nir Bahadur Ale', '7/12/1992', '', 110, 0, 113, 121, 'jycNir Bahadur Ale.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(149, 149, 6, 'Rajeev', 'Dhungana', 'Rajeev Dhungana', '11/11/1994', '', 110, 0, 113, 121, 'jycRajeev Dhungana.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(150, 150, 6, 'Rup Bahadur', 'Lama', 'Rup Bahadur Lama', '6/18/1994', '', 110, 0, 113, 121, 'jycRup B Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(151, 151, 6, 'Sushil Kumar', 'Yadav', 'Sushil Kumar Yadav', '8/11/1994', '', 110, 0, 113, 121, 'jycSushil K Yadav.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(152, 152, 6, 'Adama', 'Doumbia', 'Adama Doumbia', '2/28/1997', '', 110, 0, 120, 121, 'jycAdama Doumbia.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(153, 153, 6, 'Hari', 'Kathayat', 'Hari Kathayat', '7/13/1990', '', 110, 0, 113, 121, 'jycHari Kathayat.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(154, 154, 7, 'Andres', 'Nia Tchounkeu', 'Andres Nia Tchounkeu', '2/8/1995', '', 110, 0, 120, 121, 'mcAndres.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(155, 155, 7, 'Ranjit', 'Dhimal', 'Ranjit Dhimal', '4/4/1991', 'Morang', 110, 140, 113, 121, 'mcRanjit Dhimal.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(156, 156, 7, 'Buddha Raj', 'Limbu', 'Buddha Raj Limbu', '9/12/1984', 'Jhapa', 110, 141, 113, 121, 'mcBuddhaChemjong.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(157, 157, 7, 'Peter', 'Segun', 'Peter Segun', '6/30/1993', 'Morang', 110, 140, 120, 121, 'mcPeter Segun.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(158, 158, 7, 'Bijay', 'Dhimal', 'Bijay Dhimal', '10/4/1986', 'Morang', 110, 140, 113, 121, 'mcBijay Dhimal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(159, 159, 7, 'Abhishek', 'Rijal', 'Abhishek Rijal', '1/29/2000', '', 110, 142, 113, 121, 'mcAbhishek Rijal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(160, 160, 7, 'Rejin', 'Subba', 'Rejin Subba', '2/5/2002', '', 110, 142, 113, 121, 'mcRejin Subba.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(161, 161, 7, 'Biraj', 'Maharjan(Captain)', 'Biraj Maharjan(Captain)', '9/18/1990', 'Kathmandu', 110, 140, 113, 121, 'mcBiraj Maharjan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(162, 162, 7, 'Bishal', 'Rai', 'Bishal Rai', '9/22/1993', 'Jhapa', 110, 141, 113, 121, 'mcBishalRai.jpeg', '', '2', 0, 0, 0, '0000-00-00', 'Admin'),
(163, 163, 7, 'Dipak', 'Rai', 'Dipak Rai', '9/10/1988', 'Jhapa', 110, 142, 113, 121, 'mcDipak Rai.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(164, 164, 7, 'Heman', 'Gurung', 'Heman Gurung', '10/1/1995', '', 110, 141, 113, 121, 'mcHeman Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(165, 165, 7, 'Sujal', 'Shrestha', 'Sujal Shrestha', '2/4/1993', 'Hetauda', 110, 141, 113, 121, 'mcSujal Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(166, 166, 7, 'Bishal', 'Shrestha', 'Bishal Shrestha', '9/12/1990', 'Kathmandu', 110, 139, 113, 121, 'mcBishal Shrestha', '', '', 2, 0, 0, '0000-00-00', 'Admin'),
(167, 167, 7, 'Devendra', 'Tamang', 'Devendra Tamang', '10/21/1993', 'Jhapa', 110, 140, 113, 121, 'mcDevendra Tamang.jpeg', '1', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(168, 168, 7, 'Yogesh', 'Gurung', 'Yogesh Gurung', '8/4/1990', 'Jhapa', 110, 141, 113, 121, 'mcYogesh Gurung.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(169, 169, 7, 'Biman Prasad', 'Rai', 'Biman Prasad Rai', '4/27/1996', '', 110, 140, 113, 121, 'mc Biman Prasad Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(170, 170, 7, 'Abhishek', 'Khadgi', 'Abhishek Khadgi', '4/24/1994', '', 110, 140, 113, 121, 'mcAbhishek Khadgi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(171, 171, 7, 'Bijay', 'Dhakal', 'Bijay Dhakal', '5/21/1997', '', 110, 140, 113, 121, 'mcBijay Dhakal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(172, 172, 7, 'Binaya Man', 'Rajbanshi', 'Binaya Man Rajbanshi', '5/30/1988', '', 110, 140, 113, 121, 'mcBinaya Man Rajbanshi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(173, 173, 7, 'Dikesh Man', 'Dangol', 'Dikesh Man Dangol', '8/19/1987', '', 110, 141, 113, 121, 'mcDikesh Man Dangol.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(174, 174, 7, 'Kushal', 'Giri', 'Kushal Giri', '9/14/1994', '', 110, 139, 113, 121, 'mcKushalGiri.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(175, 175, 7, 'Lilen', 'Karanjit', 'Lilen Karanjit', '12/11/1988', '', 110, 141, 113, 121, 'mcLilen Karanjit.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(176, 176, 7, 'Manil Ratna', 'Shahi', 'Manil Ratna Shahi', '3/22/1986', '', 110, 141, 113, 121, 'mcManil Ratna Shahi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(177, 177, 7, 'Nabin', 'Shrestha', 'Nabin Shrestha', '12/16/1992', '', 110, 141, 113, 121, 'mcNabinShrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(178, 178, 7, 'Pradeep', 'Karki', 'Pradeep Karki', '11/22/1989', '', 110, 142, 113, 121, 'mcPradeep Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(179, 179, 7, 'Pramod', 'Shrestha', 'Pramod Shrestha', '9/5/1987', '', 110, 0, 113, 121, 'mcPramod Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(180, 180, 7, 'Surya', 'Adhikari', 'Surya Adhikari', '10/21/2001', '', 110, 0, 113, 121, 'mcSurya Adhikari.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(181, 181, 8, 'Amar', 'Gurung', 'Amar Gurung', '2/19/1986', '', 110, 140, 113, 121, 'mmcAmar Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(182, 182, 8, 'Karma Tashi ', 'Gurung', 'Karma Tashi  Gurung', '12/9/1991', '', 110, 0, 113, 121, 'mmckarma T Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(183, 183, 8, 'Raj Kumar', 'Pandit', 'Raj Kumar Pandit', '1/15/2000', '', 110, 140, 113, 121, 'mmcRaj Kumar Pandit.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(184, 184, 8, 'Sunny', 'Gurung', 'Sunny Gurung', '2/26/1986', '', 110, 139, 113, 121, 'mmcSunny Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(185, 185, 8, 'Tashi Namgyal', 'Gurung', 'Tashi Namgyal Gurung', '4/12/1984', '', 110, 0, 113, 121, 'mmcTashi Namgyal Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(186, 186, 8, 'Jiwan', 'Gurung', 'Jiwan Gurung', '2/5/2002', '', 110, 0, 113, 121, 'mmcJiwan Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(187, 187, 8, 'Deep', 'Karki', 'Deep Karki', '1/9/1998', '', 110, 0, 113, 121, 'mmcDeep Karki.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(188, 188, 8, 'Ranjan', 'Bista', 'Ranjan Bista', '11/26/1993', '', 110, 0, 113, 121, 'mmcRanjan Bista.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(189, 189, 8, 'Aditya', 'Chaudhary', 'Aditya Chaudhary', '4/19/1996', '', 110, 0, 113, 121, 'mmcAditya Chaudhary.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(190, 190, 8, 'Anjan', 'Bista', 'Anjan Bista', '5/15/1998', '', 110, 0, 113, 121, 'mmcAnjan Bista.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(191, 191, 8, 'Ashok', 'Baral', 'Ashok Baral', '4/30/1993', '', 110, 139, 113, 121, 'mmcAshok Baral.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(192, 192, 8, 'Bimal', 'Rana', 'Bimal Rana', '11/5/1993', '', 110, 142, 113, 121, 'mmcBimal Rana.jpeg', '2', '', 0, 0, 0, '0000-00-00', 'Admin'),
(193, 193, 8, 'Kamal', 'Shrestha (Caotain)', 'Kamal Shrestha (Caotain)', '7/10/1997', '', 110, 140, 113, 121, 'mmcKamal Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(194, 194, 8, 'Milan', 'Gurung', 'Milan Gurung', '10/11/1999', '', 110, 140, 113, 121, 'mmcMilan Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(195, 195, 8, 'Suraj', 'Bishowkarma', 'Suraj Bishowkarma', '8/13/1988', '', 110, 140, 113, 121, 'mmcSuraj Bishowkarma.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(196, 196, 8, 'Ashim', 'Gurung', 'Ashim Gurung', '11/20/2002', '', 110, 141, 113, 121, 'mmcAshim Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(197, 197, 8, 'Sushil', 'Lama', 'Sushil Lama', '7/1/1993', '', 110, 141, 113, 121, 'mmcSushil Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(198, 198, 8, 'Koara Larba Florent', 'Kone', 'Koara Larba Florent Kone', '4/7/1994', '', 110, 141, 120, 121, 'mmcKoara L F Kone.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(199, 199, 8, 'Ekraj', 'Budhathoki', 'Ekraj Budhathoki', '3/22/1998', '', 110, 0, 113, 121, 'mmcEkraj Budhathoki.jpeg', '', '', 0, 1, 0, '0000-00-00', 'Admin'),
(200, 200, 8, 'Bijaya', 'Gurung', 'Bijaya Gurung', '2/7/1999', '', 110, 0, 113, 121, 'mmcBijaya Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(201, 201, 8, 'Umesh', 'Rai', 'Umesh Rai', '9/30/1996', '', 110, 141, 113, 121, 'mmcUmesh Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(202, 202, 8, 'Dayananda Singh', 'Elangbam', 'Dayananda Singh Elangbam', '2/27/1996', '', 110, 141, 114, 121, 'mmcDayananda S Elangbam.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(203, 203, 8, 'Pujan', 'Uperkoti', 'Pujan Uperkoti', '5/9/1996', '', 110, 141, 113, 121, 'mmcPujan Uperkoti.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(204, 204, 8, 'Vidal Luis', 'Chissano', 'Vidal Luis Chissano', '12/2/1997', '', 110, 140, 120, 121, 'mmcVidal L Chissano.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(205, 205, 8, 'Jagajeet', 'Shrestha', 'Jagajeet Shrestha', '7/6/1992', '', 110, 141, 113, 121, 'mmcJagajeet Shrestha.jpeg', '1', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(206, 206, 8, 'Femi Joshua', 'Adewumi', 'Femi Joshua Adewumi', '9/3/1994', '', 110, 142, 113, 121, 'mmcFemi J Adewumi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(207, 207, 9, 'Kapil', 'Dhakal', 'Kapil Dhakal', '10/27/1992', '', 110, 0, 113, 121, 'npcKapil Dhakal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(208, 208, 9, 'Ajit', 'Bhandari', 'Ajit Bhandari', '2/7/1994', '', 110, 141, 113, 121, 'npcAjit Bhandari.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(209, 209, 9, 'Bhola Nath', 'Silwal', 'Bhola Nath Silwal', '1/4/1987', '', 110, 0, 113, 121, 'npcBhola N Silwal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(210, 210, 9, 'Ravi Shankar', 'Paswan', 'Ravi Shankar Paswan', '6/18/1993', '', 110, 142, 113, 121, 'npcRavi S Paswan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(211, 211, 9, 'Roshan', 'Khadka', 'Roshan Khadka', '11/10/1992', '', 110, 0, 113, 121, 'npcRoshan Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(212, 212, 9, 'Anjan', 'Rai', 'Anjan Rai', '12/15/1994', '', 110, 140, 113, 121, 'npcAnjan Rai.jepg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(213, 213, 9, 'Bikash', 'Rai', 'Bikash Rai', '5/29/1993', '', 110, 141, 113, 121, 'npcBikash Rai.jepg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(214, 214, 9, 'Buddha', 'Tamang', 'Buddha Tamang', '6/15/1991', '', 110, 142, 113, 121, 'npcBuddha Tamang.jepg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(215, 215, 9, 'Hem', 'Tamang', 'Hem Tamang', '9/5/1993', '', 110, 141, 113, 121, 'npcHem Tamang.jepg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(216, 216, 9, 'Hemanta', 'Shrestha', 'Hemanta Shrestha', '8/28/1995', '', 110, 141, 113, 121, 'npcHemanta Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(217, 217, 9, 'Man', 'Bahadur Pariyar', 'Man Bahadur Pariyar', '8/8/1991', '', 110, 140, 113, 121, 'npcMan B pariyar.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(218, 218, 9, 'Nir Kumar', 'Rai', 'Nir Kumar Rai', '12/5/1991', '', 110, 142, 113, 121, 'npcNir K Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(219, 219, 9, 'Santosh', 'Hemrun', 'Santosh Hemrun', '1/23/1994', '', 110, 140, 113, 121, 'npcSANTOSH HEMRUM.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(220, 220, 9, 'Shatrudhan', 'Kumar Chaudhary', 'Shatrudhan Kumar Chaudhary', '9/16/1993', '', 110, 139, 113, 121, 'npcShatrudhan K Chaudhary.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(221, 221, 9, 'Suman', 'Lama', 'Suman Lama', '6/17/1995', '', 110, 142, 113, 121, 'npcSuman Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(222, 222, 9, 'Tej', 'Tamang', 'Tej Tamang', '2/14/1998', '', 110, 141, 113, 121, 'npcTej Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(223, 223, 9, 'Bharat', 'Shah', 'Bharat Shah', '8/31/1991', '', 110, 142, 113, 121, 'npcBharat Shah.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(224, 224, 9, 'Ju Manu', 'Rai', 'Ju Manu Rai', '1/29/1984', '', 110, 142, 113, 121, 'npcJu M Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(225, 225, 9, 'Buddha Bal', 'Tamang', 'Buddha Bal Tamang', '8/9/2000', '', 110, 141, 113, 121, 'npcBuddha Bal Tamang .jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(226, 226, 9, 'Tirtha', 'Bahadur Rana', 'Tirtha Bahadur Rana', '12/1/1995', '', 110, 0, 113, 121, 'npcTIRTHA B RANA.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(227, 227, 9, 'Prabesh', 'Kunwar', 'Prabesh Kunwar', '11/27/1996', '', 110, 141, 113, 121, 'npcPrabesh Kunwar .jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(228, 228, 9, 'Soujan', 'Rai', 'Soujan Rai', '12/2/1995', '', 110, 141, 113, 121, 'npcSoujan Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(229, 229, 9, 'Ram Chandra', 'Wajee', 'Ram Chandra Wajee', '6/30/1997', '', 110, 142, 113, 121, 'npcRam C Wajee.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(230, 230, 9, 'Bishal', 'Basnet', 'Bishal Basnet', '11/10/1998', '', 110, 141, 113, 121, 'npcBishal Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(231, 231, 10, 'Nabin', 'Gurung', 'Nabin Gurung', '3/8/2002', '', 110, 140, 113, 121, 'nrtNabin Gurung', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(232, 232, 10, 'Sanam', 'Sodemba Limbu', 'Sanam Sodemba Limbu', '1/28/2002', '', 110, 140, 113, 121, 'nrtSanam Limbu', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(233, 233, 10, 'Sujan', 'Sharma Dhital', 'Sujan Sharma Dhital', '1/24/2002', '', 110, 140, 113, 121, 'nrtSujan S Dhital', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(234, 234, 10, 'Kritish Ratna', 'Chhunju', 'Kritish Ratna Chhunju', '4/11/2003', '', 110, 141, 113, 121, 'nrtKritish R Chhunju', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(235, 235, 10, 'Bikram', 'Dhimal', 'Bikram Dhimal', '2/20/1990', 'Morang', 110, 140, 113, 121, 'nrtBikramDhimal', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(236, 236, 10, 'Ajit', 'Prajapati', 'Ajit Prajapati', '10/27/1993', 'Kathmandu', 110, 139, 113, 121, 'nrtAjit Prajapati', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(237, 237, 10, 'Anil', 'Dhami', 'Anil Dhami', '11/8/1992', '', 110, 140, 113, 121, 'nrtAnilDhami', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(238, 238, 10, 'Ashok', 'Thapa', 'Ashok Thapa', '3/2/1998', '', 110, 141, 113, 121, 'nrtAshokThapa', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(239, 239, 10, 'Rajesh', 'Pariyar', 'Rajesh Pariyar', '1/29/2000', '', 110, 142, 113, 121, 'nrtRajeshPariyar', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(240, 240, 10, 'Rujit', 'Pudasaini', 'Rujit Pudasaini', '3/4/2001', '', 110, 141, 113, 121, 'nrtRujit Pudasaini', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(241, 241, 10, 'Sakal', 'Regmi', 'Sakal Regmi', '9/19/1995', '', 110, 140, 113, 121, 'nrtSakal Regmi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(242, 242, 10, 'Sanjip', 'Shrestha', 'Sanjip Shrestha', '10/8/1999', '', 110, 140, 113, 121, 'nrtSanjip Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(243, 243, 10, 'Saroj', 'Tamang', 'Saroj Tamang', '10/8/1999', '', 110, 140, 113, 121, 'nrtSaroj Tamang.jpeg', '2', '', 0, 0, 0, '0000-00-00', 'Admin'),
(244, 244, 10, 'Man Kumar', 'Rai', 'Man Kumar Rai', '9/27/2002', '', 110, 141, 113, 121, 'nrtManKRai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(245, 245, 10, 'Tapan', 'Karki', 'Tapan Karki', '11/11/1996', '', 110, 142, 113, 121, 'nrtTapan Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(246, 246, 10, 'Darshan', 'Gurung', 'Darshan Gurung', '4/9/2002', '', 110, 141, 113, 121, 'nrtDarshan Gurung.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(247, 247, 10, 'Pujan', 'Hona', 'Pujan Hona', '5/20/2002', '', 110, 139, 113, 121, 'nrtPujanHona.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(248, 248, 10, 'Kashim', 'Rai', 'Kashim Rai', '11/8/1999', '', 110, 141, 113, 121, 'nrtKashim Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(249, 249, 10, 'Andre Thierry', 'Biyik Biyik', 'Andre Thierry Biyik Biyik', '7/6/1993', '', 110, 140, 113, 121, 'nrtBiyik.jpg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(250, 250, 10, 'Junior', 'Onguene Nkengue', 'Junior Onguene Nkengue', '12/27/1997', '', 110, 141, 120, 121, 'nrtJunior .jpeg', '2', '', 0, 0, 0, '0000-00-00', 'Admin'),
(251, 251, 10, 'Jordan Junior', 'Ndemba Owona', 'Jordan Junior Ndemba Owona', '12/27/1997', '', 110, 142, 120, 121, 'nrtJunior.jpg', '1', '', 0, 1, 1, '0000-00-00', 'Admin'),
(252, 252, 10, 'Arik', 'Bista', 'Arik Bista', '3/17/2000', '', 110, 141, 113, 121, 'nrtArik Bista.jpg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(253, 253, 10, 'Prakash', 'Budhathoki(Captain)', 'Prakash Budhathoki(Captain)', '5/21/1993', '', 110, 141, 113, 121, 'nrtPrakash Budathoki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(254, 254, 11, 'Rohit', 'Karki', 'Rohit Karki', '12/22/2002', '', 110, 0, 113, 121, 'scRohit Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(255, 255, 11, 'Saurab', 'Karki', 'Saurab Karki', '11/16/1993', '', 110, 141, 113, 121, 'scSaurab Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(256, 256, 11, 'Karna Bahadur', 'Subba', 'Karna Bahadur Subba', '4/23/1985', '', 110, 142, 113, 121, 'scKarna B Subba.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(257, 257, 11, 'Manish', 'Ghale', 'Manish Ghale', '2/19/1991', '', 110, 140, 113, 121, 'scManish Ghalejpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(258, 258, 11, 'Binaya', 'Shrestha', 'Binaya Shrestha', '11/9/1990', '', 110, 139, 113, 121, 'scBinaya Shrestha.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(259, 259, 11, 'Bishal', 'Shahi', 'Bishal Shahi', '1/31/2002', '', 110, 0, 113, 121, 'scBishal Shahi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(260, 260, 11, 'Rajendra', 'Rawal', 'Rajendra Rawal', '6/28/1986', '', 110, 141, 113, 121, 'scRajendra Rawal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(261, 261, 11, 'Ajayi Martins', 'Kayode', 'Ajayi Martins Kayode', '10/14/1993', '', 110, 142, 120, 121, 'scAjayi M Kayode.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(262, 262, 11, 'Bishnu', 'Bahadur Sunar', 'Bishnu Bahadur Sunar', '12/31/1979', '', 110, 0, 113, 121, 'scBishnu B Sunar.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(263, 263, 11, 'Ravi', 'Silwal', 'Ravi Silwal', '1/28/1990', '', 110, 0, 113, 121, 'scRavi Silwal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(264, 264, 11, 'Janak', 'Koirala', 'Janak Koirala', '1/23/1998', '', 110, 0, 113, 121, 'scJanak Koirala.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(265, 265, 11, 'Samir', 'Rai', 'Samir Rai', '1/9/1995', '', 110, 0, 113, 121, 'scSamir Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(266, 266, 11, 'Laxman', 'Gurung', 'Laxman Gurung', '7/13/1991', '', 110, 0, 113, 121, 'scLaxman Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(267, 267, 11, 'Tikaraj', 'Gurung', 'Tikaraj Gurung', '9/26/2001', '', 110, 142, 113, 121, 'scTikaraj Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(268, 268, 11, 'Amit', 'Tamang', 'Amit Tamang', '1/17/1998', '', 110, 0, 113, 121, 'scAmit Tamang.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(269, 269, 11, 'Ernest', 'tampi', 'Ernest tampi', '5/26/1992', '', 110, 0, 120, 121, 'scErnest tampi.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(270, 270, 11, 'Raja Babu', 'Thapa', 'Raja Babu Thapa', '8/6/1994', '', 110, 139, 113, 121, 'scRaja B Thapa.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(271, 271, 11, 'Roman', 'Limbu', 'Roman Limbu', '3/23/2000', '', 110, 140, 113, 121, 'scRoman Limbu.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(272, 272, 11, 'Roshan', 'Pahari', 'Roshan Pahari', '9/13/1999', '', 110, 141, 113, 121, 'scRoshan Pahari.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(273, 273, 11, 'Dipesh', 'Ale Magar', 'Dipesh Ale Magar', '1/14/2001', '', 110, 142, 113, 121, 'scDipesh A Magar.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(274, 274, 11, 'Laxman', 'Ruchal (Captain)', 'Laxman Ruchal (Captain)', '4/10/1990', '', 110, 142, 113, 121, 'scLaxman Ruchal.jpeg', '1', '', 0, 1, 0, '0000-00-00', 'Admin'),
(275, 275, 11, 'Messouke Etiegnie Oloumou', 'Pierre Jean Marie', 'Messouke Etiegnie Oloumou Pierre Jean Marie', '2/20/1998', '', 110, 142, 120, 121, 'scMessouke E O P J Marie.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(276, 276, 11, 'Pratap', 'Bajracharya', 'Pratap Bajracharya', '11/1/1995', '', 110, 141, 113, 121, 'scPratap Bajracharya.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(277, 277, 11, 'Rahul', 'Khadgi', 'Rahul Khadgi', '6/3/1999', '', 110, 142, 113, 121, 'scRahul Khadgi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(278, 278, 11, 'Saroj', 'Dahal', 'Saroj Dahal', '5/8/1990', '', 110, 140, 113, 121, 'scSaroj Dahal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(279, 279, 11, 'Suvash', 'Gurung', 'Suvash Gurung', '9/7/1991', '', 110, 141, 113, 121, 'scSuvash Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(280, 280, 11, 'Kshitiz Raj', 'G.T.', 'Kshitiz Raj G.T.', '1/30/2000', '', 110, 142, 113, 121, 'scKshitiz Raj G.T.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(281, 281, 11, 'Ajay', 'Maharjan', 'Ajay Maharjan', '5/3/1989', '', 110, 139, 113, 121, 'scAjay Maharjan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(282, 282, 12, 'Sabin', 'Khadka', 'Sabin Khadka', '10/13/1994', '', 110, 0, 113, 121, 'sycSabin Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(283, 283, 12, 'Raj', 'Shahi', 'Raj Shahi', '5/4/1988', '', 110, 140, 113, 121, 'sycRaj Shahi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(284, 284, 12, 'Dipesh', 'Shrestha', 'Dipesh Shrestha', '12/4/1992', '', 110, 141, 113, 121, 'sycDipesh Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(285, 285, 12, 'Krishna Gopal', 'Shrestha', 'Krishna Gopal Shrestha', '6/26/1990', '', 110, 142, 113, 121, 'sycKrishna Gopal Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(286, 286, 12, 'Anish', 'Shrestha', 'Anish Shrestha', '7/16/1993', '', 110, 0, 113, 121, 'sycAnish Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(287, 287, 12, 'Pradip', 'Bhandari', 'Pradip Bhandari', '8/13/1997', '', 110, 139, 113, 121, 'sycPradip Bhandari.jpeg', '', '', 2, 0, 0, '0000-00-00', 'Admin'),
(288, 288, 12, 'Tirtha Bahadur', 'Basnet', 'Tirtha Bahadur Basnet', '4/13/1992', '', 110, 142, 113, 121, 'sycTirtha Bahadur Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(289, 289, 12, 'Susan', 'Lama', 'Susan Lama', '3/12/1989', '', 110, 140, 113, 121, 'sycSusan Lama.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(290, 290, 12, ' Ramesh', 'Tamang', ' Ramesh Tamang', '3/1/1992', '', 110, 140, 113, 121, 'sycRamesh Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(291, 291, 12, 'Binod', 'KC', 'Binod KC', '9/25/1992', '', 110, 140, 113, 121, 'sycBinod KC.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(292, 292, 12, 'Deepak', 'Gupta', 'Deepak Gupta', '5/11/1996', '', 110, 142, 113, 121, 'sycDeepak Gupta.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(293, 293, 12, 'Krishna', 'Rana bhat', 'Krishna Rana bhat', '1/2/1996', '', 110, 140, 113, 121, 'sycKrishna Rana bhat.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(294, 294, 12, 'Rajkumar', 'Ghising', 'Rajkumar Ghising', '7/12/1981', '', 110, 142, 113, 121, 'sycRajkumar Ghising.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(295, 295, 12, 'Alik', 'Rumba', 'Alik Rumba', '4/27/1997', '', 110, 0, 113, 121, 'sycAlik Rumba.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(296, 296, 12, 'Sandesh', 'Neupane', 'Sandesh Neupane', '12/8/2000', '', 110, 0, 113, 121, 'sycSandesh Neupane.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(297, 297, 12, 'Barsat', 'Gurung', 'Barsat Gurung', '9/18/1981', '', 110, 141, 113, 121, 'sycBarsat Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(298, 298, 12, 'Mbei', 'Andre Ekwem', 'Mbei Andre Ekwem', '9/11/1998', '', 110, 0, 120, 121, 'sycMbei Andre Ekwem.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(299, 299, 12, 'Manish', 'Thapa', 'Manish Thapa', '2/1/2002', '', 110, 141, 113, 121, 'sycManish Thapa.jpeg', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(300, 300, 12, 'Purna', 'Bahadur Shrestha', 'Purna Bahadur Shrestha', '1/24/2001', '', 110, 140, 113, 121, 'sycPurna Bahadur Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(301, 301, 12, 'Santa', 'Bahadur Gurung', 'Santa Bahadur Gurung', '6/1/1998', '', 110, 0, 113, 121, 'sycSanta Bahadur Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(302, 302, 12, 'Nishan', 'Majhi', 'Nishan Majhi', '3/2/2000', '', 110, 0, 113, 121, 'sycNishan Majhi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(303, 303, 12, 'Meshack Abel', 'Mwankina', 'Meshack Abel Mwankina', '10/12/1987', '', 110, 0, 120, 121, 'sycMeshack Abel Mwankina.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(304, 304, 12, 'Hisub', 'Thapaliya', 'Hisub Thapaliya', '1/16/1999', '', 110, 141, 113, 121, 'sycHisub Thapaliya.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(305, 305, 12, 'Sunil', 'Ghalan', 'Sunil Ghalan', '3/26/2000', '', 110, 140, 113, 121, 'sycSunil Ghalan.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(306, 306, 12, 'Deepak', 'Bhusal', 'Deepak Bhusal', '1/6/1992', '', 110, 140, 113, 121, 'sycDeepak Bhusal.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(307, 307, 12, 'Bishnu Kumar', 'K.C.', 'Bishnu Kumar K.C.', '11/8/2000', '', 110, 139, 113, 121, 'sycBishnu Kumar K.C..jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(308, 308, 13, 'Mikchhen', 'Tamang', 'Mikchhen Tamang', '7/28/1998', 'Morang', 110, 141, 113, 121, 'tscMikchhenTamang', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(309, 309, 13, 'Rupesh', 'KC', 'Rupesh KC', '5/13/1991', 'Nuwakot', 110, 141, 113, 121, 'tscRupresh Kc', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(310, 310, 13, 'Purna', 'Chemjong', 'Purna Chemjong', '6/29/1991', 'Morang', 110, 139, 113, 121, 'tscPurna Chemjong', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(311, 311, 13, 'Susaan', 'Shrestha', 'Susaan Shrestha', '2/28/2000', 'Kathmandu', 110, 142, 113, 121, 'tscSusan Shrestha', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(312, 312, 13, 'Jeevan', 'Gurung', 'Jeevan Gurung', '10/4/1997', 'Syanja', 110, 140, 113, 121, 'tscJeevan Gurung', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(313, 313, 13, 'Dipesh', 'Ghale', 'Dipesh Ghale', '12/6/1998', 'Makwanpur', 110, 141, 113, 121, 'tscDpesh Ghale', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(314, 314, 13, 'Sushil', 'Rai', 'Sushil Rai', '5/23/1993', 'Morang', 110, 142, 113, 121, 'tscSushil Rai', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(315, 315, 13, 'Ananta', 'Tamang', 'Ananta Tamang', '1/14/1998', 'Jhapa', 110, 140, 113, 121, 'tscAnanta Tamang', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(316, 316, 13, 'Ashok', 'Khawas', 'Ashok Khawas', '3/14/1996', 'Morang', 110, 140, 113, 121, 'tscAshok Khawas', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(317, 317, 13, 'Karan', 'Rawat', 'Karan Rawat', '6/6/2000', 'Sunsari', 110, 140, 113, 121, 'tscKaran Rawat', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(318, 318, 13, 'Bijay', 'Shrestha', 'Bijay Shrestha', '3/23/2003', 'Sindhuli', 110, 141, 113, 121, 'tscBijay Shrestha', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(319, 319, 13, 'Bijaya', 'Bhujel', 'Bijaya Bhujel', '10/31/1996', 'Bhojpur', 110, 142, 113, 121, 'tscBijaya Bhujel', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(320, 320, 13, 'Sushan', 'Shrestha', 'Sushan Shrestha', '5/19/1996', 'Bhaktapur', 110, 142, 113, 121, 'tscSushan Shrestha', '', '1', 0, 0, 0, '0000-00-00', 'Admin'),
(321, 321, 13, 'Yogesh', 'Gurung', 'Yogesh Gurung', '3/17/2002', 'Kaski', 110, 141, 113, 121, 'tscYogesh Gurung', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(322, 322, 13, 'Bikram', 'Lama(Captain)', 'Bikram Lama(Captain)', '2/23/1989', 'Kavrepalanchowk', 110, 141, 113, 121, 'tscBikramLama', '', '', 0, 0, 1, '0000-00-00', 'Admin');
INSERT INTO `player_data` (`row_id`, `player_id`, `club_id`, `first_name`, `last_name`, `full_name`, `date_of_birth`, `place_of_birth`, `gender`, `player_position`, `player_country`, `player_status`, `image`, `goal_score`, `goal_assist`, `clean_sheet`, `red_card`, `yellow_card`, `createdDate`, `createdBy`) VALUES
(323, 323, 13, 'Nirajan', 'Maharjan', 'Nirajan Maharjan', '1/17/2002', 'Lalipur', 110, 140, 113, 121, 'tscNirajan Maharjan', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(324, 324, 13, 'Prabin Kumar', 'Sainju', 'Prabin Kumar Sainju', '1/17/1991', 'Pokhara', 110, 141, 113, 121, 'tscPrabin Kumar Sainju', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(325, 325, 13, 'Guillaume Yves', 'Priso Njanga', 'Guillaume Yves Priso Njanga', '1/21/1991', '', 110, 139, 120, 121, 'tscPrinso', '', '', 1, 0, 0, '0000-00-00', 'Admin'),
(326, 326, 13, 'Aliu Oladiran', 'Erinoso', 'Aliu Oladiran Erinoso', '12/31/1992', '', 110, 141, 120, 121, 'tscErinoso', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(327, 327, 13, 'Wasiu Olalekan', 'Hamzat', 'Wasiu Olalekan Hamzat', '3/2/1992', '', 110, 142, 120, 121, 'tscHazmat', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(328, 328, 13, 'Managya', 'Nakarmi', 'Managya Nakarmi', '3/23/2004', 'Kathmandu', 110, 141, 113, 121, 'tscManagya Nakarmi', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(329, 329, 13, 'Ranjan', 'Pun', 'Ranjan Pun', '10/28/2002', 'Nawalparasi', 110, 142, 113, 121, 'tscRanjan Pun', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(330, 330, 14, 'Bharat', 'Khawas (Captain)', 'Bharat Khawas (Captain)', '10/29/1991', '', 110, 142, 113, 121, 'tacBharat Khawas.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(331, 331, 14, 'Nawayug', 'Shrestha', 'Nawayug Shrestha', '6/8/1990', '', 110, 142, 113, 121, 'tacNawayug Shrestha.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(332, 332, 14, 'Santosh', 'Tamang', 'Santosh Tamang', '8/6/1994', '', 110, 140, 113, 121, 'tacSantosh Tamang.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(333, 333, 14, 'Jitendra', 'Karki', 'Jitendra Karki', '8/26/1987', '', 110, 0, 113, 121, 'tacJitendra Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(334, 334, 14, 'Tanka Bahadur', 'Basnet', 'Tanka Bahadur Basnet', '12/12/1987', '', 110, 0, 113, 121, 'tacTanka B Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(335, 335, 14, 'Bikash', 'Khawas', 'Bikash Khawas', '7/29/2001', '', 110, 0, 113, 121, 'tacBikash Khawas.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(336, 336, 14, 'Bimal', 'Pandey', 'Bimal Pandey', '1/21/1990', '', 110, 0, 113, 121, 'tacBimal Pandey.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(337, 337, 14, 'Bikash', 'Tamang', 'Bikash Tamang', '1/27/1994', '', 110, 0, 113, 121, 'tacBikash Tamang.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(338, 338, 14, 'Bibek', 'Basnet', 'Bibek Basnet', '1/11/1996', '', 110, 0, 113, 121, 'tacBIbek Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(339, 339, 14, 'Dipak', 'Gurung', 'Dipak Gurung', '10/3/1991', '', 110, 0, 113, 121, 'tacDipak Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(340, 340, 14, 'Suman', 'Aryal', 'Suman Aryal', '1/31/2000', '', 110, 0, 113, 121, 'tacSuman Aryal.jpeg', '', '', 0, 1, 0, '0000-00-00', 'Admin'),
(341, 341, 14, 'Bikesh', 'Kuthu', 'Bikesh Kuthu', '6/24/1993', '', 110, 139, 113, 121, 'tacBikesh Kuthu.jpeg', '', '', 2, 0, 0, '0000-00-00', 'Admin'),
(342, 342, 14, 'Biwas', 'Chaudhary', 'Biwas Chaudhary', '2/16/2001', '', 110, 0, 113, 121, 'tacBiwas Chaudhary.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(343, 343, 14, 'Tek Bahadur', 'Budhathoki', 'Tek Bahadur Budhathoki', '7/21/1986', '', 110, 0, 113, 121, 'tacTek B Budhathoki.jpeg', '1', '', 0, 0, 0, '0000-00-00', 'Admin'),
(344, 344, 14, 'Youddha', 'Shahi', 'Youddha Shahi', '9/1/1985', '', 110, 140, 113, 121, 'tacYouddha Shahi.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(345, 345, 14, 'Sudil', 'Rai', 'Sudil Rai', '6/18/1995', '', 110, 142, 113, 121, 'tacSudil Rai.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(346, 346, 14, 'Ashish', 'Shakya', 'Ashish Shakya', '7/26/1992', '', 110, 141, 113, 121, 'tacAshish Shakya.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(347, 347, 14, 'Dinesh', 'Henjan', 'Dinesh Henjan', '2/3/2001', '', 110, 0, 113, 121, 'tacDinesh Henjan.jpeg', '1', '', 0, 0, 2, '0000-00-00', 'Admin'),
(348, 348, 14, 'Sesehang', 'Angdembe', 'Sesehang Angdembe', '11/3/2000', '', 110, 0, 113, 121, 'tacSesehang Angdembe.jpeg', '', '', 0, 0, 1, '0000-00-00', 'Admin'),
(349, 349, 14, 'George prince', 'Karki', 'George prince Karki', '10/26/1993', '', 110, 142, 113, 121, 'tacGeorge P Karki.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(350, 350, 14, 'Gandip Kumar', 'Khadka', 'Gandip Kumar Khadka', '8/24/1991', '', 110, 139, 113, 121, 'tacGandip K Khadka.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(351, 351, 14, 'Sushant', 'chaudhary', 'Sushant chaudhary', '12/14/1999', '', 110, 142, 113, 121, 'tacSushant Chaudhary.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(352, 352, 14, 'Ramesh', 'Bhujal', 'Ramesh Bhujal', '11/9/1994', '', 110, 141, 113, 121, 'tacRamesh Bhujal.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(353, 353, 14, 'Amrit', 'Basnet', 'Amrit Basnet', '12/19/1986', '', 110, 142, 113, 121, 'tacAmrit Basnet.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(354, 354, 14, 'Amrit', 'khawas', 'Amrit khawas', '4/13/1985', '', 110, 140, 113, 121, 'tacAmrit Khawas.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(355, 355, 14, 'Ishwor', 'Baniya', 'Ishwor Baniya', '1/1/1996', '', 110, 140, 113, 121, 'tacIshwor Baniya.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(356, 356, 14, 'Rajeev', 'Gurung', 'Rajeev Gurung', '10/9/1990', '', 110, 142, 113, 121, 'tacRajeev Gurung.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin'),
(357, 357, 14, 'Anish', 'Shrestha', 'Anish Shrestha', '10/1/1995', '', 110, 139, 113, 121, 'tacAnish Shrestha.jpeg', '', '', 0, 0, 0, '0000-00-00', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `row_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `tournament_name` varchar(50) DEFAULT NULL,
  `season` varchar(30) DEFAULT NULL,
  `tournament_type` int(11) NOT NULL,
  `title_sponsor` varchar(50) DEFAULT NULL,
  `supported_by` varchar(50) DEFAULT NULL,
  `organizer` varchar(50) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `createdBy` varchar(256) DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedBy` varchar(256) DEFAULT NULL,
  `isDeleted` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tournaments`
--

INSERT INTO `tournaments` (`row_id`, `tournament_id`, `tournament_name`, `season`, `tournament_type`, `title_sponsor`, `supported_by`, `organizer`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`) VALUES
(1, 1, 'Qatar Airways A Division League', '2019-20', 123, 'Qatar Airways', 'FIFA, AFC', 'ANFA', '2019-12-23', 'Admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `row_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(256) DEFAULT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`row_id`, `user_id`, `username`, `firstName`, `lastName`, `email`, `password`, `user_type`) VALUES
(1, 1, 'pranaya10', 'Pranaya', 'Pradhan', 'pradhanpranaya8@gmail.com', 'pranaya123', 100),
(2, 2, 'ashiwini_joshi', 'Ashwini', 'Joshi', 'joshiashwini@gmail.com', 'ashwini123', 101),
(3, 3, 'aayush_joshi', 'Aayush', 'Joshi', 'aayushj992@gmail.com\r\n', 'aayush123', 101),
(4, 4, 'abhi_joshi', 'Abhishek', 'Joshi', 'joshiabhi@gmail.com', '962a36218a682120bee6374c0eb715a0', 101),
(NULL, 9, 'abhinav_joshi', 'Abhinav', 'Joshi', 'abhinav.joshi@gmail.com', 'nepal123', 101),
(NULL, 11, 'joshianusha', 'Anusha', 'Joshi', 'joshianusha@gmail.com', 'anusha123', 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `row_id` (`row_id`);

--
-- Indexes for table `category_value`
--
ALTER TABLE `category_value`
  ADD PRIMARY KEY (`cvalue_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `club_name` (`club_name`),
  ADD KEY `club_division` (`club_division`),
  ADD KEY `kit_brand` (`kit_brand`),
  ADD KEY `club_affiliation` (`club_affiliation`);

--
-- Indexes for table `detail_match_stats`
--
ALTER TABLE `detail_match_stats`
  ADD PRIMARY KEY (`match_detail_stats_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `tournament_id` (`tournament_id`),
  ADD KEY `match_id` (`match_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `tournament_id` (`tournament_id`),
  ADD KEY `club_1` (`club_1`),
  ADD KEY `club_2` (`club_2`),
  ADD KEY `match_status` (`match_status`),
  ADD KEY `venue` (`venue`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `news_type` (`news_type`);

--
-- Indexes for table `player_data`
--
ALTER TABLE `player_data`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `club_id` (`club_id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `player_country` (`player_country`),
  ADD KEY `player_status` (`player_status`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`tournament_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `tournament_type` (`tournament_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `row_id` (`row_id`),
  ADD KEY `user_type` (`user_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_value`
--
ALTER TABLE `category_value`
  MODIFY `cvalue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `detail_match_stats`
--
ALTER TABLE `detail_match_stats`
  MODIFY `match_detail_stats_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `match_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `tournament_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_value`
--
ALTER TABLE `category_value`
  ADD CONSTRAINT `category_value_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`club_name`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `club_ibfk_2` FOREIGN KEY (`club_division`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `club_ibfk_3` FOREIGN KEY (`club_division`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `club_ibfk_4` FOREIGN KEY (`kit_brand`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `club_ibfk_5` FOREIGN KEY (`club_affiliation`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `detail_match_stats`
--
ALTER TABLE `detail_match_stats`
  ADD CONSTRAINT `detail_match_stats_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`tournament_id`),
  ADD CONSTRAINT `detail_match_stats_ibfk_2` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`tournament_id`),
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`club_1`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`club_2`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `matches_ibfk_4` FOREIGN KEY (`match_status`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `matches_ibfk_5` FOREIGN KEY (`venue`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`news_type`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `player_data`
--
ALTER TABLE `player_data`
  ADD CONSTRAINT `player_data_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  ADD CONSTRAINT `player_data_ibfk_2` FOREIGN KEY (`gender`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `player_data_ibfk_3` FOREIGN KEY (`player_country`) REFERENCES `category_value` (`cvalue_id`),
  ADD CONSTRAINT `player_data_ibfk_4` FOREIGN KEY (`player_status`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD CONSTRAINT `tournaments_ibfk_1` FOREIGN KEY (`tournament_type`) REFERENCES `category_value` (`cvalue_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `category_value` (`cvalue_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
