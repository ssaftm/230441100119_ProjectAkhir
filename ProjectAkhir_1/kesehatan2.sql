-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2024 pada 13.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kesehatan2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id_aktivitas` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_aktivitas` varchar(50) NOT NULL,
  `durasi` int(11) NOT NULL,
  `kalori_terbakar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aktivitas`
--

INSERT INTO `aktivitas` (`id_aktivitas`, `tanggal`, `jenis_aktivitas`, `durasi`, `kalori_terbakar`) VALUES
(1, '2024-11-11', 'jogging - 6', 15, 90),
(2, '2024-11-12', 'jogging - 6', 20, 120),
(3, '2024-11-13', 'bersepeda - 9', 20, 180),
(4, '2024-11-14', 'bersepeda - 9', 15, 135),
(5, '2024-11-15', 'jogging - 6', 30, 180),
(6, '2024-11-16', 'bersepeda - 9', 15, 135),
(7, '2024-11-17', 'jogging - 6', 15, 90),
(8, '2024-11-18', 'jogging - 6', 15, 90),
(9, '2024-11-19', 'bersepeda - 9', 15, 135),
(10, '2024-11-20', 'bersepeda - 9', 20, 180),
(11, '2024-11-21', 'bersepeda - 9', 25, 225),
(12, '2024-11-22', 'lari - 10', 15, 150),
(13, '2024-11-23', 'jogging - 6', 30, 180),
(14, '2024-11-24', 'bersepeda - 9', 25, 225),
(15, '2024-11-25', 'jogging - 6', 15, 90),
(16, '2024-11-26', 'jogging - 6', 20, 120),
(17, '2024-11-27', 'jogging - 6', 15, 90),
(18, '2024-11-28', 'jogging - 6', 15, 90),
(19, '2024-11-29', 'bersepeda - 9', 15, 135),
(20, '2024-11-30', 'jogging - 6', 25, 150),
(21, '2024-12-01', 'jogging - 6', 15, 90),
(22, '2024-12-02', 'jogging - 6', 15, 90),
(23, '2024-12-03', 'jogging - 6', 15, 90),
(24, '2024-12-04', 'lari - 10', 30, 300),
(25, '2024-12-05', 'bersepeda - 9', 15, 135),
(26, '2024-12-06', 'jogging - 6', 15, 90),
(27, '2024-12-07', 'jogging - 6', 15, 90),
(28, '2024-12-08', 'jogging - 6', 15, 90),
(29, '2024-12-09', 'bersepeda - 9', 25, 225),
(30, '2024-12-10', 'jogging - 6', 15, 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `makanan_kal` varchar(50) NOT NULL,
  `porsi` float NOT NULL,
  `kalori_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `tanggal`, `makanan_kal`, `porsi`, `kalori_total`) VALUES
(1, '2024-11-11', 'ayam', 100, 300),
(2, '2024-11-12', 'ikan', 110, 440),
(3, '2024-11-13', 'ikan', 130, 520),
(4, '2024-11-14', 'ikan', 115, 460),
(5, '2024-11-15', 'ayam', 115, 345),
(6, '2024-11-16', 'ayam', 120, 360),
(7, '2024-11-17', 'ayam', 111, 333),
(8, '2024-11-18', 'daging', 59, 413),
(9, '2024-11-19', 'ayam', 118, 354),
(10, '2024-11-20', 'udang', 120, 720),
(11, '2024-11-21', 'roti', 200, 600),
(12, '2024-11-22', 'daging', 116, 812),
(13, '2024-11-23', 'ayam', 117, 351),
(14, '2024-11-24', 'daging', 50, 350),
(15, '2024-11-25', 'ayam', 120, 360),
(16, '2024-11-26', 'ayam', 119, 357),
(17, '2024-11-27', 'seblak', 119, 1071),
(18, '2024-11-28', 'udang', 134, 804),
(19, '2024-11-29', 'udang', 136, 816),
(20, '2024-11-30', 'udang', 60, 360),
(21, '2024-12-01', 'dd', 133, 266),
(22, '2024-12-02', 'rawon', 162, 1458),
(23, '2024-12-03', 'rawon', 111, 999),
(24, '2024-12-04', 'rawon', 110, 990),
(25, '2024-12-05', 'rawon', 112, 1008),
(26, '2024-12-06', 'rawon', 113, 1017),
(27, '2024-12-07', 'rawon', 103, 927),
(28, '2024-12-08', 'rawon', 100, 900),
(29, '2024-12-09', 'ayam', 105, 315),
(30, '2024-12-10', 'ikan', 103, 412);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_mingguan`
--

CREATE TABLE `rekap_mingguan` (
  `id_total` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `sisa_kalori` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekap_mingguan`
--

INSERT INTO `rekap_mingguan` (`id_total`, `tanggal_mulai`, `tanggal_akhir`, `sisa_kalori`) VALUES
(1, '2024-11-11', '2024-11-17', 1828),
(2, '2024-11-18', '2024-11-24', 2415),
(3, '2024-11-25', '2024-12-01', 3269),
(4, '2024-12-02', '2024-12-08', 6414),
(5, '2024-12-09', '2024-12-15', 412);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`),
  ADD UNIQUE KEY `tanggal` (`tanggal`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`),
  ADD UNIQUE KEY `tanggal` (`tanggal`);

--
-- Indeks untuk tabel `rekap_mingguan`
--
ALTER TABLE `rekap_mingguan`
  ADD PRIMARY KEY (`id_total`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id_aktivitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `rekap_mingguan`
--
ALTER TABLE `rekap_mingguan`
  MODIFY `id_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
