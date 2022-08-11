-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 05:13 PM
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
-- Database: `saurabh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_password`) VALUES
(1, 'Saurabh', '12345'),
(2, 'Abhishek', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `exam_date` varchar(255) DEFAULT NULL,
  `exam_desc` varchar(255) DEFAULT NULL,
  `exam_level` varchar(255) DEFAULT NULL,
  `exam_marks` varchar(255) DEFAULT NULL,
  `exam_pass_marks` varchar(255) DEFAULT NULL,
  `exam_total_question` varchar(255) DEFAULT NULL,
  `name_subject_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `exam_date`, `exam_desc`, `exam_level`, `exam_marks`, `exam_pass_marks`, `exam_total_question`, `name_subject_name`) VALUES
(1, '8-8-2022 3:2:44', 'operating system assignment test', 'medium', '30', '15', '3', 'Operating System'),
(2, '8-8-2022 3:54:46', 'Second Internal  Test', 'Easy', '10', '2', '3', 'Operating System'),
(3, '8-8-2022 11:36:22', 'Final Exam for Operating System.', 'Medium', '10', '2', '10', 'Operating System'),
(4, '8-8-2022 12:5:32', 'Assignment-1 exam', 'Easy', '5', '1', '5', 'Web Technology'),
(5, '8-8-2022 12:16:12', 'Internal Exam-1', 'Easy', '5', '1', '5', 'Computer Network'),
(6, '8-8-2022 12:29:36', 'Final Examination', 'Medium', '4', '1', '4', 'Full Stack Development'),
(10, '8-8-2022 16:12:27', 'Internal-1', 'Hard', '4', '0', '4', 'Data Science'),
(11, '8-8-2022 16:15:32', 'Final Exam', 'medium', '4', '0', '4', 'MPMC'),
(12, '8-8-2022 16:17:0', 'Final Exam', 'Easy', '4', '0', '4', 'Information Security'),
(13, '8-8-2022 16:18:18', 'Final Exam', 'Easy', '3', '0', '3', 'Maths'),
(14, '10-8-2022 18:28:2', 'Basic Aptitude level', 'medium', '4', '1', '4', 'Aptitude & Reasoning');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question_answer` varchar(255) DEFAULT NULL,
  `option_four` varchar(255) DEFAULT NULL,
  `option_one` varchar(255) DEFAULT NULL,
  `option_three` varchar(255) DEFAULT NULL,
  `option_two` varchar(255) DEFAULT NULL,
  `question_name` varchar(255) DEFAULT NULL,
  `ename_id` int(11) DEFAULT NULL,
  `sname_subject_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question_answer`, `option_four`, `option_one`, `option_three`, `option_two`, `question_name`, `ename_id`, `sname_subject_name`) VALUES
(4, 'Oracle', 'DOS', 'Windows', 'Oracle', 'Linux', 'Which of the following is not an operating system?', 3, 'Operating System'),
(5, 'The page does not present in memory.', 'The buffering occurs.', 'The page is present in memory.', 'The page does not present in memory.', 'The deadlock occurs.', 'When does page fault occur?', 3, 'Operating System'),
(6, 'To prevent deadlock', 'None of these', 'To prevent deadlock', 'To solve the deadlock', 'To deadlock recovery', 'Banker\'s algorithm is used?', 3, 'Operating System'),
(7, 'Open-source operating system', 'None of these', 'Private operating system', 'Open-source operating system', 'Windows operating system', 'Which is the Linux operating system?', 3, 'Operating System'),
(9, 'Interface definition language', 'None of these', 'Interface definition language', 'Interface data library', 'Interface direct language', 'What is the full name of the IDL?', 3, 'Operating System'),
(11, 'To memory protection', 'None of these', 'To disk protection', 'To memory protection', 'To CPU protection', 'What is the fence register used for?', 3, 'Operating System'),
(12, 'Increases', 'None of these', 'Decreases', 'Remains constant', 'Increases', 'If the page size increases, the internal fragmentation is also?..?', 3, 'Operating System'),
(13, 'Ms-Dos', 'None of these', 'Windows', 'Ms-Dos', 'MAC', 'Which of the following is a single-user operating system?', 3, 'Operating System'),
(14, 'Address bus', 'Data bus', 'CPU', 'Address bus', 'RAM', 'The size of virtual memory is based on which of the following?', 3, 'Operating System'),
(15, 'Translation Lookaside Buffer miss', 'All of the mentioned', 'Translation Lookaside Buffer miss', 'Translation Lookaside Buffer hit', 'Buffer miss', 'If a page number is not found in the translation lookaside buffer, then it is known as a?', 3, 'Operating System'),
(16, 'HyperText Markup Language', 'None of these', 'HighText Machine Language', 'HyperText Markup Language', 'HyperText and links Markup Language', ' HTML stands for -', 4, 'Web Technology'),
(17, 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 'Head, Title, HTML, body', 'HTML, Head, Title, Body', 'HTML, Body, Title, Head', 'The correct sequence of HTML tags for starting a webpage is -', 4, 'Web Technology'),
(18, '<b>', '<br>', '<pre>', '<b>', '<a>', 'Which of the following element is responsible for making the text bold in HTML?', 4, 'Web Technology'),
(19, '<h1>', '<h6>', '<h3>', '<h5>', '<h1>', 'Which of the following tag is used for inserting the largest heading in HTML?', 4, 'Web Technology'),
(20, '<br>', '<b>', '<br>', '<pre>', '<a>', 'Which of the following tag is used to insert a line-break in HTML?', 4, 'Web Technology'),
(21, 'Hypertext transfer protocol', 'Hypertext transfer program', 'Hyper terminal tracing program', 'Hypertext transfer protocol', 'Hypertext tracing protocol', 'The term HTTP stands for?', 5, 'Computer Network'),
(22, 'with external access', 'accessing user permissions', 'with external access', 'performing file handling', 'acting as a backup', 'A proxy server is used as the computer?', 5, 'Computer Network'),
(23, 'Full access rights for all users', 'Protecting the device against willful or accidental damage', 'Looking the room to prevent theft', 'Fitting the system with an anti-theft device', 'Full access rights for all users', ' Which one of the following would breach the integrity of a system?', 5, 'Computer Network'),
(24, 'Firewall', 'Virus checker', 'Firewall', 'Router', 'Gateway', 'Which software prevents the external access to a system?', 5, 'Computer Network'),
(25, 'File transfer protocol', 'File transfer protection', 'File transfer program', 'File transfer protocol', 'File transmission protocol', 'The term FTP stands for?', 5, 'Computer Network'),
(26, 'Peer to Peer', 'Peer to Peer', 'Star', 'Bus', 'Ring', 'Which one of the following is not a network topology?', 5, 'Computer Network'),
(31, 'Inheritance', ' Aggregation.', 'Encapsulation', 'Composition', 'Inheritance', 'In object-oriented programming, new classes can be defined by extending existing classes. This is an example of:', 6, 'Full Stack Development'),
(34, 'Virtual DOM', 'None of the above.', 'Original DOM', 'Both A and B.', 'Virtual DOM', 'What of the following is used in React.js to increase performance?', 6, 'Full Stack Development'),
(35, 'State & Props', 'State & Component', 'State & Props', 'State & Services', 'Services & Components', 'What are the two ways to handle data in React?', 6, 'Full Stack Development'),
(36, ' mysql_drop_db', 'none of these', ' mysql_drop_db', 'mysql_drop_entiredb', ' mysql_drop_dbase', 'Which of the following is used to delete an entire mysql database?', 6, 'Full Stack Development'),
(37, '4', 'None of these', ' 4 years', ' 10 years', ' 8 years', 'The sum of ages of 5 children born at the intervals of 3 years each is 50 years. What is the age of the youngest child?', 14, 'Aptitude & Reasoning'),
(38, '5', '9', '  2', '5', '1', 'What is twenty percent of 25 % of 20.', 14, 'Aptitude & Reasoning'),
(39, 'Y, c', '  None', '  Y, c', ' G, i', '  B, f', 'A, e, i, m, q, u, _, _', 14, 'Aptitude & Reasoning');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `exam_date` varchar(255) DEFAULT NULL,
  `result_score` varchar(255) DEFAULT NULL,
  `result_status` varchar(255) DEFAULT NULL,
  `total_marks` varchar(255) DEFAULT NULL,
  `total_question` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `exam_date`, `result_score`, `result_status`, `total_marks`, `total_question`, `user_email`, `exam_id`, `exam_name`) VALUES
(1, '8-8-2022 3:9:27', '0', 'Fail', '1', '1', 'sk@gmail.com', 1, 'Operating System'),
(2, '8-8-2022 4:11:14', '1', 'Fail', '3', '3', 'sk@gmail.com', 1, 'Operating System'),
(3, '8-8-2022 4:12:31', '0', 'Pass', '0', '0', 'sk@gmail.com', 2, 'Operating System'),
(4, '8-8-2022 4:16:22', '0', 'Fail', '2', '2', 'sk@gmail.com', 1, 'Operating System'),
(5, '8-8-2022 11:28:54', '2', 'Pass', '2', '2', 'sk@gmail.com', 1, 'Operating System'),
(6, '8-8-2022 15:41:5', '2', 'Fail', '7', '7', 'ak@gmail.com', 6, 'Full Stack Development'),
(7, '8-8-2022 15:48:28', '5', 'Pass', '6', '6', 'ak@gmail.com', 5, 'Computer Network'),
(8, '8-8-2022 15:50:22', '5', 'Pass', '5', '5', 'ak@gmail.com', 4, 'Web Technology'),
(9, '8-8-2022 15:57:33', '5', 'Fail', '12', '12', 'ak@gmail.com', 3, 'Operating System'),
(10, '8-8-2022 16:5:50', '5', 'Pass', '10', '10', 'sk@gmail.com', 3, 'Operating System'),
(11, '8-8-2022 16:6:46', '4', 'Pass', '4', '4', 'sk@gmail.com', 6, 'Full Stack Development'),
(12, '8-8-2022 16:7:44', '5', 'Pass', '5', '5', 'sk@gmail.com', 4, 'Web Technology'),
(13, '8-8-2022 16:9:26', '4', 'Pass', '6', '6', 'sk@gmail.com', 5, 'Computer Network'),
(14, '10-8-2022 18:22:1', '4', 'Pass', '4', '4', 'sk@gmail.com', 6, 'Full Stack Development');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_name`) VALUES
('AI'),
('Aptitude & Reasoning'),
('Computer Network'),
('Data Science'),
('Full Stack Development'),
('Information Security'),
('Machine Learning'),
('Maths'),
('MPMC'),
('Operating System'),
('Web Technology');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_email`, `user_name`, `user_password`) VALUES
('abhishek@gmail.com', 'abhishek', '111111'),
('ak@gmail.com', 'Abhinav', '12345'),
('sk@gmail.com', 'sa', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs76msawk8810oay6sowbfswby` (`name_subject_name`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpxsslel7x2oat73hlugpsjist` (`ename_id`),
  ADD KEY `FKiln5kqr5tq73o9aa4r0vwb516` (`sname_subject_name`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK88srjpgk644exdhmdu4q33wac` (`user_email`),
  ADD KEY `FK7sc8ejc10fh429vn3gfpkhem9` (`exam_id`),
  ADD KEY `FKicofs1u6m1wgle8qmb4evserh` (`exam_name`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `FKs76msawk8810oay6sowbfswby` FOREIGN KEY (`name_subject_name`) REFERENCES `subject` (`subject_name`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKiln5kqr5tq73o9aa4r0vwb516` FOREIGN KEY (`sname_subject_name`) REFERENCES `subject` (`subject_name`),
  ADD CONSTRAINT `FKpxsslel7x2oat73hlugpsjist` FOREIGN KEY (`ename_id`) REFERENCES `exam` (`id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `FK7sc8ejc10fh429vn3gfpkhem9` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  ADD CONSTRAINT `FK88srjpgk644exdhmdu4q33wac` FOREIGN KEY (`user_email`) REFERENCES `user` (`user_email`),
  ADD CONSTRAINT `FKicofs1u6m1wgle8qmb4evserh` FOREIGN KEY (`exam_name`) REFERENCES `subject` (`subject_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
