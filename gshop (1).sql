-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 07:13 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `background` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `www` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `alert` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `promotion_tm` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `promotion_tw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `truewallet_phone` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `truewallet_email` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `truewallet_password` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `website` varchar(255) DEFAULT 'shop.hakko.pw',
  `me` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'https://www.facebook.com/itorkungth',
  `truewallet_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `truewallet_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nav` enum('primary','dark','success','info','warning','danger') NOT NULL,
  `say` enum('on','off') NOT NULL,
  `page_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logged` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `announce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `title`, `description`, `icon`, `background`, `name`, `www`, `alert`, `promotion_tm`, `promotion_tw`, `truewallet_phone`, `truewallet_email`, `truewallet_password`, `website`, `me`, `truewallet_msg`, `truewallet_name`, `nav`, `say`, `page_id`, `logged`, `announce`) VALUES
(1, 'GShops เว็บไชต์จำหน่ายสคริป', 'เว็บไชต์จำหน่ายสคริป', 'img/1.png', 'https://www.img.in.th/images/953394d6d4dc617bc602746c74c81ab7.jpg', 'GShops ', 'https://gshops.ml/', 'iGShops เว็บไชต์จำหน่ายสคริป', '1', '1', '0637277204', 'bigbaba55yo@gmail.com', '14155585g', '', '', '', 'เอกชัย ไพรินทร์', 'warning', 'off', '100375754971208', 'ติดต่อแอดมิน', '');

-- --------------------------------------------------------

--
-- Table structure for table `gift_code`
--

CREATE TABLE `gift_code` (
  `id` int(11) NOT NULL,
  `code_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `reward` decimal(11,2) NOT NULL,
  `limits` int(11) NOT NULL,
  `used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `active` enum('true','false') NOT NULL,
  `PointFree` varchar(255) NOT NULL DEFAULT '0',
  `rank` enum('member','admin') NOT NULL DEFAULT 'member',
  `email` varchar(255) DEFAULT 'user@gmail.com'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `point`, `active`, `PointFree`, `rank`, `email`) VALUES
(41, 'bigbaba55yo', '$sha1846GH7yH001WSC10$xw3o7aFuBMHCXaZs$b1de0763ab21a7ca323281cd585a0646', 0, 'true', '0', 'admin', 'user@gmail.com'),
(42, 'Kingza555', '$sha1846GH7yH001WSC10$VEdqlo5oBmhO5cvK$da14dfe0a3dfbe623d76498b76a586a5', 0, 'true', '0', 'member', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `info` varchar(10000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pattern` enum('normaltext','code','eml:psw','usr:psw','usr:eml:psw','eml:psw:prf:pin') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `help`, `price`, `pattern`) VALUES
(1, 'Minecraft NFA • เปลียนข้อมูลไม่ได้', 'https://gshops.ml/img/nfa1.png', '[✓] สามารถเข้าเล่นได้\n[✗] เปลี่ยนข้อมูลไม่ได้แต่ เปลี่ยนสกินไม่ได้\n[✗] ตั้งรหัสความปลอดภัยไม่ได้\n[✗] เปลียนอีเมลไม่ได้\n[✗] ไม่รับประกันเข้าเซิฟแท้ มีโอกาส 50% ที่เข้าได้\n\nประกัน 8 ชม.เท่านั้น\n\nสินค้านี้มีประกันเพียง 8 ชม.หลังจากซื้อ\n\n<div class=\"badge badge-danger\" style=\"color:white;\">ไม่รับประกันเซิฟแท้</div>', 'คุณลูกค้าจะได้รับเป็น (Email และ Password) โดยท่านสามารถนำ Email และ Password ไปล็อกอินเล่นผ่านตัวเกมได้เลยนะครับส่วน Username จะแสดงบนตัวเกม\n', '10.00', 'eml:psw'),
(2, 'Minecraft SFA • เปลียนข้อมูลได้ ยกเว้นเมล', './img/sfa-1.png', 'รายละเอียดสินค้า\n[✓] สามารถเข้าเล่นได้\n[✓] เปลี่ยนข้อมูลไม่ได้ ( เปลี่ยนชื่อกับสกินได้ )\n[✗] ตั้งรหัสความปลอดภัยไม่ได้\n[✗] เปลียนอีเมลไม่ได้\n[✗] ไม่รับประกันเข้าเซิฟแท้ มีโอกาส 50% ที่เข้าได้\n\nประกัน 3 วัน หากประกันหมดจะส่งเครมไม่ได้\n\n<div class=\"badge badge-danger\" style=\"color:white;\">ไม่รับประกันเซิฟแท้</div>', 'คุณลูกค้าจะได้รับเป็น (Email และ Password) โดยท่านสามารถนำ Email และ Password ไปล็อกอินเล่นผ่านตัวเกมได้เลยนะครับส่วน Username จะแสดงบนตัวเกม\n', '45.00', 'eml:psw'),
(10, 'Minecraft MFA  • เปลียนข้อมูลได้ทุกอย่าง', './img/MFA.png', 'รายละเอียดสินค้า\n[✓] สามารถเข้าเล่นได้\n[✓] เปลี่ยนได้หมด เพราะ ให้ทั้งเมล\n[✓] ตั้งรหัสความปลอดได้\n[✓] เปลียนอีเมลได้\n[✓] มีโอกาสเข้าเซิฟแท้ได้ 90%\n\nย้ายเมลไป Microsoft ได้ทันที (ต้องย้ายไอดีภายใน30วัน ถ้าไม่ย้ายถือว่าประกันขาด)\n<div class=\"badge badge-danger\" style=\"color:white;\">ไม่รับประกันเซิฟแท้</div>', 'คุณลูกค้าจะได้รับเป็น (Email และ Password) โดยท่านสามารถนำ Email และ Password ไปล็อกอินเล่นผ่านตัวเกมได้เลยนะครับส่วน Username จะแสดงบนตัวเกม\n', '400.00', 'usr:eml:psw'),
(11, 'Netflix Premium', './img/Netflix.png', 'Netflix Premium 1 เดือน(ประกัน 1สัปดาห์) (เปลี่ยนรหัสคือประกันขาด)', '.', '50.00', 'eml:psw'),
(50, 'ระบบ BedWars', 'https://i.ytimg.com/vi/2-w0H_fI7Fk/maxresdefault.jpg', 'เซิฟ Mc-BigoneCraft.net\nลิ้งโหลด แต่ต้องซื้อคีย์ก่อนนะครับ\nhttps://mega.nz/file/6jogiA6I', 'ลิ้งโหลด แต่ต้องซื้อคีย์ก่อนนะครับ\nhttps://mega.nz/file/6jogiA6I', '300.00', 'code'),
(201, 'Spotify Premium เปลี่ยนข้อมูลได้บางอย่าง', 'https://media.discordapp.net/attachments/749535554277998612/882424960751124560/1781744562.png?width=1109&height=699', '✓ เปลี่ยนรหัสได้\n✓ นำไปใช้ฟังเพลงหรืออื่นๆตามสบาย\n\nประกัน 1 วัน หากประกันหมดจะส่งเครมไม่ได้', '.', '30.00', 'eml:psw');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(255) NOT NULL,
  `type` int(255) NOT NULL,
  `contents` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `TW_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(3000) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'verify',
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Truewallet'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topup`
--

INSERT INTO `topup` (`id`, `TW_id`, `amount`, `status`, `date`, `username`, `type`) VALUES
(175, '5608-6683-3b83-3031-18e4', '', 'success', '2021-10-19 09:26:40', 'bigbaba55yo', 'เติมเงินด้วย คูปอง');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_account`
--

CREATE TABLE `wallet_account` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_account`
--

INSERT INTO `wallet_account` (`id`, `email`, `password`, `phone`, `name`) VALUES
(1, '', '', '..', '...');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `video` enum('true','false') NOT NULL,
  `videourl` varchar(255) NOT NULL,
  `truewallet` enum('true','false') NOT NULL,
  `truemoney` enum('true','false') NOT NULL,
  `page` enum('true','false') NOT NULL,
  `pageurl` varchar(255) NOT NULL,
  `imagesback` enum('true','false') NOT NULL,
  `imagesbackurl` varchar(255) NOT NULL,
  `website` enum('true','false') NOT NULL,
  `pointfree` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `video`, `videourl`, `truewallet`, `truemoney`, `page`, `pageurl`, `imagesback`, `imagesbackurl`, `website`, `pointfree`) VALUES
(1, 'false', '1', 'true', 'true', 'true', 'Hi', 'true', 'true', 'true', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_code`
--
ALTER TABLE `gift_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_account`
--
ALTER TABLE `wallet_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_code`
--
ALTER TABLE `gift_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `wallet_account`
--
ALTER TABLE `wallet_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
