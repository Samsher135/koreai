-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 02:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koreai`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `Name`, `city`, `address`, `email`, `age`, `Phone`, `created_at`, `updated_at`) VALUES
(1, 'Big Joe Davis', 'Cluj-Napoca', ' Bulevardul 54', 'big_joe@gmail.com', 18, '0741111111', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(2, 'Small John Dane', 'Cluj-Napoca', 'Corneliu Coposu 12', 'small_john@gmail.com', 22, '0741111112', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(3, 'Travolta John', 'Cluj-Napoca', 'Bulevardul 11', 'travolta_john@gmail.com', 54, '0741111113', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(4, 'Anabell Smith ', 'Cluj-Napoca', 'Muncii 22', 'anabell12@gmail.com', 22, '0741111114', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(5, 'John Dave', 'Cluj-Napoca', 'Bulevardul 77', 'johny112@gmail.com', 25, '0741111115', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(6, 'Mircea Dan', 'Cluj-Napoca', 'Muncii 11', 'dan112@yahoo.com', 72, '0741111116', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(7, 'Iris Hieb', 'Cluj-Napoca', 'Muncii 77', 'iris55@gmail.com', 55, '0741111117', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(8, 'Carrie Victoria', 'Cluj-Napoca', 'Eroilor 4', 'carry22@gmail.com', 33, '0741111118', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(9, 'Antonio Lup', 'Cluj-Napoca', 'Avram Iancu 5', 'antonio988@yahoo.com', 63, '0741111119', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(10, 'Velkan Ilie', 'Bucharest', 'Unirii  12', 'il_velkan@yahoo.com', 26, '0741111121', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(11, 'Horea Gilca', 'Bucharest', 'Mosilor 88', 'ho_gil@gmail.com', 84, '0741111122', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(12, 'Costica Pavel', 'Bucharest', 'Calea Victoriei 9', 'costic@gmail.com', 91, '0741111123', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(13, 'Iancu Petri', 'Bucharest', 'Calea Victoriei19', 'iancu31@gmail.com', 19, '0741111124', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(14, 'Flavius Pavel', 'Targu Mures', 'Bolyai 80', 'flavi21@yahoo.com', 43, '0741111125', '2022-08-10 08:58:13', '2022-08-10 14:28:13'),
(15, 'Daniel Nicolae', 'Targu Mures', 'Bolyai 70', 'daniel90@gmail.com', 28, '0741111126', '2022-08-10 08:58:13', '2022-08-10 14:28:13');

-- --------------------------------------------------------

--
-- Stand-in structure for view `new_view`
-- (See below for the actual view)
--
CREATE TABLE `new_view` (
`id` int(11)
,`idClient` int(11)
,`quantity` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` text NOT NULL DEFAULT 'placed',
  `orderDate` date NOT NULL DEFAULT current_timestamp(),
  `idShipper` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `idClient`, `quantity`, `price`, `status`, `orderDate`, `idShipper`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 75, 'packed', '2022-08-10', 1, '2022-08-10 08:58:01', '2022-08-10 17:13:42'),
(2, 14, 10, 250, 'placed', '2022-08-10', 4, '2022-08-10 08:58:01', '2022-08-10 15:46:46'),
(3, 6, 3, 75, 'placed', '2022-08-10', 2, '2022-08-10 08:58:01', '2022-08-10 15:46:52'),
(4, 4, 1, 25, 'placed', '2022-08-10', 4, '2022-08-10 08:58:01', '2022-08-10 17:14:02'),
(5, 5, 3, 75, 'placed', '2022-08-10', 4, '2022-08-10 08:58:01', '2022-08-10 15:47:02'),
(6, 3, 1, 25, 'placed', '2022-08-10', 4, '2022-08-10 08:58:01', '2022-08-10 15:47:06'),
(7, 1, 1, 25, 'placed', '2022-08-10', 1, '2022-08-10 08:58:01', '2022-08-10 15:47:12'),
(10, 7, 3, 75, 'placed', '2022-08-10', 3, '2022-08-10 10:56:35', '2022-08-10 16:26:35'),
(11, 1, 6, 150, 'placed', '2022-08-10', 2, '2022-08-10 11:42:02', '2022-08-10 17:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `ShippingTime` time NOT NULL DEFAULT current_timestamp(),
  `Phone` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`id`, `Name`, `ShippingTime`, `Phone`, `created_at`, `updated_at`) VALUES
(1, 'Fan Curier', '00:00:03', '0755555555', '2022-08-10 08:58:24', '2022-08-10 14:28:24'),
(2, 'Cargus', '00:00:03', '0755555556', '2022-08-10 08:58:24', '2022-08-10 14:28:24'),
(3, 'DHL', '00:00:02', '0755555557', '2022-08-10 08:58:24', '2022-08-10 14:28:24'),
(4, 'Priority Shipping', '00:00:01', '0755555558', '2022-08-10 08:58:24', '2022-08-10 14:28:24'),
(5, 'Royal Mail 2', '00:00:12', '0755555559', '2022-08-10 08:58:24', '2022-08-10 14:28:24'),
(6, 'ExpressShipping', '00:00:01', '0755555560', '2022-08-10 08:58:24', '2022-08-10 14:28:24');

-- --------------------------------------------------------

--
-- Structure for view `new_view`
--
DROP TABLE IF EXISTS `new_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `new_view`  AS  select `orders`.`id` AS `id`,`orders`.`idClient` AS `idClient`,`orders`.`quantity` AS `quantity` from `orders` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idClient_idx` (`idClient`),
  ADD KEY `idShipper_idx` (`idShipper`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `idClient` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `idShipper` FOREIGN KEY (`idShipper`) REFERENCES `shipper` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
