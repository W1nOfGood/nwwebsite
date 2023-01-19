-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 08, 2021 at 04:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gshopsxy_123`
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
(1, 'GShops เว็บไชต์จำหน่ายสคริป', 'เว็บไชต์จำหน่ายสคริป', 'img/1.png', 'https://www.img.in.th/images/953394d6d4dc617bc602746c74c81ab7.jpg', 'GShops ', 'https://gshops.ml/client/', 'iGShops เว็บไชต์จำหน่ายสคริป', '1', '1', '0637277204', 'bigbaba55yo@gmail.com', '14155585g', '', '', '', 'เอกชัย ไพรินทร์', 'warning', 'off', '100375754971208', 'ติดต่อแอดมิน', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `timeout` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'ถาวร',
  `version` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `username`, `name`, `timeout`, `version`, `link`, `license`, `price`) VALUES
(38, 'KNGNO1', 'เว็บไชต์จำหน่ายสคริป v.1', 'ถาวร', '', 'delete', '149G1H32dY55pVbFf2SRK2M1k8EaWILv2xZ24uoA61gs7hQ1cl', '200'),
(39, 'KNGNO1', 'ระบบ BedWars', 'ถาวร', '', 'delete', '11l21K242RO2GMo6Whu3b111myg45qLkd18U2nx6D1c1Z179sA', '250'),
(40, 'KNGNO1', 'ระบบ KitBattle', 'ถาวร', '', 'delete', '1AB438S1u5IhUL4617s4XvTZpRMr9KiqcDFzobP1JC8g3Hfewm', '200'),
(41, 'KNGNO1', 'ระบบ Skywars', 'ถาวร', '', 'delete', 'dG15S1o1wFcOhQ7N811LK911U2C14a2mV3DlBzPJgxi7t5Es3v', '300'),
(42, 'oonuchaoo', 'WebShop v.1', 'ถาวร', '', 'delete', '1l1594zpD12J5v2Gr8yniCdSEj1X9sWV4f2P4qe5FA11QU712m', '150'),
(43, 'oonuchaoo', 'ระบบ BedWars', 'ถาวร', '', 'delete', 's2111egb81rf11F4cqO52VWp1w5R3C19A1i642uBE21UP2D3dj', '225'),
(47, 'BlackBox', 'เว็บไชต์จำหน่ายสคริป v.1', 'ถาวร', '', 'delete', 'c51v29kd92E1l2AUx3p2ZOs751KD6Fu2i11YBG123J4PLam14M', '120'),
(55, 'kiwary', 'เว็บไชต์จำหน่ายสคริป v.1', 'ถาวร', '', 'delete', 'Zx1yvGlpT5m1jzIwr813B4J227L2q722t219iQRsPE5Nd8W1S1', '120'),
(58, 'KNGSTUDIO', 'WebShop v.1', 'ถาวร', '', 'delete', '2147Z8Wj11GY839czq1l4PXH7hyv4o51NSE13K2J52aeM1gd1L', '150'),
(59, 'Rapeephat', 'WebShop v.1', 'ถาวร', '', 'delete', '2md3xp8K1hg3ik5C1o7MQr23Tlj1194a25B91q1UZb2cV1L7z2', '150'),
(60, 'FNV_ChannelZ', 'WebShop v.1', 'ถาวร', '', 'delete', '7UpPo2315fYd836hZqyW1V1518GrbLuvejmE2T7R4H1Ma1X192', '150'),
(61, 'JKD001', 'WebShop v.1', 'ถาวร', '', 'delete', 'CQv7M1bEl2123t1gL4PeKNnh8524Xp2G1sxwFy11UIfY476AVi', '150'),
(62, 'gurumrahak', 'ระบบ BedWars', 'ถาวร', '', 'delete', '1W82R1i5JB3xqIwog29M24U12T1Es2e16Q5bNLGk72168jA114', '300'),
(63, 'gurumrahak', 'WebShop v.1', 'ถาวร', '', 'delete', 'CNUnJGaSp2dvm51D4r3fs6Yk1eFO8t6385TzV1o2Rx12Q1g2E1', '75'),
(64, 'Mr_PeeZ', 'WebShop v.1', 'ถาวร', '', 'delete', '8z22r2PZ28gI1SfdF2H6Cn12JW52qi6l31L9N11BDwvOMh1Um7', '75'),
(66, 'natchanon', 'WebShop v.1', 'ถาวร', '', 'delete', '12eH3482Id2kF1ZD11O2BxPu2pzcXi3Cwml2as7SJ1URY4tv51', '75'),
(70, 'JOSEPH', 'Web ดูหนังออนไลน์', 'ถาวร', '', 'movie.rar', 'v9AlH61IxPw1S3NC1e11t345z9Q8ZMLg2cpy256VX4GFDa31ub', '200'),
(71, 'JOSEPH', 'WebShop v.1', 'ถาวร', '', 'webshop.rar', '12kH1q5r2oyl11wL4J7t8eTDU219ns57YV24N15A1OB6vRK33c', '150'),
(72, 'Little_boy', 'WebShop v.1', 'ถาวร', '', 'webshop.rar', '114362l18M1JS1Dhj16A1qPE17vdXywUWop2Rf2uzaN4n2I41T', '150');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `messenger` varchar(255) CHARACTER SET utf8 NOT NULL,
  `messenger1` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_shop`
--

CREATE TABLE `log_shop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `lore` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `time` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `active` enum('true','false') NOT NULL,
  `PointFree` varchar(255) NOT NULL DEFAULT '0',
  `rank` enum('member','admin') NOT NULL DEFAULT 'member',
  `email` varchar(255) DEFAULT 'user@gmail.com'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `point`, `active`, `PointFree`, `rank`, `email`) VALUES
(37, 'tottilandtv', '$sha1846GH7yH001WSC10$ZOdufgfNuRkqBec3$f026d521503eca51212f3f3c0a02f8ab', 0, 'true', '0', 'member', ''),
(39, 'Lol1iKunGz', '$sha1846GH7yH001WSC10$HqByTg0gsJRzgdn3$cc2f875f8654eaa5f327bac82ec34e2a', 10, 'true', '0', 'member', ''),
(40, 'bigbaba55yo', '$sha1846GH7yH001WSC10$9SJi7glRkqtIgE5c$be7154c5f6a000bcb874db80c4f2611d', 2301161, 'true', '0', 'admin', 'bigbaba55yo@gmail.com'),
(41, 'aphiwat', '$sha1846GH7yH001WSC10$YEAOK3zNgUBOUl9O$d2706d8c56ccfef113bc63f2d2758714', 0, 'true', '0', 'member', ''),
(42, 'hello', '$sha1846GH7yH001WSC10$tL8x61u54Br4n0r4$ea30b821b7da872e654bbc84873db248', 0, 'true', '0', 'member', ''),
(43, 'ManeeManeewan', '$sha1846GH7yH001WSC10$6y2hLv8AURzw91u9$5b6a5ca0f2a3c78e2ca9c61aadf0546c', 0, 'true', '0', 'member', ''),
(44, 'MOSMOSterTVZall', '$sha1846GH7yH001WSC10$YZEsufiuFUw8cTar$605104f10ee1457ae8e4252ed0d47aee', 0, 'true', '0', 'member', ''),
(45, 'Myname123', '$sha1846GH7yH001WSC10$uReMXgPGvCGy0HiW$e212f7b07de92fa77e1acbb1a4323188', 0, 'true', '0', 'member', ''),
(46, 'SATCHANKARUMA', '$sha1846GH7yH001WSC10$GZ5sQV9I9W09gstF$a75227f94e78959c201a38f68c144d98', 0, 'true', '0', 'member', ''),
(47, 'Natithonz', '$sha1846GH7yH001WSC10$SoosTSYBXTChtcEG$44a160063a06f2d95c504760e8323ede', 0, 'true', '0', 'member', ''),
(48, '12345zxctest', '$sha1846GH7yH001WSC10$SVWfekhSUIXbU26P$b8f001bdf9bf724c71e260504097f3be', 0, 'true', '0', 'member', ''),
(49, 'MisterS', '$sha1846GH7yH001WSC10$YEAOK3zNgUBOUl9O$006b87f02dbe164f8c197315997c3442', 0, 'true', '0', 'member', ''),
(50, 'FlukzTH', '$sha1846GH7yH001WSC10$AQ8A7XpzG83wBXQI$3b9da0070f1c60ef10ed1a7148b01e2d', 0, 'true', '0', 'member', ''),
(51, 'Tarkza567', '$sha1846GH7yH001WSC10$Atc4gky9ETbY9gdH$011d68071bf519d92aa4c474f5d4bcde', 0, 'true', '0', 'member', ''),
(53, 'punxzr', '$sha1846GH7yH001WSC10$ghPcG6s6zAf4B6hh$3a81d971eb2a9d346f426aa004b07269', 0, 'true', '0', 'member', ''),
(54, 'eNitipum', '$sha1846GH7yH001WSC10$NgUvxyZhS94e2yLY$a8d47335de4c4cd3c01f660d609667cf', 0, 'true', '0', 'member', ''),
(55, 'walen456', '$sha1846GH7yH001WSC10$e5e1i2zwx400pZIo$5dec5a227d5aac246d3d3c2b030dc6a0', 0, 'true', '0', 'member', ''),
(56, 'RealPlai', '$sha1846GH7yH001WSC10$gdxJavyyFPPhyzgS$032e7de7da99c83e8049a17b0f226401', 0, 'true', '0', 'member', ''),
(57, 'KNGNO1', '$sha1846GH7yH001WSC10$6K3KL3gJc5ZXyAfb$bb5b9965a7f529189882571ca66da7de', 99049, 'true', '0', 'member', ''),
(58, 'FPSPBHACKTH2', '$sha1846GH7yH001WSC10$WlIh3Wg19adTGnuz$dfd8eda59f5f5330cd1c013353960368', 0, 'true', '0', 'member', ''),
(59, 'ItzAnimez', '$sha1846GH7yH001WSC10$tL8x61u54Br4n0r4$793c657f0e7989ab3a4bb7f680fdbf03', 0, 'true', '0', 'member', ''),
(60, 'tbwchnael', '$sha1846GH7yH001WSC10$J6sqHmxsaQHqYrqw$b34233c5c10ba1bc21dbca6510b48123', 0, 'true', '0', 'member', ''),
(61, 'CHISNCHA_BAS', '$sha1846GH7yH001WSC10$xEs6YKU2lKcGtbM6$14d78727d42d68ba069c09538e99f6a8', 0, 'true', '0', 'member', ''),
(62, 'lucifer', '$sha1846GH7yH001WSC10$d22TcUuuQBgRMe9S$b91c846c8b5c51998ccc40d3cd76776c', 0, 'true', '0', 'member', ''),
(63, 'testza001', '$sha1846GH7yH001WSC10$uReMXgPGvCGy0HiW$6fc8c747e510aeb92371d36f82892c0c', 0, 'true', '0', 'member', ''),
(64, 'nongtag75', '$sha1846GH7yH001WSC10$4m40Oy3ZgNqNtc7N$8fe8c5d658c423dc836573d90d35bc92', 0, 'true', '0', 'member', ''),
(65, 'GenesisPresent', '$sha1846GH7yH001WSC10$6y2hLv8AURzw91u9$c69fc48f5f8534d4cfd9ef29af752995', 0, 'true', '0', 'member', ''),
(66, 'Hook000', '$sha1846GH7yH001WSC10$J6sqHmxsaQHqYrqw$b9bfa35f4cf7e9f7be0523485d86fac5', 0, 'true', '0', 'member', ''),
(67, 'TINGLNWZA', '$sha1846GH7yH001WSC10$YEAOK3zNgUBOUl9O$a7441cc82a6ccc4e5200634e9ea5adb4', 0, 'true', '0', 'member', ''),
(68, 'Miz71K', '$sha1846GH7yH001WSC10$SQpAQnK1WfbNLFn8$1b6399406fd00286168ce63361f2d19c', 0, 'true', '0', 'member', ''),
(69, 'oonuchaoo', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$65b361c105b806229a99e2589cbacb1b', 125, 'true', '0', 'member', ''),
(70, '123456za', '$sha1846GH7yH001WSC10$8tfkKVXGAor5ekr9$8f18cd274432d96d35e03c85362c9ec7', 0, 'true', '0', 'member', ''),
(71, 'MeONaJa1', '$sha1846GH7yH001WSC10$znMs1GX2uHXp0Xll$34b038cd5d0dfd229c565db6561eba39', 0, 'true', '0', 'member', ''),
(72, 'foantom00', '$sha1846GH7yH001WSC10$d7liIYpuXG76rsxn$5978a0a274f10d125c3d3a13bda39fd4', 0, 'true', '0', 'member', ''),
(73, 'Zazazaza', '$sha1846GH7yH001WSC10$ZOdufgfNuRkqBec3$5f2be1617137b37bdad30592693a38f5', 0, 'true', '0', 'member', ''),
(74, 'axciden', '$sha1846GH7yH001WSC10$Cue0J0PYNPCC9AYp$1d3f81803fbb0b0af43fd94f89cf7e2a', 0, 'true', '0', 'member', ''),
(75, 'ToonCode', '$sha1846GH7yH001WSC10$d22TcUuuQBgRMe9S$f9ce00239741480c0abd83babb576fd7', 50, 'true', '0', 'member', ''),
(76, 'KakGuyCh', '$sha1846GH7yH001WSC10$9SJi7glRkqtIgE5c$9624f760a920123bf253512274c7405a', 0, 'true', '0', 'member', ''),
(77, 'auuty', '$sha1846GH7yH001WSC10$5y5uvEPkG41uqFqg$f7c4b7b25b91ac3d6bb8cf6158dc7e73', 0, 'true', '0', 'member', ''),
(78, 'ToonCodeEdit', '$sha1846GH7yH001WSC10$5y5uvEPkG41uqFqg$796eeca6a0540b78304ced44c22012cf', 0, 'true', '0', 'member', ''),
(79, 'Tapanawat', '$sha1846GH7yH001WSC10$ghPcG6s6zAf4B6hh$d6f4635d01609d0fa1a558599a7633ef', 0, 'true', '0', 'member', ''),
(80, 'themaster00113', '$sha1846GH7yH001WSC10$zNzKZhG00k9LPqzg$499bc0b0802b941e9777a5bfc54225af', 0, 'true', '0', 'member', ''),
(81, 'shark', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$54862b84edefdd567abc11d16e3fdc40', 0, 'true', '0', 'member', ''),
(82, 'Hirotokung', '$sha1846GH7yH001WSC10$s3OP0xuoepB2Y24G$1dd4f7f3c3d2fc4ca8b52ca3d01d188c', 0, 'true', '0', 'member', ''),
(83, 'firstngub_', '$sha1846GH7yH001WSC10$uReMXgPGvCGy0HiW$b2125c2aa6271e18a95ffe784b77e528', 0, 'true', '0', 'member', ''),
(84, 'netkoxo', '$sha1846GH7yH001WSC10$zNzKZhG00k9LPqzg$dee210f4eeb37c3f2d07a9987043bad4', 0, 'true', '0', 'member', ''),
(85, 'BestZige', '$sha1846GH7yH001WSC10$E3qRoMtst8dgyOhd$895d4d13c46d51d008bf37720a8baec0', 0, 'true', '0', 'member', ''),
(86, 'ezthai', '$sha1846GH7yH001WSC10$8tfkKVXGAor5ekr9$2f42f80de681699a676280cbff9b2b05', 0, 'true', '0', 'member', ''),
(87, 'fonfinal', '$sha1846GH7yH001WSC10$O9MMnlN7CNMdiBJ2$1c27cfe008fef38ab863d6f7d061e3c2', 0, 'true', '0', 'member', ''),
(88, 'nSweeties', '$sha1846GH7yH001WSC10$wPw6dQEoCgwde3Fq$f024d8d1708f787381f8f494e2e21e77', 0, 'true', '0', 'member', ''),
(89, 'Sun99', '$sha1846GH7yH001WSC10$CGcmapP58m9dlgLs$799a743e706ed93b43a5cac5b035fec8', 0, 'true', '0', 'member', ''),
(90, 'eNitipum01', '$sha1846GH7yH001WSC10$np6TqmXHddhgzyO1$9a2af1c36ad56bc363abbb3ebc9eae9a', 0, 'true', '0', 'member', ''),
(91, '_DARK_BOY_TG_', '$sha1846GH7yH001WSC10$tL8x61u54Br4n0r4$524f6180587ecc45aaf86214780f0f45', 0, 'true', '0', 'member', ''),
(92, 'Ssrfew', '$sha1846GH7yH001WSC10$9DeJGSeETbQrDgxn$660526ecb16f8f35e4c46e968c917bcf', 0, 'true', '0', 'member', ''),
(93, 'Guildz', '$sha1846GH7yH001WSC10$8tfkKVXGAor5ekr9$a4ee2fa0570432dc63de538caad17014', 0, 'true', '0', 'member', ''),
(94, 'earthza_Ch', '$sha1846GH7yH001WSC10$ocwBAQzH4STruQUG$7559aebba8604442cc88a232097cbf27', 0, 'true', '0', 'member', ''),
(95, 'KUFA999', '$sha1846GH7yH001WSC10$PXXqgfWQFAWAxUPs$2026ffaca12ddc27702ed6ad273ffc8f', 0, 'true', '0', 'member', ''),
(96, 'BarrySwift', '$sha1846GH7yH001WSC10$SoosTSYBXTChtcEG$598d9872d79b8880ffceb3ad73af8c97', 0, 'true', '0', 'member', ''),
(97, 'inubotz', '$sha1846GH7yH001WSC10$YZEsufiuFUw8cTar$6f3681b722de9321c1669bccc1cbf9fd', 0, 'true', '0', 'member', ''),
(98, 'Mslodtv', '$sha1846GH7yH001WSC10$xEs6YKU2lKcGtbM6$f94f5fe76df58281a436f73e12698166', 0, 'true', '0', 'member', ''),
(99, 'Amory', '$sha1846GH7yH001WSC10$ysnaH1K5CiLzHlnH$e2156218a659ae2e1a96886bb1549639', 0, 'true', '0', 'member', ''),
(100, 'BlackBox', '$sha1846GH7yH001WSC10$GZ5sQV9I9W09gstF$80900425b329adf399df2d75320567f0', 0, 'true', '0', 'member', ''),
(101, 'h4ck2020', '$sha1846GH7yH001WSC10$s3OP0xuoepB2Y24G$c52a4b75652eae8d678c7c88ec31571c', 0, 'true', '0', 'member', ''),
(102, 'ragezone', '$sha1846GH7yH001WSC10$OgAwz5dFwbb8Nrm7$21269413337ebc2146ed93735c97e6c1', 0, 'true', '0', 'member', ''),
(103, 'kiwary', '$sha1846GH7yH001WSC10$C7x8JYopaZXDWpqC$6776afbd2e42f426bd4e0c2861de2803', 0, 'true', '0', 'member', ''),
(104, '123456', '$sha1846GH7yH001WSC10$OgAwz5dFwbb8Nrm7$0d2422e62c4788a476ace911632f1569', 0, 'true', '0', 'member', ''),
(105, 'Markkoma', '$sha1846GH7yH001WSC10$k1sAfdoOBDf4J9Xk$b57efb8d5ad4b990791de729768e64a3', 0, 'true', '0', 'member', ''),
(106, 'Gshshdh', '$sha1846GH7yH001WSC10$9SJi7glRkqtIgE5c$e80e303dbb7ecb191b9959c746051e06', 0, 'true', '0', 'member', ''),
(107, 'inubitz', '$sha1846GH7yH001WSC10$ghPcG6s6zAf4B6hh$cb1956cbe83e240f17735231914dee00', 0, 'true', '0', 'member', ''),
(108, 'inubot', '$sha1846GH7yH001WSC10$k1sAfdoOBDf4J9Xk$1f544912becd986f4b09bfe5db098b14', 0, 'true', '0', 'member', ''),
(109, 'susuep2017', '$sha1846GH7yH001WSC10$PXXqgfWQFAWAxUPs$40a5e65764e39aa9aa461de2582049f2', 0, 'true', '0', 'member', ''),
(110, 'Photo_45', '$sha1846GH7yH001WSC10$d22TcUuuQBgRMe9S$6fa419e3621cbebf01308ae22efa79ab', 0, 'true', '0', 'member', ''),
(111, 'user1', '$sha1846GH7yH001WSC10$HKgXhhNxKWLp22fp$1fc795df2714e7b2d6b0e808c026f7e2', 0, 'true', '0', 'member', ''),
(112, 'admin', '$sha1846GH7yH001WSC10$znMs1GX2uHXp0Xll$acd5de6e6cad632cfe6bd574d4d28007', 0, 'true', '0', 'member', ''),
(113, 'X_YaGounteen_X', '$sha1846GH7yH001WSC10$tL8x61u54Br4n0r4$884d51899e34f052ab2732ea747250d8', 0, 'true', '0', 'member', ''),
(114, 'tottilandtv2', '$sha1846GH7yH001WSC10$SVWfekhSUIXbU26P$b91ea1291b5cc5072fb7edd9c082b749', 0, 'true', '0', 'member', ''),
(115, 'botth48', '$sha1846GH7yH001WSC10$JuVNDOsKdtM76Cns$020fff8a8b9dbb82441e0d86ac2648e6', 0, 'true', '0', 'member', ''),
(116, 'Vali9943', '$sha1846GH7yH001WSC10$ZOdufgfNuRkqBec3$9720a812f3960057ef9ae094abb82a99', 0, 'true', '0', 'member', ''),
(117, 'test12345678', '$sha1846GH7yH001WSC10$tL8x61u54Br4n0r4$539589b6347d17a40ae8a25d056e7eda', 0, 'true', '0', 'member', ''),
(118, 'marker', '$sha1846GH7yH001WSC10$C7x8JYopaZXDWpqC$087baeb74440b235918e57cd24821602', 0, 'true', '0', 'member', ''),
(119, 'baseme002', '$sha1846GH7yH001WSC10$uwSVaSd6mWaiuBsM$65ff03dca29b15ff985593169bd09618', 0, 'true', '0', 'member', ''),
(120, 'IEarthX', '$sha1846GH7yH001WSC10$SQpAQnK1WfbNLFn8$dad72c4f5e2f379c2ccea3e3aee5c721', 0, 'true', '0', 'member', ''),
(121, 'Supanat', '$sha1846GH7yH001WSC10$AQ8A7XpzG83wBXQI$a2adf1a8f7ed1ec6ca342038125c56af', 0, 'true', '0', 'member', ''),
(122, 'Saertv1', '$sha1846GH7yH001WSC10$AQ8A7XpzG83wBXQI$09ff5cd4cc1571fa99a659a2aa2cbdcb', 0, 'true', '0', 'member', ''),
(123, 'KNG123', '$sha1846GH7yH001WSC10$JuVNDOsKdtM76Cns$417d24aa08cb51635d3bb7f135693fe5', 0, 'true', '0', 'member', ''),
(124, 'Toon8888', '$sha1846GH7yH001WSC10$ysnaH1K5CiLzHlnH$86e98ef0a5badd21bebdc6fdbe6f7bb1', 0, 'true', '0', 'member', ''),
(125, 'mizkty', '$sha1846GH7yH001WSC10$k1sAfdoOBDf4J9Xk$1f544912becd986f4b09bfe5db098b14', 0, 'true', '0', 'member', ''),
(126, 'Rapeephat', '$sha1846GH7yH001WSC10$frmYNozrDaEPqYS1$b97ba586f3c831170996dd981c191f3f', 0, 'true', '0', 'member', ''),
(127, 'KNGSTUDIO', '$sha1846GH7yH001WSC10$SQpAQnK1WfbNLFn8$9e0bb21ced55dcf1a166fc89381dd916', 0, 'true', '0', 'member', ''),
(128, 'dsadasd1234', '$sha1846GH7yH001WSC10$wPw6dQEoCgwde3Fq$53e95193672b8f546c4f5f00f2a4fb2c', 0, 'true', '0', 'member', ''),
(129, 'FNV_ChannelZ', '$sha1846GH7yH001WSC10$4m40Oy3ZgNqNtc7N$5178b0c1555e479ba54ecf8683a70a24', 0, 'true', '0', 'member', ''),
(130, 'Nitrogenx', '$sha1846GH7yH001WSC10$vkZl3CqCLQMfSTY2$834b66f9e0a64ce09ed85009fe6cdea8', 0, 'true', '0', 'member', ''),
(131, '12345', '$sha1846GH7yH001WSC10$HKgXhhNxKWLp22fp$eba21c9845b5997e19f40d255e96b2b0', 0, 'true', '0', 'member', ''),
(132, 'wxcill', '$sha1846GH7yH001WSC10$SoosTSYBXTChtcEG$d93744d46d2a176114bc5263f009856c', 0, 'true', '0', 'member', ''),
(133, 'JKD001', '$sha1846GH7yH001WSC10$E1CsTi0dptceqclZ$da12550f66eef0e076234c197d46d210', 70, 'true', '0', 'member', ''),
(134, 'XamppFsart', '$sha1846GH7yH001WSC10$d22TcUuuQBgRMe9S$5c6f66342c29100799f14c7ca992ef83', 0, 'true', '0', 'member', ''),
(135, 'gurumrahak', '$sha1846GH7yH001WSC10$HKgXhhNxKWLp22fp$69a8ff7e5a95bf3bf972918f21c1b0d6', 50, 'true', '0', 'member', ''),
(136, 'aksakan', '$sha1846GH7yH001WSC10$NgUvxyZhS94e2yLY$bf602c5fc2f5aecbdecfbcbc83bf38c9', 0, 'true', '0', 'member', ''),
(137, 'PaeZa8', '$sha1846GH7yH001WSC10$LnKNr5JGE478R9Vl$4d4775b8ea38a9660e0272d3e362f0b8', 0, 'true', '0', 'member', ''),
(138, 'Mr_PeeZ', '$sha1846GH7yH001WSC10$HqByTg0gsJRzgdn3$06fabfa70540e29d2184be421f18c04f', 0, 'true', '0', 'member', ''),
(139, 'NANKUNGTH', '$sha1846GH7yH001WSC10$J6sqHmxsaQHqYrqw$77337875c89e49c0e7284569f5431b8f', 0, 'true', '0', 'member', ''),
(140, 'ChampZaTaLong', '$sha1846GH7yH001WSC10$z6sCgDYlmBCwIW4d$93a7f186de0102c0f3f9e48b3c83d9c9', 0, 'true', '0', 'member', ''),
(141, 'PleumZABA', '$sha1846GH7yH001WSC10$ocwBAQzH4STruQUG$2999ae8f9de775a77a110123dd545df4', 0, 'true', '0', 'member', ''),
(142, 'parkpay', '$sha1846GH7yH001WSC10$k1sAfdoOBDf4J9Xk$6be07ea1c1e8561ae2b107cc9deaca47', 0, 'true', '0', 'member', ''),
(143, 'KATEXD', '$sha1846GH7yH001WSC10$PXXqgfWQFAWAxUPs$61b75e7e7888004abfc118ad7c32837b', 0, 'true', '0', 'member', ''),
(144, 'CjzDauw_', '$sha1846GH7yH001WSC10$J6sqHmxsaQHqYrqw$a80558e612689994d65d686b0d57dc71', 0, 'true', '0', 'member', ''),
(145, 'stangzazx', '$sha1846GH7yH001WSC10$PXXqgfWQFAWAxUPs$a4e26d2287544d64ef883123d861406c', 0, 'true', '0', 'member', ''),
(146, 'rama4popo', '$sha1846GH7yH001WSC10$YZEsufiuFUw8cTar$8944168a2897ea313673d1c87741ab38', 0, 'true', '0', 'member', ''),
(147, 'payback', '$sha1846GH7yH001WSC10$NgUvxyZhS94e2yLY$e30aa51936a998eee4351b35414099ab', 0, 'true', '0', 'member', ''),
(148, 'Chayangkoon', '$sha1846GH7yH001WSC10$E3qRoMtst8dgyOhd$31ca2230b5460d3d61db6a835e3c169f', 0, 'true', '0', 'member', ''),
(149, 'QlenCraft_YT', '$sha1846GH7yH001WSC10$sb1tcxF1IHyegWwM$8f61df0c66a6a15776678723dce95642', 0, 'true', '0', 'member', ''),
(150, 'Rillyx_', '$sha1846GH7yH001WSC10$frmYNozrDaEPqYS1$92876a336c849f0d8ffaaca503e21ba9', 0, 'true', '0', 'member', ''),
(151, 'Gameioz', '$sha1846GH7yH001WSC10$vkZl3CqCLQMfSTY2$0c1c334e08d53e1ca4e30cb5a26bb70d', 0, 'true', '0', 'member', ''),
(152, 'AdminPack', '$sha1846GH7yH001WSC10$YZEsufiuFUw8cTar$a749dcaa6928c47cff90d5ba6cf39921', 0, 'true', '0', 'member', ''),
(153, 'gogo14785', '$sha1846GH7yH001WSC10$HqByTg0gsJRzgdn3$7e3ebe431bb29c0019ff3b80ec664ab7', 0, 'true', '0', 'member', ''),
(154, 'tomzang001', '$sha1846GH7yH001WSC10$O9MMnlN7CNMdiBJ2$0efedc2d64385cd64c75b3a802ab27f7', 0, 'true', '0', 'member', ''),
(155, 'VisherRyz', '$sha1846GH7yH001WSC10$E3qRoMtst8dgyOhd$c146cd216706367ca0ea9cb99e01c11e', 0, 'true', '0', 'member', ''),
(156, 'Bbb66672kk', '$sha1846GH7yH001WSC10$tL8x61u54Br4n0r4$313488e5f21c94b7f327a9e1fe26d417', 0, 'true', '0', 'member', ''),
(157, 'BBB55', '$sha1846GH7yH001WSC10$LfLiuJf1IA3ogkEm$721715e5b79372248c007ca893dd8902', 0, 'true', '0', 'member', ''),
(158, 'BBB56', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$f8f3903bb0d79f54e94b2d27f6f4e022', 0, 'true', '0', 'member', ''),
(159, 'Chote16750', '$sha1846GH7yH001WSC10$8tfkKVXGAor5ekr9$0bed54fd52a896a39309ae0863fedb92', 0, 'true', '0', 'member', ''),
(160, 'FireBlackDevilZ', '$sha1846GH7yH001WSC10$zNzKZhG00k9LPqzg$a3d0d9ebf780c5a89ff2a9416db534e2', 0, 'true', '0', 'member', ''),
(161, 'aumzkungz', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$5821db84f3d2fa37af623dce7f1080ed', 0, 'true', '0', 'member', ''),
(162, 'xKiwx', '$sha1846GH7yH001WSC10$ZOdufgfNuRkqBec3$c8668b4c757fb8413e36f0f172d78f04', 0, 'true', '0', 'member', ''),
(163, 'ninjalvup', '$sha1846GH7yH001WSC10$YEAOK3zNgUBOUl9O$190d21858a90d369f552be59f15fd3b5', 0, 'true', '0', 'member', ''),
(164, 'chadedas', '$sha1846GH7yH001WSC10$E3qRoMtst8dgyOhd$4c8e85ef87c707eab25418dbd02d7bdc', 0, 'true', '0', 'member', ''),
(165, 'kittin', '$sha1846GH7yH001WSC10$J6sqHmxsaQHqYrqw$7d9f6532e552119f04e06d1c65199066', 0, 'true', '0', 'member', ''),
(166, 'Nesjaa', '$sha1846GH7yH001WSC10$z6sCgDYlmBCwIW4d$726a4a234e977349144a8b6a2158940e', 0, 'true', '0', 'member', ''),
(167, 'G7777', '$sha1846GH7yH001WSC10$NgUvxyZhS94e2yLY$79d1d33476d23fcf82b85a17dba3a7bb', 0, 'true', '0', 'member', ''),
(168, 'zoomzoomlove109', '$sha1846GH7yH001WSC10$uwSVaSd6mWaiuBsM$68db1be7dafdfc9e638f68a823bf347c', 0, 'true', '0', 'member', ''),
(169, 'TOKOYAMI', '$sha1846GH7yH001WSC10$9SJi7glRkqtIgE5c$77650a0f5e4c3e57120df295f1ac45d1', 0, 'true', '0', 'member', ''),
(170, 'fuseoon', '$sha1846GH7yH001WSC10$Cue0J0PYNPCC9AYp$ac7b14953089e7883a0546dfa476a587', 0, 'true', '0', 'member', ''),
(171, 'KuyBig', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$ce061b8da584008cb9ea896cd07425f3', 0, 'true', '0', 'member', ''),
(172, 'LKung', '$sha1846GH7yH001WSC10$SQpAQnK1WfbNLFn8$f1ad4c2e2b683d063e5e3a101dc902ea', 0, 'true', '0', 'member', ''),
(173, 'ittipun', '$sha1846GH7yH001WSC10$ocwBAQzH4STruQUG$2eceee5ae42b235f5adb8436c065e5b6', 0, 'true', '0', 'member', ''),
(174, 'fewhumnoi', '$sha1846GH7yH001WSC10$NgUvxyZhS94e2yLY$9bde3f8da6e4f5b22edf17bf68880864', 0, 'true', '0', 'member', ''),
(175, 'ejmjung113', '$sha1846GH7yH001WSC10$zv2hZ3cyHWrNvdNC$142a7e86f14a3da5fc25d4d59a6ed805', 0, 'true', '0', 'member', ''),
(176, 'eimjung153', '$sha1846GH7yH001WSC10$ghPcG6s6zAf4B6hh$5a493031351e140adfa417554e83f86c', 0, 'true', '0', 'member', ''),
(177, 'Natchnon', '$sha1846GH7yH001WSC10$e5e1i2zwx400pZIo$002338350b5c9ace6a6de9b09a1437db', 0, 'true', '0', 'member', ''),
(178, 'natchanon', '$sha1846GH7yH001WSC10$YEAOK3zNgUBOUl9O$938446470abb67e1438711d88e89ef03', 0, 'true', '0', 'member', ''),
(179, 'Nenenions', '$sha1846GH7yH001WSC10$vkZl3CqCLQMfSTY2$ddcd4a957a0be2c704ca7e4e78d58a13', 0, 'true', '0', 'member', ''),
(180, 'test123', '$sha1846GH7yH001WSC10$d7liIYpuXG76rsxn$d5e85ce9fe5d6c35da041fadb5fdea1b', 0, 'true', '0', 'member', ''),
(181, 'roekdee', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$1d7d41e130cf96009fd89b1359e89fa8', 0, 'true', '0', 'member', ''),
(182, 'Xrqlistz', '$sha1846GH7yH001WSC10$6K3KL3gJc5ZXyAfb$1954e106556ab13ab1fa90c76df5f376', 0, 'true', '0', 'member', ''),
(183, 'NavyKMI', '$sha1846GH7yH001WSC10$np6TqmXHddhgzyO1$08397940259daba5f704f1c351ad1db3', 0, 'true', '0', 'member', ''),
(184, 'Shalot', '$sha1846GH7yH001WSC10$JuVNDOsKdtM76Cns$6096c93f06b9ea46df06967fc403a4bb', 0, 'true', '0', 'member', ''),
(185, 'OhmKunG', '$sha1846GH7yH001WSC10$LnKNr5JGE478R9Vl$5028d7175f8c60103a3eaf636cddc813', 0, 'true', '0', 'member', ''),
(186, 'suwijak', '$sha1846GH7yH001WSC10$JuVNDOsKdtM76Cns$167b32359df7e4eb6006c5e555c90a22', 0, 'true', '0', 'member', ''),
(187, 'REDzSann', '$sha1846GH7yH001WSC10$xEs6YKU2lKcGtbM6$025847bceb96fddf803a40124bfb8d28', 0, 'true', '0', 'member', ''),
(188, 'MrMost', '$sha1846GH7yH001WSC10$z1ta48ZMcR3rNxzp$b75d6e0a4f86ce47aa339c417255c779', 5, 'true', '0', 'member', ''),
(189, 'MongkornIT', '$sha1846GH7yH001WSC10$NgUvxyZhS94e2yLY$ce6681f62be0f31fd75425851e476cfb', 0, 'true', '0', 'member', ''),
(190, 'jomads123', '$sha1846GH7yH001WSC10$sb1tcxF1IHyegWwM$cc9de9eccccf0950f0afaaea8cf760f5', 0, 'true', '0', 'member', ''),
(191, 'test001', '$sha1846GH7yH001WSC10$WlIh3Wg19adTGnuz$f0f517bbda53e57e8ddd4cacde5d61af', 0, 'true', '0', 'member', ''),
(192, 'tester01', '$sha1846GH7yH001WSC10$vkZl3CqCLQMfSTY2$d880048fd2c82b27174fd736dcbbb356', 0, 'true', '0', 'member', ''),
(193, 'ggthza', '$sha1846GH7yH001WSC10$6y2hLv8AURzw91u9$31d99a81648b9e44d5aa3675fde9b694', 0, 'true', '0', 'member', ''),
(194, 'testplayer', '$sha1846GH7yH001WSC10$E1CsTi0dptceqclZ$aec27d226938918a0a1adca199f7448b', 0, 'true', '0', 'member', ''),
(195, 'Jamey_KunG', '$sha1846GH7yH001WSC10$zv2hZ3cyHWrNvdNC$e4d892eefd8e0c97e7ec4fdbbe60313e', 0, 'true', '0', 'member', ''),
(196, 'know4zer', '$sha1846GH7yH001WSC10$7HQFHErsI4BiIehY$3699798ec48710c030027b9425207d4b', 0, 'true', '0', 'member', ''),
(197, 'KodomoX', '$sha1846GH7yH001WSC10$6K3KL3gJc5ZXyAfb$e56b816d48a7ecfa0124ebcfb15c9394', 0, 'true', '0', 'member', ''),
(198, 'oomsin', '$sha1846GH7yH001WSC10$s3OP0xuoepB2Y24G$e119a13273ca88b7761bc8efcba8f785', 0, 'true', '0', 'member', ''),
(199, 'zxKungz', '$sha1846GH7yH001WSC10$mhygoVsNvbqr7OSV$ee22eca9c3f616fab46f338478254640', 0, 'true', '0', 'member', ''),
(200, 'GGEZ1', '$sha1846GH7yH001WSC10$YEAOK3zNgUBOUl9O$2fba6755bc55fe93d81676cf789ceb2b', 0, 'true', '0', 'member', ''),
(201, 'KuyAM', '$sha1846GH7yH001WSC10$vkZl3CqCLQMfSTY2$5e9019d4b476aa58abaff2b97788f0eb', 0, 'true', '0', 'member', ''),
(202, '055544512', '$sha1846GH7yH001WSC10$PXXqgfWQFAWAxUPs$f165694df4c3b4844ba2de633ed2f932', 0, 'true', '0', 'member', ''),
(203, 'Tyhtpro', '$sha1846GH7yH001WSC10$ocwBAQzH4STruQUG$4f06db2f5118507759abf92ed03a1a90', 0, 'true', '0', 'member', ''),
(204, 'BIGKUB_TH', '$sha1846GH7yH001WSC10$ysnaH1K5CiLzHlnH$ffbea43472e23431081c214b98e97c3e', 0, 'true', '0', 'member', ''),
(206, 'Icon101', '$sha1846GH7yH001WSC10$YZEsufiuFUw8cTar$28d4bd602deced9d2116905d053008a1', 0, 'true', '0', 'member', 'user@gmail.com'),
(207, 'new4475', '$sha1846GH7yH001WSC10$J6sqHmxsaQHqYrqw$d9b5dc9e6fedd10205cbd3a486d03688', 0, 'true', '0', 'member', 'user@gmail.com'),
(208, 'CPRz_KungTH', '$sha1846GH7yH001WSC10$O9MMnlN7CNMdiBJ2$99f9f6b21ea1872ea7104fe45b77beba', 0, 'true', '0', 'member', 'user@gmail.com'),
(209, 'Gouik12', '$sha1846GH7yH001WSC10$s3OP0xuoepB2Y24G$ab59f701f090b11faf2649778705ecb2', 0, 'true', '0', 'member', 'user@gmail.com'),
(210, 'anurak12', '$sha1846GH7yH001WSC10$ZOdufgfNuRkqBec3$02ea734eead390d3855e518dd60179db', 0, 'true', '0', 'member', 'user@gmail.com'),
(211, 'thirachotza', '$sha1846GH7yH001WSC10$SCDkEz6gcVgUgpL1$6889015af47fa3676540197f2a599417', 0, 'true', '0', 'member', 'user@gmail.com'),
(212, 'eimjung113', '$sha1846GH7yH001WSC10$WlIh3Wg19adTGnuz$fe9b5a8b36a383ca4e9fbe0a1d56b745', 0, 'true', '0', 'member', 'user@gmail.com'),
(213, 'test123456', '$sha1846GH7yH001WSC10$CGcmapP58m9dlgLs$64d43171be8df64d00190ce37d7c5bb2', 0, 'true', '0', 'member', 'user@gmail.com'),
(214, 'Little_boy', '$sha1846GH7yH001WSC10$SVWfekhSUIXbU26P$5dc7bf6d55c65ed7bdbfb5a8981bd88d', 0, 'true', '0', 'member', 'user@gmail.com'),
(215, 'JARNYOX2', '$sha1846GH7yH001WSC10$z6sCgDYlmBCwIW4d$23ac94c2410437078981e98a908228dd', 0, 'true', '0', 'member', 'user@gmail.com'),
(216, 'zefour0', '$sha1846GH7yH001WSC10$E1CsTi0dptceqclZ$1cb653551ce16c1b3e850b2459489aac', 0, 'true', '0', 'member', 'user@gmail.com'),
(217, 'JOSEPH', '$sha1846GH7yH001WSC10$4m40Oy3ZgNqNtc7N$6621dc623f9ad1b5b78e47110620a9d3', 0, 'true', '0', 'admin', 'user@gmail.com'),
(218, 'reloadPlayer', '$sha1846GH7yH001WSC10$ZOdufgfNuRkqBec3$612bb77905c8be48b333d0006a94141e', 0, 'true', '0', 'member', 'user@gmail.com'),
(219, 'JustinJira', '$sha1846GH7yH001WSC10$8tfkKVXGAor5ekr9$e51f103c81d7bfd6753795f0c6b7209b', 0, 'true', '0', 'member', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `info` varchar(10000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `date`, `info`) VALUES
(6, '2020-09-19', 'ทางเราบริการช่วยเหลือลูกค้าอย่างเต็มที่ ยินดีให้คำปรึกษาทุกปัญหา ดูแลเอาใจใส่ลูกค้าทุกท่าน'),
(7, '2020-09-19', 'GShops เว็บไชต์จำหน่ายสคริป'),
(8, '2020-09-19', 'เริ่มต้นเพียง 150 บาท/ถาวร #คุ้มสุดคุ้ม!');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(1000) NOT NULL,
  `timeout` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'ถาวร',
  `version` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `lore` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '<li> </li>',
  `reduce` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `images`, `timeout`, `version`, `link`, `description`, `lore`, `reduce`) VALUES
(6, 'WebShop v.1', 150, 'https://cdn.discordapp.com/attachments/436865105188225025/747444120829821078/unknown.png', 'ถาวร', '', 'webshop.rar', 'ระบบเติมเงิน True Money', '<li> ระบบเติมเงิน True Money</li>\r\n<li> BungeeCord รองรับระบบหลายเซิฟเวอร์</li>\r\n<li> AuthMe รองรับทุกเวอชั่นของปลั๊กอิน</li>\r\n<li> ระบบซื้ออัตโนมัติ</li>\r\n<li> รองรับทุกเวอชั่นของเซิฟเวอร์</li>\r\n<li> ติดตั้งง่าย</li>\r\n<li>ใครลงไม่เป็น เรามีบริการติดตั้งให้ฟรีนะครับ</li>\r\n<li>รองรับ xampp ver.32-5.6.37-0-VC11</li>', ''),
(15, 'ระบบ BedWars', 300, 'https://i.ytimg.com/vi/2-w0H_fI7Fk/maxresdefault.jpg', 'ถาวร', '', 'BedWars.rar', 'เซิฟ Mc-BigoneCraft.net', '<li> เซิฟ Mc-BigoneCraft.net</li>\r\n<li> /shopได้</li>\r\n<li> มี ระบบยศต่างๆๆ</li>\r\n<li> มี MysteryBox</li>\r\n<li> แมพ 19+ เซ็ตหมดแล้ว</li>\r\n', ''),
(16, 'ระบบ KitBattle', 200, 'https://proxy.spigotmc.org/8348698fac4ee6d17765d797df862e28741a239a?url=http%3A%2F%2Fi.imgur.com%2F5N3NqJj.png', 'ถาวร', '', 'KitBittle.rar', 'เซิฟ Mc-BigoneCraft.net', '<li> เซิฟ Mc-BigoneCraft.net</li>', ''),
(17, 'ระบบ Skywars', 300, 'https://vignette.wikia.nocookie.net/mineplex/images/b/b6/Skywarslogo.png/revision/latest?cb=20190727041147', 'ถาวร', '', 'Skywars.rar', 'เซิฟ Mc-BigoneCraft.net', '<li> ระบบ Skywars เซิฟ Mc-BigoneCraft.net</li>', ''),
(22, 'Web ดูหนังออนไลน์', 200, 'https://cdn.discordapp.com/attachments/436865105188225025/803116759195320390/unknown.png', 'ถาวร', '', 'movie.rar', 'ดูหนังออนไลน์', '<li> ดูหนังออนไลน์</li>', '');

-- --------------------------------------------------------

--
-- Table structure for table `redeem`
--

CREATE TABLE `redeem` (
  `id` int(11) NOT NULL,
  `code` varchar(30) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `status` enum('Redeem','UnRedeem') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UnRedeem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `redeem`
--

INSERT INTO `redeem` (`id`, `code`, `price`, `status`) VALUES
(44, 'b9uvcnlm6d', 120, 'Redeem'),
(45, 'lku98zspd7', 100, 'Redeem'),
(46, 'w478jtaxy2', 500, 'Redeem'),
(47, 'wt3gxcnzbh', 20, 'Redeem'),
(48, 'xikyovl9su', 50, 'Redeem'),
(49, 'tj7e6frgxh', 50, 'Redeem'),
(50, '7opfcib3hv', 100, 'Redeem'),
(51, 'm28q9c3kzr', 100, 'Redeem'),
(52, 'tr3ueby549', 2301021, 'Redeem'),
(53, 'dtc68uv4by', 20, 'Redeem'),
(54, '9ort2fn8jq', 50, 'Redeem'),
(55, '5b7wzovgcd', 20, 'Redeem'),
(56, '6byurpvln2', 200, 'Redeem'),
(57, '93vh57284f', 150, 'Redeem');

-- --------------------------------------------------------

--
-- Table structure for table `shopid`
--

CREATE TABLE `shopid` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lore` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dist` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(69, '50005643248539', '500', 'success', '09-10-2020 13:12', 'oonuchaoo', 'เติมเงินด้วย TrueWallet'),
(93, '3fPpbOyk1M', '50', 'success', '10-10-2020 17:12', 'ToonCode', 'เติมเงินด้วยคูปอง'),
(99, '3fPgbOyk1E', '10', 'success', '11-10-2020 21:35', 'Lol1iKunGz', 'เติมเงินด้วยคูปอง'),
(102, '50005702859801', '120', 'success', '15-10-2020 17:45', 'BlackBox', 'เติมเงินด้วย TrueWallet'),
(107, '66666666666666', '5555', 'failed', '21-10-2020 1:08:01', 'Gshshdh', 'เติมเงินด้วย TrueWallet'),
(111, '50005856255393', '120', 'success', '30-10-2020 23:45:36', 'kiwary', 'เติมเงินด้วย TrueWallet'),
(129, 'zhxnOUr24I', '100', 'success', '13-11-2020 12:04', 'KNGSTUDIO', 'เติมเงินด้วยคูปอง'),
(130, 's7awteynuv', '100', 'success', '13-11-2020 12:04', 'KNGSTUDIO', 'เติมเงินด้วยคูปอง'),
(132, 'u65cvra8hy', '20', 'success', '13-11-2020 12:05', 'KNGSTUDIO', 'เติมเงินด้วยคูปอง'),
(134, 'ไม่มี Ref', '150', 'failed', '17-11-2020 17:12', 'FNV_ChannelZ', 'เติมเงินด้วย bank'),
(135, 'ไม่มี Ref', '150', 'success', '17-11-2020 17:12', 'FNV_ChannelZ', 'เติมเงินด้วย bank'),
(136, '52222222222222', '222', 'failed', '21-11-2020 19:11:13', 'FNV_ChannelZ', 'เติมเงินด้วย TrueWallet'),
(138, 'b9uvcnlm6d', '120', 'success', '27-11-2020 19:05', 'JKD001', 'เติมเงินด้วยคูปอง'),
(139, 'lku98zspd7', '100', 'success', '27-11-2020 19:05', 'JKD001', 'เติมเงินด้วยคูปอง'),
(140, '44564253412345', '1000', 'failed', '27-11-2020 19:08:34', 'JKD001', 'เติมเงินด้วย TrueWallet'),
(141, 'w478jtaxy2', '500', 'success', '29-11-2020 18:46', 'gurumrahak', 'เติมเงินด้วยคูปอง'),
(142, '50006261537029', '75', 'success', '09-12-2020 12:24:52', 'Mr_PeeZ', 'เติมเงินด้วย TrueWallet'),
(143, 'ไม่มี Ref', '75', 'success', '10-12-2020 23:26', 'CjzDauw_', 'เติมเงินด้วย bank'),
(144, '53737374847474', '150000', 'failed', '16-12-2020 7:23:09', 'LKung', 'เติมเงินด้วย TrueWallet'),
(145, '50006343015513', '75', 'success', '16-12-2020 11:47:47', 'natchanon', 'เติมเงินด้วย TrueWallet'),
(147, 'ไม่มี Ref', '2', 'failed', '17-12-2020 15:16', 'bigbaba55yo', 'เติมเงินด้วย bank'),
(148, '55555555555555', '50', 'failed', '20-12-2020 12:59:44', 'MrMost', 'เติมเงินด้วย TrueWallet'),
(149, '50004434138564', '50', 'failed', '24-12-2020 20:19:45', 'Lol1iKunGz', 'เติมเงินด้วย TrueWallet'),
(150, '50004325105533', '40', 'failed', '24-12-2020 20:19:55', 'Lol1iKunGz', 'เติมเงินด้วย TrueWallet'),
(158, '9ort2fn8jq', '50', 'success', '11-01-2021 08:34', 'bigbaba55yo', 'เติมเงินด้วยคูปอง'),
(159, '5b7wzovgcd', '20', 'success', '11-01-2021 21:02', 'bigbaba55yo', 'เติมเงินด้วยคูปอง'),
(160, 'ไม่มี Ref', '20', 'success', '14-01-2021 20:30', 'bigbaba55yo', 'เติมเงินด้วย bank'),
(161, '50095410984198', '100', 'failed', '21-01-2021 3:38:50', 'test123456', 'เติมเงินด้วย TrueWallet'),
(162, '6byurpvln2', '200', 'success', '25-01-2021 13:24', 'JOSEPH', 'เติมเงินด้วยคูปอง'),
(163, '93vh57284f', '150', 'success', '25-01-2021 16:40', 'JOSEPH', 'เติมเงินด้วยคูปอง'),
(164, '50006817668079', '150', 'success', '28-01-2021 18:37:59', 'Little_boy', 'เติมเงินด้วย TrueWallet');

-- --------------------------------------------------------

--
-- Table structure for table `upgate`
--

CREATE TABLE `upgate` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `active` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'bigbaba55yo@gmail.com', '14155585g', '063-727-7204', 'เอกชัย ไพรินทร์');

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
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_shop`
--
ALTER TABLE `log_shop`
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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem`
--
ALTER TABLE `redeem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopid`
--
ALTER TABLE `shopid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgate`
--
ALTER TABLE `upgate`
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
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `log_shop`
--
ALTER TABLE `log_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `redeem`
--
ALTER TABLE `redeem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `shopid`
--
ALTER TABLE `shopid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `upgate`
--
ALTER TABLE `upgate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
