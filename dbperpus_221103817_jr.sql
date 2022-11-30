-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 09:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbperpus_221103817_jr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `idAnggota` char(5) NOT NULL,
  `namaAnggota` varchar(100) DEFAULT NULL,
  `jkAnggota` char(1) DEFAULT NULL,
  `jurusanAnggota` char(2) DEFAULT NULL,
  `noTelpAnggota` varchar(13) DEFAULT NULL,
  `alamatAnggota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`idAnggota`, `namaAnggota`, `jkAnggota`, `jurusanAnggota`, `noTelpAnggota`, `alamatAnggota`) VALUES
('00001', 'junika rizki', 'L', 'SI', '081111123432', 'sungai jawi'),
('00002', 'deonatus kelvin', 'L', 'TI', '081111123431', 'kota baru'),
('00003', 'valentino', 'L', 'SI', '081111123433', 'tanjung raya'),
('00004', 'wahyu', 'L', 'SI', '081111123434', 'kota baru'),
('00005', 'putri geovani', 'P', 'SI', '081111123430', 'jeruju'),
('00006', 'triwulanda', 'P', 'SI', '081111123435', 'jeruju'),
('00007', 'revan', 'L', 'TI', '081111123436', 'tanjung raya'),
('00008', 'cindy', 'P', 'SI', '081111123437', 'perdamaian'),
('00009', 'agustianto', 'L', 'SI', '081111123438', 'serdam'),
('00010', 'darul ikhwan', 'L', 'SI', '081111123439', 'serdam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `idBuku` char(5) NOT NULL,
  `judulBuku` varchar(50) DEFAULT NULL,
  `penulisBuku` varchar(50) DEFAULT NULL,
  `penerbitBuku` varchar(50) DEFAULT NULL,
  `tahunPenerbit` char(4) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`idBuku`, `judulBuku`, `penulisBuku`, `penerbitBuku`, `tahunPenerbit`, `stok`) VALUES
('B0001', 'basis data', 'hendra kurniawan', 'airlangga', '2020', 5),
('B0002', 'bahasa indonesia', 'susanti', 'airlangga', '2019', 7),
('B0003', 'algoritma pemrograman', 'i dewa ayu eka', 'airlangga', '2020', 5),
('B0004', 'akuntansi dasar', 'arie pradina', 'airlangga', '2021', 6),
('B0005', 'jaringan komputer', 'cadafi', 'airlangga', '2022', 9),
('B0006', 'sistem informasi', 'utin kasma', 'airlangga', '2019', 12),
('B0007', 'pendidikan agama islam', 'alhani', 'airlangga', '2019', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `idPeminjaman` char(5) NOT NULL,
  `tglPinjam` date DEFAULT NULL,
  `tglKembali` date DEFAULT NULL,
  `idBuku` char(5) DEFAULT NULL,
  `idAnggota` char(5) DEFAULT NULL,
  `idPetugas` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`idPeminjaman`, `tglPinjam`, `tglKembali`, `idBuku`, `idAnggota`, `idPetugas`) VALUES
('P0001', '2022-10-31', '2022-11-30', 'B0001', '00004', 'P0001'),
('P0002', '2022-11-01', '2022-12-01', 'B0002', '00004', 'P0001'),
('P0003', '2022-11-13', '2022-11-30', 'B0004', '00001', 'P0002'),
('P0004', '2022-10-01', '2022-11-30', 'B0002', '00002', 'P0003'),
('P0005', '2022-11-15', '2022-12-01', 'B0005', '00007', 'P0003'),
('P0006', '2022-11-21', '2022-12-09', 'B0001', '00010', 'P0001'),
('P0007', '2022-11-21', '2022-11-30', 'B0006', '00008', 'P0002');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `idPengembalian` char(5) NOT NULL,
  `tglPengembalian` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `idBuku` char(5) DEFAULT NULL,
  `idAnggota` char(5) DEFAULT NULL,
  `idPetugas` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengembalian`
--

INSERT INTO `tb_pengembalian` (`idPengembalian`, `tglPengembalian`, `denda`, `idBuku`, `idAnggota`, `idPetugas`) VALUES
('PE001', '2022-10-31', NULL, 'B0001', '00004', 'P0001'),
('PE002', '2022-11-01', NULL, 'B0001', '00004', 'P0001'),
('PE003', '2022-12-01', NULL, 'B0002', '00004', 'P0001'),
('PE004', '2022-12-07', 10000, 'B0002', '00002', 'P0003'),
('PE005', '2022-12-01', NULL, 'B0005', '00007', 'P0003'),
('PE006', '2022-12-09', NULL, 'B0001', '00010', 'P0001'),
('PE007', '2022-11-30', NULL, 'B0006', '00008', 'P0002');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `idPetugas` char(5) NOT NULL,
  `namaPetugas` varchar(50) DEFAULT NULL,
  `jabatanPetugas` varchar(50) DEFAULT NULL,
  `noTelpPetugas` char(13) DEFAULT NULL,
  `alamatPetugas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`idPetugas`, `namaPetugas`, `jabatanPetugas`, `noTelpPetugas`, `alamatPetugas`) VALUES
('P0001', 'chorniawan', 'ketua', '083432125675', 'jeruju'),
('P0002', 'david', 'wakil 1', '083432125676', 'sungai raya dalam'),
('P0003', 'irvan', 'wakil 2', '083432125677', 'kota baru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rak`
--

CREATE TABLE `tb_rak` (
  `idRak` char(5) NOT NULL,
  `namaRak` varchar(50) DEFAULT NULL,
  `lokasiRak` varchar(50) DEFAULT NULL,
  `idBuku` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rak`
--

INSERT INTO `tb_rak` (`idRak`, `namaRak`, `lokasiRak`, `idBuku`) VALUES
('R0001', 'rak 1', 'barisan 1', 'B0001'),
('R0002', 'rak 2', 'barisan 3', 'B0004'),
('R0003', 'rak 3', 'barisan 2', 'B0002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`idAnggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`idBuku`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`idPeminjaman`),
  ADD KEY `pi1` (`idBuku`),
  ADD KEY `pi2` (`idAnggota`),
  ADD KEY `pi3` (`idPetugas`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`idPengembalian`),
  ADD KEY `pe1` (`idBuku`),
  ADD KEY `pe2` (`idAnggota`),
  ADD KEY `pe3` (`idPetugas`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`idPetugas`);

--
-- Indexes for table `tb_rak`
--
ALTER TABLE `tb_rak`
  ADD PRIMARY KEY (`idRak`),
  ADD KEY `idBuku` (`idBuku`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD CONSTRAINT `pi1` FOREIGN KEY (`idBuku`) REFERENCES `tb_buku` (`idBuku`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pi2` FOREIGN KEY (`idAnggota`) REFERENCES `tb_anggota` (`idAnggota`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pi3` FOREIGN KEY (`idPetugas`) REFERENCES `tb_petugas` (`idPetugas`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD CONSTRAINT `pe1` FOREIGN KEY (`idBuku`) REFERENCES `tb_buku` (`idBuku`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pe2` FOREIGN KEY (`idAnggota`) REFERENCES `tb_anggota` (`idAnggota`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pe3` FOREIGN KEY (`idPetugas`) REFERENCES `tb_petugas` (`idPetugas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rak`
--
ALTER TABLE `tb_rak`
  ADD CONSTRAINT `rak1` FOREIGN KEY (`idBuku`) REFERENCES `tb_buku` (`idBuku`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
