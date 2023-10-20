-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2023 pada 08.42
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_jeremixipplg1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `apotek`
--

CREATE TABLE `apotek` (
  `idBarang` varchar(255) NOT NULL,
  `namaBarang` varchar(255) NOT NULL,
  `hargaBarang` varchar(50) NOT NULL,
  `stokBarang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `apotek`
--

INSERT INTO `apotek` (`idBarang`, `namaBarang`, `hargaBarang`, `stokBarang`) VALUES
('BARANG-001', 'sabun mandi', '5.000,00', '155'),
('BARANG-002', 'sampoo', '8.000,00', '15'),
('BARANG-003', 'sikat gigi', '3.000,00', '10'),
('BARANG-004', 'odol', '10.000,00', '8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` varchar(20) NOT NULL,
  `nmUser` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `nmUser`, `username`, `password`, `level`) VALUES
('1', 'jeremiah (pemilik)', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin'),
('2', 'rafelino (Pekerja)', 'rafelino', 'b53e2109d9a22c09b35bdcc2191448c5d56d3ace', 'pegawai'),
('3', 'sultanbau (Pekerja)', 'sultanbau', 'ae57ef1cfaa26e4dd4be14551a4cecfbcb116e19', 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
