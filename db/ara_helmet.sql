-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2019 at 01:45 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ara_helmet`
--

-- --------------------------------------------------------

--
-- Table structure for table `helm`
--

CREATE TABLE IF NOT EXISTS `helm` (
  `id_helm` int(10) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `warna` enum('Merah','Kuning','Hijau','Biru','Pink','Hitam','Abu-abu','Putih') NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` enum('Biasa','Full Face','Pogo','') NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `helm`
--

INSERT INTO `helm` (`id_helm`, `merk`, `warna`, `stok`, `kategori`, `harga_beli`, `harga_jual`) VALUES
(1, 'KYT', 'Hijau', 1100008, 'Full Face', 500000, 550000),
(2, 'KYT', 'Abu-abu', 1100007, 'Full Face', 500000, 550000),
(3, 'INK', 'Hitam', 50, 'Full Face', 300000, 350000),
(4, 'INK', 'Pink', 49, 'Biasa', 300000, 350000),
(5, 'INK', 'Merah', 49, 'Biasa', 300000, 350000);

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE IF NOT EXISTS `jual` (
  `nofa` varchar(15) NOT NULL,
  `tgl` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` varchar(12) NOT NULL,
  `kembali` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`nofa`, `tgl`, `total`, `bayar`, `kembali`) VALUES
('19070500001', '2019-07-05', 550000, '600000', '50000'),
('19070600001', '2019-07-06', 550000, '600000', '50000'),
('19070800001', '2019-07-08', 1100000, '1100000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jual_detail`
--

CREATE TABLE IF NOT EXISTS `jual_detail` (
  `nofa` varchar(15) NOT NULL,
  `id_helm` varchar(50) NOT NULL,
  `merk` varchar(25) NOT NULL,
  `warna` varchar(25) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `harga` varchar(15) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `subtotal` varchar(15) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jual_detail`
--

INSERT INTO `jual_detail` (`nofa`, `id_helm`, `merk`, `warna`, `kategori`, `harga`, `jumlah`, `subtotal`, `time`) VALUES
('19070500001', '1', 'KYT', 'Hijau', '1', '550000', '1', '550000', '2019-07-05 11:07:32'),
('19070600001', '1', 'KYT', 'Hijau', 'Full Face', '550000', '1', '550000', '2019-07-06 11:43:35'),
('19070800001', '1', 'KYT', 'Hijau', 'Full Face', '550000', '1', '550000', '2019-07-08 03:21:26'),
('19070800001', '2', 'KYT', 'Abu-abu', 'Full Face', '550000', '2', '1100000', '2019-07-08 03:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `alamat_lengkap` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `level`, `email`, `no_telp`, `alamat_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin', 'admin@mail.com', '085694871343', 'Tegal'),
('tiara', '4600bb8b66b6a2af771fbb0566732196', 'Tiara Arista', 'admin', 'tiaraarista06@gmail.com', '085921980646', 'Jatibarang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `helm`
--
ALTER TABLE `helm`
  ADD PRIMARY KEY (`id_helm`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
