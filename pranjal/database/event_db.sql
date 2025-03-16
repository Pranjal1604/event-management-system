-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 08:40 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `event_id` int(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= pending, 1 =Paid',
  `attendance_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1= present',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = for verification,  1 = confirmed,2= declined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audience`
--

INSERT INTO `audience` (`id`, `name`, `contact`, `email`, `address`, `event_id`, `payment_status`, `attendance_status`, `status`) VALUES
(3, 'chetan somwanshi', '9876543210', 'chetansomwanshi021@gmail.com', 'askjdh laskdjhf lksjdhf laksjdhf ', 4, 0, 0, 1),
(4, 'aadesh kulthe', '9876543210', 'aadesh@gmail.com', 'adslifuapoidfahsndvkj sakdj poia sdk  asodiu fpaoi sudfo sd fais dfi as jdf asd asdk fas;lkdfa ', 4, 1, 0, 2),
(5, 'karan bidwe', '9876543210', 'karan@gmail.com', 'apsiodfp osjkhlkdhf laksdhlfkajshk skldj falks dflk ahsdk falk sjdf', 4, 1, 0, 0),
(7, 'chetan', '9876543213', 'chetan@gmail.com', 'IOSUDFLASKHBB JGKU', 4, 0, 0, 1),
(8, 'shraddha', '9876543213', 'shraddhatambe@gmail.com', 'lekhanagr cidco', 5, 0, 0, 1),
(9, 'shilpa', '9767716840', 'sujgures@gmail.com', 'devlali camp nashik', 5, 1, 0, 1),
(10, 'pranjal sujgure', '555', 'sujgurep@gmail.com', 'devlali camp nashik', 5, 0, 0, 0),
(11, 'anjali mali', '6758946732', 'anhalimali@gmail.com', 'chehadi', 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `event` text NOT NULL,
  `description` text NOT NULL,
  `schedule` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Public, 2-Private',
  `audience_capacity` int(30) NOT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Free,payable',
  `amount` double NOT NULL DEFAULT '0',
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `venue_id`, `event`, `description`, `schedule`, `type`, `audience_capacity`, `payment_type`, `amount`, `banner`, `date_created`) VALUES
(5, 3, 'suyash', 'cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;cool birtday party mmnbvcxzlkjhgfdsapoiuytrewqkjv coiahsjfzselkhLSEKJf&amp;nbsp; kjsd hf sej fSE&amp;lt;Mjf hlsD hf;klisorhas,gfkuwey r,kjsgekjdf SUK&amp;amp;', '2024-04-09 14:00:00', 1, 100, 1, 0, '1712559120_b2.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'PARTY Event Management System', 'Bday@eventmgmail.com', '+911234567890', '1712414700_fpage.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 2024s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(30) NOT NULL,
  `venue` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `venue`, `address`, `description`, `rate`) VALUES
(1, 'Sadguru Mini Party Hall', 'Sadguru Mini Party Hall,\r\nNashik road,\r\nNashik.-422101', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 6000),
(2, 'Venue Platter', 'Bombay Naka, Aagra Road, Nashik.\r\n422101', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 8500),
(3, 'Cafe Rainbow Unicorn', 'Hanuman Nagar,\r\nShivaji Chowk,\r\nJail road,nashik\r\n422101', 'Lorem ipsum dolor sit amet, id has nostro vivendo, id per alii volutpat inciderint? Graece ornatus gubergren te quo, qui at oblique accusamus, id pro eros etiam conceptam! Ullum clita.', 5000),
(4, 'Big City Banquet & Resto-Bar', 'Panchwati Karnja,\r\nnashik, 422003', 'Lorem ipsum dolor sit amet, id has nostro vivendo, id per alii volutpat inciderint? Graece ornatus gubergren te quo, qui at oblique accusamus, id pro eros etiam conceptam! Ullum clita.', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `venue_booking`
--

CREATE TABLE `venue_booking` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-for verification,1=confirmed,2=canceled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue_booking`
--

INSERT INTO `venue_booking` (`id`, `name`, `address`, `email`, `contact`, `venue_id`, `duration`, `datetime`, `status`) VALUES
(3, 'Roshan Kardak', 'Rajrajeshwari chowk,\r\nsaraswati nagar,\r\njail road,\r\nnashik', 'roshan@gmail.com', '3216549781', 4, '5', '2024-04-02 22:00:00', 1),
(4, 'Nikhil Jadhav', 'satbhai sankul,\r\njailroad,\r\ndasak,\r\nnashik', 'jadhavn@gmail.com', '1234567890', 3, '2', '2024-04-16 23:00:00', 0),
(5, 'Nitin Sonawane', 'vidya nagari,\r\nshani chowk,\r\npanchak,\r\ndasak,\r\njailroad\r\nnashik', 'sonawne@gmail.com', '6549873210', 1, '6', '2024-04-16 21:00:00', 0),
(6, 'Anil Pansare', 'narayan bapu nagar,jailroad,nashikroad,nashik', 'anilp@gmail.com', '1234567890', 2, '2', '2024-03-27 20:28:00', 0),
(7, 'pranjal sujgure', 'devlali camp nashik', 'sujgurep@gmail.com', '8799865093', 2, '2hr', '2024-04-16 12:00:00', 1),
(8, 'suyash tambe', 'lekhanagr cidco', 'suyashtambe2006@gmail.com', '8658389399', 2, '3hr', '2024-04-09 14:00:00', 1),
(9, 'mohan', 'nashik', 'adafa', '8658389399', 1, '3hr', '2024-04-20 23:24:00', 1),
(12, 'chetan', 'IOSUDFLASKHBB JGKU', 'chetan@gmail.com', '0000000', 1, '2hr', '2024-04-20 14:27:00', 0),
(13, 'chetan', 'IOSUDFLASKHBB JGKU', 'chetan@gmail.com', '000', 1, '2hr', '2024-04-20 14:31:00', 0),
(14, 'chetan', 'IOSUDFLASKHBB JGKU', 'chetan@gmail.com', '', 4, '', '0000-00-00 00:00:00', 0),
(15, 'anjali mali', 'chehadi', 'anhalimali@gmail.com', '8799865093', 2, '6', '2024-04-22 10:20:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_booking`
--
ALTER TABLE `venue_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venue_booking`
--
ALTER TABLE `venue_booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
