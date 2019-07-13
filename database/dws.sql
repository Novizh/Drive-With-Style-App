-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 07:01 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dws`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Body Kits', 'body-kits'),
(6, 'Rims', 'rims'),
(7, 'Calipers', 'calipers'),
(8, 'Front Bumper', 'front-bumper'),
(10, 'Rear Bumper', 'rear-bumper'),
(11, 'Bucket Seats', 'bucket-seats');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 32, 1),
(22, 12, 32, 1),
(23, 12, 61, 1),
(24, 13, 96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(32, 5, 'Aimgain  GT86 Widebody', '<p>There are 2 typs for TOYOTA 86 &ldquo;LF-SPORT&rdquo; of AIMGAIN. Its Wide fender type or Normal fender type.<br />\r\nWide fender type of 86 give a great impact all over the world.Its possible to feel the real thrill of the custom scene authentic.</p>\r\n', 'aimgain-gt86-widebody', 4585, 'aimgain-widebody-toyota-gt86_1562402183.jpg', '2019-07-09', 2),
(33, 5, 'BenSopra R35 Kit', '<p>All BenSopra parts are genuine items and ship directly to you from our distributors in Japan.</p>\r\n', 'bensopra-r35-kit', 11660, 'bensopra-r35-body-kit.jpg', '0000-00-00', 0),
(34, 5, 'C-West Silvia S15 Aero Kit', '<p><em>C-West</em>&nbsp;uses the enormous amount of data extracted from the racing field to produce its aero-parts.&nbsp;</p>\r\n', 'c-west-silvia-s15-aero-kit', 3080, 'c-west-silvia-s15-body-kit.jpg', '2019-07-06', 1),
(35, 5, 'DTM Fiberwerks E46 Body Kit', '<p>If there is one thing more rewarding than exploring the potential of your BMW, its discovering your own.Whether you have a show car, or your drifting your car sideways on the track, or even racing at 120mph on a road course, DTMFiberwerkz.com has it all for your BMW...</p>\r\n', 'dtm-fiberwerks-e46-body-kit', 4480, 'dtm-fiberwerks-e46-body-kit.jpg', '0000-00-00', 0),
(36, 5, 'Garage MAK S15 Aero', '<p>Revolution produced by&nbsp;<em>garage Mak</em>&nbsp;introduce a wide range of Aero parts such as&nbsp;<em>body</em>&nbsp;kits, suspension and rear wings.</p>\r\n', 'garage-mak-s15-aero', 2355, 'garage-mak-s15-body-kit.jpg', '0000-00-00', 0),
(37, 5, 'GTR E46 ALMS Kit', '<p>A special body kit resembling its ALMS racing variant.</p>\r\n', 'gtr-e46-alms-kit', 4480, 'gtr-e46-body-kit.jpg', '0000-00-00', 0),
(38, 5, 'Kakimoto NSX Body Kit', '<p>Big power and equally big aero are the two main attributes that any serious time attack car will require these days. If you want to go fast you need the power and if you have the power you need to be able to unleash it efficiently, so you can pack on the speed and hold as much of it through corners.</p>\r\n', 'kakimoto-nsx-body-kit', 6350, 'kakimoto-nsx-body-kit.jpg', '0000-00-00', 0),
(39, 5, 'KM4SH FRS Body Kit', '<p>Maximum attack for maximum joy of machine. We want to make sure that the KM4SH look is worthy of your car, your time and your hard-earned money.&nbsp;This CAD-designed, high quality kit is styled to be aggressive yet ooze refinement and (relative) restraint.</p>\r\n', 'km4sh-frs-body-kit', 3210, 'km4sh-frs-body-kit.jpg', '0000-00-00', 0),
(40, 5, 'KM4SH BRZ Body Kit', '<p>Maximum attack for maximum joy of machine. We want to make sure that the KM4SH look is worthy of your car, your time and your hard-earned money.&nbsp;This CAD-designed, high quality kit is styled to be aggressive yet ooze refinement and (relative) restraint.</p>\r\n', 'km4sh-brz-body-kit', 3210, 'km4sh-brz-body-kit.jpg', '0000-00-00', 0),
(42, 5, 'Liberty Walk Aventador Body Kit', '<p>A name that transcends multiple continents, and blurs its own legendary heritage into the veins of the world&rsquo;s most elite supercars and sports cars of past and present.&nbsp;Japanese street fighters would build cars with wide body square fenders, transplanted headlights and no bumpers as if to say, &ldquo;Don&rsquo;t ignore me. I am dead serious.&rdquo; It was all aggressive. It was all colorful. And nothing had to make any sense. The crazier the better. The bigger the better. The louder the better. This culture is loved by some, yet hated by others. Welcome to JDM, circa 1990.</p>\r\n', 'liberty-walk-aventador-body-kit', 14385, 'liberty-walk-aventador-body-kit.jpeg', '0000-00-00', 0),
(43, 5, 'Liberty Walk Murcielago Body Kit', '<p>A name that transcends multiple continents, and blurs its own legendary heritage into the veins of the world&rsquo;s most elite supercars and sports cars of past and present. Japanese street fighters would build cars with wide body square fenders, transplanted headlights and no bumpers as if to say, &ldquo;Don&rsquo;t ignore me. I am dead serious.&rdquo; It was all aggressive. It was all colorful. And nothing had to make any sense. The crazier the better. The bigger the better. The louder the better. This culture is loved by some, yet hated by others. Welcome to JDM, circa 1990.</p>\r\n', 'liberty-walk-murcielago-body-kit', 16585, 'liberty-walk-murcielago-body-kit.jpeg', '0000-00-00', 0),
(44, 5, 'Liberty Walk R35 Body Kit', '<p>A name that transcends multiple continents, and blurs its own legendary heritage into the veins of the world&rsquo;s most elite supercars and sports cars of past and present. Japanese street fighters would build cars with wide body square fenders, transplanted headlights and no bumpers as if to say, &ldquo;Don&rsquo;t ignore me. I am dead serious.&rdquo; It was all aggressive. It was all colorful. And nothing had to make any sense. The crazier the better. The bigger the better. The louder the better. This culture is loved by some, yet hated by others. Welcome to JDM, circa 1990.</p>\r\n', 'liberty-walk-r35-body-kit', 9050, 'liberty-walk-r35-body-kit.jpeg', '0000-00-00', 0),
(45, 5, 'Liberty Walk S30 Body Kit', '<p>A name that transcends multiple continents, and blurs its own legendary heritage into the veins of the world&rsquo;s most elite supercars and sports cars of past and present. Japanese street fighters would build cars with wide body square fenders, transplanted headlights and no bumpers as if to say, &ldquo;Don&rsquo;t ignore me. I am dead serious.&rdquo; It was all aggressive. It was all colorful. And nothing had to make any sense. The crazier the better. The bigger the better. The louder the better. This culture is loved by some, yet hated by others. Welcome to JDM, circa 1990.</p>\r\n', 'liberty-walk-s30-body-kit', 1795, 'liberty-walk-s30.jpg', '0000-00-00', 0),
(46, 5, 'LOMA Z06 Body Kit', '<h3>Wide Body kits and single spoilers. Everything your Corvette needs.</h3>\r\n', 'loma-z06-body-kit', 6340, 'loma-z06-body-kit.png', '0000-00-00', 0),
(47, 5, 'M2 Motoring E46 Body Kit', '<p>BMW&nbsp;<em>E46</em>&nbsp;Facelift&nbsp;<em>M2</em>&nbsp;Front&nbsp;<em>Bumper</em>&nbsp;Extension. The&nbsp;<em>body kit</em>&nbsp;widens the&nbsp;<em>car</em>&nbsp;with approximately 4 cm on each side.</p>\r\n', 'm2-motoring-e46-body-kit', 4285, 'm2-motoring-e46-body-kit.jpg', '0000-00-00', 0),
(48, 5, 'Rocket Bunny 180SX Body Kit', '<p>Kei Miura&rsquo;s design have gained global acclaim for the trend-setting style that drives automotive enthusiast, to demand authentic Rocket Bunny / Pandem aero kits. However, it&#39;s the top quality Japanese-made versions, which GReddy exclusively imports, which has gained the devotion and admiration of racers, car show winners and their installers. The main reason is, the top quality construction and fitment that only precision manufacturing can provide. Japanese-made Rocket Bunny / Pandem kits only use the highest quality FRP materials and proper curing times to prevent distortion.</p>\r\n', 'rocket-bunny-180sx-body-kit', 2450, 'rocket-bunny-180sx.jpg', '0000-00-00', 0),
(49, 5, 'Rocket Bunny BRZ Body Kit', '<p>Kei Miura&rsquo;s design have gained global acclaim for the trend-setting style that drives automotive enthusiast, to demand authentic Rocket Bunny / Pandem aero kits. However, it&#39;s the top quality Japanese-made versions, which GReddy exclusively imports, which has gained the devotion and admiration of racers, car show winners and their installers. The main reason is, the top quality construction and fitment that only precision manufacturing can provide. Japanese-made Rocket Bunny / Pandem kits only use the highest quality FRP materials and proper curing times to prevent distortion.</p>\r\n', 'rocket-bunny-brz-body-kit', 1525, 'rocket-bunny-brz.jpg', '0000-00-00', 0),
(50, 5, 'Rocket Bunny S15 Body Kit', '<p>Kei Miura&rsquo;s design have gained global acclaim for the trend-setting style that drives automotive enthusiast, to demand authentic Rocket Bunny / Pandem aero kits. However, it&#39;s the top quality Japanese-made versions, which GReddy exclusively imports, which has gained the devotion and admiration of racers, car show winners and their installers. The main reason is, the top quality construction and fitment that only precision manufacturing can provide. Japanese-made Rocket Bunny / Pandem kits only use the highest quality FRP materials and proper curing times to prevent distortion.</p>\r\n', 'rocket-bunny-s15-body-kit', 1470, 'rocket-bunny-s15-body-kit.jpg', '0000-00-00', 0),
(51, 5, 'RTR Spec 5 Mustang GT Kit', '<p>Give your personal 2015-2017 Mustang the same aggressive styling of a track car with a RTR Spec 5 Wide Body Kit. This Body Kit was designed, developed and tested on Vaughn Gittin Jr&rsquo;s Mustang RTR Spec 5D Formula Drift competition car. This Spec 5 Wide Body Kit will widen your front fenders by 50mm and your rear fenders by 75mm allowing you to run much wider wheels and tires on all four corners of your S550 Mustang.</p>\r\n', 'rtr-spec-5-mustang-gt-kit', 8595, 'rtr-spec-5-mustang-gt-kit.jpg', '0000-00-00', 0),
(52, 5, 'Rocket Bunny RX-7 Kit', '<p>Kei Miura&rsquo;s design have gained global acclaim for the trend-setting style that drives automotive enthusiast, to demand authentic Rocket Bunny / Pandem aero kits. However, it&#39;s the top quality Japanese-made versions, which GReddy exclusively imports, which has gained the devotion and admiration of racers, car show winners and their installers. The main reason is, the top quality construction and fitment that only precision manufacturing can provide. Japanese-made Rocket Bunny / Pandem kits only use the highest quality FRP materials and proper curing times to prevent distortion.</p>\r\n', 'rocket-bunny-rx-7-kit', 3840, 'rocket-bunny-rx-7-kit.png', '2019-07-06', 1),
(53, 5, 'Rauh Welt Belgriff 933 Widebody', '<p>RWB/RAUH-Welt BEGRIFF is a Porsche tuner located in Japan.<br />\r\nRWB has combined Japanese and Euro tuning elements,<br />\r\ncreating the distinct RWB style for Porsche chassis.<br />\r\nStarting off as a small countryside body-shop in Chiba-Ken,<br />\r\nRAUH-Welt 911&rsquo;s are now a common sight on both the streets and racing circuits of Japan.<br />\r\nWe create only one RWB Porsche for each customer.</p>\r\n', 'rauh-welt-belgriff-933-widebody', 4610, 'rauh-welt-belgriff-933-widebody.jpg', '0000-00-00', 0),
(54, 5, 'Sunline Racing R34 Body Kit', '<p>Sun Line Racing, based in Okayama, Japan have developed a large range of performance parts for vehicles such as the Suzuki Swift. Known worldwide for manufacturing parts at the forefront of performance and quality, Sunline Racing continues to impress.</p>\r\n', 'sunline-racing-r34-body-kit', 6030, 'sunline-racing-r34-body-kit.jpg', '0000-00-00', 0),
(55, 5, 'Varis Ridox Supra Kit', '<p>Ridox in conjunction with Varis Japan offer a &nbsp;complete Body kit for the Toyota Supra JZA80.</p>\r\n', 'varis-ridox-supra-kit', 1930, 'varis-ridox-supra-kit.jpg', '2019-07-06', 1),
(56, 5, 'Vertex Edge S15 Body Kit', '<p>Unlike the VERTEX series kits from Car Make T&amp;E&nbsp;so far, the Edge kit adopts&nbsp;a unique design.&nbsp;Designed to flow with the lines of the car yet, make your car even more breath taking.</p>\r\n', 'vertex-edge-s15-body-kit', 3750, 'vertex-edge-s15-body-kit.jpg', '2019-07-06', 1),
(57, 7, 'Brembo Large Calipers', '<p><em>Brembo</em>&nbsp;is an acknowledged world leader and innovator in the field of automotive disc brake technology.</p>\r\n', 'brembo-large-calipers', 210, 'brembo-large-calipers.jpg', '0000-00-00', 0),
(58, 7, 'Endless Large Braking Kit', '<p><em>Endless</em>&nbsp;develop high performance brake pads, brake&nbsp;<em>calipers</em>, brake&nbsp;<em>rotors</em>/discs.</p>\r\n', 'endless-large-braking-kit', 220, 'endless-large-braking-kit.jpg', '0000-00-00', 0),
(59, 7, 'Stoptech Large Calipers', '<p><em>StopTech</em>, Centric&#39;s high performance and racing division, is a leading innovator of world-class brake components and systems for production-based racing cars and high performance vehicles on the street and track.</p>\r\n', 'stoptech-large-calipers', 230, 'stoptech-large-calipers.jpg', '2019-07-09', 8),
(60, 7, 'Wilwood Braking Set', '<p>Wilwood manufactures brakes for most popular muscle cars, street rods, after market suspension systems, and many current high performance vehicles. For many of these cars we have many options, for example Wilwood has disc brake conversion kits that will simply convert a completely stock vehicle to disc brakes, fit in stock appearing 14 inch wheels and requires no modification to the vehicle. We also have brakes that use huge 14 inch rotors and require use of an 18 inch or larger wheels. For this same vehicle we have brakes designed specifically for drag racing and road racing including kits that fit stock suspension or various aftermarket suspensions and aftermarket rears.</p>\r\n', 'wilwood-braking-set', 240, 'wilwood-braking-set.jpg', '0000-00-00', 0),
(61, 6, 'Cosmis MR7', '', 'cosmis-mr7', 1040, 'cosmis-mr7.gif', '2019-07-09', 1),
(62, 6, 'Cosmis S1', '', 'cosmis-s1', 1040, 'cosmis-s1.jpg', '0000-00-00', 0),
(63, 6, 'Cosmis VCPN5R', '', 'cosmis-vcpn5r', 1040, 'cosmis-vcpn5r.jpg', '0000-00-00', 0),
(64, 6, 'Fifteen52 Formula 2pc', '', 'fifteen52-formula-2pc', 840, 'fifteen52-formula-2pc.jpg', '0000-00-00', 0),
(65, 6, 'Fifteen52 Formula TR', '', 'fifteen52-formula-tr', 970, 'fifteen52-formula-tr.jpg', '0000-00-00', 0),
(66, 6, 'Fifteen52 Integrale SC', '', 'fifteen52-integrale-sc', 840, 'fifteen52-integrale-sc.jpg', '0000-00-00', 0),
(67, 6, 'HRE 501', '', 'hre-501', 1050, 'hre-501.jpg', '0000-00-00', 0),
(68, 6, 'HRE 505', '', 'hre-505', 1050, 'hre-505.jpg', '0000-00-00', 0),
(69, 6, 'RAYS 57D', '', 'rays-57d', 1050, 'rays-57d.jpg', '0000-00-00', 0),
(70, 6, 'RAYS 57Xtreme', '', 'rays-57xtreme', 1060, 'rays-57xtreme.jpg', '0000-00-00', 0),
(71, 6, 'RAYS CE28N', '', 'rays-ce28n', 1060, 'rays-ce28n.jpg', '0000-00-00', 0),
(72, 6, 'RAYS RE30 Club Sport II', '', 'rays-re30-club-sport-ii', 1060, 'rays-re30-club-sport-ii.jpg', '0000-00-00', 0),
(73, 6, 'RAYS TE37', '', 'rays-te37', 1070, 'rays-te37.jpg', '0000-00-00', 0),
(74, 6, 'RAYS TE37V', '', 'rays-te37v', 1070, 'rays-te37v.jpg', '0000-00-00', 0),
(75, 6, 'Rotiform BLQ Superconcave', '', 'rotiform-blq-superconcave', 520, 'rotiform-blq-superconcave.jpg', '0000-00-00', 0),
(76, 6, 'Rotiform Concave INDT', '', 'rotiform-concave-indt', 520, 'rotiform-concave-indt.jpg', '0000-00-00', 0),
(77, 6, 'Rotiform Forged LVS', '', 'rotiform-forged-lvs', 520, 'rotiform-forged-lvs.jpg', '0000-00-00', 0),
(78, 6, 'RTR Tech7', '', 'rtr-tech7', 1220, 'rtr-tech7.jpg', '0000-00-00', 0),
(79, 6, 'RTR Tech Mesh', '', 'rtr-tech-mesh', 1210, 'rtr-tech-mesh.jpg', '0000-00-00', 0),
(80, 6, 'SSR MS1', '', 'ssr-ms1', 1070, 'ssr-ms1.jpg', '2019-07-09', 1),
(81, 6, 'SSR MS3', '', 'ssr-ms3', 1070, 'ssr-ms3.jpg', '0000-00-00', 0),
(82, 6, 'SSR TF1', '', 'ssr-tf1', 1080, 'ssr-tf1.jpg', '0000-00-00', 0),
(83, 6, 'Vorsteiner VSM 310', '', 'vorsteiner-vsm-310', 560, 'vorsteiner-vsm-310.jpg', '2019-07-06', 1),
(84, 6, 'Vorsteiner VSM 351', '', 'vorsteiner-vsm-351', 900, 'vorsteiner-vsm-351.jpg', '0000-00-00', 0),
(85, 6, 'Vorsteiner VSR 165', '', 'vorsteiner-vsr-165', 570, 'vorsteiner-vsr-165.jpg', '0000-00-00', 0),
(86, 6, 'Vorsteiner VTM 350', '', 'vorsteiner-vtm-350', 890, 'vorsteiner-vtm-350.jpg', '2019-07-09', 2),
(87, 6, 'Vorsteiner VTM 351', '', 'vorsteiner-vtm-351', 900, 'vorsteiner-vtm-351.jpg', '0000-00-00', 0),
(88, 6, 'Watanabe Type A', '', 'watanabe-type', 860, 'watanabe-type.jpg', '0000-00-00', 0),
(89, 6, 'Watanabe Type R', '', 'watanabe-type-r', 860, 'watanabe-type-r.jpg', '0000-00-00', 0),
(90, 6, 'Weds SA60M', '', 'weds-sa60m', 1190, 'weds-sa60m.jpg', '0000-00-00', 0),
(91, 6, 'Work Emotion CR Kai', '', 'work-emotion-cr-kai', 870, 'work-emotion-cr-kai.jpg', '0000-00-00', 0),
(92, 6, 'Work Emotion DR 9', '', 'work-emotion-dr-9', 870, 'work-emotion-dr-9.jpg', '0000-00-00', 0),
(93, 6, 'Work Emotion XT 7', '', 'work-emotion-xt-7', 880, 'work-emotion-xt-7.jpg', '0000-00-00', 0),
(94, 6, 'Work Meister S1', '', 'work-meister-s1', 880, 'work-meister-s1.jpg', '0000-00-00', 0),
(95, 6, 'Work VS XX', '', 'work-vs-xx', 880, 'work-vs-xx.jpg', '0000-00-00', 0),
(96, 8, 'Advance NSX Front Bumper', '', 'advance-nsx-front-bumper', 1525, 'advance-nsx-front-bumper.jpg', '2019-07-09', 1),
(97, 8, 'Car Shop Glow RX-7 Front Bumper', '', 'car-shop-glow-rx-7-front-bumper', 1015, 'car-shop-glow-rx-7-front-bumper.jpg', '0000-00-00', 0),
(98, 8, 'CSL E64 Front Bumper', '', 'csl-e64-front-bumper', 275, 'csl-e64-front-bumper.jpg', '0000-00-00', 0),
(99, 8, 'C-West Silvia S15 Front Bumper', '', 'c-west-silvia-s15-front-bumper', 760, 'c-west-silvia-s15-front-bumper.jpg', '0000-00-00', 0),
(100, 8, 'RTR Spec 2 Mustang GT Front Bumper', '', 'rtr-spec-2-mustang-gt-front-bumper', 2010, 'rtr-spec-2-mustang-gt-front-bumper.jpg', '0000-00-00', 0),
(101, 8, 'Varis Evolution IX Front Bumper', '', 'varis-evolution-ix-front-bumper', 1250, 'varis-evolution-ix-front-bumper.jpg', '0000-00-00', 0),
(102, 10, 'C-West Silvia S15 Rear Bumper', '', 'c-west-silvia-s15-rear-bumper', 760, 'c-west-silvia-s15-rear-bumper.jpg', '0000-00-00', 0),
(103, 10, 'Varis Evolution IX Rear Bumper', '', 'varis-evolution-ix-rear-bumper', 1250, 'varis-evolution-ix-rear-bumper.jpg', '0000-00-00', 0),
(104, 11, 'Bride Bucket Seat', '<p>A sporty reclining sport seat with high ease of boarding/exiting which also features rigidity and high holdability rivaling a fixed bucket seat</p>\r\n', 'bride-bucket-seat', 525, 'bride-bucket-seat.jpg', '2019-07-06', 1),
(105, 11, 'Sparco Bucket Seat', '', 'sparco-bucket-seat', 530, 'sparco-bucket-seat.jpg', '0000-00-00', 0),
(106, 11, 'Recaro Bucket Seat', '', 'recaro-bucket-seat', 535, 'recaro-bucket-seat.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(11, 13, 'PAYID-LUR7WWA5V699376FF6814637', '2019-07-09'),
(12, 13, 'PAYID-LUSAUPY5RA462854N214453J', '2019-07-09'),
(13, 20, 'PAYID-LUSBZKQ82H49069SV011253N', '2019-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Satu', '', '', 'logo2.png', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'caturhanggoro@gmail.com', '$2y$10$orRG5ourDFwnZd1Nt3PGZePR2c5hilksBNsJho47BU4WO.GNo2JXy', 0, 'Catur', 'Hanggoro', '', '', '', 1, 'L48IbmMnBoGF', '', '2019-06-27'),
(14, 'parah@gmail.com', '$2y$10$i9eOCFPKjCsXCjt3Ne9tbemIApy.4wZJZpmH0eTjOkOdNc9dSxwmG', 0, 'Hanggoro', 'para', '', '', '', 0, '4vdAPEOHuCqX', '', '2019-07-02'),
(15, 'yoga@gmail.com', '$2y$10$AMj9Mk4q19YBVTMW6UZVd.onqhTntKza2DcnA9qx2HrjrBmNqUKzq', 0, 'Yoga', 'yog', '', '', '', 0, 'p6wAu2xl8rNK', '', '2019-07-03'),
(18, 'caturhanggoroooo@gmail.com', '$2y$10$CTuGUaAce/e87m5v4nxR6eYjUVZOrWYo4eJS1UaoRr3tA6.vxzXiS', 0, 'Catur', 'Hanggoro', '', '', '', 1, 'zvKVaySiNk1o', '', '2019-07-07'),
(19, 'novizhreload1@gmail.com', '$2y$10$CwGcbWD8Wl9k2gcS.AhrU.eWh6r/pHPDDpHEqaazFvB6XPCeF5FmK', 0, 'Naufal', 'Herdy', '', '', '', 0, 'vMkgacYxbeT9', '', '2019-07-09'),
(20, 'caturhanggorooooo@gmail.com', '$2y$10$BtFXlZU0WRu3Qk9j/gABJO4lX3iaHmm05HDvELgFHSqs.ZQ0KkuaW', 0, 'Catur', 'Hanggoro', '', '', '', 1, 'agxVi5wKr4cQ', '', '2019-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
