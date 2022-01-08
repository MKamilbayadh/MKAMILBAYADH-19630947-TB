-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2022 pada 19.22
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `kodeMobil` varchar(15) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(25) NOT NULL,
  `jenisMobil` varchar(30) NOT NULL,
  `noPolisi` varchar(32) NOT NULL,
  `hargaSewa` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`kodeMobil`, `merk`, `warna`, `jenisMobil`, `noPolisi`, `hargaSewa`) VALUES
('111', 'Kijang Inova', 'Hitam', 'Mvp', 'S 5412 KL', 400000),
('112', 'Hilux', 'Putih', 'Mvp', 'A 2131 DA', 350000),
('122', 'Jimmy', 'Merah', 'Of Road', 'S 1222 SS', 300000),
('123', 'Civic', 'Silver', 'Sedan', 'S1276FF', 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kodePelanggan` int(5) NOT NULL,
  `namaPelanggan` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noTelp` int(12) NOT NULL,
  `noKtp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`kodePelanggan`, `namaPelanggan`, `alamat`, `noTelp`, `noKtp`) VALUES
(112, 'Budi', 'MARTAPURA', 812312456, '123445321'),
(113, 'nama', 'Banjarmasin', 812316511, '91932193931');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kodeTransaksi` varchar(15) NOT NULL,
  `kodeMobil` varchar(15) NOT NULL,
  `kodePelanggan` varchar(15) NOT NULL,
  `namaPelanggan` varchar(25) NOT NULL,
  `jenisMobil` varchar(13) NOT NULL,
  `noPolisi` varchar(10) NOT NULL,
  `noTelp` int(20) NOT NULL,
  `noKtp` int(50) NOT NULL,
  `hargaSewa` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kodeTransaksi`, `kodeMobil`, `kodePelanggan`, `namaPelanggan`, `jenisMobil`, `noPolisi`, `noTelp`, `noKtp`, `hargaSewa`) VALUES
('124', '122', '124', 'Budi', 'Sedan', 'S1231Q', 812321243, 644231351, 400000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kodeMobil`),
  ADD UNIQUE KEY `no_polisi` (`noPolisi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kodePelanggan`),
  ADD UNIQUE KEY `no_telp` (`noTelp`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kodeTransaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kodePelanggan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1232134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
