-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Jun 2022 pada 08.15
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
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sejarah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `nama`, `logo`, `sejarah`, `created_at`, `updated_at`) VALUES
(1, 'HKI Parsoburan', 'logo.jpg', 'Huria Kristen Indonesia (HKI) yaitu lahir, tumbuh, dan hidup dari dan oleh Firman Allah, dan menjadi perwujudan persekutuan orang yang percaya kepada Allah Bapa, Anak-Nya Tuhan Yesus Kristus, dan Roh Kudus, Allah yang Maha Esa. HKI merupakan bagian dari Gereja yang Kudus dan Am, yang terpanggil dan terpilih serta diutus oleh Tuhan Yesus Kristus untuk penyataan tubuh-Nya di dunia ini. HKI merupakan perwujudan dan pertumbuhan dari hadirnya Injil di tanah Batak yang disampaikan oleh penginjil yang diutus oleh Badan Zending RMG (Rheinische Mission Gesellschaft) dari negeri Jerman.', NULL, '2022-06-12 10:32:08');

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
(8, 'Album Gereja', 'gereja.jpg', '2022-06-12 04:57:01', '2022-06-12 04:57:01');

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

--
-- Dumping data untuk tabel `data_keuangan`
--

INSERT INTO `data_keuangan` (`id`, `nama`, `tanggal`, `jumlah`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'Ida Sinulingga', '2022-06-08', 49999, 'Lunas', '2022-06-12 19:26:06', '2022-06-12 19:35:53');

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

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `nama_gallery`, `image_gallery`, `created_at`, `updated_at`) VALUES
(11, 8, 'Gereja 1', 'gereja.jpg', '2022-06-12 04:57:21', '2022-06-12 04:57:21'),
(12, 8, 'Gereja 2', 'dalamgereja.jpg', '2022-06-12 04:57:45', '2022-06-12 04:57:45'),
(13, 8, 'Gereja 3', 'gereja2.jpg', '2022-06-12 04:58:03', '2022-06-12 04:58:03');

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
(16, '2022_06_11_045501_create_pengumuman', 9),
(17, '2022_06_12_122258_create_slider', 10),
(18, '2022_06_12_170433_create_about', 11),
(19, '2022_06_13_025149_create_worship', 12),
(20, '2022_06_13_025512_create_procedure_table', 12);

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_pengumuman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `tanggal`, `image`, `judul_pengumuman`, `isi`, `created_at`, `updated_at`) VALUES
(2, '2022-05-31', 'gereja.jpg', 'Hari Paskah', 'ISi Disini', '2022-06-11 21:36:37', '2022-06-12 23:39:05'),
(3, '2022-06-07', 'gereja.jpg', 'Pengumuman Satu', 'sfsfsfs', '2022-06-12 23:45:59', '2022-06-12 23:46:12'),
(5, '2022-06-08', 'gereja.jpg', 'Pengumuman Dua', 'Ini adalah pengumuman', '2022-06-13 00:05:26', '2022-06-13 00:05:26');

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
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_penabalan` date DEFAULT NULL,
  `jabatan` varchar(255) NOT NULL,
  `quotes` text,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengurus_gereja`
--

INSERT INTO `pengurus_gereja` (`id`, `user_id`, `nama_pengurus`, `jenis_kelamin`, `kontak`, `tanggal_masuk`, `tanggal_penabalan`, `jabatan`, `quotes`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 15, 'St. S Tampubolon', 'Laki-laki', '3456789', '2022-01-03', '2022-05-30', 'Bendahara Jemaat', NULL, 'WhatsApp Image 2022-06-10 at 23.20.25 (1).jpeg', '2022-06-12 05:16:47', '2022-06-12 12:16:47'),
(2, 16, 'St.S Silaen', 'Laki-laki', '3456789', '2021-12-06', '2022-06-06', 'Sekretaris Jemaat', NULL, 'WhatsApp Image 2022-06-10 at 23.20.25.jpeg', '2022-06-12 05:17:40', '2022-06-12 12:17:40'),
(3, 17, 'St. A Lumbantoruan', 'Laki-laki', '3456789', '2021-12-27', '2022-06-01', 'Jabatan', NULL, 'WhatsApp Image 2022-06-10 at 23.20.24.jpeg', '2022-06-12 05:18:18', '2022-06-12 12:18:18');

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
-- Struktur dari tabel `procedure`
--

CREATE TABLE `procedure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_worship` int(11) DEFAULT NULL,
  `judul_procedure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `procedure`
--

INSERT INTO `procedure` (`id`, `id_worship`, `judul_procedure`, `isi`, `created_at`, `updated_at`) VALUES
(2, 2, 'Buku Ende 10:1-2', 'Puji Hupasangap Ho 1.Hupuji hupasangap Ho Amang pardenggan basa Ai jadijadianMu do sude angka na masa Ditompa Ho do sasude Dagingku rodi tondi pe Pinuji ma goarMu\r\n2. Saluhut na tinompaMi Naeng sonang di rohaMu Arian dohot borngin pe Disarihon rohaMu Nang uhum di gomgomanMi Na tigor na sintong do i Pinuji ma goarMu', '2022-06-12 22:11:11', '2022-06-12 22:31:05'),
(3, 2, 'Buku Ende 10:1-3', 'Puji Hupasangap Ho 1.Hupuji hupasangap Ho Amang pardenggan basa Ai jadijadianMu do sude angka na masa Ditompa Ho do sasude Dagingku rodi tondi pe Pinuji ma goarMu\r\n2. Saluhut na tinompaMi Naeng sonang di rohaMu Arian dohot borngin pe Disarihon rohaMu Nang uhum di gomgomanMi Na tigor na sintong do i Pinuji ma goarMu', '2022-06-12 22:52:26', '2022-06-12 22:52:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `nama_slider`, `image_slider`, `created_at`, `updated_at`) VALUES
(1, 'Slider 2', 'satu_slider.jpg', '2022-06-12 05:46:26', '2022-06-12 07:17:14'),
(3, 'Slider Utama', 'slider_dua.jpg', '2022-06-12 07:18:31', '2022-06-12 07:18:31');

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
(1, 'admin', 'Juliana IP Sibuea Sth', 'Juliana01', '$2y$10$YgHk5qA6V3tZ6u75g2x4Y.QdjsMPxWg8.LYFc0zPLt0IL8bELAe1u', 'cd0ot4FtjWYQnbLwC9xHnxTkr7EEapv9uj4OoHtiTv56JgYGNWOe1xKzmjOs', '2022-05-22 09:19:27', '2022-05-22 16:19:27', '', 'Keluarga Bapak/Harahap', '', '', '', 'man_avatar.png', '2022-06-09', '2022-06-09'),
(2, 'Pendeta', 'Juliana Simorangkir', 'pengurusHKI', '$2y$10$BBGccHKnxdU4xVDy4JNzaOjZf.rs3Qr/sSj7wn/Kh4WPlGZfQGaxC', 'CdXvcRBm1jSxnZdR4EhpfLntz02adKdJ9KJnYPYhQLnQ6yLkRQBYXL9egLyC', '2022-05-25 08:17:39', '2022-05-25 15:17:39', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(3, 'Pendeta', 'Juliana Simorangkir', 'pengurusHKI', '$2y$10$5wlPgDGN7N9Mi9y2vfBDuOj/ItlV2p9dKaeewE90N13tvO48j7q/q', 'D20YpPfikFORmD9NSN449gfOGXU0TnVYgncN4Q1b8bRdHIqXKfty4SLfsyri', '2022-05-25 09:43:33', '2022-05-25 16:43:33', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(4, 'Sintua', 'Julian Simorangkir', 'pengurusHKI', '$2y$10$KmDFkEDHx8V5Y2andWhD.ekRVZz/FmmY0IYXAZ83bL5YHh9ZaI4Lu', 'vN94jwvdwMrclNE1rADbdjcrfzU3DDycwXXONCW38JHUwEtbS433Tb5GL8xD', '2022-05-25 09:47:04', '2022-05-25 16:47:04', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(5, 'Sintua', 'Julian Simorangkir', 'pengurusHKI', '$2y$10$PiSefvYVTvjQAdsfD7xNvuhOj/IPozh9CsrC5ASI4AFc00RUMdlWy', 'RZNERK7k94iDnuzaUoUxiJ9QZGtA32dPLdj7DsKP9A6Dq1m0fjrhW37LKVKb', '2022-05-25 09:47:55', '2022-05-25 16:47:55', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(6, 'Pendeta', 'Pengurus Satu', 'pengurusHKI', '$2y$10$0dDK3VbjVyvhu/bBZjAmeOSTlJcyYIsVCr4nnrebpcNLVMdw18TKq', 'NU8BEc3iitBALYE5H2ISdCYJ4ubkVHsTr51KnzM1aTvF54W9XEsMZR0Xu58A', '2022-06-07 19:25:05', '2022-06-08 02:25:05', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(7, 'jemaat', 'Simpan', 'jemaat1', '$2y$10$YgHk5qA6V3tZ6u75g2x4Y.QdjsMPxWg8.LYFc0zPLt0IL8bELAe1u', 'P4suF8FbY57JAXCFqlfRNglzD1OGV8PVzufcreQFCOTibThXtCwITYeZTdsA', '2022-05-22 09:19:27', '2022-06-13 08:04:48', 'Perempuan', 'Kel. Bapak SimSan/Ibu Juliana', 'Jalan Dame Dame Ma Di Hita', '081213131', 'Aktif', 'man_avatar.png', '2022-06-09', '2022-06-09'),
(8, 'pengurus', 'Juliana Pengurus', 'pengurus1', '$2y$10$YgHk5qA6V3tZ6u75g2x4Y.QdjsMPxWg8.LYFc0zPLt0IL8bELAe1u', 'DLrMEMCC9pa0tuHgvE6sXgl4dU8oAOqEmAKZjSDa5pDS2gZHdFwwE6EYsSSB', '2022-05-22 09:19:27', '2022-05-22 16:19:27', '', '', '', '', '', '', '2022-06-09', '2022-06-09'),
(10, 'jemaat', 'Ida Sinulingga', 'idasinulingga', '$2y$10$jd7/9qhCRHKlPVWNqTMbKu1n4q/U.NsnltOWgmoqLo2ZOUsKMCbYG', NULL, '2022-06-09 00:22:35', '2022-06-09 10:44:16', 'Perempuan', 'Bpk Harahap', 'Samosir', '08111321562', 'Aktif', 'man_avatar.png', '2022-03-08', '2022-06-07'),
(11, 'jemaat', 'Iwan Naibaho', 'iwannai', '$2y$10$U3xtWjesK5ZyyO4UCNSH6uI/UiSTdny/wYVXae7iXfomfT4bBb6iK', NULL, '2022-06-09 04:51:56', '2022-06-09 11:52:55', 'Laki-laki', 'Nai Baho', NULL, '08111321562', 'Status Jemaat', 'man_avatar.png', '2022-06-07', '2022-06-09'),
(12, 'jemaat', 'Rina Turnip', 'rina', '$2y$10$iH1BguzvuxKuvupJop6xdukK3Yilh6U2eVVsflJP0kZFc.i6vNl56', NULL, '2022-06-10 07:55:51', '2022-06-10 14:59:01', 'Perempuan', 'Bpk. Indah', NULL, NULL, 'Status Jemaat', NULL, '2022-06-08', '2022-06-08'),
(13, 'Pimpinan Jemaat', 'Pengurus Satu', 'pengurusHKI', '$2y$10$YVMuZHxkAQQuv6aSrlnbcuB1CNn6BYLMsgvfYxkk1zxu7nEk3V8UC', 'pEPFK7XdCc9f5cIrySgmLVvFY6GO8JNirddpuzFW0UUKMOOCvlt75YHd8kuJ', '2022-06-11 23:21:02', '2022-06-12 06:21:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Bendahara Jemaat', 'St. S Tampubolon', 'pengurusHKI', '$2y$10$gDarsyofqLQfXXgSBQYuyuf4DpdMyHY7yKw8GPlHmY.UpF8nPJTM2', 'WFDNrNnCWcVd1t7GbUSGYxWIsCn8xOTL9nAkICNcsfB4U67dTDIyqhmCKfTb', '2022-06-12 05:16:12', '2022-06-12 12:16:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Bendahara Jemaat', 'St. S Tampubolon', 'pengurusHKI', '$2y$10$oFIF1GOgzZSsVOqBcKkH6u13gighobPHBRbpVTWPj6qXEKprIq5Jy', 'Fd6wpINefx8qh1biXmk4fQlbb8srNb98cYXYQYjaMET4huzyIkrSkhQC6bob', '2022-06-12 05:16:47', '2022-06-12 12:16:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Sekretaris Jemaat', 'St.S Silaen', 'pengurusHKI', '$2y$10$3OJ3JYCZnCA/Tn3gChnrU.bxNrwMSkdj2JdS3vHyNSF9E3ewAvg2C', '5mWA445wzhbfcAoKLANcjjmPTtvj53loxDejYnnOXpN47jc1Bu3vzoDJ84XH', '2022-06-12 05:17:40', '2022-06-12 12:17:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Jabatan', 'St. A Lumbantoruan', 'pengurusHKI', '$2y$10$1jHiCAoX9zn1KyMjEMR2We246un1FUn5wM0UaIPTfv/o4ur0Ch/dS', 'oaakZXh56Uj5zFOIgWFDWxdi7ZJCQ5Btf6A34QSl3ar8iu4OWSDw93vdfd10', '2022-06-12 05:18:18', '2022-06-12 12:18:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `worship`
--

CREATE TABLE `worship` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tema` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `worship`
--

INSERT INTO `worship` (`id`, `judul`, `hari`, `tanggal`, `tema`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Minggu Kantante', 'Selasa', '2022-06-07', 'Bernyanyilah Bagi Tuhan/Marende Mahamu di Debata', 1, '2022-06-12 20:58:16', '2022-06-12 22:41:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `procedure`
--
ALTER TABLE `procedure`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `worship`
--
ALTER TABLE `worship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `album_gallery`
--
ALTER TABLE `album_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran_sakramens`
--
ALTER TABLE `pendaftaran_sakramens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengurus_gereja`
--
ALTER TABLE `pengurus_gereja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `procedure`
--
ALTER TABLE `procedure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `worship`
--
ALTER TABLE `worship`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
