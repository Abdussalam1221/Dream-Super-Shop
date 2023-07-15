-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 10:11 AM
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
-- Table structure for table `basket_analysis`
--

CREATE TABLE `basket_analysis` (
  `id` int(11) NOT NULL,
  `item1` varchar(100) NOT NULL,
  `item2` varchar(100) NOT NULL,
  `item3` varchar(100) NOT NULL,
  `item4` varchar(100) NOT NULL,
  `item5` varchar(100) NOT NULL,
  `item6` varchar(100) NOT NULL,
  `item7` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basket_analysis`
--

INSERT INTO `basket_analysis` (`id`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`) VALUES
(1, 'Orange (Srilanka)', 'Banana (Shagor kola)', 'Coconut', 'Sroiler chicken leg', 'Koi fish (Deshi)', 'ACI Aroma Chinigura Rice 1Kg', 'ACI Pure Mustard Oil 500ml'),
(2, 'Kings Brand Sunflower Oil 5Ltr', 'Olio Orolio Olive Oil', 'Pink Salt 200g (Jar)', 'Boost Malt Jar 400 Gm', 'Dove Beauty Cream Bar White', 'Horlicks Chocolate -UL', 'Lifebuoy Mild Care Hand Wash -UL'),
(3, 'Lifebuoy Total 10 Hand Wash', 'lux body wash borchid sandjuniper oil', 'Vim Dishwashing Liquid 500ml', 'Womens Plus Horlicks Caramel 400g Jar', 'CBL Munchee Choco Kalo Biscuit 100g', 'CBL Munchee Choco Mo Biscuit 160g', 'CBL white chocolate coated cookies 100g'),
(4, 'CBL Munchee Lemon Wafer 100g', 'CBL Munchee Nice Biscuits 94g', 'Bael Fruit', 'Pears White(Nashpati) Kg', 'Ripen Papaya (Paka Pepe)600gm', 'Banana (Meher Shagor Kola)', 'Apple(Green Apple)Kg'),
(5, 'Apple Gala(P) Kg', 'Pears South Africa (Kg)', 'Banana (Shobri) Pcs', 'Kiwi (Kg)', 'Pineapple 600g+', 'Lichu Bombey (Pcs)', 'Mango (Himshagor) Kg'),
(6, 'Mango (Lengra)', 'Aloe Vera (P) Kg', 'Capsicum (Red) Kg^', 'Snake Gourd (Chichinga) Kg^', 'Green Banana (Kacha Kola) Pcs^', 'Indian Spinach Pcs^', 'Tomato Long'),
(7, 'Bitter Gourd Small', 'Sponge Gourd (Dhundul) Kg^', 'Rupchanda Medium', 'Koral Medium', 'Poa Captured (P)', 'Carpu Cultured Medium', 'Gulsha Medium'),
(8, 'Snake Gourd (Chichinga) Kg^', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g'),
(9, 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg', 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL'),
(10, 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g'),
(11, 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate UL', 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml'),
(12, 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g'),
(13, 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast', 'Katla Medium'),
(14, 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken'),
(15, 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit', 'Lux body wash borchid sandjuniper oil'),
(16, 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g'),
(17, 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg', 'Roast', ' Chicken'),
(18, 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml'),
(19, 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm'),
(20, 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^'),
(21, 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast'),
(22, 'Snake Gourd (Chichinga) Kg^', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g'),
(23, 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg', 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL'),
(24, 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g'),
(25, 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml'),
(26, 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g'),
(27, 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast', 'Katla Medium'),
(28, 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken'),
(29, 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit', 'Lux body wash borchid sandjuniper oil'),
(30, 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g'),
(31, 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg', 'Roast', ' Chicken'),
(32, 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml'),
(33, 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm'),
(34, 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^'),
(35, 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast'),
(36, 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar'),
(37, 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit'),
(38, 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small', 'Broiler Chicken'),
(39, 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg', 'Roast Chicken'),
(40, 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml'),
(41, 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm'),
(42, 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^'),
(43, 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast'),
(44, 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar'),
(45, 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit'),
(46, 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small', 'Broiler Chicken'),
(47, 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg', 'Roast Chicken'),
(48, 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml'),
(49, 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm'),
(50, 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^'),
(51, 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast'),
(52, 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar'),
(53, 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma', ' Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g'),
(54, 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small'),
(55, 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg'),
(56, 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube'),
(57, 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL'),
(58, 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g'),
(59, 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^'),
(60, 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg'),
(61, 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g'),
(62, 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small'),
(63, 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg'),
(64, 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube'),
(65, 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL'),
(66, 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g'),
(67, 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^'),
(68, 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg'),
(69, 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g'),
(70, 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small'),
(71, 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg'),
(72, 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube'),
(73, 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL'),
(74, 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g'),
(75, 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^'),
(76, 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg'),
(77, 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g'),
(78, 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)', 'Bitter Gourd Small'),
(79, 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL', 'Pears White(Nashpati) Kg'),
(80, 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg', 'Beef Premium Cube'),
(81, 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm', 'Horlicks Chocolate -UL'),
(82, 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)', 'CBL Munchee Choco Kalo Biscuit 100g'),
(83, 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)', 'Sponge Gourd (Dhundul) Kg^'),
(84, 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g', 'ACI Aroma Chinigura Rice 1Kg'),
(85, 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg', 'CBL Munchee Choco Kalo Biscuit 100g'),
(86, 'Bael Fruit', 'Lux body wash borchid sandjun', 'iper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)'),
(87, 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL'),
(88, 'Pears White(Nashpati) Kg', 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg'),
(89, 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm'),
(90, 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)'),
(91, 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)'),
(92, 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g'),
(93, 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg'),
(94, 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)'),
(95, 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL'),
(96, 'Pears White(Nashpati) Kg', 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg'),
(97, 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit ', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm'),
(98, 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)'),
(99, 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)'),
(100, 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g'),
(101, 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg'),
(102, 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)'),
(103, 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL'),
(104, 'Pears White(Nashpati) Kg', 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg'),
(105, 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm'),
(106, 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)'),
(107, 'CBL Munchee Choco Kalo Biscuit 100g', 'Green Banana (Kacha Kola) Pcs^', 'CBL Munchee Nice Biscuits 94g', 'Rupchanda Medium', 'ACI Pure Mustard Oil 500ml', 'Pears South Africa (Kg)', 'Mango (Lengra)'),
(108, 'Sponge Gourd (Dhundul) Kg^', 'Chicken Breast', 'Katla Medium', 'Apple(Green Apple)Kg', 'Roiler chicken leg', 'Kings Brand Sunflower Oil 5Ltr', 'CBL Munchee Lemon Wafer 100g'),
(109, 'ACI Aroma Chinigura Rice 1Kg', 'Womens Plus Horlicks Caramel 400g Jar', 'Broiler Chicken', 'Gulsha Medium', 'Koi fish (Deshi)', 'Banana (Shobri) Pcs', 'ACI Aroma Chinigura Rice 1Kg'),
(110, 'CBL Munchee Choco Kalo Biscuit 100g', 'Bael Fruit', 'Lux body wash borchid sandjuniper oil', 'Poa Captured (P)', 'Coconut', 'Pink Salt 200g (Jar)', 'Lichu Bombey (Pcs)'),
(111, 'Bitter Gourd Small', 'Broiler Chicken', 'CBL white chocolate coated cookies 100g', 'Carpu Cultured Medium', 'Banana (Meher Shagor Kola)', 'ACI Aroma Chinigura Rice 1Kg', 'Horlicks Chocolate -UL'),
(112, 'Pears White(Nashpati) Kg', 'Roast Chicken', 'Lifebuoy Mild Care Hand Wash -UL', 'Indian Spinach Pcs^', 'Olio Orolio Olive Oil', 'Koral Medium', 'Mango (Himshagor) Kg'),
(113, 'Beef Premium Cube', 'ACI Pure Mustard Oil 500ml', 'CBL Munchee Choco Mo Biscuit 160g', 'Tomato Long', 'Orange (Srilanka)', 'Bael Fruit', 'Ripen Papaya (Paka Pepe)600gm'),
(114, 'Horlicks Chocolate -UL', 'Boost Malt Jar 400 Gm', 'Vim Dishwashing Liquid 500ml', 'Shing Cultured Medium', 'Banana (Shagor kola)', 'Lifebuoy Total 10 Hand Wash', 'Mango (Lengra)');

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
  `image` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`, `type`) VALUES
(58, 0, 'Koi fish (Deshi)', 600, 4, '3101787_U.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon_id` varchar(100) NOT NULL,
  `coupon_name` varchar(100) NOT NULL,
  `coupon_amount` double(10,5) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_id`, `coupon_name`, `coupon_amount`, `sdate`, `edate`) VALUES
(1, 'C001', 'SummerSale', 0.50000, '2023-06-19', '2023-06-25'),
(2, 'xxxx', 'FlashDeal', 0.20000, '2023-07-01', '2023-07-01'),
(3, 'C003', 'BigSaleEvent', 0.90000, '2023-08-10', '2023-08-20');

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
(12, 1, '', '45', '', 'cash on delivery', 'flat no. 446, , fgh,  - 467456', ', Orange (Srilanka) (2) , Banana (Shagor kola) (1)  ', 1465, '22-May-2023', 'pending'),
(13, 1, '', '1231654132', '', 'cash on delivery', 'dfghdnfy,tyert', ', ACI Pure Mustard Oil 500ml (4) , Banana (Shagor kola) (1) , Coconut (1) , Sroiler chicken leg (1) ', 1075, '19-Jun-2023', 'pending'),
(14, 1, '', '01244444444', '', 'credit card', 'dhaka,1234', ', Orange (Srilanka) (1) , Banana (Shagor kola) (1) , Coconut (1) , Sroiler chicken leg (1) ', 765, '19-Jun-2023', 'pending');

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
(1, 'Orange (Srilanka)', 250, '2901107.jpg', 'unilever'),
(2, 'Banana (Shagor kola)', 15, '2901099.jpg', 'fruits'),
(3, 'Coconut', 150, '2901111_19.jpg', NULL),
(4, 'Sroiler chicken leg', 350, 'Broiler Chicken Drumstick 3100622.jpg', NULL),
(5, 'Koi fish (Deshi)', 600, '3101787_U.jpg', NULL),
(8, 'ACI Aroma Chinigura Rice 1Kg', 158, 'ACI Aroma Chinigura Rice 1Kg.jpg', 'great_savings'),
(9, 'ACI Pure Mustard Oil 500ml', 140, 'ACI Pure Mustard Oil_Shwapno.jpg', 'great_savings'),
(10, 'Kings Brand Sunflower Oil 5Ltr', 1900, 'King\'s Brand Sunflower Oil 5Ltr.jpg', 'great_savings'),
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
(60, 'Roast Chicken', 210, 'Roast Chicken.avif', 'meat'),
(61, 'yusuf', 12, 'study table design for big room.jpg', 'pending');

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
-- Indexes for table `basket_analysis`
--
ALTER TABLE `basket_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- AUTO_INCREMENT for table `basket_analysis`
--
ALTER TABLE `basket_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
