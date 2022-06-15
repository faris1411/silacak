-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Jun 2022 pada 20.12
-- Versi server: 10.5.15-MariaDB-cll-lve
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u4856940_simpasetda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidangs`
--

CREATE TABLE `bidangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_bidang` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bidangs`
--

INSERT INTO `bidangs` (`id`, `kode_bidang`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Sekretariat DPRD', NULL, '2021-11-14 22:08:37', '2021-11-14 22:08:37'),
(2, '2', 'Bupati', NULL, '2021-11-14 22:08:52', '2021-11-14 22:08:52'),
(3, '3', 'Wakil Bupati', NULL, '2021-11-14 22:09:04', '2021-11-14 22:09:04'),
(4, '4', 'Sekretariat Daerah', NULL, '2021-11-14 22:09:17', '2021-11-14 22:09:17'),
(5, '5', 'Bidang Kimpraswil / Pekerjaan Umum', NULL, '2021-11-14 22:09:30', '2021-11-14 22:09:30'),
(6, '6', 'Bidang Perhubungan', NULL, '2021-11-14 22:09:58', '2021-11-14 22:09:58'),
(7, '7', 'Bidang Kesehatan', NULL, '2021-11-14 22:10:10', '2021-11-14 22:10:10'),
(8, '8', 'Bidang Pendidikan dan Kebudayaan', NULL, '2021-11-14 22:10:33', '2021-11-14 22:10:33'),
(9, '9', 'Bidang Sosial', NULL, '2021-11-14 22:10:49', '2021-11-14 22:10:49'),
(10, '10', 'Bidang Kependudukan', NULL, '2021-11-14 22:11:02', '2021-11-14 22:11:02'),
(11, '11', 'Bidang Pertanian', NULL, '2021-11-14 22:11:23', '2021-11-14 22:11:23'),
(12, '12', 'Bidang Perindustrian', NULL, '2021-11-20 08:20:51', '2021-11-20 08:20:51'),
(13, '13', 'Bidang Pendapatan', NULL, '2021-11-20 08:21:08', '2021-11-20 08:21:08'),
(14, '14', 'Bidang Pengawasan', NULL, '2021-11-20 08:21:18', '2021-11-20 08:21:18'),
(15, '15', 'Bidang Perencanaan', NULL, '2021-11-20 08:21:29', '2021-11-20 08:21:29'),
(16, '16', 'Bidang Lingkungan Hidup', NULL, '2021-11-20 08:21:39', '2021-11-20 08:21:39'),
(17, '18', 'Bidang Kesatuan Bangsa', NULL, '2021-11-20 08:22:14', '2021-11-20 08:22:14'),
(18, '19', 'Bidang Kepegawaian', NULL, '2021-11-20 08:22:27', '2021-11-20 08:22:27'),
(19, '21', 'Bidang Komunikasi, Informasi dan Dokumentasi', NULL, '2021-11-20 08:22:42', '2021-11-20 08:22:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gedung`
--

CREATE TABLE `gedung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register` int(11) NOT NULL,
  `nama_gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_aset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_pbb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_perolehan` date NOT NULL,
  `luas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bertingkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_usul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_admin_id` int(11) NOT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `histories`
--

INSERT INTO `histories` (`id`, `fk_admin_id`, `aksi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tambah data pimpinan ', NULL, '2021-11-14 22:07:52', '2021-11-14 22:07:52'),
(2, 1, 'Tambah data bidang Sekretariat DPRD ', NULL, '2021-11-14 22:08:37', '2021-11-14 22:08:37'),
(3, 1, 'Tambah data bidang Bupati ', NULL, '2021-11-14 22:08:52', '2021-11-14 22:08:52'),
(4, 1, 'Tambah data bidang Wakil Bupati ', NULL, '2021-11-14 22:09:04', '2021-11-14 22:09:04'),
(5, 1, 'Tambah data bidang Sekretariat Daerah ', NULL, '2021-11-14 22:09:17', '2021-11-14 22:09:17'),
(6, 1, 'Tambah data bidang Bidang Kimpraswil / Pekerjaan Umum ', NULL, '2021-11-14 22:09:30', '2021-11-14 22:09:30'),
(7, 1, 'Tambah data bidang Bidang Perhubungan ', NULL, '2021-11-14 22:09:58', '2021-11-14 22:09:58'),
(8, 1, 'Tambah data bidang Bidang Kesehatan ', NULL, '2021-11-14 22:10:10', '2021-11-14 22:10:10'),
(9, 1, 'Tambah data bidang Bidang Pendidikan dan Kebudayaan ', NULL, '2021-11-14 22:10:33', '2021-11-14 22:10:33'),
(10, 1, 'Tambah data bidang Bidang Sosial ', NULL, '2021-11-14 22:10:49', '2021-11-14 22:10:49'),
(11, 1, 'Tambah data bidang Bidang Kependudukan ', NULL, '2021-11-14 22:11:02', '2021-11-14 22:11:02'),
(12, 1, 'Tambah data bidang Bidang Pertanian ', NULL, '2021-11-14 22:11:23', '2021-11-14 22:11:23'),
(13, 1, 'update data  admin ', NULL, '2021-11-17 20:17:28', '2021-11-17 20:17:28'),
(14, 1, 'Tambah data unit Sekretariat Daerah ', NULL, '2021-11-17 20:20:14', '2021-11-17 20:20:14'),
(15, 1, 'Tambah data Subunit Bagian Umum ', NULL, '2021-11-17 20:20:39', '2021-11-17 20:20:39'),
(16, 1, 'Tambah data upb Kantor Bupati Musi Banyuasin ', NULL, '2021-11-17 20:21:18', '2021-11-17 20:21:18'),
(17, 1, 'Update data unit Sekretariat Daerah ', NULL, '2021-11-17 20:23:36', '2021-11-17 20:23:36'),
(18, 1, 'Tambah data user SETDA ', NULL, '2021-11-17 20:25:26', '2021-11-17 20:25:26'),
(19, 2, 'Tambah data unit Dinas Kesehatan ', NULL, '2021-11-17 20:34:41', '2021-11-17 20:34:41'),
(20, 2, 'Tambah data Subunit RSUD Sungai Lilin ', NULL, '2021-11-17 20:35:24', '2021-11-17 20:35:24'),
(21, 2, 'Tambah data upb RSUD Sungai Lilin ', NULL, '2021-11-17 20:36:02', '2021-11-17 20:36:02'),
(22, 1, 'Tambah data unit Dinas Tenaga Kerja dan Transmigrasi ', NULL, '2021-11-17 20:41:05', '2021-11-17 20:41:05'),
(23, 1, 'Tambah data Subunit Dinas Tenaga Kerja dan Transmigrasi ', NULL, '2021-11-17 20:42:12', '2021-11-17 20:42:12'),
(24, 1, 'Tambah data bidang Bidang Perindustrian ', NULL, '2021-11-20 08:20:51', '2021-11-20 08:20:51'),
(25, 1, 'Tambah data bidang Bidang Pendapatan ', NULL, '2021-11-20 08:21:08', '2021-11-20 08:21:08'),
(26, 1, 'Tambah data bidang Bidang Pengawasan ', NULL, '2021-11-20 08:21:19', '2021-11-20 08:21:19'),
(27, 1, 'Tambah data bidang Bidang Perencanaan ', NULL, '2021-11-20 08:21:29', '2021-11-20 08:21:29'),
(28, 1, 'Tambah data bidang Bidang Lingkungan Hidup ', NULL, '2021-11-20 08:21:39', '2021-11-20 08:21:39'),
(29, 1, 'Tambah data bidang Bidang Kesatuan Bangsa ', NULL, '2021-11-20 08:22:14', '2021-11-20 08:22:14'),
(30, 1, 'Tambah data bidang Bidang Kepegawaian ', NULL, '2021-11-20 08:22:27', '2021-11-20 08:22:27'),
(31, 1, 'Tambah data bidang Bidang Komunikasi, Informasi dan Dokumentasi ', NULL, '2021-11-20 08:22:42', '2021-11-20 08:22:42'),
(32, 1, 'Tambah data unit Dinas Pekerjaan Umum dan Penataan Ruang ', NULL, '2021-11-20 08:24:07', '2021-11-20 08:24:07'),
(33, 1, 'Tambah data unit Dinas Perhubungan ', NULL, '2021-11-20 08:27:18', '2021-11-20 08:27:18'),
(34, 1, 'Tambah data unit RSUD Sekayu ', NULL, '2021-11-20 08:28:39', '2021-11-20 08:28:39'),
(35, 1, 'Tambah data unit Dinas Pendidikan dan Kebudayaan ', NULL, '2021-11-20 08:29:04', '2021-11-20 08:29:04'),
(36, 1, 'Tambah data unit Dinas Pemuda, Olahraga dan Pariwisata ', NULL, '2021-11-20 08:29:22', '2021-11-20 08:29:22'),
(37, 1, 'Tambah data unit Dinas Perpustakaan, Arsip dan Dokumentasi ', NULL, '2021-11-20 08:29:40', '2021-11-20 08:29:40'),
(38, 1, 'Tambah data unit Badan Penanggulangan Bencana Daerah ', NULL, '2021-11-20 08:30:34', '2021-11-20 08:30:34'),
(39, 1, 'Tambah data unit Dinas Sosial ', NULL, '2021-11-20 08:30:56', '2021-11-20 08:30:56'),
(40, 1, 'Tambah data unit Badan Pemberdayaan Masyarakat dan Pemerintah Desa (BPMPD) ', NULL, '2021-11-20 10:23:37', '2021-11-20 10:23:37'),
(41, 1, 'Tambah data unit Badan Keluarga Berencana dan Pemberdayaan Perempuan (BKB & PP) ', NULL, '2021-11-20 10:23:52', '2021-11-20 10:23:52'),
(42, 1, 'Tambah data unit Dinas Kependudukan dan Catatan Sipil (DISDUKCAPIL) ', NULL, '2021-11-20 10:24:13', '2021-11-20 10:24:13'),
(43, 1, 'Tambah data unit Dinas Tanaman Pangan, Holtikultura dan Peternakan ', NULL, '2021-11-20 10:24:26', '2021-11-20 10:24:26'),
(44, 1, 'Tambah data unit Dinas Perkebunan ', NULL, '2021-11-20 10:24:45', '2021-11-20 10:24:45'),
(45, 1, 'Tambah data unit Badan Ketahanan Pangan ', NULL, '2021-11-20 10:25:07', '2021-11-20 10:25:07'),
(46, 1, 'Tambah data unit Dinas Perikanan ', NULL, '2021-11-20 10:25:22', '2021-11-20 10:25:22'),
(47, 1, 'Tambah data unit Dinas Perdagangan dan Perindustrian ', NULL, '2021-11-20 10:26:09', '2021-11-20 10:26:09'),
(48, 1, 'Tambah data unit Dinas Koperasi Usaha Mikro, Kecil dan Menengah dan Pengolahan Pasar ', NULL, '2021-11-20 10:26:30', '2021-11-20 10:26:30'),
(49, 1, 'Tambah data unit Badan Pengelola Keuangan dan Aset Daerah ', NULL, '2021-11-20 10:26:56', '2021-11-20 10:26:56'),
(50, 1, 'Tambah data unit Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu ', NULL, '2021-11-20 10:27:13', '2021-11-20 10:27:13'),
(51, 1, 'Tambah data unit Badan Pengelola Pajak dan Retribusi Daerah ', NULL, '2021-11-20 10:27:33', '2021-11-20 10:27:33'),
(52, 1, 'Tambah data unit Inspektorat ', NULL, '2021-11-20 10:27:52', '2021-11-20 10:27:52'),
(53, 1, 'Tambah data unit Kantor Satuan Polisi Pamong Praja ', NULL, '2021-11-20 10:28:28', '2021-11-20 10:28:28'),
(54, 1, 'Tambah data unit Badan Perencanaan Pembangunan Daerah dan Penanaman Modal (BAPPEDA & PM) ', NULL, '2021-11-20 10:28:41', '2021-11-20 10:28:41'),
(55, 1, 'Tambah data unit Dinas Lingkungan Hidup ', NULL, '2021-11-20 10:28:56', '2021-11-20 10:28:56'),
(56, 1, 'Update data unit Dinas Lingkungan Hidup ', NULL, '2021-11-20 10:38:56', '2021-11-20 10:38:56'),
(57, 1, 'Tambah data unit Badan Lingkungan Hidup, Penelitian dan Pengembangan (BLHPP) ', NULL, '2021-11-20 10:39:13', '2021-11-20 10:39:13'),
(58, 1, 'Tambah data unit Badan Kesatuan Bangsa, Politik dan Perlindungaan Masyarakat ', NULL, '2021-11-20 10:39:31', '2021-11-20 10:39:31'),
(59, 1, 'Tambah data unit Badan Kepegawaian Daerah dan Diklat (BKD & Diklat) ', NULL, '2021-11-20 10:39:42', '2021-11-20 10:39:42'),
(60, 1, 'Tambah data unit Dinas Komunikasi dan Informatika ', NULL, '2021-11-20 10:39:56', '2021-11-20 10:39:56'),
(61, 1, 'Tambah data unit Sekretariat DPRD ', NULL, '2021-11-20 10:41:53', '2021-11-20 10:41:53'),
(62, 1, 'Tambah data Subunit Sekretariat DPRD ', NULL, '2021-11-20 10:42:10', '2021-11-20 10:42:10'),
(63, 1, 'update data  admin super ', NULL, '2021-12-03 21:33:45', '2021-12-03 21:33:45'),
(64, 1, 'update data  SETDA ', NULL, '2022-03-22 03:36:09', '2022-03-22 03:36:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_perolehan` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_polisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rangka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_mesin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_bpkb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_berlaku_stnk` date NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_roda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_08_060215_create_permission_tables', 1),
(6, '2021_11_09_013807_add_foto_to_users_table', 1),
(7, '2021_11_09_020640_create_histories_table', 1),
(8, '2021_11_09_022240_create_kendaraan_table', 1),
(9, '2021_11_09_022847_create_gedung_table', 1),
(10, '2021_11_14_082050_create_bidangs_table', 1),
(11, '2021_11_14_082647_create_units_table', 1),
(12, '2021_11_14_083438_create_sub_units_table', 1),
(13, '2021_11_14_083637_create_upbs_table', 1),
(14, '2021_11_14_171724_create_tanahs_table', 1),
(15, '2021_11_15_182316_create_kendaraan_table', 2),
(16, '2021_11_15_210344_create_pinjam_tanahs_table', 3),
(17, '2021_11_16_070429_create_pinjam_kendaraans_table', 4),
(18, '2021_11_16_100052_create_mutasi_tanahs_table', 5),
(19, '2021_11_17_104940_create_mutasi_kendaraans_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_kendaraans`
--

CREATE TABLE `mutasi_kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kendaraan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mutasi_id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_tanahs`
--

CREATE TABLE `mutasi_tanahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanah_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mutasi_id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'pendataan_aset', 'web', '2021-11-14 22:06:46', '2021-11-14 22:06:46'),
(2, 'admin', 'web', '2021-11-14 22:06:46', '2021-11-14 22:06:46'),
(3, 'pinjam_pakai', 'web', '2021-11-14 22:06:46', '2021-11-14 22:06:46'),
(4, 'mutasi_aset', 'web', '2021-11-14 22:06:46', '2021-11-14 22:06:46'),
(5, 'gallery_aset', 'web', '2021-11-14 22:06:46', '2021-11-14 22:06:46'),
(6, 'roles', 'web', '2021-11-14 22:06:46', '2021-11-14 22:06:46'),
(7, 'permissions', 'web', '2021-11-14 22:06:47', '2021-11-14 22:06:47'),
(8, 'pimpinan', 'web', '2021-11-14 22:06:48', '2021-11-14 22:06:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam_kendaraans`
--

CREATE TABLE `pinjam_kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kendaraan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pinjam_id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam_tanahs`
--

CREATE TABLE `pinjam_tanahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanah_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pinjam_id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-11-14 22:06:45', '2021-11-14 22:06:45'),
(2, 'pimpinan', 'web', '2021-11-14 22:07:52', '2021-11-14 22:07:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_units`
--

CREATE TABLE `sub_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `kode_sub_unit` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_units`
--

INSERT INTO `sub_units` (`id`, `unit_id`, `kode_sub_unit`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Bagian Umum', NULL, '2021-11-17 20:20:39', '2021-11-17 20:20:39'),
(2, 2, '2', 'RSUD Sungai Lilin', NULL, '2021-11-17 20:35:24', '2021-11-17 20:35:24'),
(3, 3, '1', 'Dinas Tenaga Kerja dan Transmigrasi', NULL, '2021-11-17 20:42:12', '2021-11-17 20:42:12'),
(4, 32, '1', 'Sekretariat DPRD', NULL, '2021-11-20 10:42:10', '2021-11-20 10:42:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanahs`
--

CREATE TABLE `tanahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register` int(11) NOT NULL,
  `tahun_perolehan` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `luas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_pbb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `asal_usul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidang_id` bigint(20) UNSIGNED NOT NULL,
  `kode_unit` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `units`
--

INSERT INTO `units` (`id`, `bidang_id`, `kode_unit`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, '1', 'Sekretariat Daerah', NULL, '2021-11-17 20:20:14', '2021-11-17 20:23:36'),
(2, 7, '7', 'Dinas Kesehatan', NULL, '2021-11-17 20:34:41', '2021-11-17 20:34:41'),
(3, 9, '1', 'Dinas Tenaga Kerja dan Transmigrasi', NULL, '2021-11-17 20:41:05', '2021-11-17 20:41:05'),
(4, 5, '1', 'Dinas Pekerjaan Umum dan Penataan Ruang', NULL, '2021-11-20 08:24:07', '2021-11-20 08:24:07'),
(5, 6, '1', 'Dinas Perhubungan', NULL, '2021-11-20 08:27:18', '2021-11-20 08:27:18'),
(6, 7, '2', 'RSUD Sekayu', NULL, '2021-11-20 08:28:39', '2021-11-20 08:28:39'),
(7, 8, '1', 'Dinas Pendidikan dan Kebudayaan', NULL, '2021-11-20 08:29:04', '2021-11-20 08:29:04'),
(8, 8, '2', 'Dinas Pemuda, Olahraga dan Pariwisata', NULL, '2021-11-20 08:29:22', '2021-11-20 08:29:22'),
(9, 8, '3', 'Dinas Perpustakaan, Arsip dan Dokumentasi', NULL, '2021-11-20 08:29:40', '2021-11-20 08:29:40'),
(10, 9, '2', 'Badan Penanggulangan Bencana Daerah', NULL, '2021-11-20 08:30:34', '2021-11-20 08:30:34'),
(11, 9, '3', 'Dinas Sosial', NULL, '2021-11-20 08:30:56', '2021-11-20 08:30:56'),
(12, 10, '1', 'Badan Pemberdayaan Masyarakat dan Pemerintah Desa (BPMPD)', NULL, '2021-11-20 10:23:37', '2021-11-20 10:23:37'),
(13, 10, '2', 'Badan Keluarga Berencana dan Pemberdayaan Perempuan (BKB & PP)', NULL, '2021-11-20 10:23:52', '2021-11-20 10:23:52'),
(14, 10, '3', 'Dinas Kependudukan dan Catatan Sipil (DISDUKCAPIL)', NULL, '2021-11-20 10:24:13', '2021-11-20 10:24:13'),
(15, 11, '1', 'Dinas Tanaman Pangan, Holtikultura dan Peternakan', NULL, '2021-11-20 10:24:26', '2021-11-20 10:24:26'),
(16, 11, '2', 'Dinas Perkebunan', NULL, '2021-11-20 10:24:45', '2021-11-20 10:24:45'),
(17, 11, '5', 'Badan Ketahanan Pangan', NULL, '2021-11-20 10:25:06', '2021-11-20 10:25:06'),
(18, 11, '6', 'Dinas Perikanan', NULL, '2021-11-20 10:25:22', '2021-11-20 10:25:22'),
(19, 12, '1', 'Dinas Perdagangan dan Perindustrian', NULL, '2021-11-20 10:26:09', '2021-11-20 10:26:09'),
(20, 12, '3', 'Dinas Koperasi Usaha Mikro, Kecil dan Menengah dan Pengolahan Pasar', NULL, '2021-11-20 10:26:29', '2021-11-20 10:26:29'),
(21, 13, '1', 'Badan Pengelola Keuangan dan Aset Daerah', NULL, '2021-11-20 10:26:56', '2021-11-20 10:26:56'),
(22, 13, '2', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', NULL, '2021-11-20 10:27:13', '2021-11-20 10:27:13'),
(23, 13, '3', 'Badan Pengelola Pajak dan Retribusi Daerah', NULL, '2021-11-20 10:27:33', '2021-11-20 10:27:33'),
(24, 14, '1', 'Inspektorat', NULL, '2021-11-20 10:27:52', '2021-11-20 10:27:52'),
(25, 14, '2', 'Kantor Satuan Polisi Pamong Praja', NULL, '2021-11-20 10:28:28', '2021-11-20 10:28:28'),
(26, 15, '1', 'Badan Perencanaan Pembangunan Daerah dan Penanaman Modal (BAPPEDA & PM)', NULL, '2021-11-20 10:28:40', '2021-11-20 10:28:40'),
(27, 16, '2', 'Dinas Lingkungan Hidup', NULL, '2021-11-20 10:28:56', '2021-11-20 10:28:56'),
(28, 16, '2', 'Badan Lingkungan Hidup, Penelitian dan Pengembangan (BLHPP)', NULL, '2021-11-20 10:39:11', '2021-11-20 10:39:11'),
(29, 17, '1', 'Badan Kesatuan Bangsa, Politik dan Perlindungaan Masyarakat', NULL, '2021-11-20 10:39:31', '2021-11-20 10:39:31'),
(30, 18, '1', 'Badan Kepegawaian Daerah dan Diklat (BKD & Diklat)', NULL, '2021-11-20 10:39:42', '2021-11-20 10:39:42'),
(31, 19, '1', 'Dinas Komunikasi dan Informatika', NULL, '2021-11-20 10:39:56', '2021-11-20 10:39:56'),
(32, 1, '1', 'Sekretariat DPRD', NULL, '2021-11-20 10:41:53', '2021-11-20 10:41:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upbs`
--

CREATE TABLE `upbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subunit_id` bigint(20) UNSIGNED NOT NULL,
  `kode_upb` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `upbs`
--

INSERT INTO `upbs` (`id`, `subunit_id`, `kode_upb`, `name`, `lokasi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Kantor Bupati Musi Banyuasin', 'Sekayu', NULL, '2021-11-17 20:21:18', '2021-11-17 20:21:18'),
(2, 2, '1', 'RSUD Sungai Lilin', 'Sekayu', NULL, '2021-11-17 20:36:02', '2021-11-17 20:36:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bidang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subunit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upb_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `nama_lengkap`, `foto`, `bidang_id`, `unit_id`, `subunit_id`, `upb_id`) VALUES
(1, 'admin super', 'admin@gmail.com', NULL, '$2y$10$xyCcxBke32/Y1C1MAZIQ1Op.pz/gXFqc.CdzWyOB58YpZkA50qme6', 'jhxgX74LVxOzD9kubsIzVZI4dQriUoyCCweHsU2lL8PMnnTGdV1LYo74TCTz', NULL, '2021-11-14 22:06:49', '2021-12-03 21:33:45', 'Super Admin', NULL, NULL, NULL, NULL, NULL),
(2, 'SETDA', 'setda@gmail.com', NULL, '$2y$10$5SHhcDd4NMHNzbS6Fcj3IeyytSsCftIXhQphMUbUpxbVwu7yqRKQe', NULL, NULL, '2021-11-17 20:25:26', '2022-03-22 03:36:09', 'admin SETDA', 'UYKtTwMQpbn8vsma5hWV8QCvcqkXuwic8akseTCw.jpg', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidangs`
--
ALTER TABLE `bidangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bidangs_kode_bidang_unique` (`kode_bidang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `mutasi_kendaraans`
--
ALTER TABLE `mutasi_kendaraans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mutasi_tanahs`
--
ALTER TABLE `mutasi_tanahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pinjam_kendaraans`
--
ALTER TABLE `pinjam_kendaraans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam_tanahs`
--
ALTER TABLE `pinjam_tanahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sub_units`
--
ALTER TABLE `sub_units`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanahs`
--
ALTER TABLE `tanahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upbs`
--
ALTER TABLE `upbs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bidangs`
--
ALTER TABLE `bidangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gedung`
--
ALTER TABLE `gedung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `mutasi_kendaraans`
--
ALTER TABLE `mutasi_kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mutasi_tanahs`
--
ALTER TABLE `mutasi_tanahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pinjam_kendaraans`
--
ALTER TABLE `pinjam_kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pinjam_tanahs`
--
ALTER TABLE `pinjam_tanahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sub_units`
--
ALTER TABLE `sub_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tanahs`
--
ALTER TABLE `tanahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `upbs`
--
ALTER TABLE `upbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
