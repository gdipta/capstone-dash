-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 09:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cashflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_01_145753_create_penyewas_table', 1),
(5, '2024_12_01_145812_create_pemasukans_table', 1),
(6, '2024_12_01_145821_create_pengeluarans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukans`
--

CREATE TABLE `pemasukans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar` varchar(255) NOT NULL,
  `penghuni` varchar(255) NOT NULL,
  `tanggalPembayaran` date NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('Belum Konfirmasi','Sudah Konfirmasi') NOT NULL DEFAULT 'Belum Konfirmasi',
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemasukans`
--

INSERT INTO `pemasukans` (`id`, `kamar`, `penghuni`, `tanggalPembayaran`, `nominal`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, '102', 'Anaz', '2024-12-05', 10000000, 'Sudah Konfirmasi', 'b', '2025-01-05 09:13:50', '2025-01-06 00:16:13'),
(3, '102', 'Anaz', '2024-11-05', 1000000, 'Belum Konfirmasi', 'a', '2025-01-05 09:14:03', '2025-01-05 09:14:03'),
(4, '102', 'Anaz', '2024-10-05', 1500000, 'Belum Konfirmasi', 'd', '2025-01-05 09:14:33', '2025-01-05 09:37:23'),
(6, '101', 'Anaz', '2025-01-06', 2000000, 'Sudah Konfirmasi', 'xdxx', '2025-01-06 00:15:04', '2025-01-06 00:15:04'),
(7, '101', 'Anaz', '2024-01-06', 2000000, 'Sudah Konfirmasi', 'bbb', '2025-01-06 00:17:27', '2025-01-06 00:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namaPengeluaran` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggalPengeluaran` date NOT NULL,
  `buktiPengeluaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluarans`
--

INSERT INTO `pengeluarans` (`id`, `namaPengeluaran`, `jumlah`, `keterangan`, `tanggalPengeluaran`, `buktiPengeluaran`, `created_at`, `updated_at`) VALUES
(1, 'TV+', 2000000, 'fasf', '2025-01-06', 'Struk Pembayaran_1736148170.jpg', '2025-01-06 00:22:51', '2025-01-06 00:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `penyewas`
--

CREATE TABLE `penyewas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenisSewaKamar` varchar(255) NOT NULL,
  `noKamar` varchar(255) NOT NULL,
  `noHP` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontakDarurat` varchar(255) NOT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `tanggalMasuk` date NOT NULL,
  `tanggalKeluar` date NOT NULL,
  `lamaSewa` int(11) NOT NULL,
  `hargaSewa` int(11) NOT NULL,
  `totalSewa` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` enum('Belum Lunas','Lunas') NOT NULL DEFAULT 'Belum Lunas',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penyewas`
--

INSERT INTO `penyewas` (`id`, `jenisSewaKamar`, `noKamar`, `noHP`, `nama`, `kontakDarurat`, `jenisKelamin`, `tanggalMasuk`, `tanggalKeluar`, `lamaSewa`, `hargaSewa`, `totalSewa`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Harian', '101', '0813000000', 'Anaz', '0813000000', 'Laki-Laki', '2025-01-05', '2025-01-09', 4, 2000000, 8000000, 'lunas', 'Lunas', '2025-01-05 09:38:45', '2025-01-06 00:14:00'),
(4, 'Harian', '1012', '0813000000', 'Anaz', '0813000000', 'Laki-Laki', '2025-01-05', '2025-01-09', 4, 2000000, 8000000, 'lunas', 'Lunas', '2025-01-05 09:39:33', '2025-01-06 00:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TEaS3T7uyjRoIljX2kVoYegN9gAZRqTvZtzs4CVQ', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoialNJVGdNWTF1d1JmeXRSNXhweVJabTZsY2FyMnlOeGRsZWpHdFRwWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbGFwb3JhbnQvcHJpbnRlZC9Pa3RvYmVyLzIwMjQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1736150451);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_pemilik_kost` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_pemilik_kost`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pemilik Kost', 'pemilikkost@rumahkukost.com', '2025-01-05 09:12:03', '$2y$12$25yGf4UGgOUg6XCd78M/VOyUnP9WsT8S8ToFlpeu30Mh8gixswNDq', 1, 'FK2NRYFlnXZVPHi5T2mwX2669hUhP5EbE9sSNJK6bGBQAx427iuI1VU8ir0W', '2025-01-05 09:12:03', '2025-01-05 09:12:03'),
(2, 'Pengelola Kost', 'pengelolakost@rumahkukost.com', '2025-01-05 09:12:03', '$2y$12$25yGf4UGgOUg6XCd78M/VOyUnP9WsT8S8ToFlpeu30Mh8gixswNDq', 0, 'GoVxfOkrctvJSPh4dRYCZKe2QIyMb1tLTgIWhFASGrG3q2TWva2zw5NtDVHU', '2025-01-05 09:12:03', '2025-01-05 09:12:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyewas`
--
ALTER TABLE `penyewas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penyewas_nokamar_unique` (`noKamar`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pemasukans`
--
ALTER TABLE `pemasukans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penyewas`
--
ALTER TABLE `penyewas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
