-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 06:46 AM
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
-- Database: `dbkampus_221103817_jr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `idDosen` char(5) NOT NULL,
  `namaDosen` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nidn` char(5) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `idUser` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`idDosen`, `namaDosen`, `alamat`, `nidn`, `foto`, `idUser`) VALUES
('DS001', 'qadavi', 'jeruju', '00001', NULL, 'USR1'),
('DS002', 'ayu eka', 'pontianak', '00002', NULL, 'USR1'),
('DS003', 'susanti', 'kota baru', '00003', NULL, 'USR1'),
('DS004', 'utin kasma', 'tanjung raya', '00004', NULL, 'USR1'),
('DS005', 'hendra', 'mariana', '00005', NULL, 'USR1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `idKelas` char(5) NOT NULL,
  `namaKelas` varchar(10) DEFAULT NULL,
  `idDosen` char(5) DEFAULT NULL,
  `noRuangan` char(5) DEFAULT NULL,
  `idMatakuliah` char(5) DEFAULT NULL,
  `hari` date DEFAULT NULL,
  `jam` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`idKelas`, `namaKelas`, `idDosen`, `noRuangan`, `idMatakuliah`, `hari`, `jam`) VALUES
('KLS01', 'C1', 'DS001', 'R0001', 'MK001', '0000-00-00', '2022-12-15 05:39:55'),
('KLS02', 'C2', 'DS002', 'R0002', 'MK002', '0000-00-00', '2022-12-15 05:39:55'),
('KLS03', 'C3', 'DS003', 'R0003', 'MK003', '0000-00-00', '2022-12-15 05:39:55'),
('KLS04', 'C4', 'DS004', 'R0004', 'MK004', '0000-00-00', '2022-12-15 05:39:55'),
('KLS05', 'C5', 'DS005', 'R0005', 'MK005', '0000-00-00', '2022-12-15 05:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_krs`
--

CREATE TABLE `tb_krs` (
  `idKrs` char(5) NOT NULL,
  `nim` char(5) DEFAULT NULL,
  `idKelas` char(5) DEFAULT NULL,
  `nilaiHuruf` varchar(255) DEFAULT NULL,
  `nilaiAngka` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_krs`
--

INSERT INTO `tb_krs` (`idKrs`, `nim`, `idKelas`, `nilaiHuruf`, `nilaiAngka`) VALUES
('KRS01', '11111', 'KLS01', 'A', '90'),
('KRS02', '11112', 'KLS02', 'B', '79'),
('KRS03', '11113', 'KLS03', 'D', '40'),
('KRS04', '11114', 'KLS04', 'C', '69'),
('KRS05', '11115', 'KLS05', 'A', '95');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `idMatakuliah` char(5) NOT NULL,
  `namaMatakuliah` char(255) DEFAULT NULL,
  `sks` char(5) DEFAULT NULL,
  `semester` char(5) DEFAULT NULL,
  `idProdi` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`idMatakuliah`, `namaMatakuliah`, `sks`, `semester`, `idProdi`) VALUES
('MK001', 'jaringan komputer', '3', '1', 'TI001'),
('MK002', 'algoritma', '4', '1', 'TI001'),
('MK003', 'bahasa indonesia', '3', '1', 'TI001'),
('MK004', 'sistem informasi manajemen', '3', '1', 'TI001'),
('MK005', 'basis data', '3', '1', 'TI001');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `nim` char(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `noTelp` varchar(15) DEFAULT NULL,
  `kdAgama` char(5) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `gender` char(5) DEFAULT NULL,
  `idProdi` char(5) DEFAULT NULL,
  `idUser` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`nim`, `nama`, `alamat`, `noTelp`, `kdAgama`, `foto`, `gender`, `idProdi`, `idUser`) VALUES
('11111', 'geovani', 'jenderal urip', '083625748376', 'BDH', NULL, 'P', 'TI001', 'USR1'),
('11112', 'hermayanti', 'sungai jawi', '083625746376', 'ISL', NULL, 'P', 'TI001', 'USR1'),
('11113', 'rizky chorniawan', 'jeruju', '083627748376', 'ISL', NULL, 'L', 'TI001', 'USR1'),
('11114', 'junika rizki', 'sungai jawi', '083625788376', 'ISL', NULL, 'L', 'TI001', 'USR1'),
('11115', 'yahya', 'serdam', '084625748376', 'ISL', NULL, 'L', 'SI001', 'USR1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `idProdi` char(5) NOT NULL,
  `namaProdi` varchar(255) DEFAULT NULL,
  `noTelp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`idProdi`, `namaProdi`, `noTelp`, `alamat`) VALUES
('SI001', 'Sistem Informasi', '', NULL),
('TI001', 'Teknik Informatika', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruangan`
--

CREATE TABLE `tb_ruangan` (
  `noRuangan` char(5) NOT NULL,
  `namaRuangan` varchar(255) DEFAULT NULL,
  `kapasitas` char(50) DEFAULT NULL,
  `namaGedung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`noRuangan`, `namaRuangan`, `kapasitas`, `namaGedung`) VALUES
('R0001', '1.1', '50', 'stmik pontianak'),
('R0002', '1.2', '50', 'stmik pontianak'),
('R0003', '1.3', '50', 'stmik pontianak'),
('R0004', '2.1', '50', 'stmik pontianak'),
('R0005', '2.2', '50', 'stmik pontianak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `idUser` char(5) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `grup` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`idUser`, `username`, `password`, `grup`) VALUES
('USR1', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`idDosen`),
  ADD KEY `dsn1` (`idUser`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`idKelas`),
  ADD KEY `kls1` (`idMatakuliah`),
  ADD KEY `kls2` (`noRuangan`),
  ADD KEY `kls3` (`idDosen`);

--
-- Indexes for table `tb_krs`
--
ALTER TABLE `tb_krs`
  ADD PRIMARY KEY (`idKrs`),
  ADD KEY `krs1` (`nim`),
  ADD KEY `krs2` (`idKelas`);

--
-- Indexes for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`idMatakuliah`),
  ADD KEY `mk1` (`idProdi`);

--
-- Indexes for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `mhs1` (`idProdi`),
  ADD KEY `mhs2` (`idUser`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`idProdi`);

--
-- Indexes for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD PRIMARY KEY (`noRuangan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`idUser`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD CONSTRAINT `dsn1` FOREIGN KEY (`idUser`) REFERENCES `tb_user` (`idUser`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD CONSTRAINT `kls1` FOREIGN KEY (`idMatakuliah`) REFERENCES `tb_matakuliah` (`idMatakuliah`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `kls2` FOREIGN KEY (`noRuangan`) REFERENCES `tb_ruangan` (`noRuangan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `kls3` FOREIGN KEY (`idDosen`) REFERENCES `tb_dosen` (`idDosen`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_krs`
--
ALTER TABLE `tb_krs`
  ADD CONSTRAINT `krs1` FOREIGN KEY (`nim`) REFERENCES `tb_mhs` (`nim`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `krs2` FOREIGN KEY (`idKelas`) REFERENCES `tb_kelas` (`idKelas`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD CONSTRAINT `mk1` FOREIGN KEY (`idProdi`) REFERENCES `tb_prodi` (`idProdi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD CONSTRAINT `mhs1` FOREIGN KEY (`idProdi`) REFERENCES `tb_prodi` (`idProdi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `mhs2` FOREIGN KEY (`idUser`) REFERENCES `tb_user` (`idUser`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
