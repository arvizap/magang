-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 11:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magangglints`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(11) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Jurusan` varchar(50) DEFAULT NULL,
  `Umur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Alamat`, `Jurusan`, `Umur`) VALUES
(123456, 'John', 'Jl. Raya No.5', 'Teknik Informatika', 21),
(234567, 'Alice', 'Jl. Gatot Subroto', 'Sistem Informasi', 23),
(345678, 'Bob', 'Jl. Sudirman No. 5', 'Teknik Informatika', 20),
(456789, 'Cindy', 'Jl. Pahlawan No. 2', 'Manajemen', 22),
(567890, 'David', 'Jl. Diponegoro No. 3', 'Teknik Elektro', 25),
(678901, 'Emily', 'Jl. Cendrawasih No. 4', 'Manajemen', 24),
(789012, 'Frank', 'Jl. Ahmad Yani No. 6', 'Teknik Informatika', 19);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `ID` int(11) NOT NULL,
  `MataKuliah` varchar(50) DEFAULT NULL,
  `NIM` int(11) DEFAULT NULL,
  `Nilai` int(11) DEFAULT NULL,
  `DosenPengajar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`ID`, `MataKuliah`, `NIM`, `Nilai`, `DosenPengajar`) VALUES
(1, 'Pemrograman Web', 123456, 85, 'Pak Budi'),
(2, 'Basis Data', 234567, 70, 'Ibu Ani'),
(3, 'Jaringan Komputer', 345678, 75, 'Pak Dodi'),
(4, 'Sistem Operasi', 123456, 90, 'Pak Budi'),
(5, 'Manajemen Proyek', 456789, 80, 'Ibu Desi'),
(6, 'Bahasa Inggris', 567890, 85, 'Ibu Eka'),
(7, 'Statistika', 678901, 75, 'Pak Farhan'),
(8, 'Algoritma', 789012, 65, 'Pak Galih'),
(9, 'Pemrograman Java', 123456, 95, 'Pak Budi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
