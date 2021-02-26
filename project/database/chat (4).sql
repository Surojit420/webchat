-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 09:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_data`
--

CREATE TABLE `chat_data` (
  `id` int(255) NOT NULL,
  `from_user` varchar(255) NOT NULL,
  `to_fri` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `delete_me` varchar(255) NOT NULL,
  `fri_delete_me` varchar(255) NOT NULL,
  `delete_me_val` varchar(255) NOT NULL,
  `fri_delete_val` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `fri_status` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_data`
--

INSERT INTO `chat_data` (`id`, `from_user`, `to_fri`, `msg`, `time`, `date`, `delete_me`, `fri_delete_me`, `delete_me_val`, `fri_delete_val`, `status`, `fri_status`, `img`) VALUES
(1, 'babu@gmail.com', 'sona@gmail.com', 'IMG-20200703-WA0001.jpg', ' 11:27:25 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'IMG-20200703-WA0001.jpg'),
(2, 'babu@gmail.com', 'sona@gmail.com', 'IMG-20200703-WA0005.jpg', ' 11:28:14 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'IMG-20200703-WA0005.jpg'),
(3, 'babu@gmail.com', 'sona@gmail.com', 'WIN_20200701_23_18_32_Pro.jpg', ' 11:29:12 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'WIN_20200701_23_18_32_Pro.jpg'),
(4, 'babu@gmail.com', 'sona@gmail.com', 'CEH Certified Ethical Hacker Certification Exam Preparation Course in a Book for Passing the CEH Certified Ethical Hacker Exam - The How To Pass on Your First Try Certification Study Guide ( PDFDrive.com ).pdf', ' 11:30:05 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'CEH Certified Ethical Hacker Certification Exam Preparation Course in a Book for Passing the CEH Certified Ethical Hacker Exam - The How To Pass on Your First Try Certification Study Guide ( PDFDrive.com ).pdf'),
(5, 'babu@gmail.com', 'sona@gmail.com', 'paint.jpg', ' 11:36:41 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'paint.jpg'),
(6, 'babu@gmail.com', 'sona@gmail.com', 'school.jpg', ' 6:49:08 PM', '9/29/2020', 'babu@gmail.com', 'sona@gmail.com', 'you deleted this massage', 'you deleted this massage', '0', '0', 'school.jpg'),
(7, 'babu@gmail.com', 'sona@gmail.com', 'book-26252.pdf', ' 11:47:56 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'book-26252.pdf'),
(8, 'babu@gmail.com', 'sona@gmail.com', 'BCA Syllabus (for 2018-2019 Admission Session)-27.07.2018.pdf', ' 11:49:49 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'BCA Syllabus (for 2018-2019 Admission Session)-27.07.2018.pdf'),
(9, 'babu@gmail.com', 'sona@gmail.com', 'Computer Networks - A Tanenbaum - 5th edition.pdf', ' 11:49:35 AM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'Computer Networks - A Tanenbaum - 5th edition.pdf'),
(10, 'babu@gmail.com', 'sona@gmail.com', '_Humko_Tumse_Pyaar_Hai_(Sad)__Ft._Arjun_Rampal,_Amisha_Patel.mp4', ' 11:54181 AM', '9/29/2020', 'babu@gmail.com', 'sona@gmail.com', 'you deleted this massage', 'you deleted this massage', '0', '0', '_Humko_Tumse_Pyaar_Hai_(Sad)__Ft._Arjun_Rampal,_Amisha_Patel.mp4'),
(11, 'babu@gmail.com', 'sona@gmail.com', 'shaym.jpg', ' 7:16:41 PM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'shaym.jpg'),
(12, 'babu@gmail.com', 'sona@gmail.com', 'BCA Syllabus (for 2018-2019 Admission Session)-27.07.2018.pdf', ' 7:17:13 PM', '9/29/2020', '0', '0', '0', '0', '0', '0', 'BCA Syllabus (for 2018-2019 Admission Session)-27.07.2018.pdf'),
(13, 'babu@gmail.com', '', '', '', '', '0', '0', '0', '0', '0', '0', ''),
(14, 'babu@gmail.com', 'sona@gmail.com', '_Humko_Tumse_Pyaar_Hai_(Sad)__Ft._Arjun_Rampal,_Amisha_Patel.mp4', ' 7:35:44 PM', '9/29/2020', '0', '0', '0', '0', '0', '0', '_Humko_Tumse_Pyaar_Hai_(Sad)__Ft._Arjun_Rampal,_Amisha_Patel.mp4'),
(15, 'surojitsamui007@gmail.com', 'babu@gmail.com', 'hi', ' 2:43:09 AM', '2/22/2021', '0', '0', '0', '0', '0', '0', '0'),
(16, 'surojitsamui007@gmail.com', 'babu@gmail.com', 'apurbaCV.pdf', ' 2:43:54 AM', '2/22/2021', '0', '0', '0', '0', '0', '0', 'apurbaCV.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `chat_with`
--

CREATE TABLE `chat_with` (
  `id` int(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `friend` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_with`
--

INSERT INTO `chat_with` (`id`, `user`, `friend`, `status`, `time`) VALUES
(1, 'babu@gmail.com', 'surojitsamui007@gmail.com', '1', ' 2:43:09 AM'),
(2, 'surojitsamui007@gmail.com', 'babu@gmail.com', '1', ' 2:43:09 AM'),
(3, 'babu@gmail.com', 'sona@gmail.com', '1', ' 8:42:07 AM'),
(4, 'sona@gmail.com', 'babu@gmail.com', '1', ' 8:42:07 AM');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `friend_email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `username`, `friend_email`, `status`) VALUES
(1, 'babu@gmail.com', 'surojitsamui007@gmail.com', '1'),
(2, 'babu@gmail.com', 'sona@gmail.com', '1'),
(3, 'sona@gmail.com', 'surojitsamui007@gmail.com', '1'),
(4, 'surojitsamui007@gmail.com', 'babu@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login_detais`
--

CREATE TABLE `login_detais` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `activelog` varchar(255) NOT NULL,
  `fristtime` varchar(255) NOT NULL,
  `lasttime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_detais`
--

INSERT INTO `login_detais` (`id`, `username`, `password`, `type`, `status`, `activelog`, `fristtime`, `lasttime`) VALUES
(2, 'soumendolui077@gmail.com', '123654', 'USER', '1', 'offline', '00.00', '7/5/2020, 4:01:17 PM'),
(4, 'surojitsamui007@gmail.com', '1236541', 'USER', '1', 'offline', '00.00', '02/22/2021, 02:44:55 AM'),
(5, 'babu@gmail.com', '123654', 'user', '1', 'offline', '00', '09/30/2020, 02:40:04 PM'),
(6, 'sona@gmail.com', '123654', 'user', '1', 'offline', '00', '09/30/2020, 02:40:49 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user_detalis`
--

CREATE TABLE `user_detalis` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_pic` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detalis`
--

INSERT INTO `user_detalis` (`id`, `name`, `user_pic`, `mobile`, `email`, `password`, `profession`) VALUES
(4, 'babu sona', 'shaym.jpg', '8436993268', 'surojitsamui007@gmail.com', '1236541', 'code'),
(5, 'babu', '1-2.jpg', '1236547895', 'babu@gmail.com', '123654', 'code1'),
(6, 'sona', 'wallpaperflare.com_wallpaper (2).jpg', '5469871230', 'sona@gmail.com', '123654', 'code'),
(7, 'soumen', 'wallpaperflare.com_wallpaper (2).jpg', '1236547098', 'soumendolui077@gmail.com', '123654', 'hhj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_data`
--
ALTER TABLE `chat_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_with`
--
ALTER TABLE `chat_with`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_detais`
--
ALTER TABLE `login_detais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_detalis`
--
ALTER TABLE `user_detalis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_data`
--
ALTER TABLE `chat_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chat_with`
--
ALTER TABLE `chat_with`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_detais`
--
ALTER TABLE `login_detais`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_detalis`
--
ALTER TABLE `user_detalis`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
