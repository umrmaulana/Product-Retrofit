-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2025 at 10:47 AM
-- Server version: 8.0.41-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `android`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `kode` char(10) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `kategori` char(30) NOT NULL,
  `satuan` char(20) NOT NULL,
  `hargabeli` double NOT NULL,
  `diskonbeli` double DEFAULT '0',
  `hargapokok` double NOT NULL,
  `hargajual` double NOT NULL,
  `diskonjual` double DEFAULT '0',
  `stok` int NOT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`kode`, `merk`, `kategori`, `satuan`, `hargabeli`, `diskonbeli`, `hargapokok`, `hargajual`, `diskonjual`, `stok`, `foto`, `deskripsi`) VALUES
('B001', 'Sony Alpha A3000 Kit 18-55mm OSS', 'Kamera', 'Unit', 4320000, 0, 4320000, 4500000, 0, 10, 'kamera.png', 'Kamera mirrorless dengan lensa kit 18-55mm OSS.'),
('B002', 'Sony HXR-MC 1500P', 'Kamera Video', 'Unit', 13000000, 0, 13000000, 13625000, 0, 5, 'kamera1.jpeg', 'Kamera video profesional dengan kualitas HD.'),
('B003', 'Panasonic AG-AF100 Camcorder', 'Kamera Video', 'Unit', 4670000, 10, 4203000, 4670000, 5, 8, 'panasonic_agaf100.jpg', 'Camcorder dengan desain stylish dan fitur lengkap.'),
('B004', 'Sony Handycam HDR-PJ660E', 'Kamera Video', 'Unit', 13200000, 0, 13200000, 13400000, 0, 3, 'sony_handycam_pj660e.jpg', 'Kamera video dengan built-in projector.'),
('B005', 'Panasonic AG-HMC152EN 3CCD', 'Kamera Video', 'Unit', 44500000, 0, 44500000, 46500000, 0, 2, 'panasonic_aghmc152en.jpg', 'Kamera video profesional 3CCD dengan kualitas tinggi.'),
('B006', 'Canon XF100 Professional Camcorder', 'Kamera Video', 'Unit', 10050000, 0, 10050000, 10250000, 0, 7, 'canon_xf100.jpg', 'Camcorder profesional dari Canon dengan fitur canggih.'),
('B007', 'Nikon D5200 Body Only', 'Kamera', 'Unit', 3550000, 0, 3550000, 3850000, 0, 12, 'nikon_d5200.jpg', 'Kamera DSLR dengan kualitas gambar yang tajam.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
