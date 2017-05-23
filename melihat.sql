-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 Mei 2017 pada 15.32
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gila`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `crud`
--

CREATE TABLE `crud` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `id_pengguna` int(10) UNSIGNED NOT NULL,
  `id_berita` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `crud`
--

INSERT INTO `crud` (`id`, `judul`, `isi`, `id_pengguna`, `id_berita`) VALUES
(1, 'kereta api jorok', 'banyak sekali didalam kereta yang berserakan dari sampah sampai kotoran-kotoran yang membuat kereta tampak tidak indah', 0, 0),
(2, 'kereta api berkarat', 'banyak meja dan kursi yang mulai berkarat dan tidak layak untuk dipakai lagi, mohon diganti', 0, 0),
(3, 'kereta api jelek', 'dari pintu sudah tidak layak, dari kualitas terlihat sudah cukup tua, banyak rel yang tidak baik dan tidak layak untuk dilalu oleh kereta api yang penuh dengan kekurangan seperti kereta api ini..', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_berangkat`
--

CREATE TABLE `jadwal_berangkat` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `id_kereta` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kereta`
--

CREATE TABLE `kereta` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kereta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun_buat` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `memesan`
--

CREATE TABLE `memesan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pengguna` int(10) UNSIGNED NOT NULL,
  `id_tiket` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_05_06_023852_create_crud_table', 1),
('2017_05_18_143742_buat_table_users', 1),
('2017_05_18_144028_buat_table_kereta', 1),
('2017_05_18_144407_buat_table_pengguna', 1),
('2017_05_18_144425_buat_table_admin', 1),
('2017_05_18_145652_buat_table_jadwal_berangkat', 1),
('2017_05_18_150704_buat_table_berita', 1),
('2017_05_18_151450_buat_table_tiket', 1),
('2017_05_18_152615_buat_table_memesan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` int(10) UNSIGNED NOT NULL,
  `harga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_jadwal_berangkat` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'hadriyani', 'hadriyani@gmail.com', '$2y$10$XgQvvHesHrBdGm9qyuk5pOEmM0/MAITGZKYzI90WR7Ea2UOVxaXWi', 'OATt09wKFsQZLynguJRhSBll0oi03tIeCkj5YSQC40rjjCWToo4sOv54qNlL', '2017-05-23 04:39:34', '2017-05-23 04:59:09', 1),
(2, 'melki', 'melki@gmail.com', '$2y$10$5sFhDXsEgoZTGSJ7/g.gueiDH3pTrR7kme.MCUae8dB6bv4KTaLxy', 'Aahh8JRWA401XnsANxwbvLTpUtmKWbboWIcwW6JWGbvYRlq3gspRt2XBxuJy', '2017-05-23 04:59:35', '2017-05-23 05:30:13', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_berangkat`
--
ALTER TABLE `jadwal_berangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memesan`
--
ALTER TABLE `memesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jadwal_berangkat`
--
ALTER TABLE `jadwal_berangkat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kereta`
--
ALTER TABLE `kereta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `memesan`
--
ALTER TABLE `memesan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
