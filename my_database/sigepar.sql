-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Jun 2022 pada 07.06
-- Versi server: 5.7.33
-- Versi PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigepar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album_gallery`
--

CREATE TABLE `album_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_album` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `album_gallery`
--

INSERT INTO `album_gallery` (`id`, `nama_album`, `gallery_album`, `created_at`, `updated_at`) VALUES
(2, 'Album Gerja', 'buka.jpg', '2022-06-10 22:51:57', '2022-06-10 22:51:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_babtis`
--

CREATE TABLE `daftar_babtis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akte_nikah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_anak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `daftar_babtis`
--

INSERT INTO `daftar_babtis` (`id`, `user_id`, `akte_nikah`, `kk`, `created_at`, `updated_at`, `nama_ayah`, `nama_ibu`, `nama_anak`) VALUES
(6, '7', 'buka.jpg', 'buka.jpg', '2022-06-09 07:21:27', '2022-06-09 07:21:27', 'Riwaldin', 'Siti', 'Jamal'),
(7, '12', 'photo_2022-06-09_14-48-38.jpg', 'buka.jpg', '2022-06-10 08:00:26', '2022-06-10 08:00:26', 'Nama Ayah', 'Nama Ibu', 'Nama ANak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jemaat`
--

CREATE TABLE `data_jemaat` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_bergabung` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_jemaat`
--

INSERT INTO `data_jemaat` (`id`, `nama_lengkap`, `jenis_kelamin`, `keluarga`, `alamat`, `no_hp`, `tanggal_lahir`, `tanggal_bergabung`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 'Alex Pernandes Siburian', 'Laki-laki', 'Alex Sirait', 'Balige', '081234567890', '2022-05-25', '2022-05-18', 'Aktif', 'aleximage.png', '2022-05-23 06:18:55', '2022-05-24 16:12:50'),
(4, 'Juliana Simanjuntak', 'Perempuan', 'A.Juliana', 'Komplek HKI Parsoburan', '08123456789', '2022-05-24', '2022-05-25', 'Aktif', 'background1.png', '2022-05-24 07:08:37', '2022-05-24 16:13:41'),
(5, 'Sayoni Simanjuntak', 'Perempuan', 'Keluarga SI', 'Alamat', '081234567890', '2022-05-02', '2022-05-26', 'Aktif', 'logo_stikes.png', '2022-05-24 09:18:49', '2022-06-08 16:07:09'),
(6, 'Jaime Sirait', 'Laki-laki', 'Keluarga SI', 'Komplek PLN', '08123456789', '2022-05-25', '2022-05-18', 'Aktif', 'IMG_20200820_133145.jpg', '2022-05-24 09:19:49', '2022-06-07 16:03:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keuangan`
--

CREATE TABLE `data_keuangan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_peneguhan_sidi`
--

CREATE TABLE `data_peneguhan_sidi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(255) DEFAULT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_resmi_jemaat` date NOT NULL,
  `nama_sidi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk_sidi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_babtis_sidi` date DEFAULT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_peneguhan_sidi`
--

INSERT INTO `data_peneguhan_sidi` (`id`, `id_user`, `nama_ayah`, `nama_ibu`, `kk`, `tgl_resmi_jemaat`, `nama_sidi`, `jk_sidi`, `tgl_lahir`, `tgl_babtis_sidi`, `lampiran`, `created_at`, `updated_at`) VALUES
(8, 7, 'Ilham Tormar', 'Rismis', 'buka.jpg', '2022-05-12', 'Sidik', 'laki-laki', '2022-06-08', '2022-06-01', 'buka.jpg', '2022-06-10 03:12:07', '2022-06-10 03:12:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pernikahan`
--

CREATE TABLE `data_pernikahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_pria` date NOT NULL,
  `tgl_babtis_pria` date NOT NULL,
  `tgl_sidi_pria` date NOT NULL,
  `lampiran_pria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidi_pria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `izin_ortu_pria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_jemaat_pria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah_pria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_wanita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_wanita` date NOT NULL,
  `tgl_babtis_wanita` date NOT NULL,
  `tgl_sidi_wanita` date NOT NULL,
  `lampiran_wanita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidi_wanita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `izin_ortu_wanita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_jemaat_wanita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah_wanita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_pernikahan`
--

INSERT INTO `data_pernikahan` (`id`, `id_user`, `nama_pria`, `tgl_lahir_pria`, `tgl_babtis_pria`, `tgl_sidi_pria`, `lampiran_pria`, `sidi_pria`, `izin_ortu_pria`, `surat_jemaat_pria`, `ijazah_pria`, `nama_wanita`, `tgl_lahir_wanita`, `tgl_babtis_wanita`, `tgl_sidi_wanita`, `lampiran_wanita`, `sidi_wanita`, `izin_ortu_wanita`, `surat_jemaat_wanita`, `ijazah_wanita`, `created_at`, `updated_at`) VALUES
(1, '7', 'Ilham', '2022-06-07', '2022-06-08', '2022-06-02', 'buka.jpg', 'logo.png', NULL, NULL, NULL, 'Runi', '2022-06-06', '2022-06-06', '2022-06-08', 'photo_2022-06-03_11-04-19.jpg', NULL, NULL, NULL, NULL, '2022-06-10 05:13:58', '2022-06-10 06:13:41');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_album` int(11) NOT NULL,
  `nama_gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_05_07_073900_pengumuman', 1),
(6, '2022_05_07_075301_create_pendaftaran_sakramens_table', 1),
(7, '2022_05_19_165316_datajemaat_migration', 1),
(8, '2022_05_19_170208_data_keuangan_migration', 1),
(9, '2022_06_08_080510_create_daftar_babtis_table', 2),
(10, '2022_06_09_043708_add_paid_to_users_table', 3),
(11, '2022_06_09_141325_add_paid_to_daftar_babtis_table', 4),
(12, '2022_06_09_155343_create_data_peneguhan_sidi_table', 5),
(13, '2022_06_10_112138_create_data_pernikahan_table', 6),
(14, '2022_06_11_030826_create_album_gallery', 7),
(15, '2022_06_11_030958_create_gallery', 8),
(16, '2022_06_11_045501_create_pengumuman', 9);

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
-- Struktur dari tabel `pendaftaran_sakramens`
--

CREATE TABLE `pendaftaran_sakramens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_sakramen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `judul_pengumuman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `tanggal`, `judul_pengumuman`, `isi`, `created_at`, `updated_at`) VALUES
(2, '2022-06-09', 'Hari Paskah', 'Di ubah Lagi', '2022-06-10 21:57:23', '2022-06-10 22:25:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengurus_gereja`
--

CREATE TABLE `pengurus_gereja` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama_pengurus` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `tanggal_masuk` datetime NOT NULL,
  `tanggal_penabalan` datetime NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `quotes` text NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengurus_gereja`
--

INSERT INTO `pengurus_gereja` (`id`, `user_id`, `nama_pengurus`, `jenis_kelamin`, `kontak`, `tanggal_masuk`, `tanggal_penabalan`, `jabatan`, `quotes`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 5, 'Julian Simorangkir', 'Laki-laki', '091223232', '2022-05-26 00:00:00', '2022-05-19 00:00:00', 'Sintua', 'Inia dlah quotes', 'background3.png', '2022-05-25 09:47:55', '2022-05-25 16:47:55'),
(2, 6, 'Pengurus Satu', 'Laki-laki', '3456789', '2022-06-06 00:00:00', '2022-06-05 00:00:00', 'Pendeta', 'Quotes', 'download.jpg', '2022-06-07 19:25:05', '2022-06-08 02:25:05');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `jenis_kelamin` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keluarga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tgl_bergabung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `nama`, `username`, `password`, `remember_token`, `created_at`, `updated_at`, `jenis_kelamin`, `keluarga`, `alamat`, `no_hp`, `status`, `avatar`, `tgl_lahir`, `tgl_bergabung`) VALUES
(1, 'admin', 'Juliana IP Sibuea Sth', 'Juliana01', '$2y$10$YgHk5qA6V3tZ6u75g2x4Y.QdjsMPxWg8.LYFc0zPLt0IL8bELAe1u', 'BRYPtG5iRUi8BjtuAxPwT5oZJsFDZg4FZ2Un2zVW6ozamgQLRPn1YzwxfnI8', '2022-05-22 09:19:27', '2022-05-22 16:19:27', '', 'Keluarga Bapak/Harahap', '', '', '', '', '2022-06-09', '2022-06-09'),
(2, 'Pendeta', 'Juliana Simorangkir', 'pengurusHKI', '$2y$10$BBGccHKnxdU4xVDy4JNzaOjZf.rs3Qr/sSj7wn/Kh4WPlGZfQGaxC', 'CdXvcRBm1jSxnZdR4EhpfLntz02adKdJ9KJnYPYhQLnQ6yLkRQBYXL9egLyC', '2022-05-25 08:17:39', '2022-05-25 15:17:39', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(3, 'Pendeta', 'Juliana Simorangkir', 'pengurusHKI', '$2y$10$5wlPgDGN7N9Mi9y2vfBDuOj/ItlV2p9dKaeewE90N13tvO48j7q/q', 'D20YpPfikFORmD9NSN449gfOGXU0TnVYgncN4Q1b8bRdHIqXKfty4SLfsyri', '2022-05-25 09:43:33', '2022-05-25 16:43:33', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(4, 'Sintua', 'Julian Simorangkir', 'pengurusHKI', '$2y$10$KmDFkEDHx8V5Y2andWhD.ekRVZz/FmmY0IYXAZ83bL5YHh9ZaI4Lu', 'vN94jwvdwMrclNE1rADbdjcrfzU3DDycwXXONCW38JHUwEtbS433Tb5GL8xD', '2022-05-25 09:47:04', '2022-05-25 16:47:04', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(5, 'Sintua', 'Julian Simorangkir', 'pengurusHKI', '$2y$10$PiSefvYVTvjQAdsfD7xNvuhOj/IPozh9CsrC5ASI4AFc00RUMdlWy', 'RZNERK7k94iDnuzaUoUxiJ9QZGtA32dPLdj7DsKP9A6Dq1m0fjrhW37LKVKb', '2022-05-25 09:47:55', '2022-05-25 16:47:55', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(6, 'Pendeta', 'Pengurus Satu', 'pengurusHKI', '$2y$10$0dDK3VbjVyvhu/bBZjAmeOSTlJcyYIsVCr4nnrebpcNLVMdw18TKq', 'NU8BEc3iitBALYE5H2ISdCYJ4ubkVHsTr51KnzM1aTvF54W9XEsMZR0Xu58A', '2022-06-07 19:25:05', '2022-06-08 02:25:05', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(7, 'jemaat', 'Simpan', 'jemaat1', '$2y$10$YgHk5qA6V3tZ6u75g2x4Y.QdjsMPxWg8.LYFc0zPLt0IL8bELAe1u', 'kc85OfWeaXuew5xpbpEZ0JtKsffsShfjWb4htr8UMs0D6HPBc2bWD2Z4mPoN', '2022-05-22 09:19:27', '2022-05-22 16:19:27', 'Perempuan', 'Kel. Bapak SimSan/Ibu Juliana', 'Jalan Dame Dame Ma Di Hita', '081213131', 'Aktif', '', '2022-06-09', '2022-06-09'),
(8, 'pengurus', 'Juliana Pengurus', 'pengurus1', '$2y$10$YgHk5qA6V3tZ6u75g2x4Y.QdjsMPxWg8.LYFc0zPLt0IL8bELAe1u', 'BHsSgpHlAWnHTafM8O093pkAZuEGfbt7DUEvyOjWY25OBg8VW3HThbkzpEfw', '2022-05-22 09:19:27', '2022-05-22 16:19:27', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(10, 'jemaat', 'Ida Sinulingga', 'idasinulingga', '$2y$10$jd7/9qhCRHKlPVWNqTMbKu1n4q/U.NsnltOWgmoqLo2ZOUsKMCbYG', NULL, '2022-06-09 00:22:35', '2022-06-09 10:44:16', 'Perempuan', 'Bpk Harahap', 'Samosir', '08111321562', 'Aktif', 'man_avatar.png', '2022-03-08', '2022-06-07'),
(11, 'jemaat', 'Iwan Naibaho', 'iwannai', '$2y$10$U3xtWjesK5ZyyO4UCNSH6uI/UiSTdny/wYVXae7iXfomfT4bBb6iK', NULL, '2022-06-09 04:51:56', '2022-06-09 11:52:55', 'Laki-laki', 'Nai Baho', NULL, '08111321562', 'Status Jemaat', 'man_avatar.png', '2022-06-07', '2022-06-09'),
(12, 'jemaat', 'Rina Turnip', 'rina', '$2y$10$iH1BguzvuxKuvupJop6xdukK3Yilh6U2eVVsflJP0kZFc.i6vNl56', NULL, '2022-06-10 07:55:51', '2022-06-10 14:59:01', 'Perempuan', 'Bpk. Indah', NULL, NULL, 'Status Jemaat', NULL, '2022-06-08', '2022-06-08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album_gallery`
--
ALTER TABLE `album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_babtis`
--
ALTER TABLE `daftar_babtis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_jemaat`
--
ALTER TABLE `data_jemaat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_keuangan`
--
ALTER TABLE `data_keuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_peneguhan_sidi`
--
ALTER TABLE `data_peneguhan_sidi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pernikahan`
--
ALTER TABLE `data_pernikahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pendaftaran_sakramens`
--
ALTER TABLE `pendaftaran_sakramens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengurus_gereja`
--
ALTER TABLE `pengurus_gereja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album_gallery`
--
ALTER TABLE `album_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `daftar_babtis`
--
ALTER TABLE `daftar_babtis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_jemaat`
--
ALTER TABLE `data_jemaat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_keuangan`
--
ALTER TABLE `data_keuangan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_peneguhan_sidi`
--
ALTER TABLE `data_peneguhan_sidi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `data_pernikahan`
--
ALTER TABLE `data_pernikahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran_sakramens`
--
ALTER TABLE `pendaftaran_sakramens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengurus_gereja`
--
ALTER TABLE `pengurus_gereja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
