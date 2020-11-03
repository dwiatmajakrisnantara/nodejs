-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2019 at 08:31 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wela`
--

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE IF NOT EXISTS `krs` (
  `id_krs` varchar(15) NOT NULL,
  `tgl_krs` date NOT NULL,
  `kode_makul` varchar(10) NOT NULL,
  `mhs` varchar(30) NOT NULL,
  PRIMARY KEY (`id_krs`),
  KEY `kode_makul` (`kode_makul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--


-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE IF NOT EXISTS `makul` (
  `kode_makul` varchar(10) NOT NULL,
  `nama_makul` varchar(50) NOT NULL,
  `jml_sks` int(1) NOT NULL,
  `semester` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_makul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`kode_makul`, `nama_makul`, `jml_sks`, `semester`) VALUES
('UN213', 'Bahasa Indonesia', 3, 'Ganjil 2019/2020'),
('BK113', 'Manajemen dan Organisasi Bisnis', 3, 'Ganjil 2019/2020'),
('BK322', 'Pengantar E-Bisnis', 2, 'Ganjil 2019/2020'),
('SC644', 'Kewirausahaan Teknologi', 4, 'Ganjil 2019/2020'),
('FT012', 'Magang Kerja', 2, 'Ganjil 2019/2020'),
('SC512', 'Basis Data Lanjut', 4, 'Ganjil 2019/2020'),
('CE464', 'Web Lanjut', 4, 'Ganjil 2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE IF NOT EXISTS `mhs` (
  `nim` varchar(15) NOT NULL,
  `namalengkap` varchar(60) NOT NULL,
  `prodi` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim`, `namalengkap`, `prodi`, `email`, `alamat`, `tgl_lahir`) VALUES
('201702726311518', 'Ratih Tri Utami', 'Sistem Informasi D3', 'ratihlovaa@gmail.com', 'Sragen, Jawa Tengah', '1996-03-25'),
('201702728311520', 'Astrid Ade WIjaya', 'Sistem Informasi D3', 'astridadwijaya@gmail.com', 'Banjarnegara, Jawa Tengah', '1999-05-20'),
('201702730311522', 'Ismi Eka Pratiwi', 'Sistem Informasi D3', 'ismiekaa@gmail.com', 'Sleman, Yogyakarta', '1998-11-17'),
('201702732311524', 'Lia Fera Rahmah Dewi', 'Sistem Informasi D3', 'liafera@gmail.com', 'Klaten, Jawa Tengah', '1999-09-25'),
('201702734311526', 'Resty Alfianda Zellyanawati', 'Informatika', 'restyalfiandaa2@gmail.com', 'Tuban, Jawa Timur', '1998-09-24'),
('201702736311528', 'Desinta Sapitri', 'Sistem Informasi D3', 'desintasftr@gmail.com', 'Paser, Kalimantan Timur', '1998-12-28');
