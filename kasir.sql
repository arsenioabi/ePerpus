-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Apr 2020 pada 04.14
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `pemesan` varchar(20) NOT NULL,
  `pesanan` varchar(20) NOT NULL,
  `jumlah` varchar(3) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `tgl_pemesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_makanan` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `harga` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_makanan`, `gambar`, `nama`, `jenis`, `harga`, `status`) VALUES
(37, '27717931.jpg', 'Kue Tete', 'Makanan', 20000, 'Tersedia'),
(38, 'kubim.jpg', 'Kubim', 'Minuman', 8000, 'Tersedia'),
(41, 'kubim1.jpg', 'Ayam Bagdat', 'Makanan', 50000, 'Tidak Tersedia'),
(42, 'kubim2.jpg', 'Burger King Eak', 'Makanan', 20000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `pemesan` varchar(15) NOT NULL,
  `meja` varchar(3) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `status_order` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id_order`, `pemesan`, `meja`, `harga`, `status_order`) VALUES
(1, 'Jacob', '12', '20000', 'Take In'),
(2, 'Eric', '09', '20000', 'Drive Tru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_menu`
--

CREATE TABLE `pesan_menu` (
  `id_pm` int(11) NOT NULL,
  `pemesan` varchar(20) NOT NULL,
  `pesanan` varchar(20) NOT NULL,
  `jumlah` varchar(3) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `tgl_pemesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan_menu`
--

INSERT INTO `pesan_menu` (`id_pm`, `pemesan`, `pesanan`, `jumlah`, `harga`, `tgl_pemesanan`) VALUES
(1, 'Jacob', 'Kubim', '1', '1000', '2020-09-18'),
(2, 'Eric', 'kubim', '2', '2000', '2020-09-18'),
(3, 'Jacob', 'Kubim', '2', '20000', '2020-09-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `pesan_menu`
--
ALTER TABLE `pesan_menu`
  ADD PRIMARY KEY (`id_pm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pesan_menu`
--
ALTER TABLE `pesan_menu`
  MODIFY `id_pm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
