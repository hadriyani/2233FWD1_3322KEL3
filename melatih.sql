-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 Mei 2017 pada 15.31
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melatih`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
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
  `pengguna_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_berangkat`
--

CREATE TABLE `jadwal_berangkat` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `id_kereta` int(10) UNSIGNED NOT NULL,
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
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(10) UNSIGNED NOT NULL,
  `isi_komentar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_pengguna` int(10) UNSIGNED NOT NULL,
  `id_berita` int(10) UNSIGNED NOT NULL,
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
('2017_05_18_143742_buat_table_user', 1),
('2017_05_18_144028_buat_table_kereta', 1),
('2017_05_18_144407_buat_table_pengguna', 1),
('2017_05_18_144425_buat_table_admin', 1),
('2017_05_18_145652_buat_table_jadwal_berangkat', 1),
('2017_05_18_150704_buat_table_berita', 1),
('2017_05_18_151104_buat_table_komentar', 1),
('2017_05_18_151450_buat_table_tiket', 1),
('2017_05_18_152615_buat_table_memesan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_pengguna` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama_pengguna`, `alamat`, `nohp`, `id_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hadriy', 'lambung', '081348840522', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` int(10) UNSIGNED NOT NULL,
  `harga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_jadwal_berangkat` int(10) UNSIGNED NOT NULL,
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
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hadriyani', '$2y$10$WfUuGDarvYmSmNdHNx1is.2RX0LFHfy/dgwEU78amZj575.NjY9MK', 'hadriyani@gmail.com', '', '3n92BwKJQw2DSEaIkgoew37BRZZHc14SdjV7TGLMN74RcIqEulOcQvNOMzqD', '2017-05-19 08:32:42', '2017-05-23 04:08:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id_user_foreign` (`id_user`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_id_admin_foreign` (`id_admin`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_berangkat`
--
ALTER TABLE `jadwal_berangkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_berangkat_id_kereta_foreign` (`id_kereta`);

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_id_pengguna_foreign` (`id_pengguna`),
  ADD KEY `komentar_id_berita_foreign` (`id_berita`);

--
-- Indexes for table `memesan`
--
ALTER TABLE `memesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memesan_id_pengguna_foreign` (`id_pengguna`),
  ADD KEY `memesan_id_tiket_foreign` (`id_tiket`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengguna_id_user_foreign` (`id_user`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tiket_id_jadwal_foreign` (`id_jadwal_berangkat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_berangkat`
--
ALTER TABLE `jadwal_berangkat`
  ADD CONSTRAINT `jadwal_berangkat_id_kereta_foreign` FOREIGN KEY (`id_kereta`) REFERENCES `kereta` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_id_berita_foreign` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `komentar_id_pengguna_foreign` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `memesan`
--
ALTER TABLE `memesan`
  ADD CONSTRAINT `memesan_id_pengguna_foreign` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `memesan_id_tiket_foreign` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_id_jadwal_foreign` FOREIGN KEY (`id_jadwal_berangkat`) REFERENCES `jadwal_berangkat` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
