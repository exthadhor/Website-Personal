-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 09:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `spesialis` varchar(25) NOT NULL,
  `foto` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `nip`, `jenis_kelamin`, `alamat`, `no_hp`, `spesialis`, `foto`) VALUES
(1, 'Dr. Budiman, Sp.B ', '199001230512398789', 'Lk', 'Jalan Patimura No. 10, konoha ', '085261887689', 'Spesialis Bedah', 'dokter1.jpeg'),
(2, 'Dr. Putri Anita, Sp.An ', '198512140320675437', 'Pr', 'Jalan Merdeka No. 17, konoha', '085765784531', 'Spesialis Anestesiologi', '198512140320675437.jpeg'),
(3, 'Dr. Faisal, Sp.KG ', '197809051234984534', 'Lk', 'Jalan Sudirman No. 4, konoha', '082287689877', 'Spesialis Kedokteran Gigi', '197809051234984534.jpg'),
(4, 'Dr. Nurul Hidayah, Sp.PD ', '199101090123456789', 'Pr', 'Jalan Veteran No. 5, konoha', '085289766654', 'Spesialis Penyakit Dalam', '199101090123456789.jpg'),
(5, 'Dr. Eli wati, Sp.OG ', '198212160987436755', 'Pr', 'Jalan Ahmad Yani No. 19, konoha', '085298997674', 'Spesialis Obstetri dan Gi', '198212160987436755.jpg'),
(6, 'Dr. Alivia, Sp.M', '198308260123987653', 'Pr', 'Jalan Teuku Umar No. 16, konoha', '085798457655', 'Spesialis Mata', '198308260123987653.webp'),
(7, 'Dr. Indriani, Sp.Rad', '198701291234987655', 'Pr', 'Jalan Merak No. 12, Pematangsi', '085810928765', 'Spesialis Radiologi', '198701291234987655.jpg'),
(8, 'Dr. Jarjit Santoso, Sp.A', '199402280198875890', 'Lk', 'Jalan Pramuka No. 2, Sibolga ', '082318907655', 'Spesialis Anak', '199402280198875890.jpg'),
(9, 'Dr. Balmond Bhizer, Sp.KK', '198308260123456789', 'Lk', 'Jalan Dipa No. 4, konoha', '082298764098', 'Spesialis Kulit dan Kelam', '198308260123456789.jpg'),
(10, 'Dr. Cut Kagura, Sp.M', '197512040987654321', 'Pr', 'Jalan Asia Raya No. 11, konoha', '082290756534', 'Spesialis Mata', '197512040987654321.jpg'),
(21, 'Mega Chan', '2376486699999', 'Pr', 'planet mars', '08126748388', 'sunat', '666699999.jpg'),
(26, 'Sasuke', '66668669987', 'Lk', 'konohagakure', '08126748987', 'sunat', '66668669987.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_layanan`
--

CREATE TABLE `jenis_layanan` (
  `id_layanan` int(10) NOT NULL,
  `jenis_layanan` varchar(30) NOT NULL,
  `tarif_layanan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_layanan`
--

INSERT INTO `jenis_layanan` (`id_layanan`, `jenis_layanan`, `tarif_layanan`) VALUES
(1, 'Operasi', 'Rp 10.000.000'),
(2, 'Rawat Inap', 'Rp 550.000'),
(3, 'Obat dan Perawatan', 'Rp 600.000'),
(4, 'Konsultasi Dokter', 'Rp 300.000'),
(5, 'Pelayanan Kesehatan Mental', 'Rp 400.000'),
(6, 'Radiologi', 'Rp 650.000'),
(7, 'Pemeriksaan Laboratorium', 'Rp 700.000'),
(8, 'Pelayanan Keperawatan', 'Rp 750.000'),
(9, 'Pemeriksaan Diagnostik', 'Rp 800.000'),
(10, 'Rehabilitasi Medis', 'Rp 550.000');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(10) NOT NULL,
  `kode_kamar` int(10) NOT NULL,
  `jenis_kamar` varchar(30) NOT NULL,
  `tarif_kamar` varchar(15) NOT NULL,
  `aktif` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `kode_kamar`, `jenis_kamar`, `tarif_kamar`, `aktif`) VALUES
(1, 101, 'Kelas I', 'Rp 250.000', 1),
(2, 201, 'Kelas II', 'Rp 425.000', 1),
(3, 301, 'Kelas III', 'Rp 600.000', 1),
(4, 401, 'VIP', 'Rp  800.000', 1),
(5, 501, 'VVIP', 'Rp 1.000.000', 1),
(6, 102, 'Kelas I', 'Rp 250.000', 0),
(7, 202, 'Kelas II', 'Rp 425.000', 0),
(8, 301, 'Kelas III', 'Rp 600.000', 0),
(9, 401, 'VIP', 'Rp 800.000', 0),
(10, 501, 'VVIP', 'Rp 1.000.000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `gol_darah` varchar(3) NOT NULL,
  `umur` int(3) NOT NULL,
  `alamat` text NOT NULL,
  `id_kamar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `gol_darah`, `umur`, `alamat`, `id_kamar`) VALUES
(1, 'Putri Syifa', '1218156412040002', '2000-05-03', 'pr', 'b', 23, 'Jl. Diponegoro No. 12, Medan', 0),
(2, 'Alex Bhizer', '1218152411040012', '2001-01-09', 'lk', 'a', 22, 'Jl. Ahmad Yani No. 8, Binjai', 0),
(3, 'Fauzan Habibi', '1218157404020002', '1998-04-17', 'lk', 'ab', 25, 'Jl. Patimura No. 17, Binjai Ba', 0),
(4, 'Irvina Zenora', '1218152201010002', '2000-02-03', 'pr', 'b', 23, 'Jl. Sisingamangaraja No. 4, Medan', 0),
(5, 'Muhammad Raja', '1218151207010002', '2002-01-30', 'lk', 'o', 21, 'Jl. Pramuka No. 20, Medan', 0),
(6, 'Sarah Sintya', '1218156411020001', '2001-03-22', 'pr', 'a', 22, 'Jl. Mayjen Sutoyo No. 11, Medan', 0),
(7, 'Rizky Aditya', '1218151412080002', '1995-05-02', 'lk', 'ab', 28, 'Dipa No. 14, Tebing Tinggi ', 0),
(8, 'Devi Mulyani', '1218156401020002', '1996-04-17', 'pr', 'o', 27, 'Jl. Asia Mega Mas No. 9, Medan', 0),
(9, 'Yanti Dewi', '1218151401050002', '2003-06-02', 'pr', 'b', 20, 'Jl. Veteran No. 22, Medan', 0),
(10, 'Siti Fatimah', '1218146612010003', '2003-11-24', 'pr', 'b', 19, 'Jl. Sutomo No. 7, Medan', 0);

--
-- Triggers `pasien`
--
DELIMITER $$
CREATE TRIGGER `trg_pasien` AFTER INSERT ON `pasien` FOR EACH ROW UPDATE kamar SET Stok_Kamar = Stok_Kamar - 1
WHERE Id_Kamar = new.Id_Kamar
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `role` enum('1','0') NOT NULL,
  `aktif` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `nip`, `jenis_kelamin`, `alamat`, `role`, `aktif`) VALUES
(1, 'Nurul Aini', '198410310198765432', 'pr', 'Jl. Diponegoro No. 18, Medan M', '', '1'),
(2, 'Ratna Susilawati', '199609021234567890', 'pr', 'Jl. H. Agus Salim No. 12, Meda', '', '1'),
(3, 'Dicky Kurniawan', '198212160987654321', 'lk', 'Jl. Ahmad Yani No. 20, Tebing ', '', '1'),
(4, 'Dani Prasetya', '199101090123456789', 'lk', 'Jl. Sudirman No. 10, Siantar B', '', '1'),
(5, 'Yanti Permata', '198308260123456789', 'pr', 'Jl. Asia Mega Mas Blok C2, Del', '', '1'),
(6, 'Sarah Nurulita', '199210070987654321', 'pr', 'Jl. Merak No. 22, Pematangsian', '', ''),
(7, 'Rizal Setiawan', '197512040987654321', 'lk', 'Jl. Pahlawan No. 18, Medan Bar', '', '1'),
(8, 'Sarah Nurulita', '198906021234567890', 'pr', 'Jl. Hang Tuah No. 5, Medan Sun', '', ''),
(9, 'Rudi Hartono', '198701291234567890', 'lk', 'Jl. Ahmad Dahlan No. 3, Padang', '', ''),
(10, 'Dewi Ayu', '198512140320987654', 'pr', 'Jl. Diponegoro No. 25, Binjai', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id_rekam` int(10) NOT NULL,
  `nomor_urut` int(3) NOT NULL,
  `tgl_masuk` datetime(6) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `id_kamar` int(10) NOT NULL,
  `id_layanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekam_medis`
--

INSERT INTO `rekam_medis` (`id_rekam`, `nomor_urut`, `tgl_masuk`, `id_pasien`, `id_dokter`, `id_kamar`, `id_layanan`) VALUES
(1, 2, '2023-07-02 00:51:58.000000', 2, 3, 3, 2),
(2, 5, '2023-07-03 00:51:58.000000', 10, 8, 5, 1),
(3, 7, '2023-06-08 16:09:49.000000', 9, 9, 7, 3),
(4, 11, '2023-07-25 16:09:49.000000', 3, 4, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id_rekam`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_kamar` (`id_kamar`),
  ADD KEY `id_layanan` (`id_layanan`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  MODIFY `id_layanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id_rekam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id`),
  ADD CONSTRAINT `rekam_medis_ibfk_2` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`),
  ADD CONSTRAINT `rekam_medis_ibfk_3` FOREIGN KEY (`id_layanan`) REFERENCES `jenis_layanan` (`id_layanan`),
  ADD CONSTRAINT `rekam_medis_ibfk_4` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
