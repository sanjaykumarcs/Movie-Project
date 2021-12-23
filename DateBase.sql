-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 02:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `moviebook`
--

CREATE TABLE `moviebook` (
  `mov_id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `movie_language` varchar(50) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moviebook`
--

INSERT INTO `moviebook` (`mov_id`, `username`, `movie_language`, `movie_name`, `rating`) VALUES
(1, 'kart', 'KANNADA', 'kgf', 5),
(2, 'sach', 'HINDI', 'dangal', 4),
(3, 'nisch', 'KANNADA', 'kgf', 5),
(4, 'prash', 'KANNADA', 'kirik party', 5),
(5, 'deeksha', 'ENGLISH', 'end game', 4),
(6, 'rahul', 'HINDI', 'super30', 1),
(7, 'lohith', 'ENGLISH', 'black panther', 4),
(8, 'gani', 'KANNADA', 'kgf', 5),
(9, 'nagu', 'KANNADA', 'kgf', 5),
(10, 'sid', 'KANNADA', 'shps kasargodu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `cardname` varchar(50) NOT NULL,
  `cardnumber` varchar(50) NOT NULL,
  `expmonth` varchar(50) NOT NULL,
  `expyear` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `username`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `cvv`, `dt`) VALUES
(1, 'kart', 'karthik  c', '3456-0120-2344-4444', 'september', 2028, 340, '2021-05-22 17:15:50'),
(2, 'sach', 'SACHIN TENDULKAR', '5426-1160-5804-5934', 'august', 2030, 899, '2021-08-23 09:20:48'),
(3, 'nisch', 'nischal ', '4563-3535-3637-2738', 'september', 2027, 675, '2021-08-30 18:52:19'),
(4, 'prash', 'prash', '45502-29i92iu', 'march', 2030, 787, '2021-08-30 18:56:52'),
(5, 'deeksha', 'mahanta-deeksha', '7878-0909-3545-9273', 'august', 2028, 676, '2021-08-30 19:53:46'),
(6, 'rahul', 'rahul', '6767-9009-8374-4567', 'march', 2028, 767, '2021-08-30 21:11:11'),
(7, 'lohith', 'lohi', '9009-3455-7687-2343', 'april', 2030, 123, '2021-08-31 11:18:25'),
(8, 'gani', 'gani', '1223-8938-2838-0000', 'december', 2025, 676, '2021-09-03 15:06:36'),
(9, 'nagu', 'nagaraj', '2333-9090-3423-5676', 'september', 2024, 787, '2021-09-09 22:00:58'),
(10, 'sid', 'siddu', '2323-7878-9090-6767', 'december', 2028, 565, '2021-09-24 00:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `show_date` varchar(50) NOT NULL,
  `show_type` varchar(50) NOT NULL,
  `show_movies` varchar(50) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `username`, `show_date`, `show_type`, `show_movies`, `dt`) VALUES
(1, 'kart', '2021-05-30', 'late-night', 'kgf(mon,wed,sun)', '2021-08-23 09:07:48'),
(2, 'sach', '2021-08-26', 'mid-day', 'dangal(thur,sat)', '2021-08-23 09:16:40'),
(3, 'nisch', '26-08-2021', 'late-night', 'kgf(mon,tue,thur)', '2021-08-30 19:31:16'),
(4, 'prash', '03-09-2021', 'late-night', 'kirik-party(tue,wed,fri)', '2021-08-30 19:32:09'),
(5, 'deeksha', '2021-08-31', 'morning', 'end game(tue,thur,sat)', '2021-08-30 19:52:55'),
(6, 'rahul', '2021-08-24', 'mid-day', 'super 30(tue,sat)', '2021-08-30 21:10:26'),
(7, 'lohith', '2021-09-05', 'morning', 'black panther(mon,wed,sun)', '2021-08-31 11:17:39'),
(8, 'gani', '2021-09-08', 'late-night', 'kgf(mon,wed,sun)', '2021-09-03 15:05:17'),
(9, 'nagu', '2021-09-15', 'late-night', 'kgf(mon,wed,sun)', '2021-09-09 21:59:45'),
(10, 'sid', '2021-09-24', 'late-night', 'kasargodu(thur,sat)', '2021-09-24 00:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `theatre_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `theatre_place` varchar(50) NOT NULL,
  `theatre_name` varchar(50) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`theatre_id`, `username`, `theatre_place`, `theatre_name`, `dt`) VALUES
(1, 'kart', 'chikmaglure', 'gurunath kadur', '2021-05-22 17:14:26'),
(2, 'sach', 'bangalore', 'PVR koramangala', '2021-08-23 09:12:14'),
(3, 'nisch', 'mysore', 'INOX MG road', '2021-08-30 19:33:25'),
(4, 'prash', 'chickmaglore', 'SRElekha basavanahalli', '2021-08-30 19:35:28'),
(5, 'deeksha', 'davangere', 'geethanjali,kb extension', '2021-08-30 19:52:33'),
(6, 'rahul', 'chikmaglure', 'gurunath kadur', '2021-08-30 21:09:56'),
(7, 'lohith', 'hassan', 'prithvi,bm road', '2021-08-31 11:16:51'),
(8, 'gani', 'davangere', 'padmanjali ,lingeshwar temple road', '2021-09-03 15:04:49'),
(9, 'nagu', 'davangere', 'padmanjali ,lingeshwar temple road', '2021-09-09 21:59:20'),
(10, 'sid', 'bangalore', 'PVR kormangala', '2021-09-24 00:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `no_of_tickets` int(11) NOT NULL,
  `yrclass` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `totalcost` int(11) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `username`, `no_of_tickets`, `yrclass`, `price`, `totalcost`, `dt`) VALUES
(1, 'kart', 2, 'firstclass', 120, 240, '2021-05-22 17:15:18'),
(2, 'sach', 1, 'firstclass', 120, 120, '2021-08-23 09:13:44'),
(3, 'nisch', 1, 'gold', 150, 150, '2021-08-30 19:34:06'),
(4, 'prash', 1, 'gold', 150, 150, '2021-08-30 19:34:30'),
(5, 'deeksha', 1, 'balcony', 100, 100, '2021-08-30 19:53:10'),
(6, 'rahul', 1, 'gold', 150, 150, '2021-08-30 21:10:34'),
(8, 'lohith', 3, 'balcony', 100, 300, '2021-08-31 11:17:57'),
(9, 'gani', 2, 'gold', 150, 300, '2021-09-03 15:05:36'),
(10, 'nagu', 3, 'gold', 150, 450, '2021-09-09 22:00:02'),
(11, 'sid', 2, 'firstclass', 120, 240, '2021-09-24 00:38:37');

--
-- Triggers `tickets`
--
DELIMITER $$
CREATE TRIGGER `total_cost` BEFORE INSERT ON `tickets` FOR EACH ROW set NEW.totalcost=NEW.price * NEW.no_of_tickets
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`fname`, `lname`, `gender`, `email`, `phone`, `place`, `username`, `password`) VALUES
('karthik', 'c', 'MALE', 'karthikc0930@gmail.com', 6361230324, 'kadur', 'kart', 'kart'),
('SACHIN ', 'TENDULKAR', 'male', 'sach@gmail.com', 6347458956, 'mumbai', 'sach', 'sach'),
('nischal', 'h b', 'MALE', 'nischu@gmail.com', 6763782738, 'tumkur', 'nisch', 'nisch'),
('prashant', 'm u', 'MALE', 'prash@gmail.com', 898098990, 'mundre', 'prash', 'prash'),
('mahanta', 'deeksha', 'MALE', 'deeksha@gmail.com', 785467656, 'durga', 'deeksha', 'deeksha'),
('rahul', 'v', 'MALE', 'rahul@gmail.com', 283776388, 'bangalore', 'rahul', 'rahul'),
('lohith', 'neg', 'MALE', 'lohith@gmail.com', 7828399223, 'hassan', 'lohith', 'lohith'),
('ganesh', 'n b', 'MALE', 'ganesh@gmail.com', 8937479592, 'arasikere', 'gani', 'gani'),
('nagaraj', ' sb ', 'MALE', 'nagaraj@gmail.com', 8548928016, 'kalburgi', 'nagu', '2811'),
('siddu', 'kemp', 'MALE', 'siddu@gmail.com', 9538093351, 'bangalore', 'sid', 'sid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moviebook`
--
ALTER TABLE `moviebook`
  ADD PRIMARY KEY (`mov_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`theatre_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moviebook`
--
ALTER TABLE `moviebook`
  MODIFY `mov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `theatre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;