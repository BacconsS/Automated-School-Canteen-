-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 09:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: food-order
--

-- --------------------------------------------------------

--
-- Table structure for table tbl_admin
--

CREATE TABLE tbl_admin (
  id int(10) UNSIGNED NOT NULL,
  full_name varchar(100) NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table tbl_admin
--

INSERT INTO tbl_admin (id, full_name, username, password) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(14, 'Vance Garcia', 'Bacons', 'Bacons0103');

-- --------------------------------------------------------

--
-- Table structure for table tbl_category
--

CREATE TABLE tbl_category (
  id int(10) UNSIGNED NOT NULL,
  title varchar(100) NOT NULL,
  image_name varchar(255) NOT NULL,
  featured varchar(10) NOT NULL,
  active varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table tbl_category
--

INSERT INTO tbl_category (id, title, image_name, featured, active) VALUES
(4, 'Snacks', 'Food_Category_192.jpg', 'Yes', 'Yes'),
(9, 'Drinks', 'Food_Category_765.jpg', 'Yes', 'Yes'),
(13, 'Lunch', 'Food_Category_357.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table tbl_food
--

CREATE TABLE tbl_food (
  id int(10) UNSIGNED NOT NULL,
  title varchar(100) NOT NULL,
  description text NOT NULL,
  price decimal(10,2) NOT NULL,
  image_name varchar(255) NOT NULL,
  category_id int(10) UNSIGNED NOT NULL,
  featured varchar(10) NOT NULL,
  active varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table tbl_food
--

INSERT INTO tbl_food (id, title, description, price, image_name, category_id, featured, active) VALUES
(4, 'Siomai', 'Siomai is a traditional Chinese dumpling. This popular dumpling has made its way to the heart of the Filipino’s as evidenced by the hundreds of stalls, eateries, and restaurants who serve them.', 5.00, 'Food-Name-7267.jpg', 4, 'Yes', 'Yes'),
(5, 'Kwek Kwek', 'Best Firewood Pizza in Town made with thin cheese', 5.00, 'Food-Name-8954.jpg', 4, 'Yes', 'Yes'),
(15, 'Lumpiang Gulay', 'Lumpiang Gulay or Vegetable Egg Roll is a simple fried appetizer dish made from vegetables and fried tofu.', 10.00, 'Food-Name-7988.jpg', 4, 'Yes', 'Yes'),
(16, 'French Fries', 'Deep-fried potatoes of disputed origin from Belgium or France.', 30.00, 'Food-Name-8864.jpg', 4, 'Yes', 'Yes'),
(18, 'Siomai Rice', 'Wholesome stir-fried rice topped with Siomai', 50.00, 'Food-Name-3165.jpg', 13, 'Yes', 'Yes'),
(28, 'Pork Adobo', 'It is a dish composed of pork slices cooked in soy sauce, vinegar, and garlic.', 70.00, 'Food-Name-9929.jpg', 13, 'Yes', 'Yes'),
(29, 'Chicken Adobo', 'Chicken Adobo is an authentic Filipino dish and is one of the mostly recognized Filipino foods.', 70.00, 'Food-Name-9953.jpg', 13, 'No', 'Yes'),
(31, 'Fried Chicken', 'Tender and juicy chicken', 25.00, 'Food-Name-7172.jpg', 13, 'Yes', 'Yes'),
(32, 'Porksilog', 'The word tapsilog stands for Tapa, Sinangag, at itlog.', 60.00, 'Food-Name-9529.jpg', 13, 'Yes', 'Yes'),
(33, 'Sisig', 'Sisig is a Filipino dish made from pork jowl and ears, pork belly, and chicken liver, which is usually seasoned with calamansi, onions, and chili peppers.', 70.00, 'Food-Name-5806.jpg', 13, 'Yes', 'Yes'),
(35, 'Menudo', 'Menudo, also known as ginamay or ginagmay, is a traditional stew from the Philippines made with pork and sliced liver in tomato sauce with carrots and potatoes. ', 70.00, 'Food-Name-1317.jpg', 13, 'No', 'Yes'),
(36, 'Bicol Express', 'Bicol express, known natively in Bikol as sinilihan, is a popular Filipino dish which was popularized in the district of Malate, Manila, but made in traditional Bicolano style.', 70.00, 'Food-Name-5892.jpg', 13, 'No', 'Yes'),
(37, 'Coca-Cola 0.5L', 'Coca-Cola, or Coke, is a cola soft drink manufactured by the Coca-Cola Company.', 15.00, 'Food-Name-4705.jpg', 9, 'Yes', 'Yes'),
(38, 'Banana Cue', 'Banana cue or bananacue is a popular snack food or street food in the Philippines.', 15.00, 'Food-Name-3607.jpg', 4, 'No', 'Yes'),
(39, 'Fish Balls', 'Fish balls are the balls made from fish paste which are then boiled or deep-fried.', 2.00, 'Food-Name-6090.jpg', 4, 'No', 'Yes'),
(40, 'Mountain Dew', 'Mountain Dew, stylized as Mtn Dew in some countries, is a soft drink brand, produced and owned by PepsiCo.', 15.00, 'Food-Name-999.jpg', 9, 'No', 'Yes'),
(41, 'Sting Energy Drink', 'Sting Energy is a carbonated energy drink produced by Rockstar Inc.', 15.00, 'Food-Name-3654.jpg', 9, 'No', 'Yes'),
(42, 'Sprite', 'Sprite is a clear, lemon-lime flavored soft drink created by the Coca-Cola Company.', 15.00, 'Food-Name-9971.jpg', 9, 'No', 'Yes'),
(43, 'Kikiam', 'Ngo hiang, also known as heh gerng lor bak or kikiam is a unique Hokkien and Teochew dish widely adopted in Indonesia, Malaysia, the Philippines, Singapore, and Thailand; in addition to its place of origin in southern China. ', 3.00, 'Food-Name-2109.jpg', 4, 'No', 'Yes'),
(44, 'Bopis', 'Bopis is a piquant Filipino dish of pork or beef lungs and heart sautéed in tomatoes, chilies and onions.', 70.00, 'Food-Name-2232.jpg', 13, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table tbl_order
--

CREATE TABLE tbl_order (
  id int(10) UNSIGNED NOT NULL,
  food varchar(150) NOT NULL,
  price decimal(10,2) NOT NULL,
  qty int(11) NOT NULL,
  total decimal(10,2) NOT NULL,
  order_date datetime NOT NULL,
  status varchar(50) NOT NULL,
  u_id int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table tbl_order
--

INSERT INTO tbl_order (id, food, price, qty, total, order_date, status, u_id) VALUES
(19, 'Best Burger', 55.00, 3, 165.00, '2024-09-17 02:39:06', 'Delivered', 25),
(20, 'Smoky BBQ Pizza', 525.00, 3, 1575.00, '2024-09-17 02:44:23', 'Ordered', 25),
(21, 'Siomai Rice', 50.00, 1, 50.00, '2024-09-17 03:53:35', 'Ordered', 25),
(22, 'Fried Chicken', 25.00, 2, 50.00, '2024-09-17 04:02:47', 'Ordered', 25);

-- --------------------------------------------------------

--
-- Table structure for table users
--

CREATE TABLE users (
  id int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  customer_name varchar(150) NOT NULL,
  customer_email varchar(150) NOT NULL,
  customer_contact bigint(25) NOT NULL,
  customer_address varchar(255) NOT NULL,
  created_at datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table users
--

INSERT INTO users (id, username, password, customer_name, customer_email, customer_contact, customer_address, created_at) VALUES
(25, 'Bacons', '$2y$10$nxtVsqfxYvIIHAgBpAMck.iN/L2rLbWSrbSqnOTLS/IrA2Pr65P8S', 'Vance Andrei F. Garcia', 'vanceandrei1@gmail.com', 9277101219, '14th Rosario St. South Poblacion Masinloc, Zambales', '2024-09-17 19:35:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbl_admin
--
ALTER TABLE tbl_admin
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_category
--
ALTER TABLE tbl_category
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_food
--
ALTER TABLE tbl_food
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_order
--
ALTER TABLE tbl_order
  ADD PRIMARY KEY (id);

--
-- Indexes for table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY username (username);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbl_admin
--
ALTER TABLE tbl_admin
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table tbl_category
--
ALTER TABLE tbl_category
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table tbl_food
--
ALTER TABLE tbl_food
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table tbl_order
--
ALTER TABLE tbl_order
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table users
--
ALTER TABLE users
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;