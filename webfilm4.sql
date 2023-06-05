-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 07:40 AM
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
-- Database: `webfilm4`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountuser` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `permission` varchar(50) CHARACTER SET utf8 DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountuser`, `password`, `permission`) VALUES
('78939', '123', ''),
('admin', '1', 'admin'),
('admin1222', '1', ''),
('admin5888', '1', ''),
('adminNe', '1', ''),
('belle', '1', ''),
('cuong', '1', 'admin'),
('harry', '1', ''),
('hello1', '1', ''),
('hello12', '1', ''),
('hello12112', '1', ''),
('helloworld', '1', ''),
('john', '1', ''),
('kienDAy', '1', ''),
('marryanna', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actorid` int(11) NOT NULL,
  `actorname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `nationality` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actorid`, `actorname`, `age`, `height`, `nationality`) VALUES
(1, 'John Wick', 45, 189, 'England'),
(2, 'Anna Bella', 109, 110, 'America'),
(3, 'Tokuda', 65, 169, 'Japan'),
(4, 'Duy Anh Be', 20, 170, 'Viet Nam');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `userid` int(11) DEFAULT NULL,
  `movieid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`userid`, `movieid`) VALUES
(2, 2),
(2, 2),
(2, 2),
(2, 3),
(2, 2),
(2, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `detailmovie`
--

CREATE TABLE `detailmovie` (
  `movieid` int(11) NOT NULL,
  `namemovie` varchar(50) CHARACTER SET utf8 NOT NULL,
  `imgPath` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `describemovie` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailmovie`
--

INSERT INTO `detailmovie` (`movieid`, `namemovie`, `imgPath`, `price`, `category`, `describemovie`, `status`) VALUES
(1, 'us', 'Us.jpg', 20000, 'horror', 'a horror movie', 'active'),
(2, '127hours', '127hours.jpg', 15000, 'live', 'a nomal movie', 'active'),
(3, 'inception', 'increption.jpg', 30000, 'Fiction ...', 'a fiction movie', 'active'),
(4, 'cosmopolis', 'cosmopolis.jpg', 25000, 'horror', 'a horror movie', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `imgid` int(11) NOT NULL,
  `pathimg` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movieid` int(11) DEFAULT NULL,
  `actorid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movieid`, `actorid`) VALUES
(1, 1),
(4, 3),
(4, 3),
(3, 3),
(3, 3),
(3, 4),
(2, 3),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orderproperties`
--

CREATE TABLE `orderproperties` (
  `userid` int(11) DEFAULT NULL,
  `movieid` int(11) DEFAULT NULL,
  `price` double DEFAULT 0,
  `buyingdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `familyname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `born` date DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `accountuser` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `familyname`, `name`, `born`, `phone`, `email`, `accountuser`) VALUES
(1, 'Harry', 'Potter', '1987-02-17', '0987372', 'a@harry.uk', 'harry'),
(2, 'john1', 'Wick', '1975-04-30', '0666666666', 'johnWich@jw.usa', 'john'),
(3, 'Anna', 'Bella', '0000-00-00', '0666666', 'anna666@anna.us', 'belle'),
(4, 'A', 'Ghost', '1999-12-01', '08246712', 'g@ghost.vn', 'marryanna'),
(9, '', '', NULL, NULL, 'kien@rrr.a', 'kienDAy'),
(12, '', '', NULL, NULL, 'a@sfsf', 'helloworld');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountuser`);

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actorid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `detailmovie`
--
ALTER TABLE `detailmovie`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD KEY `actorid` (`actorid`),
  ADD KEY `movieid` (`movieid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `accountuser` (`accountuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detailmovie`
--
ALTER TABLE `detailmovie`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movie` (`movieid`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`actorid`) REFERENCES `actor` (`actorid`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`movieid`) REFERENCES `detailmovie` (`movieid`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`accountuser`) REFERENCES `account` (`accountuser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
