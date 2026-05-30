-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2026 at 07:54 PM
-- Server version: 8.0.41
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ae`
--

-- --------------------------------------------------------

--
-- Table structure for table `community_comments`
--

CREATE TABLE `community_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `community_post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `community_posts`
--

CREATE TABLE `community_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('chat','tip','event') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chat',
  `event_date` date DEFAULT NULL,
  `event_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_posts`
--

INSERT INTO `community_posts` (`id`, `user_id`, `title`, `content`, `category`, `event_date`, `event_location`, `created_at`, `updated_at`) VALUES
(4, 5, 'Pemanfaatan Uang Hasil Pinjaman Dengan Benar', 'Gunakan uang dengan baik dan bijak, gunakan dalam hal yang positif bukan negatif!!', 'chat', NULL, NULL, '2026-05-29 12:14:45', '2026-05-29 12:14:45'),
(5, 5, 'Pinjol Vs Pinjam Modal', 'Peminjaman ga harus dikaitkan dengan utang. Selama kita bisa mengatur perekonomian kita maka segala harta yang kita punya akan barokah', 'chat', NULL, NULL, '2026-05-29 12:20:31', '2026-05-29 12:20:31'),
(7, 5, 'Tentang Amartha Empower', 'Ini Amartha Empower', 'chat', NULL, NULL, '2026-05-29 12:28:59', '2026-05-29 12:28:59'),
(9, 1, 'Pemberitahuan', 'Gunakan Forum Komunitas ini dengan bijak', 'chat', NULL, NULL, '2026-05-29 12:33:06', '2026-05-29 12:33:06'),
(10, 1, 'Testing', 'Testing', 'chat', NULL, NULL, '2026-05-29 12:35:15', '2026-05-29 12:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installments`
--

CREATE TABLE `installments` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` bigint UNSIGNED NOT NULL,
  `sequence` tinyint UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `status` enum('pending','paid','late') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installments`
--

INSERT INTO `installments` (`id`, `loan_id`, `sequence`, `due_date`, `amount`, `status`, `paid_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-06-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(2, 1, 2, '2026-07-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(3, 1, 3, '2026-08-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(4, 1, 4, '2026-09-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(5, 1, 5, '2026-10-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(6, 1, 6, '2026-11-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(7, 1, 7, '2026-12-04', '218750.00', 'paid', '2026-05-01', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(8, 1, 8, '2027-01-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(9, 1, 9, '2027-02-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(10, 1, 10, '2027-03-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(11, 1, 11, '2027-04-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(12, 1, 12, '2027-05-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(13, 1, 13, '2027-06-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(14, 1, 14, '2027-07-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(15, 1, 15, '2027-08-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(16, 1, 16, '2027-09-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(17, 1, 17, '2027-10-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(18, 1, 18, '2027-11-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(19, 1, 19, '2027-12-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(20, 1, 20, '2028-01-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(21, 1, 21, '2028-02-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(22, 1, 22, '2028-03-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(23, 1, 23, '2028-04-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(24, 1, 24, '2028-05-04', '218750.00', 'pending', NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(25, 5, 1, '2026-06-12', '427083.33', 'paid', '2026-05-12', '2026-05-12 09:38:12', '2026-05-12 10:41:20'),
(26, 5, 2, '2026-07-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(27, 5, 3, '2026-08-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(28, 5, 4, '2026-09-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(29, 5, 5, '2026-10-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(30, 5, 6, '2026-11-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(31, 5, 7, '2026-12-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(32, 5, 8, '2027-01-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(33, 5, 9, '2027-02-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(34, 5, 10, '2027-03-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(35, 5, 11, '2027-04-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(36, 5, 12, '2027-05-12', '427083.33', 'pending', NULL, '2026-05-12 09:38:12', '2026-05-12 09:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `learning_modules`
--

CREATE TABLE `learning_modules` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'video-singkat',
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `display_order` int UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learning_modules`
--

INSERT INTO `learning_modules` (`id`, `title`, `slug`, `duration_label`, `format`, `summary`, `content`, `display_order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Cara Mengatur Pengeluaran Harian', 'mengatur-pengeluaran-harian', '1-3 menit video singkat', 'video-singkat', 'Belajar mengelola arus kas harian usaha kecil dengan cara praktis.', NULL, 1, 1, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(2, 'Tips Investasi Aman', 'tips-investasi-aman', '2 menit infografis', 'video-singkat', 'Memahami pilihan investasi sederhana yang aman untuk pelaku usaha.', NULL, 2, 1, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(3, 'Tips Mengelola Stok Barang', 'mengelola-stok-barang', '3 menit video singkat', 'video-singkat', 'Mencatat keluar masuk barang agar usaha lebih stabil.', NULL, 3, 1, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(4, 'Mengenal Pinjaman Produktif', 'mengenal-pinjaman-produktif', '5 menit bacaan', 'teks', 'Memahami perbedaan pinjaman produktif dan konsumtif sebelum mengajukan dana usaha.', 'Pinjaman produktif digunakan untuk kegiatan yang membantu usaha menghasilkan pemasukan, misalnya menambah stok barang, membeli alat produksi, atau memperbaiki tempat usaha.\nSebelum meminjam, tulis tujuan pinjaman secara spesifik dan hitung apakah tambahan modal benar-benar bisa meningkatkan penjualan.\nHindari memakai dana pinjaman usaha untuk kebutuhan konsumtif karena cicilan tetap harus dibayar meskipun usaha belum bertambah.', 1, 1, '2026-05-15 13:33:11', '2026-05-15 13:33:11'),
(5, 'Menghitung Kebutuhan Pinjaman', 'menghitung-kebutuhan-pinjaman', '7 menit latihan', 'teks', 'Belajar menentukan nominal pinjaman yang sesuai dengan kebutuhan dan kemampuan usaha.', 'Mulai dari daftar kebutuhan usaha: stok, alat, biaya pengiriman, atau renovasi kecil. Beri harga pada setiap kebutuhan agar nominal pinjaman tidak asal tebak.\nTambahkan cadangan secukupnya, tetapi jangan menaikkan pinjaman hanya karena plafon yang tersedia lebih besar.\nBandingkan rencana pinjaman dengan pemasukan usaha bulanan supaya cicilan tidak mengganggu biaya operasional harian.', 2, 1, '2026-05-15 13:33:11', '2026-05-15 13:33:11'),
(6, 'Memahami Bunga, Tenor, dan Cicilan', 'memahami-bunga-tenor-cicilan', '6 menit bacaan', 'teks', 'Mengenal istilah bunga, tenor, tanggal jatuh tempo, dan total pembayaran pinjaman.', 'Bunga adalah biaya atas penggunaan dana pinjaman. Tenor adalah lama waktu pembayaran, misalnya 6, 12, atau 24 bulan.\nTenor yang lebih panjang dapat membuat cicilan bulanan lebih ringan, tetapi total biaya pinjaman bisa menjadi lebih besar.\nCatat tanggal jatuh tempo dan siapkan dana cicilan beberapa hari sebelumnya agar tidak terlambat membayar.', 3, 1, '2026-05-15 13:33:11', '2026-05-15 13:33:11'),
(7, 'Menilai Kemampuan Bayar', 'menilai-kemampuan-bayar', '8 menit simulasi', 'teks', 'Mengecek apakah arus kas usaha cukup aman untuk membayar cicilan setiap bulan.', 'Hitung rata-rata laba bersih bulanan, bukan hanya omzet. Laba bersih adalah uang tersisa setelah dikurangi modal barang, sewa, listrik, transportasi, dan biaya lain.\nCicilan idealnya diambil dari sebagian laba bersih, bukan dari uang belanja keluarga atau modal stok bulan berikutnya.\nJika laba sering naik turun, gunakan angka laba terendah sebagai acuan agar rencana cicilan lebih aman.', 4, 0, '2026-05-15 13:33:11', '2026-05-15 13:33:11'),
(8, 'Mengelola Dana Setelah Cair', 'mengelola-dana-setelah-cair', '5 menit checklist', 'teks', 'Membuat rencana penggunaan dana cair agar modal tidak tercampur dengan kebutuhan pribadi.', 'Pisahkan dana pinjaman dari uang pribadi. Jika memungkinkan, gunakan rekening atau catatan khusus untuk modal usaha.\nBelanjakan dana sesuai rencana awal dan simpan bukti transaksi agar mudah mengevaluasi hasil pinjaman.\nPantau perubahan penjualan setelah dana dipakai. Jika penjualan naik, sisihkan cicilan lebih awal sebelum memakai sisa keuntungan.', 5, 0, '2026-05-15 13:33:11', '2026-05-15 13:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `learning_progress`
--

CREATE TABLE `learning_progress` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `learning_module_id` bigint UNSIGNED NOT NULL,
  `completion_percent` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learning_progress`
--

INSERT INTO `learning_progress` (`id`, `user_id`, `learning_module_id`, `completion_percent`, `is_completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 100, 1, '2026-05-03 01:49:26', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(2, 2, 2, 40, 0, NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(3, 2, 3, 40, 0, NULL, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(4, 5, 4, 100, 1, '2026-05-15 13:39:53', '2026-05-15 13:39:53', '2026-05-15 13:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `application_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `tenor_months` tinyint UNSIGNED NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL DEFAULT '2.50',
  `status` enum('draft','submitted','reviewed','approved','rejected','disbursed','ongoing','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'submitted',
  `submitted_at` date DEFAULT NULL,
  `approved_at` date DEFAULT NULL,
  `disbursed_at` date DEFAULT NULL,
  `admin_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `application_code`, `amount`, `tenor_months`, `interest_rate`, `status`, `submitted_at`, `approved_at`, `disbursed_at`, `admin_notes`, `created_at`, `updated_at`) VALUES
(1, 2, 'AE-SAMPLE01', '5000000.00', 24, '2.50', 'disbursed', '2026-04-24', '2026-05-12', '2026-05-12', 'Pengajuan disetujui, dana siap dicairkan, dan akses belajar dibuka.', '2026-05-04 01:49:26', '2026-05-12 08:59:02'),
(2, 5, 'AE-PGR4CZCK', '1000000.00', 6, '2.50', 'submitted', '2026-05-12', NULL, NULL, NULL, '2026-05-12 09:19:28', '2026-05-12 09:19:28'),
(3, 5, 'AE-JLNIEXMZ', '1000000.00', 6, '2.50', 'submitted', '2026-05-12', NULL, NULL, NULL, '2026-05-12 09:19:29', '2026-05-12 09:19:29'),
(4, 5, 'AE-FZKTULZA', '1000000.00', 6, '2.50', 'rejected', '2026-05-12', NULL, NULL, 'Pengajuan ditolak admin.', '2026-05-12 09:25:43', '2026-05-12 09:38:22'),
(5, 5, 'AE-CA8VIJSW', '5000000.00', 12, '2.50', 'ongoing', '2026-05-12', '2026-05-12', '2026-05-12', 'Pengajuan disetujui, dana siap dicairkan, dan akses belajar dibuka.', '2026-05-12 09:36:14', '2026-05-12 10:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `loan_documents`
--

CREATE TABLE `loan_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` bigint UNSIGNED NOT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_status` enum('pending','verified','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_documents`
--

INSERT INTO `loan_documents` (`id`, `loan_id`, `document_type`, `file_name`, `file_path`, `verification_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'KTP', 'ktp-ala.pdf', NULL, 'verified', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(2, 1, 'Foto Usaha', 'usaha-ala.jpg', NULL, 'verified', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(3, 2, 'KTP', 'Foto Iqbal.jpeg', NULL, 'pending', '2026-05-12 09:19:28', '2026-05-12 09:19:28'),
(4, 2, 'Foto Usaha', 'Foto Rafi.jpeg', NULL, 'pending', '2026-05-12 09:19:28', '2026-05-12 09:19:28'),
(5, 3, 'KTP', 'Foto Iqbal.jpeg', NULL, 'pending', '2026-05-12 09:19:29', '2026-05-12 09:19:29'),
(6, 3, 'Foto Usaha', 'Foto Rafi.jpeg', NULL, 'pending', '2026-05-12 09:19:29', '2026-05-12 09:19:29'),
(7, 4, 'KTP', 'Foto Iqbal.jpeg', NULL, 'pending', '2026-05-12 09:25:43', '2026-05-12 09:25:43'),
(8, 4, 'Foto Usaha', 'Foto Nizar.jpeg', NULL, 'pending', '2026-05-12 09:25:43', '2026-05-12 09:25:43'),
(9, 5, 'KTP', 'Foto Nizar.jpeg', 'loan-documents/AMlfLmQ0np5j7BD3ZusSiuZP5JQUrtfn2NlJbIA9.jpg', 'pending', '2026-05-12 09:36:15', '2026-05-12 09:36:15'),
(10, 5, 'Foto Usaha', 'Foto Rafi.jpeg', 'loan-documents/bdtFIWDUIJ0WdPaGX07GhTTzTAMs3KA6YCCleKfQ.jpg', 'pending', '2026-05-12 09:36:15', '2026-05-12 09:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bank',
  `payment_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof_file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof_file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','verified','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `admin_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_payments`
--

INSERT INTO `loan_payments` (`id`, `loan_id`, `user_id`, `amount`, `payment_method`, `payment_provider`, `proof_file_name`, `proof_file_path`, `status`, `verified_at`, `admin_notes`, `created_at`, `updated_at`) VALUES
(1, 5, 5, '428000.00', 'bank', 'BCA', 'Logo Amartha.png', 'payment-proofs/0Zw7ErYjI2shT6VbmzjBAdnitXDtfQfVa7xtjuYk.png', 'verified', '2026-05-12 10:41:20', 'Pembayaran diverifikasi admin.', '2026-05-12 10:35:44', '2026-05-12 10:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_04_07_000001_create_amartha_tables', 1),
(6, '2026_05_12_000002_create_loan_payments_table', 2),
(7, '2026_05_13_000001_add_payment_method_to_loan_payments_table', 3),
(8, '2026_05_13_000002_add_payment_provider_to_loan_payments_table', 4),
(9, '2026_05_16_000001_add_profile_fields_to_users_table', 5),
(10, '2026_05_16_000002_add_content_to_learning_modules_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `type`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 2, 'Status Pinjaman Aktif', 'Pinjaman Rp 5.000.000 sudah aktif. Silakan cek jadwal cicilan dan lanjutkan Ruang Belajar.', 'loan', 0, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(2, 2, 'Akses Komunitas Terbuka', 'Anda sekarang bisa masuk ke Komunitas Usaha Perempuan dan mengikuti pelatihan offline.', 'community', 0, '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(3, 2, 'Status pinjaman diperbarui', 'Pengajuan AE-SAMPLE01 sekarang berstatus disbursed.', 'loan-status', 0, '2026-05-12 08:59:02', '2026-05-12 08:59:02'),
(4, 5, 'Pengajuan diterima', 'Pengajuan pinjaman Anda sedang diverifikasi admin.', 'loan', 0, '2026-05-12 09:19:28', '2026-05-12 09:19:28'),
(5, 5, 'Pengajuan diterima', 'Pengajuan pinjaman Anda sedang diverifikasi admin.', 'loan', 0, '2026-05-12 09:19:29', '2026-05-12 09:19:29'),
(6, 5, 'Pengajuan diterima', 'Pengajuan pinjaman Anda sedang diverifikasi admin.', 'loan', 0, '2026-05-12 09:25:43', '2026-05-12 09:25:43'),
(7, 5, 'Pengajuan diterima', 'Pengajuan pinjaman Anda sedang diverifikasi admin.', 'loan', 0, '2026-05-12 09:36:15', '2026-05-12 09:36:15'),
(8, 5, 'Status pinjaman diperbarui', 'Pengajuan AE-CA8VIJSW sekarang berstatus disbursed.', 'loan-status', 0, '2026-05-12 09:38:12', '2026-05-12 09:38:12'),
(9, 5, 'Status pinjaman diperbarui', 'Pengajuan AE-CA8VIJSW sekarang berstatus disbursed.', 'loan-status', 0, '2026-05-12 09:38:19', '2026-05-12 09:38:19'),
(10, 5, 'Status pinjaman diperbarui', 'Pengajuan AE-FZKTULZA sekarang berstatus rejected.', 'loan-status', 0, '2026-05-12 09:38:22', '2026-05-12 09:38:22'),
(11, 5, 'Pembayaran dikirim', 'Bukti pembayaran Anda sedang menunggu verifikasi admin.', 'payment', 0, '2026-05-12 10:35:44', '2026-05-12 10:35:44'),
(12, 5, 'Pembayaran verified', 'Pembayaran sebesar Rp 428.000 telah verified.', 'payment-status', 0, '2026-05-12 10:41:20', '2026-05-12 10:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `ojk_reports`
--

CREATE TABLE `ojk_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `report_date` date NOT NULL,
  `female_borrowers` int UNSIGNED NOT NULL DEFAULT '0',
  `male_borrowers` int UNSIGNED NOT NULL DEFAULT '0',
  `active_loans` int UNSIGNED NOT NULL DEFAULT '0',
  `total_disbursed` decimal(14,2) NOT NULL DEFAULT '0.00',
  `total_outstanding` decimal(14,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ojk_reports`
--

INSERT INTO `ojk_reports` (`id`, `report_date`, `female_borrowers`, `male_borrowers`, `active_loans`, `total_disbursed`, `total_outstanding`, `created_at`, `updated_at`) VALUES
(1, '2026-05-04', 1, 0, 1, '5000000.00', '3718750.00', '2026-05-04 01:49:26', '2026-05-04 01:49:26'),
(2, '2026-05-18', 1, 3, 2, '10000000.00', '8416666.63', '2026-05-18 04:11:42', '2026-05-18 04:11:42'),
(3, '2026-05-29', 1, 3, 2, '10000000.00', '8416666.63', '2026-05-29 10:55:42', '2026-05-29 10:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'user-session', 'cb3f0f3019ec718b6ccfc4942ac4c95e4dd9f8744cdd9acff76685817ff45e58', '[\"*\"]', '2026-05-04 02:02:04', NULL, '2026-05-04 02:02:01', '2026-05-04 02:02:04'),
(2, 'App\\Models\\User', 2, 'user-session', '04d9c5e6ab9fc027f5fed381a79fd9c6e6f16c958f6acb5483d7227000f11c49', '[\"*\"]', '2026-05-04 02:33:19', NULL, '2026-05-04 02:02:03', '2026-05-04 02:33:19'),
(3, 'App\\Models\\User', 3, 'mobile-app', '264784439c21d4d5d2d1e1ed0f0e0ee0f8937378408a8c833d82153ca4fb2780', '[\"*\"]', '2026-05-04 02:36:03', NULL, '2026-05-04 02:36:00', '2026-05-04 02:36:03'),
(4, 'App\\Models\\User', 3, 'user-session', '38cf22f5c6a8481b90bbeea2c7392492939184cf84d9eff71a6ab87a87cf5adb', '[\"*\"]', '2026-05-04 02:36:39', NULL, '2026-05-04 02:36:37', '2026-05-04 02:36:39'),
(5, 'App\\Models\\User', 3, 'user-session', '643df628c6bc496b01bd1e503b211fc8c2757780c43d8480f3119a8ca6dbebdf', '[\"*\"]', '2026-05-04 02:36:42', NULL, '2026-05-04 02:36:38', '2026-05-04 02:36:42'),
(6, 'App\\Models\\User', 3, 'user-session', '3f609b3bdc7f87bded40ec6dc72a97943de5845f495bbd1eb34842702dd232a4', '[\"*\"]', '2026-05-05 18:33:33', NULL, '2026-05-04 02:36:40', '2026-05-05 18:33:33'),
(7, 'App\\Models\\User', 4, 'mobile-app', '25328e53cffe34b944fc191eb7f232c3f51f3d232f9eb55d3ccf895adbf187d6', '[\"*\"]', '2026-05-08 06:20:41', NULL, '2026-05-05 18:35:45', '2026-05-08 06:20:41'),
(8, 'App\\Models\\User', 2, 'user-session', 'df6278af1f2cdad11f14e1253bcd078a0b6f63217efcb9e830cb511e3269fc4a', '[\"*\"]', '2026-05-08 06:37:32', NULL, '2026-05-08 06:37:30', '2026-05-08 06:37:32'),
(9, 'App\\Models\\User', 2, 'user-session', '911a19ca818d905a023da00957664322cc7dae78e41370302746324f86df2bdf', '[\"*\"]', '2026-05-08 07:01:58', NULL, '2026-05-08 06:37:32', '2026-05-08 07:01:58'),
(10, 'App\\Models\\User', 5, 'mobile-app', '0f66fb99c00afa99f0d4bcf4a3e7becc4b2188b0b72b6deed5ecf53366df91f6', '[\"*\"]', '2026-05-08 07:02:18', NULL, '2026-05-08 07:02:11', '2026-05-08 07:02:18'),
(11, 'App\\Models\\User', 5, 'user-session', 'f13df60805d41ca9809669f1d491e17998fb33f8d923fb3f03986bc3a5934c4f', '[\"*\"]', '2026-05-08 07:02:43', NULL, '2026-05-08 07:02:42', '2026-05-08 07:02:43'),
(12, 'App\\Models\\User', 5, 'user-session', '0c9e9fd127e7ca10f0b5c8ba73838b4bc8ec2f986c8f2d776e5da501a495d810', '[\"*\"]', '2026-05-08 07:02:49', NULL, '2026-05-08 07:02:47', '2026-05-08 07:02:49'),
(13, 'App\\Models\\User', 5, 'user-session', '3c58af4c2c94cdd701e6537ac1f8e24e6c0b91ba42305f33c672858d6381d8ed', '[\"*\"]', '2026-05-08 07:04:17', NULL, '2026-05-08 07:02:48', '2026-05-08 07:04:17'),
(14, 'App\\Models\\User', 5, 'user-session', 'c68cb634aabe6f5f753e32a98d007ae73c3d52fd09e898e80556d2cf1d816f66', '[\"*\"]', '2026-05-08 07:04:52', NULL, '2026-05-08 07:04:51', '2026-05-08 07:04:52'),
(15, 'App\\Models\\User', 5, 'user-session', '5063c7ccfb87e6ef34c36916345eef665a00c6fb62c9d9383473ee8ba0b6cbe1', '[\"*\"]', '2026-05-08 07:04:58', NULL, '2026-05-08 07:04:57', '2026-05-08 07:04:58'),
(16, 'App\\Models\\User', 5, 'user-session', '6141248e67109876be5b3b761e6ebc27c20d4b109d3ca12e742df61af3c56ed6', '[\"*\"]', '2026-05-08 07:19:42', NULL, '2026-05-08 07:04:58', '2026-05-08 07:19:42'),
(17, 'App\\Models\\User', 2, 'user-session', 'c7a7ae13927c338c5a880da9026bd4834c6458b63d74ba9c968e508e90c66120', '[\"*\"]', '2026-05-08 07:19:50', NULL, '2026-05-08 07:19:46', '2026-05-08 07:19:50'),
(18, 'App\\Models\\User', 2, 'user-session', '38365df0db96b2f217046c5ac5a55de63e20473496876199293372374b0e794a', '[\"*\"]', '2026-05-08 07:19:51', NULL, '2026-05-08 07:19:48', '2026-05-08 07:19:51'),
(19, 'App\\Models\\User', 2, 'user-session', 'cdd8f1387853540bed31117b56751730bc14f578129b5188163eca879c96be49', '[\"*\"]', '2026-05-11 01:37:45', NULL, '2026-05-08 07:19:49', '2026-05-11 01:37:45'),
(20, 'App\\Models\\User', 2, 'user-session', '6d2658752f34ceed88d091f360ffc3aaa0ece174a86aeaa2b9766aefc2584e87', '[\"*\"]', '2026-05-11 01:38:23', NULL, '2026-05-11 01:38:21', '2026-05-11 01:38:23'),
(21, 'App\\Models\\User', 2, 'user-session', '7c1023a0105d5d136ab9fe64d869cbc945ece9af5f01317fb6fafec0b57505af', '[\"*\"]', '2026-05-11 01:42:49', NULL, '2026-05-11 01:38:23', '2026-05-11 01:42:49'),
(22, 'App\\Models\\User', 5, 'user-session', '8325d6ac9e3bebfd4de9c4f61e6269664efad823d4386fa34a733cc4e5fb9eb5', '[\"*\"]', '2026-05-12 08:13:19', NULL, '2026-05-11 01:42:59', '2026-05-12 08:13:19'),
(23, 'App\\Models\\User', 2, 'user-session', '680f4d7fcbc9e63201b07c4f904f22837f0bbd3ff15809b50ad3a828b6342ffe', '[\"*\"]', '2026-05-12 08:40:51', NULL, '2026-05-12 08:40:33', '2026-05-12 08:40:51'),
(24, 'App\\Models\\User', 2, 'user-session', '1223bfc64387d5ce30788add834441138b1653a260d4e12199c3d83b74840284', '[\"*\"]', '2026-05-12 08:57:52', NULL, '2026-05-12 08:40:49', '2026-05-12 08:57:52'),
(25, 'App\\Models\\User', 1, 'admin-session', 'b3e15ac96b27252865ef28805d8dad63e4a7aa1b3c6fd8a2d9201a81bc077be2', '[\"*\"]', '2026-05-12 09:18:53', NULL, '2026-05-12 08:58:40', '2026-05-12 09:18:53'),
(26, 'App\\Models\\User', 5, 'user-session', '7005fe87c3a761f0efc3043570b06fe01a8f6daface6e948dbbef1f41337858d', '[\"*\"]', '2026-05-12 09:18:42', NULL, '2026-05-12 09:18:41', '2026-05-12 09:18:42'),
(27, 'App\\Models\\User', 5, 'user-session', '82f76401fcfac3e00c5242d116b0ef93e1366152a2d0799aa858e618a20ea648', '[\"*\"]', '2026-05-12 09:18:48', NULL, '2026-05-12 09:18:44', '2026-05-12 09:18:48'),
(28, 'App\\Models\\User', 5, 'user-session', '563b8f94931088d625f34106449084f235bc3161d132475401adb89c3dc2c9ea', '[\"*\"]', '2026-05-18 07:00:33', NULL, '2026-05-12 09:18:47', '2026-05-18 07:00:33'),
(29, 'App\\Models\\User', 5, 'user-session', '9c32d42418e94fd88da2a8724e9eead5dbb30a519733298738bc56b34ff58c94', '[\"*\"]', '2026-05-12 09:24:53', NULL, '2026-05-12 09:24:51', '2026-05-12 09:24:53'),
(30, 'App\\Models\\User', 5, 'user-session', 'c43c3d40a327b0fe03f557f753ea40d92d54cae444bdbaab51072b781858777d', '[\"*\"]', '2026-05-12 09:45:41', NULL, '2026-05-12 09:24:56', '2026-05-12 09:45:41'),
(31, 'App\\Models\\User', 1, 'admin-session', '5c5733d1b8858cc18209c33af387bfa83e6caec6a69cc1d00b1928b48a67274a', '[\"*\"]', '2026-05-15 13:52:54', NULL, '2026-05-12 09:25:00', '2026-05-15 13:52:54'),
(32, 'App\\Models\\User', 2, 'user-session', '15c84effaf299768e7952ba2b4c4f6703ee489daac73747bbe5f7263f922b66c', '[\"*\"]', '2026-05-12 09:45:44', NULL, '2026-05-12 09:45:39', '2026-05-12 09:45:44'),
(33, 'App\\Models\\User', 2, 'user-session', '733c84c3debb4bae0af0612c5131662d1ec817138a862a046a6c99ee0a6395ec', '[\"*\"]', '2026-05-12 09:45:55', NULL, '2026-05-12 09:45:43', '2026-05-12 09:45:55'),
(34, 'App\\Models\\User', 2, 'user-session', 'bd570d240ac2b32fe0ee47e4503e432014d999cc402e40040421011211155460', '[\"*\"]', '2026-05-12 09:45:56', NULL, '2026-05-12 09:45:47', '2026-05-12 09:45:56'),
(35, 'App\\Models\\User', 2, 'user-session', '0d2819e7582200884cd82cd037502b6a083e15dc020c67e9e6788453e8cec341', '[\"*\"]', '2026-05-12 09:45:59', NULL, '2026-05-12 09:45:49', '2026-05-12 09:45:59'),
(36, 'App\\Models\\User', 2, 'user-session', '0e99978a6848f568f48e5aa5a407555985cdf0d23f128e4d626552a2090bbaeb', '[\"*\"]', '2026-05-12 09:46:04', NULL, '2026-05-12 09:45:52', '2026-05-12 09:46:04'),
(37, 'App\\Models\\User', 5, 'user-session', 'deda3c5cb915c0f86a91439750ff25412dd30e97e5abd862dc82393ad647f494', '[\"*\"]', '2026-05-15 13:53:24', NULL, '2026-05-12 09:48:33', '2026-05-15 13:53:24'),
(38, 'App\\Models\\User', 2, 'user-session', 'af502834ef588bdbf5d9a303d7395b81271108ff03f80416d8aaaf997a4369c2', '[\"*\"]', '2026-05-15 13:03:05', NULL, '2026-05-15 13:02:57', '2026-05-15 13:03:05'),
(39, 'App\\Models\\User', 2, 'user-session', '6b9d7e4ebf8675613e0c796bce4becc10e4e3ab2ede74a7f650bcd7fbd212f34', '[\"*\"]', '2026-05-15 13:04:55', NULL, '2026-05-15 13:03:11', '2026-05-15 13:04:55'),
(40, 'App\\Models\\User', 2, 'user-session', '459622993fb1f466864df18b943bfbf58671cbf1d5ed86a0ce80752540c5aafb', '[\"*\"]', '2026-05-15 13:05:54', NULL, '2026-05-15 13:05:02', '2026-05-15 13:05:54'),
(41, 'App\\Models\\User', 2, 'user-session', '7152dbbae3bb676081d738b11da8e38d890317a0048c432c16d3b94f1a828e54', '[\"*\"]', '2026-05-15 13:09:17', NULL, '2026-05-15 13:05:52', '2026-05-15 13:09:17'),
(42, 'App\\Models\\User', 2, 'user-session', '9ac5367ae65c0f935501321b94451cf4588227bf6c9a800b32deca398f7e2974', '[\"*\"]', '2026-05-15 13:12:20', NULL, '2026-05-15 13:09:14', '2026-05-15 13:12:20'),
(43, 'App\\Models\\User', 2, 'user-session', '34b8372dcc002a734889e3a3c39827fd2d239adca2167feaf9c25cbb2b0fdb85', '[\"*\"]', '2026-05-15 13:44:26', NULL, '2026-05-15 13:12:13', '2026-05-15 13:44:26'),
(44, 'App\\Models\\User', 2, 'user-session', 'ba7dcfa04b6420061d3f8a3401d564859e1ffd98e4f8c4200359bd9d9deb341d', '[\"*\"]', '2026-05-15 13:45:13', NULL, '2026-05-15 13:44:42', '2026-05-15 13:45:13'),
(45, 'App\\Models\\User', 1, 'admin-session', 'd49f553ac48d8ec0d8816c016147faf386c1ae20bbd86e41ff5b88b1c67bc29f', '[\"*\"]', '2026-05-15 13:45:10', NULL, '2026-05-15 13:45:03', '2026-05-15 13:45:10'),
(46, 'App\\Models\\User', 2, 'user-session', 'efa49a0f4a101d7a57b2b97295e34330a7510fe5a6bfed708637536de064faee', '[\"*\"]', '2026-05-15 13:47:29', NULL, '2026-05-15 13:45:40', '2026-05-15 13:47:29'),
(47, 'App\\Models\\User', 2, 'user-session', 'b66e1e95db038849a9d458b459c3613944954e31da5d6e1cfbf908c6fda24259', '[\"*\"]', '2026-05-15 13:50:13', NULL, '2026-05-15 13:47:36', '2026-05-15 13:50:13'),
(48, 'App\\Models\\User', 2, 'user-session', '016e51317689547f5445f5324f6441623f5be0e4d709cc5137bed2eec41af920', '[\"*\"]', '2026-05-15 13:51:36', NULL, '2026-05-15 13:50:20', '2026-05-15 13:51:36'),
(49, 'App\\Models\\User', 2, 'user-session', 'ff24db32f303b2e62be9d9fe304c5c1b693a773a04190c69ae0a2e1834873d45', '[\"*\"]', '2026-05-15 13:53:11', NULL, '2026-05-15 13:51:42', '2026-05-15 13:53:11'),
(50, 'App\\Models\\User', 2, 'user-session', 'c706844657fdfccca0a732a0ccf14308f6cdd521d833161f8d2522557bf3cc1b', '[\"*\"]', '2026-05-29 12:10:49', NULL, '2026-05-15 13:53:14', '2026-05-29 12:10:49'),
(51, 'App\\Models\\User', 1, 'admin-session', '1fe2c3491909647261caf66a34b817777e220d2bb6e057ff237ba2a970d00adf', '[\"*\"]', '2026-05-15 13:58:58', NULL, '2026-05-15 13:53:36', '2026-05-15 13:58:58'),
(52, 'App\\Models\\User', 5, 'user-session', 'eda74f33220b36e9c1ba902ea8e5d90bde81cd816eba162535553cf85eba0b6c', '[\"*\"]', '2026-05-18 01:33:25', NULL, '2026-05-15 13:54:33', '2026-05-18 01:33:25'),
(53, 'App\\Models\\User', 5, 'user-session', '579e56c84a4cb789d6bde7386cd85e53fad358e80d9ddeb09a3b3520370be8af', '[\"*\"]', NULL, NULL, '2026-05-15 13:54:38', '2026-05-15 13:54:38'),
(54, 'App\\Models\\User', 1, 'admin-session', 'f4e611795e894935484a4e7dc6a2efccdabbc91308b720507b966555fd3e5155', '[\"*\"]', '2026-05-15 13:55:18', NULL, '2026-05-15 13:55:12', '2026-05-15 13:55:18'),
(55, 'App\\Models\\User', 1, 'admin-session', 'd36af3e5e29056be5f43dc6b7b39a16d26351df89ca9141fdf4b2d3c92dd7e2c', '[\"*\"]', NULL, NULL, '2026-05-15 13:59:26', '2026-05-15 13:59:26'),
(56, 'App\\Models\\User', 1, 'admin-session', '13c058ad4a42ca69f3bd981e4244bb0f08bd6a91f07fba8d866c29580bdc1c62', '[\"*\"]', '2026-05-15 14:00:12', NULL, '2026-05-15 14:00:07', '2026-05-15 14:00:12'),
(57, 'App\\Models\\User', 5, 'user-session', '4caf13d5d33ce87f914acd29de4dc66aac0d860b19142343cc4cdb4496cbd238', '[\"*\"]', '2026-05-18 01:54:15', NULL, '2026-05-18 01:33:41', '2026-05-18 01:54:15'),
(58, 'App\\Models\\User', 1, 'admin-session', 'c18ce01dfaae8c3f8250eac69147183ec5d65c441cc7cba5941c2feebe1215a3', '[\"*\"]', '2026-05-18 01:46:59', NULL, '2026-05-18 01:34:15', '2026-05-18 01:46:59'),
(59, 'App\\Models\\User', 5, 'user-session', '35aa061072371ef3412f13a2bcb1d344f6854cf5688262fdb87b820369fcceab', '[\"*\"]', '2026-05-18 02:25:52', NULL, '2026-05-18 02:09:33', '2026-05-18 02:25:52'),
(60, 'App\\Models\\User', 1, 'admin-session', '17f53f18594b68cc2d2f773753afcd4f61702e7eca278825c5c1356f44910dfa', '[\"*\"]', '2026-05-18 04:11:43', NULL, '2026-05-18 02:11:09', '2026-05-18 04:11:43'),
(61, 'App\\Models\\User', 5, 'user-session', '1096edf51a5671195fc66f3741192896a01f2e5088f3d0918a90d73a07481ec7', '[\"*\"]', '2026-05-18 02:41:25', NULL, '2026-05-18 02:38:48', '2026-05-18 02:41:25'),
(62, 'App\\Models\\User', 5, 'user-session', 'dcaee37eeb1624737c89eadc03d6189ecae30a151f2173dc52311b7fc97824f2', '[\"*\"]', NULL, NULL, '2026-05-18 02:38:50', '2026-05-18 02:38:50'),
(64, 'App\\Models\\User', 5, 'user-session', 'db63251251a91c84ad87a5b25e5d2372cabd73e3fec0d21b977568838c4596ff', '[\"*\"]', NULL, NULL, '2026-05-18 02:42:01', '2026-05-18 02:42:01'),
(69, 'App\\Models\\User', 5, 'user-session', 'a46c774547099128b93b84b12f1fa2d903085d3664a35d114abd5dc356152711', '[\"*\"]', NULL, NULL, '2026-05-19 20:35:25', '2026-05-19 20:35:25'),
(71, 'App\\Models\\User', 5, 'user-session', '9f3308f49f685480d8342a4f7b843d2468ab4482b31f83058403fd860c484b5d', '[\"*\"]', '2026-05-19 20:35:46', NULL, '2026-05-19 20:35:36', '2026-05-19 20:35:46'),
(72, 'App\\Models\\User', 5, 'user-session', '1898b214a4c1e3aac22018adfb3588a30f50412bc09bba036441f09ce9d89678', '[\"*\"]', '2026-05-27 07:01:03', NULL, '2026-05-19 20:40:55', '2026-05-27 07:01:03'),
(73, 'App\\Models\\User', 5, 'user-session', '6b1515ed55ce55f85aa3e6b9198550ea29c102a2f12346f1b109e25fbd32bd77', '[\"*\"]', '2026-05-27 07:19:50', NULL, '2026-05-27 07:01:13', '2026-05-27 07:19:50'),
(74, 'App\\Models\\User', 1, 'admin-session', 'c1db20ef32e82d3c7d49e576ed5e8fc19b7ccb9301b0ea25f4d9fb91f9f07947', '[\"*\"]', '2026-05-27 07:10:34', NULL, '2026-05-27 07:02:22', '2026-05-27 07:10:34'),
(78, 'App\\Models\\User', 5, 'user-session', 'b6064c8796a66d1890b87e4bfb72e35078a179b031c67124d8acd6f5c7e209a6', '[\"*\"]', '2026-05-29 10:41:05', NULL, '2026-05-27 07:41:48', '2026-05-29 10:41:05'),
(79, 'App\\Models\\User', 5, 'user-session', '10e0de0c18a292ca118a61171942c90ce47ad6fe95201cff80f8e4844ade56fc', '[\"*\"]', '2026-05-29 10:41:24', NULL, '2026-05-29 10:41:18', '2026-05-29 10:41:24'),
(81, 'App\\Models\\User', 1, 'admin-session', '377b0daf9bf191857d36e7191b04467c00d19206395d17615084e0aa7e7dc14e', '[\"*\"]', '2026-05-29 12:09:50', NULL, '2026-05-29 10:45:22', '2026-05-29 12:09:50'),
(88, 'App\\Models\\User', 2, 'user-session', '7262dac8b9119b9e3178f7e1280581a9b2907613e8337db62b8ca692d5d8110d', '[\"*\"]', '2026-05-29 12:12:44', NULL, '2026-05-29 12:11:00', '2026-05-29 12:12:44'),
(89, 'App\\Models\\User', 2, 'user-session', '182a477260a2889cc034923a57e9fbebcab6b058e02cf988448b82136e9b53f4', '[\"*\"]', '2026-05-29 12:18:03', NULL, '2026-05-29 12:12:43', '2026-05-29 12:18:03'),
(90, 'App\\Models\\User', 2, 'user-session', '83fd5b6037eb09d70898a5c5ec6751bda4746e5da7a0e75aff1e50ef8a1abb80', '[\"*\"]', '2026-05-29 12:37:23', NULL, '2026-05-29 12:17:59', '2026-05-29 12:37:23'),
(92, 'App\\Models\\User', 5, 'user-session', 'ed3fb6037578d9d08f701c8c655b1c27526b205eca60be951d8220b9d99dbb02', '[\"*\"]', '2026-05-29 12:40:04', NULL, '2026-05-29 12:38:28', '2026-05-29 12:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('female','male') COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `business_name`, `domicile`, `gender`, `profile_photo_path`, `bio`, `role`, `email_verified_at`, `password`, `approved_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@amartha.test', '081111111111', 'Amartha HQ', 'Jakarta', 'female', NULL, NULL, 'admin', NULL, '$2y$12$JRFaE2WmPfZV/l2VYWpbxO9iSZuzw6IjBushNu5/QtbG9zAK8Qsce', '2026-05-04 01:49:25', NULL, '2026-05-04 01:49:25', '2026-05-15 13:57:55'),
(2, 'Ala Gen Z', 'user@amartha.test', '081234567890', 'Warung Ibu Ala', 'Bandung', 'female', NULL, 'Pemilik warung harian yang sedang mengembangkan stok dan pencatatan usaha.', 'user', NULL, '$2y$12$54E1XaOENeO760tOiLBp0uHOmAXJwOPiGlOEYCvMn.k2vz1oroH7.', '2026-05-04 01:49:26', NULL, '2026-05-04 01:49:26', '2026-05-15 13:05:09'),
(3, 'Iqbal Gnteng', 'iqbalganteng@h2.in', '0812345678', 'Wekidi', 'Tumban', 'male', NULL, NULL, 'user', NULL, '$2y$12$wUCtcJeloPwTbtVLcU8ZBeNZK5XpW6eD9jlxAze4ZFrPB/qKXtdNu', NULL, NULL, '2026-05-04 02:36:00', '2026-05-04 02:36:00'),
(4, 'Nizar Awokawok', 'nizarmoxxer@hi.2in', '0881239976', 'Maxue', 'Batu', 'male', NULL, NULL, 'user', NULL, '$2y$12$CkJxT2RhzolLdlEheXu02uJCA1vVMN5oWlo2LeDmpxoI3xBlsuJta', NULL, NULL, '2026-05-05 18:35:45', '2026-05-05 18:35:45'),
(5, 'Iqbal Fadailto Marzalino', 'iqbalfadailto75@gmail.com', '081231099776', 'Beras Punel', 'Tuban', 'male', 'profile-photos/ZBK44EYSjxy8PpV6sID6TfLgkkS6tOocEV4stcIV.jpg', NULL, 'user', NULL, '$2y$12$F16oEW2DI1CM.beJTlLoIOSX10q6MISh4G55KXkzsMDIPCFGBlI9e', NULL, NULL, '2026-05-08 07:02:11', '2026-05-27 07:42:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `community_comments`
--
ALTER TABLE `community_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `community_comments_community_post_id_foreign` (`community_post_id`),
  ADD KEY `community_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `community_posts`
--
ALTER TABLE `community_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `community_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `installments_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `learning_modules`
--
ALTER TABLE `learning_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `learning_modules_slug_unique` (`slug`);

--
-- Indexes for table `learning_progress`
--
ALTER TABLE `learning_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `learning_progress_user_id_learning_module_id_unique` (`user_id`,`learning_module_id`),
  ADD KEY `learning_progress_learning_module_id_foreign` (`learning_module_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loans_application_code_unique` (`application_code`),
  ADD KEY `loans_user_id_foreign` (`user_id`);

--
-- Indexes for table `loan_documents`
--
ALTER TABLE `loan_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_documents_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_payments_loan_id_foreign` (`loan_id`),
  ADD KEY `loan_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `ojk_reports`
--
ALTER TABLE `ojk_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `community_comments`
--
ALTER TABLE `community_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `community_posts`
--
ALTER TABLE `community_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `learning_modules`
--
ALTER TABLE `learning_modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `learning_progress`
--
ALTER TABLE `learning_progress`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_documents`
--
ALTER TABLE `loan_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ojk_reports`
--
ALTER TABLE `ojk_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `community_comments`
--
ALTER TABLE `community_comments`
  ADD CONSTRAINT `community_comments_community_post_id_foreign` FOREIGN KEY (`community_post_id`) REFERENCES `community_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `community_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `community_posts`
--
ALTER TABLE `community_posts`
  ADD CONSTRAINT `community_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `installments`
--
ALTER TABLE `installments`
  ADD CONSTRAINT `installments_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `learning_progress`
--
ALTER TABLE `learning_progress`
  ADD CONSTRAINT `learning_progress_learning_module_id_foreign` FOREIGN KEY (`learning_module_id`) REFERENCES `learning_modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `learning_progress_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loan_documents`
--
ALTER TABLE `loan_documents`
  ADD CONSTRAINT `loan_documents_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD CONSTRAINT `loan_payments_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loan_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
