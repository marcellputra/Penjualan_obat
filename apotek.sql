-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Sep 2024 pada 17.04
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `jenis_obat` varchar(50) DEFAULT NULL,
  `kategori_obat` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `tanggal_kadaluarsa` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jenis_obat`, `kategori_obat`, `harga`, `stok`, `tanggal_kadaluarsa`) VALUES
(1, 'Paracetamol', 'Tablet', 'Bebas', 2000.00, 100, '2025-12-31'),
(2, 'Amoxicillin', 'Kapsul', 'Resep', 15000.00, 50, '2024-07-15'),
(3, 'Ibuprofen', 'Tablet', 'Bebas', 2500.00, 75, '2025-08-30'),
(4, 'Cetirizine', 'Sirup', 'Resep', 12000.00, 30, '2023-11-01'),
(5, 'Metformin', 'Tablet', 'Resep', 10000.00, 40, '2024-05-10'),
(6, 'Paracetamol', 'Tablet', 'Bebas', 2000.00, 100, '2025-12-31'),
(7, 'Amoxicillin', 'Kapsul', 'Resep', 15000.00, 50, '2024-07-15'),
(8, 'Ibuprofen', 'Tablet', 'Bebas', 2500.00, 75, '2025-08-30'),
(9, 'Cetirizine', 'Sirup', 'Resep', 12000.00, 30, '2023-11-01'),
(10, 'Metformin', 'Tablet', 'Resep', 10000.00, 40, '2024-05-10'),
(11, 'Amlodipine', 'Tablet', 'Resep', 12000.00, 20, '2025-01-25'),
(12, 'Simvastatin', 'Tablet', 'Resep', 18000.00, 15, '2024-09-15'),
(13, 'Omeprazole', 'Kapsul', 'Resep', 16000.00, 40, '2023-12-10'),
(14, 'Ranitidine', 'Tablet', 'Resep', 8000.00, 50, '2024-02-28'),
(15, 'Furosemide', 'Tablet', 'Resep', 10000.00, 60, '2025-05-05'),
(16, 'Dexamethasone', 'Tablet', 'Resep', 5000.00, 80, '2024-07-01'),
(17, 'Mefenamic Acid', 'Kapsul', 'Bebas', 9000.00, 100, '2025-03-20'),
(18, 'Ciprofloxacin', 'Kapsul', 'Resep', 20000.00, 30, '2024-06-15'),
(19, 'Loratadine', 'Sirup', 'Resep', 13000.00, 25, '2023-11-30'),
(20, 'Salbutamol', 'Tablet', 'Bebas', 7000.00, 90, '2025-12-01'),
(21, 'Acetaminophen', 'Tablet', 'Bebas', 2000.00, 120, '2025-10-20'),
(22, 'Aspirin', 'Tablet', 'Bebas', 3000.00, 70, '2024-01-01'),
(23, 'Clopidogrel', 'Tablet', 'Resep', 25000.00, 45, '2024-08-10'),
(24, 'Hydrochlorothiazide', 'Tablet', 'Resep', 12000.00, 55, '2025-11-05'),
(25, 'Losartan', 'Tablet', 'Resep', 15000.00, 35, '2023-10-30'),
(26, 'Atorvastatin', 'Tablet', 'Resep', 17000.00, 80, '2025-06-14'),
(27, 'Glimepiride', 'Tablet', 'Resep', 16000.00, 40, '2024-12-25'),
(28, 'Diclofenac', 'Tablet', 'Bebas', 6000.00, 60, '2024-04-16'),
(29, 'Captopril', 'Tablet', 'Resep', 5000.00, 90, '2023-12-31'),
(30, 'Azithromycin', 'Kapsul', 'Resep', 22000.00, 30, '2024-03-10'),
(31, 'Ketoconazole', 'Kapsul', 'Resep', 14000.00, 20, '2025-07-20'),
(32, 'Fluconazole', 'Kapsul', 'Resep', 19000.00, 25, '2024-10-10'),
(33, 'Prednisone', 'Tablet', 'Resep', 6000.00, 40, '2023-09-29'),
(34, 'Albuterol', 'Inhaler', 'Resep', 30000.00, 15, '2024-01-25'),
(35, 'Montelukast', 'Tablet', 'Resep', 24000.00, 20, '2023-11-12'),
(36, 'Gliclazide', 'Tablet', 'Resep', 15000.00, 30, '2024-05-18'),
(37, 'Lansoprazole', 'Kapsul', 'Resep', 18000.00, 35, '2025-04-22'),
(38, 'Domperidone', 'Tablet', 'Resep', 9000.00, 50, '2024-07-30'),
(39, 'Spironolactone', 'Tablet', 'Resep', 13000.00, 40, '2023-12-15'),
(40, 'Phenylephrine', 'Sirup', 'Bebas', 7000.00, 60, '2025-03-12'),
(41, 'Chlorpheniramine', 'Tablet', 'Bebas', 4000.00, 90, '2024-08-05'),
(42, 'Metronidazole', 'Tablet', 'Resep', 12000.00, 50, '2024-09-20'),
(43, 'Warfarin', 'Tablet', 'Resep', 10000.00, 30, '2025-10-17'),
(44, 'Levothyroxine', 'Tablet', 'Resep', 17000.00, 50, '2023-12-05'),
(45, 'Nifedipine', 'Tablet', 'Resep', 11000.00, 40, '2024-02-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','kasir','pelanggan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
