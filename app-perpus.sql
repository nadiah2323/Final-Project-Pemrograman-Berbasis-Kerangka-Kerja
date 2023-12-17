-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 17 Des 2023 pada 14.04
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app-perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `nama_lengkap`, `password`, `status`) VALUES
(1, 'admin', 'Administrator', '$2y$10$r7bdumUI64GkGDELZ934M.ahJJwfZAdl/bn0e2SHKwdzNaq4/Ii26', '1'),
(2, 'keperpus', 'Kepala Perpustakaan', '$2y$10$PCP.5LR8skTpBW/lekkkaOeqjEXaq6X1HhEZfTpGD9EuGiq3yrvAu', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kd_buku` char(5) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` char(4) NOT NULL,
  `nomor_rak` smallint(6) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `kd_buku`, `judul_buku`, `sampul`, `penerbit`, `pengarang`, `tahun_terbit`, `nomor_rak`, `jumlah`) VALUES
(2, 'BK001', 'Perahu Kertas', 'WhatsApp_Image_2023-12-17_at_18_26_19_86361936.jpg', 'Gramedia Pustaka Utama', 'Sapardi Djoko Damono', '2018', 1, 95),
(3, 'BK002', 'Logika Informatika', 'WhatsApp_Image_2023-12-17_at_18_30_20_9cd7f147.jpg', 'MNC Publishing', 'Rosida Vivin Nahari, Sigit Susanto Putro', '2019', 2, 133),
(4, 'BK003', 'Discrete Mathematics', 'WhatsApp_Image_2023-12-17_at_18_31_43_3c442ae8.jpg', 'McGraw-Hill', 'Kenneth H Rosen', '2012', 3, 1071),
(5, 'BK004', 'Pale Blue Dot', 'WhatsApp_Image_2023-12-17_at_18_39_52_5a256c92.jpg', 'Kepustakaan Populer Gramedia', 'Carl Sagan', '2021', 4, 364),
(7, 'BK005', 'Operating Systems', 'WhatsApp_Image_2023-12-17_at_18_35_36_03e1eadc.jpg', 'Pearson', 'William Stallings', '2018', 5, 1128);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `tgl_buat` date NOT NULL,
  `judul_laporan` varchar(50) NOT NULL,
  `jenis` enum('semua','pinjam','kembali') NOT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id`, `tgl_buat`, `judul_laporan`, `jenis`, `tgl_awal`, `tgl_akhir`) VALUES
(11, '2020-12-18', 'Laporan Bulanan', 'semua', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `no_reg` char(6) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `no_reg`, `nama_siswa`, `foto`, `jenis_kelamin`, `kelas`, `password`) VALUES
(8, 'REG001', 'Tajul Arifin S', NULL, 'L', 'VII', '$2y$10$/rm33ODvbXA8z98FxA/tBeMF8L9y20jSM3dStM2OB5lKN0ANMLT46'),
(9, 'REG002', 'Bambang2', NULL, 'L', 'VII', '$2y$10$RMSZ1A20R1od7wFDratWoeJV8rWYmmc2xA.X7PIzwb79E9M1f3uZ2'),
(10, 'REG003', 'try', NULL, 'P', 'VII', '$2y$10$Mi4iu858bI6lZDRj.qzh6umSciUrlfazBlLZJgGPpa8Jh5RXYgY5m'),
(11, 'REG004', 'coba2', NULL, 'L', 'VII', '$2y$10$2PcEHLQxWBdXrn9e6NLN/.Pob1QwCFbn/78QSb7DRDkgVdTr0Gu2e'),
(12, 'REG005', 'Sekar', NULL, 'P', 'VII', '$2y$10$HePj7DZWKnEJP2fxigTxJOW16dqFBLnYa8oX071kt5xCD.uZNXE0y'),
(13, 'REG006', 'Sekar', NULL, 'L', 'VII', '$2y$10$uFabmDBzuua8J0wt54qtNeFWrfUJUW9dIIdycNeiiqvoLG6OFxS1.'),
(14, 'REG007', 'Ambar', NULL, 'P', 'VII', '$2y$10$hQ8Q9tHvhXr8UnlmV6wQLuCPwaLJZgyPsn2dd73TTju2vUqjxjmoi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `no_reg` char(6) NOT NULL,
  `kd_buku` char(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_reg`, `kd_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(10, 'REG002', 'BK002', '2020-12-27', '2022-08-17', 591000),
(11, '', '', '2023-12-16', NULL, NULL),
(12, 'REG002', 'BK001', '2023-12-16', '2023-12-16', 0),
(13, 'REG003', 'BK001', '2023-12-16', '2023-12-16', 0),
(14, 'REG004', 'BK002', '2023-12-17', '2023-12-17', 0),
(15, 'REG006', 'BK001', '2023-12-17', '2023-12-17', 0),
(16, 'REG007', 'BK001', '2023-12-17', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_buku` (`kd_buku`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_reg` (`no_reg`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
