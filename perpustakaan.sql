-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Mar 2022 pada 05.45
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `tahun` int(11) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `butuh_konfirmasi`
--

CREATE TABLE `butuh_konfirmasi` (
  `id_sdpinjam` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `status_pinjaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_kembali` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_buku`, `tanggal_kembali`) VALUES
(5, 2, 3, '2021-04-19 00:00:00'),
(41, 2, 3, '2021-05-21 07:00:31'),
(42, 2, 3, '2021-05-21 07:20:29'),
(43, 2, 3, '2021-05-21 07:37:08'),
(44, 2, 3, '2021-05-21 09:52:36'),
(45, 2, 3, '2021-05-21 10:01:56'),
(46, 2, 3, '2021-05-21 10:36:08'),
(47, 8, 5, '2020-05-23 11:00:07'),
(48, 2, 5, '2021-06-16 03:55:34'),
(49, 2, 5, '2021-06-16 04:50:24'),
(50, 2, 5, '2021-06-16 04:50:31'),
(51, 2, 5, '2021-06-16 04:50:36'),
(52, 2, 5, '2021-06-16 04:50:38'),
(53, 2, 5, '2021-06-17 05:59:07'),
(54, 2, 5, '2021-06-17 05:59:09'),
(55, 2, 0, '2021-06-17 05:59:11'),
(56, 2, 3, '2021-06-17 05:59:12'),
(57, 2, 3, '2021-06-17 05:59:13'),
(58, 2, 3, '2021-06-17 05:59:19'),
(59, 2, 3, '2021-06-17 05:59:25'),
(60, 2, 3, '2021-06-17 05:59:26'),
(61, 2, 3, '2021-06-17 06:01:28'),
(62, 2, 3, '2021-06-17 06:01:30'),
(63, 2, 3, '2021-06-17 06:02:34'),
(64, 2, 0, '2021-06-17 09:03:10'),
(65, 2, 0, '2021-06-17 09:03:34'),
(66, 2, 8, '2021-06-17 09:04:22'),
(67, 2, 8, '2022-02-08 01:35:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sedang_dipinjam`
--

CREATE TABLE `sedang_dipinjam` (
  `id_pinjam` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `status_pinjaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL,
  `user_role` int(11) NOT NULL,
  `auth_pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `user_role`, `auth_pass`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'danielseptyadi@gmail.com', 1, 'admin'),
(11, 'pustakawan', '1fa3f5ae016e4b0691eb5c1b4fd9b951', 'pustakawan@gmail.com', 2, 'pustakawan'),
(12, 'mahasiswa', '5787be38ee03a9ae5360f54d9026465f', 'mahasiswa@gmail.com', 3, 'mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'pustakawan'),
(3, 'mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `butuh_konfirmasi`
--
ALTER TABLE `butuh_konfirmasi`
  ADD PRIMARY KEY (`id_sdpinjam`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indeks untuk tabel `sedang_dipinjam`
--
ALTER TABLE `sedang_dipinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `butuh_konfirmasi`
--
ALTER TABLE `butuh_konfirmasi`
  MODIFY `id_sdpinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `sedang_dipinjam`
--
ALTER TABLE `sedang_dipinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
