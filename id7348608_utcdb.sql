-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id7348608_utcdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ANSWERSVAR`
--

CREATE TABLE `ANSWERSVAR` (
  `ID` int(11) NOT NULL,
  `ANSVER` varchar(200) COLLATE utf8_bin NOT NULL,
  `IDQUESTION` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATETIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='таблица варианты ответов';

--
-- Dumping data for table `ANSWERSVAR`
--

INSERT INTO `ANSWERSVAR` (`ID`, `ANSVER`, `IDQUESTION`, `TIMESTAMP`, `CREATETIMESTAMP`) VALUES
(45, 'ни одного', 1, '2018-11-15 18:33:07', '2018-11-15 18:33:07'),
(46, '1', 1, '2018-11-15 18:33:07', '2018-11-15 18:33:07'),
(47, '2-5', 1, '2018-11-15 18:33:07', '2018-11-15 18:33:07'),
(48, '6-10', 1, '2018-11-15 18:33:07', '2018-11-15 18:33:07'),
(49, 'больше 10', 1, '2018-11-15 18:33:07', '2018-11-15 18:33:07'),
(55, 'не нравится', 2, '2018-11-15 18:41:04', '2018-11-15 18:41:04'),
(56, 'отношусь нейрально', 2, '2018-11-15 18:41:04', '2018-11-15 18:41:04'),
(57, 'люблю', 2, '2018-11-15 18:41:04', '2018-11-15 18:41:04'),
(58, 'очень сильно люблю', 2, '2018-11-15 18:41:04', '2018-11-15 18:41:04'),
(59, 'не общаюсь совсем', 3, '2018-11-15 18:43:29', '2018-11-15 18:43:29'),
(60, 'редко общаюсь', 3, '2018-11-15 18:43:29', '2018-11-15 18:43:29'),
(61, 'время от времени общаюсь', 3, '2018-11-15 18:43:29', '2018-11-15 18:43:29'),
(62, 'часто общаюсь', 3, '2018-11-15 18:43:29', '2018-11-15 18:43:29'),
(63, 'очень часто общаюсь', 3, '2018-11-15 18:43:29', '2018-11-15 18:43:29'),
(64, 'вообще не рисую', 4, '2018-11-15 19:04:14', '2018-11-15 19:04:14'),
(65, 'рисую, но очень редко', 4, '2018-11-15 19:04:14', '2018-11-15 19:04:14'),
(66, 'редко рисую', 4, '2018-11-15 19:04:14', '2018-11-15 19:04:14'),
(67, 'иногда рисую', 4, '2018-11-15 19:04:14', '2018-11-15 19:04:14'),
(68, 'часто рисую', 4, '2018-11-15 19:04:14', '2018-11-15 19:04:14'),
(69, 'Милые', 5, '2018-11-18 22:34:03', '2018-11-18 22:34:03'),
(70, 'Очень милые', 5, '2018-11-18 22:34:03', '2018-11-18 22:34:03'),
(71, 'Лысые', 6, '2018-11-18 22:34:54', '2018-11-18 22:34:54'),
(72, 'Пушистые', 6, '2018-11-18 22:34:54', '2018-11-18 22:34:54'),
(73, 'Очень пушистые', 6, '2018-11-18 22:35:27', '2018-11-18 22:35:27'),
(74, 'Ласковые', 7, '2018-11-18 22:36:14', '2018-11-18 22:36:14'),
(75, 'Злые', 7, '2018-11-18 22:36:14', '2018-11-18 22:36:14'),
(76, 'Самодавольные', 8, '2018-11-18 22:41:01', '2018-11-18 22:41:01'),
(77, 'Безрассудные', 8, '2018-11-18 22:41:01', '2018-11-18 22:41:01'),
(78, 'Отважные', 8, '2018-11-18 22:41:01', '2018-11-18 22:41:01'),
(141, 'suka', 46, '2018-12-22 11:26:10', '2018-12-22 11:26:10'),
(142, 'blyad', 47, '2018-12-22 11:26:10', '2018-12-22 11:26:10'),
(143, '1', 48, '2018-12-22 12:35:22', '2018-12-22 12:35:22'),
(144, '2', 48, '2018-12-22 12:35:22', '2018-12-22 12:35:22'),
(145, '3', 48, '2018-12-22 12:35:22', '2018-12-22 12:35:22'),
(146, '4', 48, '2018-12-22 12:35:22', '2018-12-22 12:35:22'),
(147, '5', 48, '2018-12-22 12:35:22', '2018-12-22 12:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIES`
--

CREATE TABLE `CATEGORIES` (
  `NAME` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(2048) COLLATE utf8_bin DEFAULT '-',
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='таблица категории вопросов';

--
-- Dumping data for table `CATEGORIES`
--

INSERT INTO `CATEGORIES` (`NAME`, `DESCRIPTION`, `TIMESTAMP`) VALUES
('1', '-', '2018-12-09 16:46:23'),
('11', '-', '2018-12-09 16:46:23'),
('bxjxj', '-', '2018-12-20 23:55:58'),
('xh', '-', '2018-12-20 22:41:06'),
('xhuf', '-', '2018-12-20 23:15:02'),
('yfuuf', '-', '2018-12-09 16:22:58'),
('Есенин', '-', '2018-10-06 19:48:20'),
('Лермонтов', '-', '2018-10-06 19:48:20'),
('бля', '-', '2018-11-25 16:54:10'),
('дизайнер', '-', '2018-10-06 19:39:51'),
('кошки', '-', '2018-10-06 19:48:20'),
('менеджер', '-', '2018-10-06 19:28:39'),
('пидор', '-', '2018-12-03 11:43:30'),
('программист', '-', '2018-10-06 18:40:33'),
('собаки', '-', '2018-10-06 19:48:20'),
('спасибо за ответ', '-', '2018-11-25 19:26:26'),
('твт', '-', '2018-12-03 11:44:54'),
('хакер', '-', '2018-10-06 18:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORY_LINKS`
--

CREATE TABLE `CATEGORY_LINKS` (
  `ID` int(11) NOT NULL,
  `CATEGORYNAME` varchar(100) COLLATE utf8_bin NOT NULL,
  `ANSWERID` int(11) NOT NULL,
  `ANSWERWEIGHT` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='таблица с баллами за ответы';

--
-- Dumping data for table `CATEGORY_LINKS`
--

INSERT INTO `CATEGORY_LINKS` (`ID`, `CATEGORYNAME`, `ANSWERID`, `ANSWERWEIGHT`) VALUES
(7, 'менеджер', 45, 2),
(8, 'дизайнер', 45, 3),
(9, 'программист', 45, 1),
(10, 'программист', 46, 1),
(11, 'дизайнер', 46, 1),
(12, 'хакер', 46, 1),
(13, 'программист', 47, 2),
(14, 'хакер', 47, 2),
(15, 'дизайнер', 47, 1),
(16, 'менеджер', 46, 1),
(17, 'менеджер', 47, 1),
(18, 'программист', 48, 3),
(19, 'хакер', 48, 3),
(20, 'программист', 49, 4),
(21, 'хакер', 49, 4),
(22, 'менеджер', 49, 4),
(23, 'менеджер', 55, 2),
(24, 'программист', 55, 1),
(25, 'дизайнер', 55, 2),
(26, 'дизайнер', 56, 1),
(27, 'менеджер', 56, 1),
(28, 'программист', 56, 2),
(29, 'хакер', 56, 3),
(30, 'программист', 57, 2),
(31, 'менеджер', 57, 1),
(32, 'хакер', 57, 3),
(33, 'хакер', 58, 4),
(34, 'программист', 58, 3),
(35, 'программист', 59, 2),
(36, 'дизайнер', 59, 1),
(37, 'программист', 59, 1),
(38, 'кошки', 69, 2),
(39, 'кошки', 70, 3),
(40, 'кошки', 71, 3),
(41, 'кошки', 72, 2),
(42, 'кошки', 73, 2),
(43, 'кошки', 74, 2),
(44, 'кошки', 75, 1),
(45, 'кошки', 76, 3),
(46, 'кошки', 77, 0),
(47, 'кошки', 78, 1),
(58, 'собаки', 69, 2),
(59, 'собаки', 70, 3),
(60, 'собаки', 71, 1),
(61, 'собаки', 72, 2),
(62, 'собаки', 73, 3),
(63, 'собаки', 74, 3),
(64, 'собаки', 75, 3),
(65, 'собаки', 76, 1),
(66, 'собаки', 77, 2),
(67, 'собаки', 78, 3),
(117, 'спасибо за ответ', 141, 606),
(118, 'спасибо за ответ', 142, 60),
(119, 'спасибо за ответ', 143, 5),
(120, 'спасибо за ответ', 144, 5),
(121, 'спасибо за ответ', 145, 5),
(122, 'спасибо за ответ', 146, 5),
(123, 'спасибо за ответ', 147, 5);

-- --------------------------------------------------------

--
-- Table structure for table `QUESTIONS`
--

CREATE TABLE `QUESTIONS` (
  `ID` int(11) NOT NULL,
  `QUESTION` varchar(200) COLLATE utf8_bin NOT NULL,
  `TESTID` int(11) NOT NULL,
  `NUMNITEST` int(11) NOT NULL,
  `SYSFLAGS` int(11) DEFAULT '0',
  `LinkToImg` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATETIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='таблица вопросы';

--
-- Dumping data for table `QUESTIONS`
--

INSERT INTO `QUESTIONS` (`ID`, `QUESTION`, `TESTID`, `NUMNITEST`, `SYSFLAGS`, `LinkToImg`, `TIMESTAMP`, `CREATETIMESTAMP`) VALUES
(1, 'сколько языков программирования вы знаете?', 1, 1, 0, 'https://goo.gl/images/8Gksvz', '2018-11-16 08:04:37', '2018-10-06 11:45:55'),
(2, 'насколько вам нравится математика?', 1, 2, 0, 'https://goo.gl/images/1PSwxc', '2018-11-16 08:04:37', '2018-10-06 12:03:17'),
(3, 'насколько часто вы общаетесь с людьми?', 1, 3, 0, 'https://goo.gl/images/evJ2yH', '2018-11-16 08:04:37', '2018-10-06 12:25:14'),
(4, 'как часто вы рисуете?', 1, 4, 0, 'https://goo.gl/images/Hr3diK', '2018-11-16 08:04:37', '2018-10-06 12:25:59'),
(5, 'милые или очень милые?', 2, 1, 0, 'https://goo.gl/images/t1gqaw', '2018-11-16 08:17:09', '2018-10-06 12:46:45'),
(6, 'очень пушистые, пушистые или лысые?', 2, 2, 0, 'https://goo.gl/images/9c7V6Z', '2018-11-16 08:17:09', '2018-10-06 14:05:16'),
(7, 'ласковые или злые?', 2, 3, 0, 'https://goo.gl/images/qFkuFH', '2018-11-16 08:17:09', '2018-10-06 16:33:08'),
(8, 'самодавольные, безрасудные или отважные?', 2, 4, 0, 'https://goo.gl/images/k1e5dm', '2018-11-16 08:17:09', '2018-10-06 18:24:02'),
(46, 'a1', 67, 1, 1, '', '2018-12-22 11:25:27', '2018-12-22 11:25:27'),
(47, 'a2', 67, 2, 1, '', '2018-12-22 11:25:27', '2018-12-22 11:25:27'),
(48, 'оцените, пожалуйста, данное приложение', 68, 1, 0, '', '2018-12-22 12:35:22', '2018-12-22 12:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `RESULTS`
--

CREATE TABLE `RESULTS` (
  `ID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `ANSWERID` int(11) NOT NULL,
  `Nickname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='таблица результаты';

--
-- Dumping data for table `RESULTS`
--

INSERT INTO `RESULTS` (`ID`, `USERID`, `ANSWERID`, `Nickname`, `TIMESTAMP`) VALUES
(2, 2, 45, NULL, '2018-11-15 21:19:50'),
(3, 2, 57, NULL, '2018-11-15 21:19:50'),
(4, 2, 62, NULL, '2018-11-15 21:19:50'),
(5, 2, 67, NULL, '2018-11-16 22:36:42'),
(135, 0, 142, NULL, '2018-12-22 12:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `TESTS`
--

CREATE TABLE `TESTS` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(200) COLLATE utf8_bin NOT NULL,
  `customtext` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `USERID` int(11) NOT NULL,
  `ISPRIVATE` tinyint(1) NOT NULL DEFAULT '0',
  `edited` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'тест редактируется',
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATETIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='таблица тесты';

--
-- Dumping data for table `TESTS`
--

INSERT INTO `TESTS` (`ID`, `DESCRIPTION`, `customtext`, `USERID`, `ISPRIVATE`, `edited`, `TIMESTAMP`, `CREATETIMESTAMP`) VALUES
(1, 'Кто ты в IT', 'данный тест поможет узнать предрасположенность к профессиям в IT сфере', 1, 0, 0, '2018-12-22 18:50:16', '2018-10-06 10:26:51'),
(2, 'кошки или собаки', 'данный тест поможет вам узнать кого вы больше любите: кошек или собак', 1, 0, 0, '2018-11-25 16:44:51', '2018-10-06 10:29:22'),
(67, 'test', 'долбанутый каскадный резонанс удалил все тесты кроме 2х', 0, 0, 0, '2018-12-22 11:24:23', '2018-12-22 11:24:23'),
(68, 'Оценка приложения', 'данный тест приписан к аккаунту одного из создателей приложения, так  что через данный тест можно поставить валидную оценку приложению', 19, 0, 0, '2018-12-22 18:29:14', '2018-12-22 12:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `ID` int(11) NOT NULL,
  `SHA2LOGIN` varchar(256) COLLATE utf8_bin NOT NULL,
  `SHA2PASS` varchar(256) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `SURNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(2048) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='таблица пользователи';

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`ID`, `SHA2LOGIN`, `SHA2PASS`, `NAME`, `SURNAME`, `DESCRIPTION`, `TIME_STAMP`) VALUES
(-1, '3a4e8aL0', '0000', '', '', 'резиновый пользователь', '2012-12-21 00:00:01'),
(0, 'SVEGHII', 'KOBANCHICK', 'всесоздатель ', 'БД', 'ОБОЖАЕТ ПРЯМ ДЕЛАТЬ БД', '2018-11-16 22:42:32'),
(1, 'ivanov', '12345', 'Иван', 'Иванов', 'любит создавать тесты', '2018-10-06 10:19:32'),
(2, 'petrov', '54321', 'Алексей', 'Петров', 'обожает проходить тесты', '2018-10-06 10:21:43'),
(16, 'vovan', '123', '123', NULL, NULL, '2018-11-19 13:32:18'),
(17, 'jsjsj', '1', '1', NULL, NULL, '2018-11-19 13:39:19'),
(18, 'Dimas', '12345', '12345', NULL, NULL, '2018-11-20 02:04:51'),
(19, '1', '1', 'пидорас с логином 1', ' ', NULL, '2018-11-25 19:35:42'),
(20, 'aaa', '12345', '12345', NULL, NULL, '2018-11-26 01:00:03'),
(21, '11', '11', '11', NULL, NULL, '2018-11-26 01:09:17'),
(22, '22', '22', '22', NULL, NULL, '2018-11-26 01:10:21'),
(23, '33', '33', '33', NULL, NULL, '2018-11-26 01:11:08'),
(24, '44', '44', '44', NULL, NULL, '2018-11-26 01:14:06'),
(25, '55', '55', '55', NULL, NULL, '2018-11-26 01:21:23'),
(26, '9', '9', '9', NULL, NULL, '2018-11-26 01:23:04'),
(27, 'q', 'q', 'q', NULL, NULL, '2018-11-26 01:24:29'),
(28, 'djjf', '1', '1', NULL, NULL, '2018-11-26 01:25:20');

--
-- Triggers `USERS`
--
DELIMITER $$
CREATE TRIGGER `trig_u_login` BEFORE INSERT ON `USERS` FOR EACH ROW IF (EXISTS(SELECT 1 FROM USERS WHERE sha2login = NEW.sha2login)) THEN
    SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'INSERT failed due to duplicate login';
  END IF
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ANSWERSVAR`
--
ALTER TABLE `ANSWERSVAR`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDQUESTION` (`IDQUESTION`);

--
-- Indexes for table `CATEGORIES`
--
ALTER TABLE `CATEGORIES`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `CATEGORY_LINKS`
--
ALTER TABLE `CATEGORY_LINKS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CATEGORYNAME` (`CATEGORYNAME`),
  ADD KEY `ANSWERID` (`ANSWERID`);

--
-- Indexes for table `QUESTIONS`
--
ALTER TABLE `QUESTIONS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TESTID` (`TESTID`);

--
-- Indexes for table `RESULTS`
--
ALTER TABLE `RESULTS`
  ADD PRIMARY KEY (`ID`,`USERID`,`ANSWERID`),
  ADD KEY `RESULTS_ibfk_1` (`USERID`),
  ADD KEY `RESULTS_ibfk_2` (`ANSWERID`);

--
-- Indexes for table `TESTS`
--
ALTER TABLE `TESTS`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUEDESCR` (`DESCRIPTION`),
  ADD KEY `FUSERID` (`USERID`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ANSWERSVAR`
--
ALTER TABLE `ANSWERSVAR`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `CATEGORY_LINKS`
--
ALTER TABLE `CATEGORY_LINKS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `QUESTIONS`
--
ALTER TABLE `QUESTIONS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `RESULTS`
--
ALTER TABLE `RESULTS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `TESTS`
--
ALTER TABLE `TESTS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ANSWERSVAR`
--
ALTER TABLE `ANSWERSVAR`
  ADD CONSTRAINT `ANSWERSVAR_ibfk_1` FOREIGN KEY (`IDQUESTION`) REFERENCES `QUESTIONS` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CATEGORY_LINKS`
--
ALTER TABLE `CATEGORY_LINKS`
  ADD CONSTRAINT `CATEGORY_LINKS_ibfk_1` FOREIGN KEY (`CATEGORYNAME`) REFERENCES `CATEGORIES` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATEGORY_LINKS_ibfk_2` FOREIGN KEY (`ANSWERID`) REFERENCES `ANSWERSVAR` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `QUESTIONS`
--
ALTER TABLE `QUESTIONS`
  ADD CONSTRAINT `QUESTIONS_ibfk_1` FOREIGN KEY (`TESTID`) REFERENCES `TESTS` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RESULTS`
--
ALTER TABLE `RESULTS`
  ADD CONSTRAINT `RESULTS_ibfk_1` FOREIGN KEY (`USERID`) REFERENCES `USERS` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `RESULTS_ibfk_2` FOREIGN KEY (`ANSWERID`) REFERENCES `ANSWERSVAR` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `TESTS`
--
ALTER TABLE `TESTS`
  ADD CONSTRAINT `FUSERID` FOREIGN KEY (`USERID`) REFERENCES `USERS` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
