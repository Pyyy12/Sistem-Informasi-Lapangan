-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 11:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblapangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(11) NOT NULL,
  `metode_pembayaran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(7, 32, '9', 1),
(8, 32, '11', 1),
(9, 33, '16', 1),
(10, 33, '6', 1),
(11, 34, '13', 1),
(12, 34, '8', 1),
(13, 34, '9', 1),
(14, 34, '17', 1),
(15, 35, '9', 2),
(16, 35, '14', 1),
(17, 36, '8', 1),
(18, 37, '13', 1),
(19, 37, '16', 1),
(20, 38, '8', 1),
(21, 39, '9', 1),
(22, 39, '16', 1),
(23, 40, '10', 1),
(24, 40, '14', 1),
(25, 41, '17', 1),
(26, 41, '10', 1),
(27, 41, '9', 2),
(28, 42, '9', 1),
(29, 42, '14', 1),
(30, 42, '7', 1),
(31, 42, '17', 1),
(32, 43, '14', 1),
(33, 44, '8', 1),
(34, 45, '7', 1),
(35, 46, '7', 1),
(36, 47, '8', 1),
(37, 47, '7', 1),
(38, 48, '7', 2),
(39, 49, '6', 1),
(40, 50, '6', 1),
(41, 51, '6', 1),
(42, 52, '8', 1),
(43, 53, '23', 1),
(44, 54, '7', 1),
(45, 55, '21', 1),
(46, 56, '8', 1),
(47, 57, '8', 1),
(48, 58, '21', 1),
(49, 59, '8', 1),
(50, 60, '7', 1),
(51, 61, '22', 1),
(52, 62, '25', 1),
(53, 63, '7', 1),
(54, 64, '21', 1),
(55, 65, '6', 1),
(56, 66, '26', 1),
(57, 67, '8', 1),
(58, 67, '24', 1),
(59, 68, '7', 1),
(60, 69, '8', 1),
(61, 70, '6', 1),
(62, 71, '7', 1),
(63, 72, '22', 1),
(64, 73, '6', 1),
(65, 74, '6', 1),
(66, 75, '7', 1),
(67, 76, '25', 1),
(68, 77, '7', 1),
(69, 78, '23', 1),
(70, 79, '6', 1),
(71, 80, '24', 1),
(72, 81, '22', 1),
(73, 82, '32', 1),
(74, 83, '6', 1),
(75, 83, '21', 1),
(76, 83, '32', 1),
(77, 84, '8', 1),
(78, 85, '6', 1),
(79, 86, '7', 1),
(80, 87, '7', 1),
(81, 88, '6', 1),
(82, 89, '6', 1),
(83, 90, '7', 1),
(84, 91, '8', 1),
(85, 91, '7', 1),
(86, 92, '6', 1),
(87, 93, '6', 1),
(88, 94, '6', 1),
(89, 95, '21', 1),
(90, 96, '7', 1),
(91, 97, '23', 1),
(92, 98, '23', 1),
(93, 98, '7', 1),
(0, 0, '22', 1),
(0, 0, '22', 1),
(0, 103, '23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `harga`, `gambar`) VALUES
(7, 'Mulyo Agung Mini Soccer', 'Minisoccer', 1300000, 'lapagan4.jpg'),
(22, 'Grand Central Sport Center', 'Basket', 1000000, 'manado.jpg'),
(23, 'Derby Mini Soccer', 'Minisoccer', 1300000, 'lapangan3.jpg'),
(24, 'Panenka Soccer', 'Minisoccer', 1500000, 'relone.jpg'),
(25, 'Galaxy Sports Center', 'Minisoccer', 1300000, 'samin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','customer','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'Admin', 'Admin', 'admin', 'Laki Laki', '2025-07-02', 'Jl.', '0989', 'admin'),
(2, 'Lutfi', 'Lutfi', 'Lutfi', 'Laki-Laki', '2025-08-01', 'Jl. Matraman', '08676', 'customer'),
(3, 'daus', 'daus', 'fir', 'Laki-Laki', '2025-07-24', 'jj', '113', 'customer'),
(6, 'Loverey', '123', 'Loverey Juliandro', 'Laki-Laki', '2025-07-24', 'Jl. Priuk Kali', '0989', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
