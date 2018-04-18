-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 Apr 2018 pada 10.10
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travellbooking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `Id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `id` int(20) NOT NULL,
  `reservation_code` int(30) NOT NULL,
  `reservation_at` varchar(30) NOT NULL,
  `reservation_date` date NOT NULL,
  `customerid` int(20) NOT NULL,
  `seat_code` int(20) NOT NULL,
  `ruteid` int(30) NOT NULL,
  `depart_at` varchar(30) NOT NULL,
  `price` int(15) NOT NULL,
  `userid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE `rute` (
  `Id` int(20) NOT NULL,
  `depart_at` varchar(30) NOT NULL,
  `rute_form` varchar(30) NOT NULL,
  `rute_to` varchar(30) NOT NULL,
  `price` int(15) NOT NULL,
  `transpotationid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transpotation`
--

CREATE TABLE `transpotation` (
  `Id` int(20) NOT NULL,
  `code` int(20) NOT NULL,
  `description` int(100) NOT NULL,
  `seat_qty` int(15) NOT NULL,
  `transpotation_typeid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transpotation_type`
--

CREATE TABLE `transpotation_type` (
  `Id` int(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customerid` (`customerid`),
  ADD UNIQUE KEY `ruteid` (`ruteid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `transpotationid` (`transpotationid`);

--
-- Indexes for table `transpotation`
--
ALTER TABLE `transpotation`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `transpotation_typeid` (`transpotation_typeid`);

--
-- Indexes for table `transpotation_type`
--
ALTER TABLE `transpotation_type`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
