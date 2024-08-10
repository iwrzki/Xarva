-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Agu 2024 pada 13.30
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xarva`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chekout`
--

CREATE TABLE `chekout` (
  `idco` varchar(10) NOT NULL,
  `namaco` varchar(15) NOT NULL,
  `nameproduct` varchar(55) NOT NULL,
  `warna` varchar(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `nohp` int(20) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `chekout`
--

INSERT INTO `chekout` (`idco`, `namaco`, `nameproduct`, `warna`, `jumlah`, `ukuran`, `address`, `nohp`, `total`) VALUES
('XARVA-001', ' Thifal Alia', 'T-Shirt', 'Blue', 1, 'M', 'CPI', 2147483647, 100000),
('XARVA-002', ' Thifal Alia', 'Hoodie', 'Bluelight', 1, 'XL', 'Cingcin', 2147483647, 200000),
('XARVA-003', ' Thifal Alia', 'Sweatpants', 'Black', 3, 'M', 'Soreang', 2147483647, 450000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL,
  `size` varchar(3) NOT NULL,
  `amount` int(5) NOT NULL,
  `color` varchar(10) NOT NULL,
  `price` int(20) NOT NULL,
  `preview` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `nameproduct` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `size`, `amount`, `color`, `price`, `preview`, `date`, `nameproduct`) VALUES
(1, 'S', 100, 'Black', 100000, 'blackt.jpg', '2024-08-10', 'T-Shirt'),
(2, 'S', 100, 'Blue', 100000, 'blue.jpg', '2024-08-04', 'T-Shirt'),
(3, 'S', 100, 'Darkgreen', 100000, 'darkgreen.jpg', '2024-08-04', 'T-Shirt'),
(4, 'M', 147, 'Black', 100000, 'blackt.jpg', '2024-08-04', 'T-Shirt'),
(5, 'M', 149, 'Blue', 100000, 'blue.jpg', '2024-08-04', 'T-Shirt'),
(6, 'M', 150, 'Darkgreen', 100000, 'darkgreen.jpg', '2024-08-04', 'T-Shirt'),
(7, 'L', 100, 'Black', 100000, 'blackt.jpg', '2024-08-04', 'T-Shirt'),
(8, 'L', 100, 'Blue', 100000, 'blue.jpg', '2024-08-04', 'T-Shirt'),
(9, 'L', 99, 'Darkgreen', 100000, 'darkgreen.jpg', '2024-08-04', 'T-Shirt'),
(10, 'XL', 99, 'Black', 100000, 'blackt.jpg', '2024-08-04', 'T-Shirt'),
(11, 'XL', 100, 'Blue', 100000, 'blue.jpg', '2024-08-04', 'T-Shirt'),
(12, 'XL', 100, 'Darkgreen', 100000, 'darkgreen.jpg', '2024-08-04', 'T-Shirt'),
(13, 'XXL', 100, 'Black', 100000, 'blackt.jpg', '2024-08-04', 'T-Shirt'),
(14, 'XXL', 100, 'Blue', 100000, 'Blue.jpg', '2024-08-04', 'T-Shirt'),
(15, 'XXL', 100, 'Darkgreen', 100000, 'darkgreen.jpg', '2024-08-04', 'T-Shirt'),
(16, 'S', 100, 'Black', 200000, 'blackh.jpg', '2024-08-05', 'Hoodie'),
(17, 'S', 100, 'Bluelight', 200000, 'bluelight.jpg', '2024-08-05', 'Hoodie'),
(18, 'S', 100, 'Brown', 200000, 'brown.jpg', '2024-08-05', 'Hoodie'),
(19, 'M', 120, 'Black', 200000, 'blackh.jpg', '2024-08-05', 'Hoodie'),
(20, 'M', 120, 'Bluelight', 200000, 'bluelight.jpg', '2024-08-05', 'Hoodie'),
(21, 'M', 120, 'Brown', 200000, 'brown.jpg', '2024-08-05', 'Hoodie'),
(22, 'L', 100, 'Black', 200000, 'blackh.jpg', '2024-08-05', 'Hoodie'),
(23, 'L', 100, 'Bluelight', 200000, 'bluelight.jpg', '2024-08-05', 'Hoodie'),
(24, 'L', 100, 'Brown', 200000, 'brown.jpg', '2024-08-05', 'Hoodie'),
(25, 'XL', 100, 'Black', 200000, 'blackh.jpg', '2024-08-05', 'Hoodie'),
(26, 'XL', 99, 'Bluelight', 200000, 'bluelight.jpg', '2024-08-05', 'Hoodie'),
(27, 'XL', 100, 'Brown', 200000, 'brown.jpg', '2024-08-05', 'Hoodie'),
(28, 'XXL', 100, 'Black', 200000, 'blackh.jpg', '2024-08-05', 'Hoodie'),
(29, 'XXL', 100, 'Bluelight', 200000, 'bluelight.jpg', '2024-08-05', 'Hoodie'),
(30, 'XXL', 100, 'Brown', 200000, 'brown.jpg', '2024-08-05', 'Hoodie'),
(31, 'S', 100, 'Black', 150000, 'blacks.jpg', '2024-08-05', 'Sweatpants'),
(32, 'S', 100, 'Cream', 150000, 'cream.jpg', '2024-08-05', 'Sweatpants'),
(33, 'S', 100, 'Grey', 150000, 'grey.jpg', '2024-08-05', 'Sweatpants'),
(34, 'M', 97, 'Black', 150000, 'blacks.jpg', '2024-08-05', 'Sweatpants'),
(35, 'M', 100, 'Cream', 150000, 'cream.jpg', '2024-08-06', 'Sweatpants'),
(36, 'M', 100, 'Grey', 150000, 'grey.jpg', '2024-08-06', 'Sweatpants'),
(37, 'L', 100, 'Black', 150000, 'blacks.jpg', '2024-08-06', 'Sweatpants'),
(38, 'L', 100, 'Cream', 150000, 'cream.jpg', '2024-08-06', 'Sweatpants'),
(39, 'L', 100, 'Grey', 150000, 'grey.jpg', '2024-08-06', 'Sweatpants'),
(40, 'XL', 100, 'Black', 150000, 'blacks.jpg', '2024-08-06', 'Sweatpants'),
(41, 'XL', 100, 'Cream', 150000, 'cream.jpg', '2024-08-06', 'Sweatpants'),
(42, 'XL', 100, 'Grey', 150000, 'grey.jpg', '2024-08-06', 'Sweatpants'),
(43, 'XXL', 100, 'Black', 150000, 'blacks.jpg', '2024-08-06', 'Sweatpants'),
(44, 'XXL', 100, 'Cream', 150000, 'cream.jpg', '2024-08-06', 'Sweatpants'),
(45, 'XXL', 100, 'Grey', 150000, 'grey.jpg', '2024-08-06', 'Sweatpants');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `ID` char(12) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Notelp` char(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`ID`, `Nama`, `Notelp`, `Email`, `Password`, `role`) VALUES
('10123344', 'Farhan', '82262121094', 'xarva@gmail.com', '9fd187ba8a72d284fd5ac0788868c81c', 'admin'),
('130805', 'Thifal Alia', '82218712362', 'mahendrathifal@gmail.com', 'c347fc867b4a339639fbac8c96410afd', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chekout`
--
ALTER TABLE `chekout`
  ADD PRIMARY KEY (`idco`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
