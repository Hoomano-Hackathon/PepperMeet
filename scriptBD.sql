-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql8.freemysqlhosting.net
-- Generation Time: Jun 10, 2017 at 05:52 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql8179497`
--

-- --------------------------------------------------------

--
-- Table structure for table `known_face`
--

CREATE TABLE `known_face` (
  `id_face` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shape_info` int(5) NOT NULL,
  `extra_info` int(5) NOT NULL,
  `id_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id_question` int(5) NOT NULL,
  `label` varchar(20) NOT NULL,
  `content` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reponse`
--

CREATE TABLE `reponse` (
  `id_reponse` int(5) NOT NULL,
  `content` varchar(60) NOT NULL,
  `user_id` int(5) NOT NULL,
  `question_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shape_info`
--

CREATE TABLE `shape_info` (
  `id_face` int(5) NOT NULL,
  `zero` int(5) NOT NULL,
  `alpha` float NOT NULL,
  `beta` float NOT NULL,
  `sizeX` float NOT NULL,
  `sizeY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shape_info`
--

INSERT INTO `shape_info` (`id_face`, `zero`, `alpha`, `beta`, `sizeX`, `sizeY`) VALUES
(0, 0, 9.2, 5.222, 5.6, 6.5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`) VALUES
(1, 'bernard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `known_face`
--
ALTER TABLE `known_face`
  ADD PRIMARY KEY (`id_face`),
  ADD KEY `fk_shape_info` (`shape_info`),
  ADD KEY `fk_user_id` (`id_user`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_reponse`),
  ADD KEY `fk_question_id` (`question_id`);

--
-- Indexes for table `shape_info`
--
ALTER TABLE `shape_info`
  ADD PRIMARY KEY (`id_face`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `known_face`
--
ALTER TABLE `known_face`
  MODIFY `id_face` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id_reponse` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `known_face`
--
ALTER TABLE `known_face`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_shape_info` FOREIGN KEY (`shape_info`) REFERENCES `shape_info` (`id_face`);

--
-- Constraints for table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `fk_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id_question`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
