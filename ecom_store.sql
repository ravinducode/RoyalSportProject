-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 11:01 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_address` varchar(255) NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_address`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Sakuni Hegodage', 'sakeeneymar@gmail.com', '12345', 'admin.jpg', 'Colombo', 'My name is Sakuni Hegodage. I live in Bandaragama. In case of emergency please contact 072983827. ', '0772019890', 'Manager'),
(2, 'Rasanjana Deshan', 'deshzone@gmail.com', '12345', 'third.jpg', 'Colombo', 'I\'m Rasanjana Deshan, 23 years old. I will provide my fullest support to Royal Sports', '0779574706', 'Manager'),
(3, 'test', 'test', '123', 'second.jpeg', 'cmb', '<p>husfdt hsgfdtua jgtdyayi jsgdyfa</p>', '01124578963', 'ads');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, ' Men ', 'Royal Sports have a special range of sports items for men. '),
(2, 'Women', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum, nisi? Commodi sed laudantium eos velit explicabo dolores, officiis, numquam dolore ullam odio quia quasi praesentium non reiciendis. At, eum! Repellendus.'),
(3, 'Kids', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum, nisi? Commodi sed laudantium eos velit explicabo dolores, officiis, numquam dolore ullam odio quia quasi praesentium non reiciendis. At, eum! Repellendus.'),
(6, 'Other', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odit at cupiditate suscipit, nostrum ducimus aspernatur delectus laboriosam expedita sit nam tempore hic quos distinctio in quasi vitae aperiam consequatur debitis?');

-- --------------------------------------------------------

--
-- Table structure for table `cod_payments`
--

CREATE TABLE `cod_payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `address` text NOT NULL,
  `phone_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cod_payments`
--

INSERT INTO `cod_payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `address`, `phone_number`) VALUES
(1, 1816649824, 4999, 'Cash On Delivery', 'colombo', '0778945612'),
(2, 7837759, 3450, 'Cash On Delivery', 'kurunagala', '0114785236');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(10) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'Sakuni Hegodage', 'testinggmail@gmail.com', '123456', '    SriLanka', 'Colombo', '0772019890', '19, Kalubowila West, Dehiwala.', 'Me.jpg', '::1'),
(2, 'Sakeena Neymar', 'NoBuy@gmail.com', '12345', '   SriLanka', 'Colombo', '077456127', '5, De Silva Rd, Mt. Lavinia', 'FB_IMG_1528176367705.jpg', '::1'),
(9, 'Sakuni', 'sakuni@gmail.com', '12345', 'SriLanka', 'Colombo', '0772019890', 'cmb', 'WhatsApp Image 2021-02-09 at 15.05.06 (1).jpeg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 1, 4999, 1816649824, 1, 'Small', '2021-04-23', 'Cash On Delivery -Done'),
(2, 2, 3450, 7837759, 1, 'Small', '2021-04-23', 'Cash On Delivery -Done');

-- --------------------------------------------------------

--
-- Table structure for table `event_slider`
--

CREATE TABLE `event_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_slider`
--

INSERT INTO `event_slider` (`slider_id`, `slider_name`, `slider_image`) VALUES
(6, 'Event1', 'event1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 1, 1816649824, '26', 1, 'Small', 'Cash On Delivery -Done'),
(2, 2, 7837759, '17', 1, 'Small', 'Cash On Delivery -Done');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(1, 1, 1, '2021-04-22 12:16:16', 'Nike Boys Dri-FIT Academy Tee', 'Nike Boys Dri-FIT Academy Tee_Front.jpg', 'Nike Boys Dri-FIT Academy Tee_Back.jpg', 'Nike Boys Dri-FIT Academy Tee_Front.jpg', 4000, 'T-Shirt', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">The Nike Boy&rsquo;s Dri-FIT Academy Short Sleeve Top is made to dry, comfortable focus on the court. The mesh side and back panels give it great airflow and less cling. The Dri-FIT tech wicks away sweat, keeping you dry. Great for style and comfort when you&rsquo;re out and about.&nbsp;</span></p>', 'new', 0),
(2, 1, 1, '2021-04-22 12:16:25', 'FC Barcelona Youth Home Jersey', 'FC Barcelona Youth Home Jersey.jpg', 'FC Barcelona Youth Home Jersey Back Side.jpg', 'FC Barcelona Youth Home Jersey logo.jpg', 8500, 'T-Shirt', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">Constructed using Nike Breathe fabric, this replica jersey wicks away sweat and enhances breathability to leave them feeling cool, dry and comfortable. This classy designed kit sees Barca return to vertical striping with a look that pays homage to 2010/11 double winning team and further stamping their allegiance to the one of the greatest teams in footballs history.</span></p>', 'new', 0),
(3, 1, 6, '2021-04-22 14:48:32', 'Adidas Goalkeeping Gloves with Fingersaves', 'Adidas Goalkeeping Gloves with Fingersaves.jpg', 'Adidas Goalkeeping Gloves  fingers.jpg', 'Adidas Goalkeeping Gloves with Fingersaves Closer.jpg', 8500, 'Gloves', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">Help your future football star hone their skills at training or with their mates at the park in the adidas Junior Predator 20 Training Goalkeeper Gloves. Built with 2mm cushioning and Soft Grip 2.0 latex on the palm of the gloves, the gloves offers grip and impact absorption to keep young hand safe. The positive cut provides a comfortable fit while the half-wrist hook and loop straps around the wrist allow the fit to be easily secured for a barely-there fit.</span></p>', 'sale', 7900),
(4, 1, 1, '2021-04-22 12:16:37', 'Adidas Boys Tiro Track Pants', 'Adidas Boys Tiro 21 Track Pants.jpg', 'Adidas Boys Tiro 21 Track Pants back.jpg', 'Adidas Boys Tiro 21 Track Pants closer.jpg', 7300, 'Pants', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">Keeping you moving in comfort, the breathable fabric features moisture-wicking properties to help youremain sweat-free during the game. The drawcord waistband has been designed to offer a secure feel that can be easily adjusted for the perfect fit.</span></p>', 'new', 0),
(5, 1, 3, '2021-04-22 12:16:43', 'Adidas X Ghosted .3 Kids Football Boots', 'adidas X Ghosted .3 Kids Football Boots Right.jpg', 'adidas X Ghosted .3 Kids Football Boots left.jpg', 'adidas X Ghosted .3 Kids Football Boots.jpg', 9000, 'Boots', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">Hit the accelerator and disappear on the opposition in the adidas X Ghosted .3 Football Boots. Engineered for acceleration, the X Ghosted combine a lightweight construction with an arrowhead outsole for destructive straight line speed. Built fast for the field they lace up quick thanks to the four-way stretch tongue letting players pull them on and hit the turf quicker.</span></p>', 'new', 0),
(7, 1, 6, '2021-04-22 12:16:53', 'Nike Premier League Strike Soccer Ball', 'Nike Premier League Strike Soccer Ball.jpg', '', '', 4700, 'Football', '<p>The TPU outer covering is machine stitched to give it some extra durability. The internal butyl bladder keeps it inflated and ready to go between games, so you don&rsquo;t need to pump it up constantly. Great for showing your true colours at your next local game.</p>', 'new', 0),
(8, 8, 2, '2021-04-22 12:17:04', 'Speedo Girls Endurance Leaderback Swimsuit', 'Speedo Girls Endurance Leaderback Swimsuit.jpg', 'Speedo Girls Endurance Leaderback Swimsuit back.jpg', '', 3500, 'SwimSuit', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">Ideal for training and frequent pool use, the Speedo Girl&rsquo;s Endurance Leaderback Swimsuit is made from an exclusive Speedo &ldquo;Endurance&rdquo; fabric. Designed to last, the Speedo Girl&rsquo;s Endurance Leaderback Swimsuit is 100% chlorine resistant to prevent fading and snagging 20 times longer than any other swim fabric. The 4-way stretch feature adds a new level of comfort, soft and secure with a leaderback design, the Speedo Girl&rsquo;s Endurance Leaderback Swimsuit is built to last.</span></p>', 'new', 0),
(9, 8, 1, '2021-04-22 14:48:40', 'Quiksilver Boys All Time Rash Vest', 'Quiksilver Boys All Time Rash Vest.jpg', 'Quiksilver Boys All Time Rash Vest Back.jpg', '', 5400, 'SwimSuit', '<p>Comfort materials and original branded. Get your now for fee comfortable umder the water</p>', 'sale', 4990),
(10, 1, 3, '2021-04-22 12:17:18', 'FC Barcelona Kids Away Jersey', 'FC Barcelona  Kids Away Jersey.jpg', 'FC Barcelona  Kids Away Jersey back.jpg', '', 3900, 'T-Shirt', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 13px;\">The classy jersey design comes in black with gold trim and branding details. Nike Breathe and Dri-FIT fabrication delivers superior comfort, helping to keep them cool and comfortable</span></p>', 'new', 0),
(11, 1, 1, '2021-04-22 12:17:29', 'Nike Mercurial Superfly Football Boots', 'Nike Mercurial Superfly Football Boots.jpg', 'Nike Mercurial Superfly Football Boots 2.jpg', 'Nike Mercurial Superfly Football Boots 3.jpg', 8500, 'Boots', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">The moulded upper features texturing to enhance ball control at high speeds. The Dynamic Fit collar helps secure feet in a second-sking fit and the concial studs deliver traction, releasing fast for optimal mobility.</span></p>', 'new', 0),
(14, 2, 1, '2021-04-22 17:56:28', 'Gray Nicolls Strike Blue Junior Cricket Bat ', 'Gray Nicolls MAAX Strike Blue Junior Cricket Bat 2.jpg', 'Gray Nicolls MAAX Strike Blue Junior Cricket Bat.jpg', 'Gray Nicolls MAAX Strike Blue Junior Cricket Bat 2 - Copy.jpg', 25000, 'Bat', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Thick edges and a medium bow mean that when timed it delivers plenty of value for their shots.</span></p>', 'new', 0),
(15, 2, 1, '2021-04-22 12:17:39', 'Kookaburra Kahuna Pro 8.0 Junior Cricket Bat', 'Kookaburra Kahuna Pro 8.0 Junior Cricket Bat 2.jpg', 'Kookaburra Kahuna Pro 8.0 Junior Cricket Bat.jpg', 'Kookaburra Kahuna Pro 8.0 Junior Cricket Bat 3.jpg', 25890, 'Bat', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">It delivers a classic grip with its round handle and Kookaburra Chevron batting grip, making it a great stick for young players to hone their skills with.</span></p>', 'new', 0),
(16, 2, 1, '2021-04-22 14:48:56', 'New Balance DC 300 Cricket Bat', 'New Balance DC 300 Cricket Bat 2.jpg', 'New Balance DC 300 Cricket Bat.jpg', 'New Balance DC 300 Cricket Bat 3.jpg', 23000, 'Bat', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">features a low swell with large edges and sweet spot making it a great bat for players who like to go on the attack.</span></p>', 'sale', 21800),
(17, 8, 2, '2021-04-22 14:49:03', 'Speedo Endurance Leaderback Legsuit', 'Speedo Womens Endurance Plus Leaderback Legsuit.jpg', 'Speedo Womens Endurance Plus Leaderback Legsuit 2.jpg', 'Speedo Womens Endurance Plus Leaderback Legsuit - Copy.jpg', 4000, 'SwimSuit', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">It also features four-way stretch technology for added softness and comfort. The perfect swimsuit to help you focus on your strokes with zero distractions.</span></p>', 'sale', 3450),
(22, 5, 6, '2021-04-22 12:18:06', 'Gilbert Pheonix Mini Netball', 'Gilbert Pheonix Mini Netball.jpg', 'Gilbert Pheonix Mini Netball - Copy.jpg', 'Gilbert Pheonix Mini Netball - Copy (2).jpg', 4890, 'NetBall', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Featuring a wound butyl bladder for excellent shape and air retention and durable rubber surface for reduced wearing and increase longevity.&nbsp;</span></p>', 'new', 0),
(23, 5, 2, '2021-04-22 12:18:11', 'Asics Netburner Super FF Womens Netball Shoes', 'Asics Netburner Super FF Womens Netball Shoes.jpg', 'Asics Netburner Super FF Womens Netball Shoes 2.jpg', 'Asics Netburner Super FF Womens Netball Shoes 3.jpg', 7980, 'Netball Shoes', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Utilising a Trusstic System, the shape of the Trusstic is specifically tailored to netball movements to prevent the shoe from twisting during steps and pivots.</span></p>', 'new', 0),
(24, 5, 2, '2021-04-22 17:57:43', 'Mizuno Wave Womens Netball Shoes', 'Mizuno Wave Momentum 2 Womens Netball Shoes.jpg', 'Mizuno Wave Momentum 2 Womens Netball Shoes 2.jpg', 'Mizuno Wave Momentum 2 Womens Netball Shoes 3.jpg', 8700, 'Netball Shoes', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Mizuno Enerzy and Wave technology in the midfoot deliver stability and responsive cushioning for lasting comfort and agility.</span></p>', 'new', 0),
(25, 6, 6, '2021-04-22 12:18:27', 'Dunlop Biotec TI Racquet Ball Racquet', 'Dunlop Biotec TI Racquet Ball Racquet.jpg', 'Dunlop Biotec TI Racquet Ball Racquet 2.jpg', 'Dunlop Biotec TI Racquet Ball Racquet 3.jpg', 6890, 'Racquet', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Racquet is made from alloy to provide a durable and sturdy frame.</span></p>', 'new', 0),
(26, 4, 6, '2021-04-22 14:49:13', 'Head Ti Reward Tennis Racquet', 'Head Ti Reward Tennis Racquet.jpg', 'Head Ti Reward Tennis Racquet Copy 2.jpg', 'Head Ti Reward Tennis Racquet - Copy.jpg', 5900, 'Racquet', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">With Head Titanium technology which provides greater and stability from the racquet face.</span></p>', 'sale', 4999),
(27, 4, 1, '2021-04-22 12:18:41', 'NikeCourt Air Hardcourt Mens Tennis Shoe', 'NikeCourt Air Zoom  Mens Tennis Shoe.jpg', 'NikeCourt Air Zoom  Mens Tennis Shoe 2.jpg', 'NikeCourt Air Zoom Mens Tennis Shoe 3.jpg', 14500, 'Tennis Shoes', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">The Zoom Air unit does away with its foam housing and is stitched directly into the upper, closer to your foot for a more responsive than ever experience.</span></p>', 'new', 0),
(28, 4, 2, '2021-04-22 14:49:23', 'NikeCourt Womens Slam Tennis Tank', 'NikeCourt Womens Slam Tennis Tank.jpg', 'NikeCourt Womens Slam Tennis Tank 2.jpg', 'NikeCourt Womens Slam Tennis Tank 3.jpg', 7590, 'Tanks', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">The comfortable knit fabric and stretchy straps deliver a design that allows you to move around the court with speed.</span></p>', 'sale', 5900),
(29, 6, 6, '2021-04-22 14:49:30', 'Head Nano TI Heat Squash Racquet', 'Head Nano TI Heat Squash Racquet.jpg', 'Head Nano TI Heat Squash  2.jpg', 'Head Nano TI Heat Squash  3.jpg', 4600, 'Racquet', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">he lightweight full Graphite frame and Nano Ti technology add strength and stability to the frame for consistent play.</span></p>', 'sale', 3990),
(30, 6, 6, '2021-04-22 14:49:37', 'Dunlop Intro Single Squash Ball', 'Dunlop Intro Single Squash Ball.jpg', 'Dunlop Intro Single Squash Ball 2.jpg', 'Dunlop Intro Single Squash Ball 3.jpg', 800, 'Squash Ball', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">The increased size and 40% longer hang-time than the Pro, make the Intro ball easy to return as you work up your confidence.</span></p>', 'sale', 590),
(31, 9, 6, '2021-04-22 12:19:06', 'Proform Strength Adjustable Bench', 'Proform Strength Adjustable Bench.jpg', 'Proform Strength Adjustable Bench 2.jpg', 'Proform Strength Adjustable Bench.jpg', 36000, 'Bench', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">The bench features 6 seat adjustments and 11 back adjustments enabling a flat, incline, decline and military positions.</span></p>', 'new', 0),
(32, 9, 6, '2021-04-22 12:19:12', 'Celsius ST1 Smith Machine', 'Celsius ST1 Smith Machine.jpg', 'Celsius ST1 Smith Machine 2.jpg', 'Celsius ST1 Smith Machine.jpg', 45000, 'Smith Machine', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Designed with multi stage safety stops, a height adjustable bar holder and 4 plate storage posts, you can start your fitness journey today.</span></p>', 'new', 0),
(33, 9, 6, '2021-04-22 13:39:01', 'Celsius GS2 Leg Press Attachment', 'Celsius GS2 Leg Press Attachment.jpg', 'Celsius GS2 Leg Press Attachment 2.jpg', 'Celsius GS2 Leg Press Attachment.jpg', 43200, 'Leg Press', '<ul style=\"box-sizing: inherit; margin: 0px; font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px; line-height: 1.125rem; list-style: none; padding: 0px;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 10px 10px 0px; padding-left: 20px; position: relative; list-style: none; text-align: left;\">Padded seat and back rest helps increase comfort.&nbsp;Complete leg presses and seated calf raises</li>\r\n</ul>', 'new', 0),
(34, 10, 2, '2021-04-22 13:39:05', 'Fitbit Versa Smartwatch', 'Fitbit Versa 2 Smartwatch.jpg', 'Fitbit Versa 2 Smartwatch 2.jpg', 'Fitbit Versa 2 Smartwatch 3.jpg', 19900, 'Smartwatch', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Your fitness goals are easy to set and keep track of thanks to the All-Day Activity Tracker and 24/7 Heart Rate Tracking.&nbsp;</span></p>', 'new', 0),
(35, 10, 6, '2021-04-22 14:47:49', 'BackBeat FIT Blue', 'BackBeat FIT 2100 Blue.jpg', 'BackBeat FIT 2100 Blue 2.jpg', 'BackBeat FIT 2100 Blue.jpg', 5790, 'Earbud', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">The water-proof, sweat-proof ultra stable design with a flexible, lightweight neckband will help you beat your personal best while enabling you to stay fully aware of your surroundings.</span></p>', 'sale', 4910),
(36, 10, 6, '2021-04-22 13:39:17', 'Insulated Drink Bottle ', 'Insulated Drink Bottle.jpg', 'Insulated Drink Bottle Black.jpg', 'Insulated Drink Bottle Black 2.jpg', 990, 'WaterBottle', '<p><span style=\"font-family: Effra, Helvetica, Arial, sans-serif; font-size: 14.96px;\">Boasting a whopping 950ml capacity this bottle is constructed from DEHP and BPA free materials its stainless steel outer protects the double-wall vacuum insulation inner keeps drinks cool or warm.</span></p>', 'new', 0),
(37, 1, 6, '2021-04-22 14:48:10', 'Adidas Ball White Red', 'adidas Arsenal Club Ball White Red.jpg', 'adidas Arsenal Club Ball White Red 2.jpg', 'adidas 3.jpg', 3790, 'Football', '<p>A good materialistic football makes a smooth kicking for you.</p>', 'sale', 2990),
(38, 3, 1, '2021-04-22 19:53:31', 'test', 'Asics Netburner Super FF Womens Netball Shoes 2.jpg', 'Adidas Boys Tiro 21 Track Pants closer.jpg', 'Adidas Goalkeeping Gloves with Fingersaves Closer.jpg', 2000, 'Bat', '<p>bs hafsytagj&nbsp; ahfd</p>', 'new', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, ' FootBall ', 'Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal.'),
(2, ' Cricket ', 'Cricket is a bat-and-ball game played between two teams of eleven players on a field at the centre of which is a 22-yard (20-metre) pitch with a wicket'),
(3, ' Badminton ', 'Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Although it may be played with larger teams, the most common forms of the game are \"singles\" (with one player per side) and \"doubles\" (with two players per side).'),
(4, ' Tennis ', 'Tennis is a racket sport that can be played individually against a single opponent or between two teams of two players each. '),
(5, ' NetBall ', 'Netball is a ball sport played by two teams of seven players. Netball is most popular in many Commonwealth nations and according to the INF,'),
(6, ' Squash ', 'Squash is a racket and ball sport played by two players in a four-walled court with a small, hollow rubber ball.'),
(7, ' Golf ', 'Golf is a club-and-ball sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible.'),
(8, ' Swimming ', 'Swimming is the self-propulsion of a person through water, usually for recreation, sport, exercise, or survival.'),
(9, ' Gym Equipmemt ', 'Power up your workouts Â· Dumbbells. Superior grip, safe and sturdy, stylish looks Â· Kettlebells. Stylish weights for functional training Â· Bumper Plates.'),
(10, 'Other', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odit at cupiditate suscipit, nostrum ducimus aspernatur delectus laboriosam expedita sit nam tempore hic quos distinctio in quasi vitae aperiam consequatur debitis?');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'ken-2.jpg'),
(2, 'Slide number 2', 'bg1.jpg'),
(3, 'Slide number 3', 'bg2.jpg'),
(4, 'Slide number 4', 'ken-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cod_payments`
--
ALTER TABLE `cod_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `event_slider`
--
ALTER TABLE `event_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cod_payments`
--
ALTER TABLE `cod_payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_slider`
--
ALTER TABLE `event_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
