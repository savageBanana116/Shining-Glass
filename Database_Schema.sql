-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 07:45 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit3047`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
                          `id` int(11) NOT NULL,
                          `title` varchar(50) NOT NULL,
                          `text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `text`) VALUES
(1, 'Who is Sam Smith?', 'Sam Smith is a 41 year old artist from Melbourne who specialises in Glass Sculptures. Sam loves to draw upon his past experiences and bring them to life through his artwork.'),
(2, 'What is Shining Glass?', 'Established in 2018, Sam Smith wanted to share his artworks and vision with the world. Starting from selling out of his own garage, he has built Shining Glass from the ground up, owning his own glass artwork store in Melbourne CBD.'),
(3, 'Achievements/Recommendations', '- Freemantle Glass-Making Award 2020 - Clemenger Contemporary Art Award 2021'),
(4, 'The Company and its Owner', '');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
                          `id` int(11) NOT NULL,
                          `username` varchar(64) NOT NULL,
                          `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
                           `id` int(11) NOT NULL,
                           `name` varchar(64) NOT NULL,
                           `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `image`) VALUES
(2, 'Sam Smith', 'artist-img/patato.png');

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
                            `id` int(11) NOT NULL,
                            `price` float NOT NULL,
                            `weight` float NOT NULL,
                            `size` varchar(32) NOT NULL,
                            `descriptions` varchar(255) NOT NULL,
                            `create_date` datetime NOT NULL,
                            `order_id` int(11) DEFAULT NULL,
                            `image` varchar(255) DEFAULT 'No image',
                            `name` varchar(255) NOT NULL,
                            `image2` varchar(255) DEFAULT NULL,
                            `image3` varchar(255) DEFAULT NULL,
                            `image4` varchar(255) DEFAULT NULL,
                            `image5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`id`, `price`, `weight`, `size`, `descriptions`, `create_date`, `order_id`, `image`, `name`, `image2`, `image3`, `image4`, `image5`) VALUES
(9, 1, 1, '1', '1', '2022-04-09 20:48:44', NULL, 'cake.icon.png', 'hive', NULL, NULL, NULL, NULL),
(10, 1, 1, '1', '1', '2022-04-09 20:48:44', NULL, 'cake.icon.png', 'blue', NULL, NULL, NULL, NULL),
(11, 1, 1, '1', '1', '2022-04-09 21:39:12', NULL, 'cake.icon.png', 'paint', NULL, NULL, NULL, NULL),
(12, 1, 1, '1', '1', '2022-04-09 21:39:12', NULL, 'cake.icon.png', 'pineapple', NULL, NULL, NULL, NULL),
(13, 1, 1, '1', '1', '2022-04-09 21:43:42', NULL, 'cake.icon.png', 'yello', NULL, NULL, NULL, NULL),
(14, 1, 1, '1', '1', '2022-04-09 21:43:42', NULL, 'cake.icon.png', 'leaf', NULL, NULL, NULL, NULL),
(20, 1, 1, '1', '11', '2022-04-10 12:46:26', NULL, 'No image', '1', NULL, NULL, NULL, NULL),
(21, 1, 1, '1', '1', '2022-04-10 12:47:51', NULL, 'No image1', 'my artworks', NULL, NULL, NULL, NULL),
(22, 1, 1, '1', '1', '2022-04-09 20:48:44', NULL, 'cake.icon.png', 'edge', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artworks_categories`
--

CREATE TABLE `artworks_categories` (
                                       `id` int(11) NOT NULL,
                                       `artwork_id` int(11) NOT NULL,
                                       `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `artwork_images`
--

CREATE TABLE `artwork_images` (
                                  `file_name` varchar(255) NOT NULL,
                                  `artwork_id` int(11) NOT NULL,
                                  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
                              `name` varchar(32) NOT NULL,
                              `description` varchar(255) NOT NULL,
                              `create_date` datetime NOT NULL,
                              `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`name`, `description`, `create_date`, `id`) VALUES
('collection 1', 'this is our first collection', '2022-04-10 05:22:21', 1),
('1', '1', '2022-05-01 22:06:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE `category_images` (
                                   `file_name` varchar(255) NOT NULL,
                                   `category_id` int(11) NOT NULL,
                                   `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
                             `first_name` varchar(255) NOT NULL,
                             `last_name` varchar(255) NOT NULL,
                             `email` varchar(255) NOT NULL,
                             `phone` int(20) NOT NULL,
                             `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`first_name`, `last_name`, `email`, `phone`, `id`) VALUES
('JOhn', 'Doe', 'john@email.com', 41234566, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
                          `customer_id` int(11) NOT NULL,
                          `quantity` int(10) NOT NULL,
                          `address` varchar(255) NOT NULL,
                          `city` int(32) NOT NULL,
                          `zip_code` int(8) NOT NULL,
                          `country` int(32) NOT NULL,
                          `order_time` datetime NOT NULL,
                          `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artworks`
--
ALTER TABLE `artworks`
    ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `artworks_categories`
--
ALTER TABLE `artworks_categories`
    ADD PRIMARY KEY (`id`),
  ADD KEY `artwork_id` (`artwork_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `artwork_images`
--
ALTER TABLE `artwork_images`
    ADD PRIMARY KEY (`id`),
  ADD KEY `artwork_id` (`artwork_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_images`
--
ALTER TABLE `category_images`
    ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artworks`
--
ALTER TABLE `artworks`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `artworks_categories`
--
ALTER TABLE `artworks_categories`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artwork_images`
--
ALTER TABLE `artwork_images`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_images`
--
ALTER TABLE `category_images`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artworks`
--
ALTER TABLE `artworks`
    ADD CONSTRAINT `artworks_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `artworks_categories`
--
ALTER TABLE `artworks_categories`
    ADD CONSTRAINT `artworks_categories_ibfk_1` FOREIGN KEY (`artwork_id`) REFERENCES `artworks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artworks_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `artwork_images`
--
ALTER TABLE `artwork_images`
    ADD CONSTRAINT `artwork_images_ibfk_1` FOREIGN KEY (`artwork_id`) REFERENCES `artworks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_images`
--
ALTER TABLE `category_images`
    ADD CONSTRAINT `category_images_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
    ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
