-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 08:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dream_super_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(58, 0, 'Koi fish (Deshi)', 600, 4, '3101787_U.jpg'),
(64, 1, 'Orange (Srilanka)', 250, 1, '2901107.jpg'),
(65, 1, 'Banana (Shagor kola)', 15, 3, '2901099.jpg'),
(66, 1, 'Coconut', 150, 1, '2901111_19.jpg'),
(69, 1, 'Pears South Africa (Kg)', 390, 1, 'Pears South Africa (Kg).avif'),
(70, 1, 'Bael Fruit', 50, 1, 'Bael Fruit.avif');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 3, 'admin', 'y@gmail.com', '2', 'The website was user-friendly and easy to navigate. I was able to find everything I needed quickly, and their product descriptions were detailed and helpful. The checkout process was smooth, and I appreciated the different payment options available.\r\n\r\nWhat impressed me the most, however, was the quick and efficient delivery of my items. They arrived within the promised timeframe, and everything was in excellent condition.'),
(11, 3, 'admin', 'y@gmail.com', '2', 'I would highly recommend Swapno for anyone in need of a convenient and reliable online shopping experience. Their vast selection of products, user-friendly website, and efficient delivery make them a standout in the crowded online shopping space.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 2, 'gh', '2', 'abu@gmail.com', 'cash on delivery', 'flat no. 2, hgjgh, ghjg, hjgh - 3', ', Orange (3) , Banana (1) , Guava (1) , Coconut (2) ', 640, '14-Mar-2023', 'completed'),
(11, 3, 'h', '1', 'x@gmail.com', 'cash on delivery', 'flat no. 1, gh, gh, gh - 2', ', Guava (2) , Orange (2) , Coconut (3) , Banana (5) ', 660, '15-Mar-2023', 'pending'),
(12, 1, '', '45', '', 'cash on delivery', 'flat no. 446, , fgh,  - 467456', ', Orange (Srilanka) (2) , Banana (Shagor kola) (1) , Sroiler chicken leg (1) , Koi fish (Deshi) (1) ', 1465, '22-May-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `type`) VALUES
(1, 'Orange (Srilanka)', 250, '2901107.jpg', NULL),
(2, 'Banana (Shagor kola)', 15, '2901099.jpg', NULL),
(3, 'Coconut', 150, '2901111_19.jpg', NULL),
(4, 'Sroiler chicken leg', 350, 'Broiler Chicken Drumstick 3100622.jpg', NULL),
(5, 'Koi fish (Deshi)', 600, '3101787_U.jpg', NULL),
(8, 'ACI Aroma Chinigura Rice 1Kg', 158, 'ACI Aroma Chinigura Rice 1Kg.jpg', 'great_savings'),
(9, 'ACI Pure Mustard Oil 500ml', 140, 'ACI Pure Mustard Oil_Shwapno.jpg', 'great_savings'),
(10, 'King\'s Brand Sunflower Oil 5Ltr', 1900, 'King\'s Brand Sunflower Oil 5Ltr.jpg', 'great_savings'),
(11, 'Olio Orolio Olive Oil', 975, 'Olio Orolio Olive Oil-Shwapno.jpg', 'great_savings'),
(12, 'Pink Salt 200g (Jar)', 78, 'Shwapno Pink Salt 200g (Jar).jpg', 'great_savings'),
(13, 'Boost Malt Jar 400 Gm', 380, 'Boost Malt Jar 400 Gm.avif', 'unilever'),
(14, 'Dove Beauty Cream Bar White', 140, 'Dove Beauty Cream Bar White.avif', 'unilever'),
(15, 'Horlicks Chocolate -UL', 390, 'Horlicks Chocolate -UL.avif', 'unilever'),
(16, 'Lifebuoy Mild Care Hand Wash -UL', 310, 'Lifebuoy Mild Care Hand Wash -UL.avif', 'unilever'),
(17, 'Lifebuoy Total 10 Hand Wash', 310, 'Lifebuoy Total 10 Hand Wash.avif', 'unilever'),
(18, 'lux body wash borchid sandjuniper oil', 200, 'lux body wash borchid sandjuniper oil.avif', 'unilever'),
(19, 'Vim Dishwashing Liquid 500ml', 130, 'Vim Dishwashing Liquid 500ml.avif', 'unilever'),
(20, 'Womens Plus Horlicks Caramel 400g Jar', 546, 'Womens Plus Horlicks Caramel 400g Jar.avif', 'unilever'),
(21, 'CBL Munchee Choco Kalo Biscuit 100g', 160, 'CBL Munchee Choco Kalo Biscuit 100g.avif', 'b1g1'),
(22, 'CBL Munchee Choco Mo Biscuit 160g', 140, 'CBL Munchee Choco Mo Biscuit 100g.avif', 'b1g1'),
(23, 'CBL white chocolate coated cookies 100g', 160, 'cbl munchee chocomo white chocolate coated cookies 100g.avif', 'b1g1'),
(24, 'CBL Munchee Lemon Wafer 100g', 90, 'CBL Munchee Lemon Wafer 100g.avif', 'b1g1'),
(25, 'CBL Munchee Nice Biscuits 94g', 100, 'CBL Munchee Nice Biscuits 94g.avif', 'b1g1'),
(26, 'Bael Fruit', 50, 'Bael Fruit.avif', 'fruits'),
(27, 'Pears White(Nashpati) Kg', 250, 'Pears White(Nashpati) Kg.avif', 'fruits'),
(28, 'Ripen Papaya (Paka Pepe)600gm', 140, 'Ripen Papaya (Paka Pepe)600gm.avif', 'fruits'),
(29, 'Banana (Meher Shagor Kola)', 12, 'Banana (Meher Shagor Kola).avif', 'fruits'),
(30, 'Apple(Green Apple)Kg', 210, 'Apple(Green Apple)Kg.avif', 'fruits'),
(31, 'Apple Gala(P) Kg', 225, 'Apple Gala(P) Kg.avif', 'fruits'),
(32, 'Pears South Africa (Kg)', 390, 'Pears South Africa (Kg).avif', 'fruits'),
(33, 'Banana (Shobri) Pcs', 10, 'Banana (Shobri) Pcs.avif', 'fruits'),
(34, 'Kiwi (Kg)', 240, 'Kiwi (Kg).avif', 'fruits'),
(35, 'Pineapple 600g+', 46, 'Pineapple (Joldugui Anarosh) 600g+.avif', 'fruits'),
(36, 'Lichu Bombey (Pcs)', 6, 'Lichu Bombey (Pcs).avif', 'fruits'),
(37, 'Mango (Himshagor) Kg', 90, 'Mango (Himshagor) Kg.avif', 'fruits'),
(38, 'Mango (Lengra)', 100, 'Mango (Lengra).avif', 'fruits'),
(39, 'Aloe Vera (P) Kg', 70, 'Aloe Vera (P) Kg.avif', 'vegetables'),
(40, 'Capsicum (Red) Kg^', 460, 'Capsicum (Red) Kg^.avif', 'vegetables'),
(41, 'Snake Gourd (Chichinga) Kg^', 80, 'Snake Gourd (Chichinga) Kg^.avif', 'vegetables'),
(42, 'Green Banana (Kacha Kola) Pcs^', 9, 'Green Banana (Kacha Kola) Pcs^.avif', 'vegetables'),
(43, 'Indian Spinach Pcs^', 40, 'Indian Spinach (Palong Shak) Pcs^.avif', 'vegetables'),
(44, 'Tomato Long', 80, 'Tomato Long.avif', 'vegetables'),
(45, 'Bitter Gourd Small', 90, 'Bitter Gourd Small.avif', 'vegetables'),
(46, 'Sponge Gourd (Dhundul) Kg^', 46, 'Sponge Gourd (Dhundul) Kg^.avif', 'vegetables'),
(47, 'Rupchanda Medium ', 990, 'Rupchanda Medium (8-10 PCs_ Kg).avif', 'fish'),
(48, 'Koral Medium', 450, 'Koral Medium.avif', 'fish'),
(49, 'Poa Captured (P)', 390, 'Poa Captured (P).avif', 'fish'),
(50, 'Carpu Cultured Medium', 350, 'Carpu Cultured Medium.avif', 'fish'),
(51, 'Gulsha Medium', 660, 'Gulsha Medium.avif', 'fish'),
(52, 'Horina Chingri', 800, 'Horina Chingri.avif', 'fish'),
(53, 'Katla Medium', 320, 'Katla Medium.avif', 'fish'),
(54, 'Shing Cultured Medium', 400, 'Shing Cultured Medium.avif', 'fish'),
(55, 'Beef Premium Cube', 790, 'Beef Premium Cube.avif', 'meat'),
(56, 'Broiler Chicken', 400, 'Broiler Chicken.avif', 'meat'),
(57, 'Chicken Breast', 650, 'Chicken Breast.avif', 'meat'),
(58, 'Chicken Drumstick (Kg)', 500, 'Chicken Drumstick (Kg).avif', 'meat'),
(59, 'Khashir Mangsho (Kg)^', 1150, 'Khashir Mangsho (Kg)^.avif', 'meat'),
(60, 'Roast Chicken', 210, 'Roast Chicken.avif', 'meat');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `user_type`) VALUES
(0, 'Abu', 'Yusuf', 'y@gmail.com', 'e0fbe937a0fd085a510e0f1cb0f892fe', 'admin'),
(1, 'Nayeem', 'Yusuf', 'yusuf@gmail.com', '2f2604226a915c551d7d2f32aac76924', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
