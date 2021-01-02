-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Sep 2019 pada 13.25
-- Versi server: 10.2.26-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tire5312_sipduk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `Id_agama` int(11) NOT NULL,
  `nama_agama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`Id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Hindu'),
(5, 'Buddha'),
(6, 'Kong Hu Cu'),
(7, 'sda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `Id_dusun` int(11) NOT NULL,
  `nama_dusun` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`Id_dusun`, `nama_dusun`) VALUES
(1, 'Rawa Mangun'),
(2, 'Bumi Sari'),
(3, 'Jaya Mandiri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat`
--

CREATE TABLE `jenis_surat` (
  `Id_jenissurat` int(11) NOT NULL,
  `nama_jenissurat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_surat`
--

INSERT INTO `jenis_surat` (`Id_jenissurat`, `nama_jenissurat`) VALUES
(1, 'Surat Keterangan Domisili'),
(2, 'Surat Keterangan Tidak Mampu'),
(3, 'Surat Keterangan Nikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kk`
--

CREATE TABLE `kk` (
  `Id_kk` int(11) NOT NULL,
  `no_kk` varchar(255) DEFAULT NULL,
  `id_dusun` int(11) DEFAULT NULL,
  `rt` varchar(3) DEFAULT NULL,
  `rw` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kk`
--

INSERT INTO `kk` (`Id_kk`, `no_kk`, `id_dusun`, `rt`, `rw`) VALUES
(2, '7602091805090001', 3, '01', '01'),
(3, '7692090901090002', 1, '01', '01'),
(4, '7602090904070005', 1, '01', '01'),
(5, '7602092306070004', 1, '01', '01'),
(6, '7602090804070004', 1, '01', '01'),
(7, '7602090804070003', 1, '01', '01'),
(8, '7602091005070004', 1, '01', '01'),
(9, '7602090505070002', 1, '01', '01'),
(10, '7602090804070001', 1, '01', '01'),
(11, '7602091101100001', 1, '01', '01'),
(12, '7602093107070011', 1, '01', '01'),
(13, '7602091507090003', 1, '01', '01'),
(14, '7602092004080018', 1, '01', '01'),
(15, '7602091902080001', 1, '01', '01'),
(16, '7602091409120005', 1, '01', '01'),
(17, '7602092703090004', 1, '01', '01'),
(18, '7602090901090003', 1, '01', '01'),
(19, '7602091111080010', 1, '01', '01'),
(20, '7602092006070002', 1, '01', '01'),
(21, '7602090804070002', 1, '01', '01'),
(22, '7602092703090003', 1, '01', '01'),
(23, '7602091405080004', 1, '01', '01'),
(24, '7602091111080005', 1, '02', '01'),
(25, '7602091709070004', 1, '02', '01'),
(26, '7602091410070003', 1, '02', '01'),
(27, '7602091904070006', 1, '02', '01'),
(28, '7602091505080001', 1, '02', '01'),
(29, '7602091406100005', 1, '02', '01'),
(30, '7602091506070001', 1, '02', '01'),
(31, '7602091901080005', 1, '02', '01'),
(32, '7602091803080002', 1, '02', '01'),
(33, '7602092305070002', 1, '02', '01'),
(34, '7602092306070007', 1, '02', '01'),
(35, '7602092806110001', 1, '02', '01'),
(36, '7602090505110001', 1, '02', '01'),
(37, '7602090612070003', 1, '02', '01'),
(38, '7602092907120002', 1, '02', '01'),
(39, '7602092905090002', 1, '02', '01'),
(40, '7602090303070003', 1, '02', '01'),
(41, '7602090905080001', 1, '02', '01'),
(42, '7602091901070013', 1, '02', '02'),
(43, '7602091112070005', 1, '02', '02'),
(44, '7602091111080011', 1, '02', '02'),
(45, '7602092910080001', 1, '02', '01'),
(46, '7602090809110016', 1, '02', '02'),
(47, '7602091007120012', 1, '02', '02'),
(48, '7602092709110002', 1, '02', '02'),
(49, '7602090911060001', 2, '03', '02'),
(50, '760209', 2, '03', '02'),
(51, '7602092811070001', 2, '03', '02'),
(52, '760209', 2, '03', '02'),
(53, '7602091409080002', 2, '03', '02'),
(54, '760209', 2, '03', '02'),
(55, '7602092408070004', 2, '03', '02'),
(56, '7602092408070001', 2, '03', '02'),
(57, '7602092408070001', 2, '03', '02'),
(58, '7602090408110001', 2, '03', '02'),
(59, '7602092911070001', 2, '03', '02'),
(60, '7602092306070008', 2, '03', '02'),
(61, '7602091111080002', 2, '03', '02'),
(62, '7602091506070003', 2, '03', '02'),
(63, '7602091811100006', 2, '03', '02'),
(64, '7602091709070003', 2, '03', '02'),
(65, '7602090207070002', 2, '03', '02'),
(66, '7602091305070001', 2, '03', '02'),
(67, '7602091408120008', 2, '03', '02'),
(68, '7602090802100001', 2, '03', '02'),
(69, '7602092007100001', 2, '03', '02'),
(70, '7602092812070002', 2, '03', '02'),
(71, '7602092409070003', 2, '04', '02'),
(72, '760209', 2, '04', '02'),
(73, '7602090601080002', 2, '04', '02'),
(74, '760209', 2, '04', '02'),
(75, '7602090904070004', 2, '04', '02'),
(76, '7602092712070007', 2, '04', '02'),
(77, '7602090307070003', 2, '04', '02'),
(78, '7602092308070003', 2, '04', '02'),
(79, '7602092910070005', 2, '04', '02'),
(80, '7602091901080004', 2, '04', '02'),
(81, '7602090901090004', 2, '04', '02'),
(82, '7602092405070001', 2, '04', '02'),
(83, '7602091111080003', 2, '04', '02'),
(84, '7602090901090005', 2, '04', '02'),
(85, '7602091309070007', 2, '04', '02'),
(86, '7602091107120011', 2, '04', '02'),
(87, '7602092311060001', 2, '04', '02'),
(88, '760209', 2, '04', '02'),
(89, '760209', 2, '04', '02'),
(90, '7602091206070004', 2, '04', '02'),
(91, '760209', 2, '04', '02'),
(92, '7602091308090001', 2, '04', '02'),
(93, '7602091308090001', 2, '04', '02'),
(94, '7602092710080006', 2, '04', '02'),
(95, '7602092004080019', 2, '04', '02'),
(96, '7602092911070003', 2, '04', '02'),
(97, '7602092712070008', 2, '04', '02'),
(98, '760209', 2, '04', '02'),
(99, '7602092404070001', 2, '04', '02'),
(100, '7602090411060001', 2, '04', '02'),
(101, '7602090307070006', 2, '04', '02'),
(102, '7602090601080001', 2, '04', '02'),
(103, '7602090306080008', 2, '04', '02'),
(104, '7602090306080008', 2, '04', '02'),
(105, '7602092306110001', 2, '04', '02'),
(106, '7602091003110002', 2, '04', '02'),
(107, '7602090607100001', 2, '04', '02'),
(108, '7602092704090001', 2, '04', '02'),
(109, '7602090312080001', 2, '04', '02'),
(110, '7602092806110002', 2, '04', '02'),
(111, '7602090407120033', 2, '04', '02'),
(112, '7602091203100010', 2, '04', '02'),
(113, '7602090407120021', 2, '04', '02'),
(114, '7602091603070004', 2, '04', '02'),
(115, '7602090410070001', 3, '05', '03'),
(116, '7602090808070007', 3, '05', '03'),
(117, '7602090407120028', 3, '05', '03'),
(118, '7602090208100001', 3, '05', '03'),
(119, '7602090808070010', 3, '05', '03'),
(120, '7602093110070027', 3, '05', '03'),
(121, '7602092709120004', 3, '05', '03'),
(122, '7602092712070013', 3, '05', '03'),
(123, '7602091901080003', 3, '05', '03'),
(124, '7602091111080012', 3, '05', '03'),
(125, '7602092308070004', 3, '05', '03'),
(126, '7602090609120001', 3, '05', '03'),
(127, '7602091111080006', 3, '05', '03'),
(128, '', 3, '05', '03'),
(129, '7602091111080007', 3, '05', '03'),
(130, '7602090410070002', 3, '05', '03'),
(131, '7602090401090003', 3, '05', '03'),
(132, '7602090808070011', 3, '05', '03'),
(133, '760209051108', 3, '05', '03'),
(134, '7602090808070014', 3, '05', '03'),
(135, '7602092006070004', 3, '05', '03'),
(136, '7602091112070006', 3, '05', '03'),
(137, '7602092812080001', 3, '05', '03'),
(138, '7602090601080004', 3, '05', '03'),
(139, '7602091806070002', 3, '05', '03'),
(140, '7602090405110003', 3, '05', '03'),
(141, '7602091111080008', 3, '05', '03'),
(142, '7602090608080003', 3, '05', '03'),
(143, '7602090804070005', 3, '05', '03'),
(144, '7602092306070002', 3, '05', '03'),
(145, '7602091306070002', 3, '06', '03'),
(146, '7602090303070001', 3, '06', '03'),
(147, '7602090606120002', 3, '06', '03'),
(148, '7602092603070001', 3, '06', '03'),
(149, '7602091012070002', 3, '06', '03'),
(150, '7602092007110006', 3, '06', '03'),
(151, '7602070207120009', 3, '06', '03'),
(152, '7602093103090001', 3, '06', '03'),
(153, '77602091107120008', 3, '06', '03'),
(154, '7602093105110001', 3, '06', '03'),
(155, '7602092408120017', 3, '06', '03'),
(156, '7602092408120006', 3, '06', '03'),
(157, '7602090807120001', 3, '06', '03'),
(158, '7602090110070001', 3, '06', '03'),
(159, '7602092306070001', 3, '06', '03'),
(160, '7602091005100001', 3, '06', '03'),
(161, '7602091906120010', 3, '06', '03'),
(162, '7602091810110006', 3, '06', '03'),
(163, '7602090901090001', 3, '06', '03'),
(164, '7602093003110001', 3, '06', '03'),
(165, '23123', 1, NULL, NULL),
(166, '76020031498', 2, '01', '05'),
(167, '7602031108070001', 1, '01', '05'),
(168, '765432189', 1, NULL, NULL),
(169, '123456789', 2, NULL, NULL),
(170, '1234567', 1, '2', '3'),
(171, '76020865413', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `Id_penduduk` int(11) NOT NULL,
  `id_kk` int(11) DEFAULT NULL,
  `nik` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `id_agama` int(11) DEFAULT NULL,
  `wajib_pilih` enum('-1','1') DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `id_shdk` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`Id_penduduk`, `id_kk`, `nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `id_agama`, `wajib_pilih`, `pekerjaan`, `id_shdk`, `id_status`) VALUES
(5, 2, '7602091606710002', 'Gede Nukari', 'Tejakula,Bll ', '1971-06-16', 'L', 7, NULL, NULL, 1, 4),
(6, 2, '7602090707970001', 'Gede Edi Setiawan', 'Tangkau', '1997-07-07', 'L', 7, NULL, NULL, 3, 2),
(7, 166, '7602090107460005', 'KETUT SEMUG', 'Badung,Bali ', '1946-07-01', 'L', 7, NULL, NULL, 1, 1),
(8, 3, '7602094107420007', 'Ni Made Jagri', 'Badung, Bali ', '1942-07-01', 'P', 7, NULL, NULL, 2, 1),
(9, 3, '7602092904940001', ' I Ketut Suardiasa', 'Tangkau', '1994-04-29', 'L', 7, NULL, NULL, 3, 2),
(10, 4, '7602090507660001', 'PUTU RAKA', 'Sukasada,Bali ', '1966-07-05', 'L', 7, NULL, NULL, 1, 1),
(11, 4, '7602094805670001', 'Ni Ketut Meresini', 'Sukasada,Bll Bali', '1967-05-08', 'P', 7, NULL, NULL, 2, 1),
(13, 4, '7602094107860005', 'Ni luh Sri Ayuni', 'Sukasada,Bll  ', '1986-07-01', 'P', NULL, NULL, NULL, 3, 5),
(14, 4, '7602092309070001', 'Kadek Rediani', 'Tangkau', '2007-09-23', 'P', 7, NULL, NULL, 3, 2),
(15, 5, '7602091604650001', 'Wayan Sudarsana', 'Badung,Bali ', '1965-04-16', 'L', 7, NULL, NULL, 1, 1),
(16, 5, '7602097112640012', 'Ni Wayan Sari', 'Badung,Bali ', '1964-12-31', 'P', 7, NULL, NULL, 2, 1),
(17, 5, '7602094407970001', 'Ni Made Wulandari', 'Tangkau', '1994-06-04', 'P', 7, NULL, NULL, 3, 2),
(18, 5, '7602090509990001', 'I Komang Sawitra', 'Tangkau', '1999-09-05', 'L', 7, NULL, NULL, 3, 2),
(19, 6, '7602093112610007', 'I Nyoman Jagri', 'Ds.Baha,Bali ', '1961-12-31', 'L', 7, NULL, NULL, 1, 1),
(20, 6, '7602097112620008', 'Ni Wayah Kerti', 'Candi Kuning,Bali ', '1962-12-31', 'P', 7, NULL, NULL, 2, 1),
(21, 6, '7602096010890001', 'Ni Made Sudarsih', 'Ds.Tangkau ', '1989-10-20', 'P', 7, NULL, NULL, 3, 2),
(22, 6, '7602092105860001', 'I Wayan Sumeyasa', 'Baha', '1986-05-21', 'L', 7, NULL, NULL, 1, 1),
(23, 6, NULL, 'Ayu Nyoman Sukawati', 'Bali', '1983-12-18', 'P', NULL, NULL, NULL, 2, 1),
(24, 7, '7602091407590001', 'I Made Dirga', 'Jembrana', '1959-07-14', 'L', 4, NULL, NULL, 1, 1),
(25, 7, '7602097112600009', 'Ni Wayan Niri', 'Jembrana', '1960-12-31', 'P', 7, NULL, NULL, 2, 1),
(26, 7, '7602092305880001', 'Komang Darta', 'Tangkau', '1988-05-23', 'L', 7, NULL, NULL, 3, 2),
(27, 7, '7602094907890001', 'Ni Ketut Suartini', 'Mamuju', '1989-07-09', 'P', 7, NULL, NULL, 3, 2),
(28, 7, NULL, 'I Wayan Sudarma', 'Tangkau', '2000-07-27', 'L', 7, NULL, NULL, 3, 2),
(29, 8, '7602097112660010', 'NI KETUT SUMARNI', 'Munggu,Badung ', '1966-12-31', 'P', 7, NULL, NULL, 1, 3),
(30, 8, '7602090604860003', 'GEDE SUWANTARA', 'Melaya,Jembrana ', '1986-04-06', 'L', 7, NULL, NULL, 1, 1),
(31, 8, '7602094601890001', 'Ni Wayan Eka Lestari', 'Badung', '1989-01-06', 'P', 7, NULL, NULL, 2, 1),
(32, 8, NULL, 'Putu Nuada', 'Tangkau', '2008-04-08', 'L', NULL, NULL, NULL, 3, 2),
(33, 9, '7602090712810001', 'I WAYAN TREMAN ', 'Kapuas', '1981-12-07', 'L', 7, NULL, NULL, 1, 1),
(34, 9, '7602094511850001', 'Ni Nyoman Santini', 'Bali', '1985-11-05', 'P', 7, NULL, NULL, 2, 1),
(35, 9, '7602094306060001', 'Ni Putu Wiranti', 'Tangkau', '2006-06-03', 'P', 7, NULL, NULL, 3, 2),
(36, 10, '7602091507610001', 'Made Redi', 'Baha,Badung ', '1961-07-15', 'L', 7, NULL, NULL, 1, 1),
(37, 10, '7602096204620002', 'Ni Nyoman Candri', 'Baha Badung', '1962-04-22', 'P', 7, NULL, NULL, 2, 1),
(38, 10, '7602096112840001', 'Ni Wayan Kumeni', 'Baha,Badung ', '1984-12-11', 'P', 7, NULL, NULL, 3, 2),
(39, 11, '76020921098560001', 'I Made Sukra', 'Baha,Badung ', '1986-09-21', 'L', 7, NULL, NULL, 1, 1),
(40, 11, '7602095005860002', 'Ni Wayan Sarmila', 'Bangli', '1986-05-10', 'P', 7, NULL, NULL, 2, 1),
(41, 11, '7602094905070001', 'I Luh Krisna Susanti', 'Tangkau', '2007-05-09', 'P', 7, NULL, NULL, 3, 2),
(42, 12, '7602090609830001', 'I Made Oka Artana', 'Baha,Badung ', '1983-09-08', 'L', 4, NULL, NULL, 1, 1),
(43, 12, '7602096712850001', 'Ni Kadek Suardiasih', 'Selat,Bll ', '1985-12-27', 'P', 7, NULL, NULL, 2, 1),
(44, 12, '7602093009050001', 'I Putu Pande Sugiarta', 'Tangkau', '2005-09-30', 'L', 7, NULL, NULL, 3, 2),
(45, 2, NULL, 'Lalu Muksin', 'Lombok,NTB ', '1953-12-31', 'L', 1, NULL, NULL, 1, 1),
(46, 12, NULL, 'Lalu Abdul Rahman', 'lombok', '1996-08-27', 'L', 7, NULL, NULL, 3, 2),
(47, 12, NULL, 'Sriatun', 'Genteng,Jatim ', '1954-05-20', 'P', 7, NULL, NULL, 1, 3),
(48, 12, NULL, 'Sucipto', 'Palopo', '1989-07-17', 'L', 7, NULL, NULL, 3, 2),
(49, 12, '7602091210930003', 'Suroso', 'Malangke 1', '1993-10-12', 'L', 7, NULL, NULL, 3, 2),
(50, 13, '7602093010780004', 'Muliono', 'Palopo', '1978-10-30', 'L', 7, NULL, NULL, 1, 1),
(51, 13, '7602092512850002', 'Tut Wuri Handayani', 'Palopo', '1985-12-25', 'P', 7, NULL, NULL, 2, 1),
(52, 13, '7602091312030001', 'Aditya Pratama', 'Tangkau', '2003-12-13', 'L', 7, NULL, NULL, 3, 2),
(53, 13, NULL, 'Muhammad Saiful Fahri', 'Banyuwangi, ', '1990-09-01', 'L', 7, NULL, NULL, 1, 1),
(54, 13, NULL, 'Eni', 'Barakang', '1905-06-11', 'P', 7, NULL, NULL, 2, 1),
(55, 13, NULL, 'Ayu Rahma sari', 'Tangkau', '2010-05-04', 'P', 7, NULL, NULL, 3, 2),
(56, 14, '7602093112500021', 'I Nyoman Gatra', 'Badung', '1950-12-31', 'L', 4, NULL, NULL, 1, 3),
(57, 14, '7602094609050001', 'Ni Luh Gede Widiawati', 'Tangkau', '2005-09-06', 'P', 7, NULL, NULL, 4, 2),
(58, 14, NULL, 'Sucipto', 'Palopo', '1955-12-10', 'L', 1, NULL, NULL, 1, 1),
(59, 14, NULL, 'Misriati S.', 'Palopo', '1961-12-31', 'P', 1, NULL, NULL, 2, 1),
(60, 14, NULL, 'Sutri Laksonowati', 'Palopo', '1986-12-31', 'P', 1, NULL, NULL, 3, 2),
(61, 14, NULL, 'Sinar Panca Susilawati', 'Palopo', '1997-04-13', 'P', 1, NULL, NULL, 3, 2),
(62, 14, NULL, 'Eksa Lesmanawati', 'Palopo', '1999-10-15', 'P', 1, NULL, NULL, 3, 2),
(63, 15, '7602090808630001', 'Basuki Rahmad', 'Sidomukti', '1963-08-07', 'L', 1, NULL, NULL, 1, 1),
(64, 15, '7602096906690001', 'Mukanti', 'Palopo', '1969-05-29', 'P', 1, NULL, NULL, 2, 1),
(65, 16, '7602090705880001', 'ARIAWANSYAH', 'Palopo', '1988-05-07', 'L', 1, NULL, NULL, 1, 1),
(66, 16, '7602126812860001', 'Fitriani', 'RANGAS', '1986-12-28', 'P', 1, NULL, NULL, 2, 1),
(67, 16, NULL, 'Resky Rizatul ', 'Tabolang', '2011-05-27', 'P', 1, NULL, NULL, 3, 2),
(68, 17, '7602090107840018', 'RIAN ABDUL MIKSAN ', 'Lombok', '1982-07-01', 'L', 1, NULL, NULL, 1, 1),
(69, 17, '7602094606860001', 'Ariani', 'Palopo', '1986-06-06', 'P', 1, NULL, NULL, 2, 1),
(70, 17, '7602092308040002', 'Agus Suhaeri', 'Tabolang', '2004-08-23', 'L', 1, NULL, NULL, 3, 2),
(71, 17, NULL, 'Aini', 'Lombok', '1994-12-31', 'P', 1, NULL, NULL, 7, 2),
(72, 18, '7602090901840002', 'KOMANG SUARJAYA', 'Badung', '1984-01-09', 'L', 4, NULL, NULL, 1, 1),
(73, 18, '7602096505850002', 'Ni Komang Suartini', 'Badung', '1985-05-25', 'P', 4, NULL, NULL, 2, 1),
(74, 18, '7602094709050002', 'Ni Wayan Sopianingsih', 'Tangkau', '2005-09-07', 'P', 4, NULL, NULL, 3, 2),
(75, 19, '7602092412610001', 'I KETUT KUACA', 'Badung', '1961-12-24', 'L', 4, NULL, NULL, 1, 3),
(76, 19, '7602092404910001', 'I Ketut Karnadi', 'Tangkau', '1991-04-24', 'L', 4, NULL, NULL, 3, 2),
(77, 20, '7602092505680001', 'I MADE JANA', 'Badung', '1968-05-25', 'L', 4, NULL, NULL, 1, NULL),
(78, 20, '7602096512690001', 'Ni Made Murjani', 'Badung', '1969-12-25', 'P', 4, NULL, NULL, 2, 1),
(79, 20, '7602095005940001', 'Ni Wayan  Melandari', 'Badung', '1994-05-10', 'P', 4, NULL, NULL, 3, 2),
(80, 20, '7602095102060001', 'Ni Kadek Pernawati', 'Tangkau', '2006-02-10', 'P', 4, NULL, NULL, 3, 2),
(81, 21, '7602093112330002', 'MADE JIGRA', 'Bali', '1933-12-31', 'L', 4, NULL, NULL, 1, 1),
(82, 21, '7602096310750002', 'Ni Wayan Murtini', 'Badung-Bali', '1975-10-23', 'P', 4, NULL, NULL, 2, 1),
(83, 21, '7602095111980001', 'Nyoman Arianti', 'Bali', '1998-11-11', 'P', 4, NULL, NULL, 3, 2),
(84, 21, NULL, 'Ni Putu Dita yanti', 'Tangkau', '2010-08-04', 'P', 4, NULL, NULL, 3, 2),
(85, 21, NULL, 'I Komang Arkasa', 'Jembrana', '1955-12-02', 'L', 4, NULL, NULL, 1, 1),
(86, 21, NULL, 'Ni Komang Yuliana', 'Kediri', '1975-07-12', 'P', 4, NULL, NULL, 2, 1),
(87, 21, NULL, 'I Putu Ari Irawan', 'Jembrana', '1990-01-06', 'L', 4, NULL, NULL, 3, 2),
(88, 21, NULL, 'I Made Yuda Setiawan', 'Samarinda', '2008-01-05', 'L', 4, NULL, NULL, 3, 2),
(89, 21, NULL, 'I Putu Sudiarta ', 'Melaya,Jembrana ', '1977-05-19', 'L', 4, NULL, NULL, 1, 1),
(90, 21, NULL, 'Ni Putu Sudianai', 'Melaya', '1985-01-05', 'P', 4, NULL, NULL, 2, 1),
(91, 21, NULL, 'I GedeAri Wisnawa', 'Tangkau,', '2003-03-29', 'L', 4, NULL, NULL, 3, 2),
(92, 21, NULL, 'I Kadek Bayu Santika', 'Bambamanurung', '2007-05-15', 'P', 4, NULL, NULL, 3, 2),
(93, 21, NULL, 'MUKARI', NULL, NULL, 'L', 1, NULL, NULL, 1, NULL),
(94, 21, NULL, 'Suginten', NULL, NULL, 'P', 1, NULL, NULL, 2, NULL),
(95, 22, '7602092703740001', 'Jamaluddin  Efendi', 'Sidomukti', '1974-03-27', 'L', NULL, NULL, NULL, 8, 1),
(96, 23, '7602091006850001', 'A D I T Y A', 'MAMUJU', '1985-06-10', 'L', 1, NULL, NULL, 1, 1),
(97, 24, '7602090709740002', 'Wayan Sukada', 'Bali', '1974-09-07', 'L', 4, NULL, NULL, 1, 1),
(98, 24, '7602094705840002', 'Made Soniasih', 'Bali', '1984-05-07', 'P', 7, NULL, NULL, 2, 1),
(99, 24, '7602095501070002', 'Wayan Putri Ayu Darmayanti', 'Tangkau', '2007-01-15', 'P', 7, NULL, NULL, 3, 2),
(100, 25, '7602093112770011', 'I Gede Mariada', 'Bali', '1977-11-13', 'L', 7, NULL, NULL, 1, 1),
(101, 25, 'f', 'Kadek Sukariani', 'Bali', '1989-10-23', 'P', 7, NULL, NULL, 2, 1),
(102, 25, '7692095607970001', 'Putu Eka Julisaputra', 'Tangkau', '1996-07-17', 'L', 7, NULL, NULL, 3, 2),
(103, 25, '7602091010010001', 'Kadek Soma Darmawan', 'Tangkau', '2001-10-10', 'L', 7, NULL, NULL, 3, 2),
(104, 25, '7602090503060001', 'Komang Sutapa Yasa', 'Tangkau', '2006-01-20', 'L', 7, NULL, NULL, 3, 2),
(105, 26, '7602091408350001', 'Subandi Hadi Kusumo', 'Jawa', '1935-08-14', 'L', 1, NULL, NULL, 1, 1),
(106, 26, '7602097112590013', 'Suparti', 'Jawa', '1950-06-11', 'P', 7, NULL, NULL, 2, 1),
(107, 26, '7602090406020002', 'Agus Setiawan', 'Tangkau', '2002-08-03', 'L', 7, NULL, NULL, 4, 2),
(108, 27, '7602093112390002', 'Amiruddin', 'Lombok Tengah', '1939-12-31', 'P', NULL, NULL, NULL, 9, 1),
(109, 27, '7602097112520003', 'MASITAH', 'Lombok', '1952-12-31', 'P', 7, NULL, NULL, 1, 3),
(110, 27, '7602092707860001', 'Muh. Tamrin', 'Palopo', '1986-07-27', 'L', 7, NULL, NULL, 3, 2),
(111, 27, '7602095012940001', 'Dian Ratningsih', 'Mamuju', '1994-12-10', 'P', 7, NULL, NULL, 3, 2),
(112, 27, NULL, 'Elisa Triutami', 'Tangkau', '1999-11-23', 'P', NULL, NULL, NULL, 3, 2),
(113, 27, NULL, 'Lalu Badrun', 'Lombok', '1975-12-31', 'L', 7, NULL, NULL, 1, 1),
(114, 27, NULL, 'Karniati', 'Lombok', '1979-01-01', 'P', 7, NULL, NULL, 2, 1),
(115, 27, NULL, 'Suriatun Rahmawati', 'Tangkau', '1997-12-19', 'P', 7, NULL, NULL, 3, 2),
(116, 27, NULL, 'Nurul Hapalah', 'Tangkau', '1999-09-09', 'P', 7, NULL, NULL, 3, 2),
(117, 27, NULL, 'Hartati Zian Hatifah', 'Tangkau', '2001-01-01', 'P', 7, NULL, NULL, 3, 2),
(118, 27, NULL, 'Aminatul Husna', 'Tangkau', '2010-09-21', 'P', 7, NULL, NULL, 3, 2),
(119, 28, '7602097112540008', 'SAFIAH', 'lombok', '1954-10-12', 'P', 7, NULL, NULL, 1, 3),
(120, 28, '7602093112740027', 'Lalu Harun', 'Lombok', '1974-12-31', 'L', 7, NULL, NULL, 3, 1),
(121, 28, '7602097112770044', 'Baiq Nurjanah', 'lombok', '1977-12-31', 'P', 7, NULL, NULL, 8, 1),
(122, 28, '7602091504920002', 'Lalu Nazirin', 'Tangkau', '1992-04-15', 'L', 7, NULL, NULL, 4, 2),
(123, 28, '7602091605980001', 'Ahmad Hakiki', 'Tangkau', '1998-05-16', 'L', 7, NULL, NULL, 4, 2),
(124, 28, '7602096710000001', 'Sarina', 'Tangkau', '2000-10-27', 'L', NULL, NULL, NULL, 3, 2),
(125, 29, '7602091212540002', 'H.MUHAMMAD ARIFIN', 'Lombok', '1954-12-31', 'L', NULL, NULL, NULL, 1, 1),
(126, 29, '7602095612590002', 'HJ. Sitti Farihah', 'Lombok', '1959-12-16', 'P', 7, NULL, NULL, 2, 1),
(127, 29, '7602091507900005', 'Lalu Samsul.H', 'Tangkau', '1989-07-16', 'L', 7, NULL, NULL, 3, 2),
(128, 29, '7602091407920001', 'Lalu Muhammad Mansyur', 'Tangkau', '1992-07-14', 'L', 7, NULL, NULL, 3, 2),
(129, 30, '7602091907930002', 'Lalu Murtazam', 'Tangkau', '1993-07-19', 'L', 1, NULL, NULL, 3, 2),
(130, 30, '7602092505050003', 'Rendi', 'Tangkau', '2005-05-25', 'L', 7, NULL, NULL, 4, 2),
(131, 30, NULL, 'Eka Wati', 'Toabo', '1989-12-12', 'P', 7, NULL, NULL, 7, 2),
(132, 30, '7602090112850002', 'Lalu Mahruf', 'Lombok', '1985-12-01', 'L', 7, NULL, NULL, 1, 1),
(133, 30, NULL, 'Irawati', 'Toabo', '1990-04-17', 'P', NULL, NULL, NULL, 2, 1),
(134, 30, NULL, 'Muh.Faizal Maulana', 'Tangkau', '2010-04-27', 'L', NULL, NULL, NULL, 3, 2),
(135, 31, '7602091612580001', 'H.Abdul Manan', 'Lombok', '1958-12-16', 'L', 7, NULL, NULL, 1, 1),
(136, 31, '7602096007700001', 'Baiq Mainah', 'Lombok', '1970-07-20', 'P', 7, NULL, NULL, 2, 1),
(137, 31, '7602094503750001', 'Riatip', 'Lombok', '1975-03-05', 'P', 7, NULL, NULL, 2, 1),
(138, 31, '7602092610830001', 'Alus Darmiah G.', 'Lombok', '1983-10-26', 'L', 7, NULL, NULL, 3, 2),
(139, 31, '7602090612880001', 'Alus Putraji G.', 'Tangkau', '1988-12-06', 'L', 7, NULL, NULL, 3, 2),
(140, 31, '7602094205950001', 'Hijratul Hasanah', 'Tangkau', '1995-05-02', 'P', 7, NULL, NULL, 3, 2),
(141, 31, '7602093005000001', 'Alus Putrajab MG', 'Tangkau', '2000-05-30', 'L', 7, NULL, NULL, 3, 2),
(142, 31, '7602091104070003', 'Alus Tarmizi MG', 'Tangkau', '2007-04-11', 'L', 7, NULL, NULL, 3, 2),
(143, 32, '7602092004830002', 'Made Dwiana', 'Jembrana', '1983-04-20', 'L', 4, NULL, NULL, 1, 1),
(144, 32, '7602094312820002', 'Made Suartiini', 'Denpasar', NULL, 'P', 7, NULL, NULL, 2, 1),
(145, 32, '7602096601040001', 'Nengah Sintia Wati', 'Tangkau', '2004-01-26', 'P', 7, NULL, NULL, 3, 2),
(146, 32, NULL, 'Rusniatun', 'Lombok Tengah', '1983-08-09', 'P', 1, NULL, NULL, 1, 3),
(147, 32, NULL, 'Khusnul Aulia', 'Tangkau', '1999-06-27', 'P', 7, NULL, NULL, 3, 2),
(148, 32, NULL, 'Elmiatul Aini', 'Tangkau', '2002-09-28', 'P', 7, NULL, NULL, 3, 2),
(149, 32, NULL, 'Riski Agustina', 'Tangkau', '2009-10-28', 'P', 7, NULL, NULL, 3, 2),
(150, 33, '7602091406780001', 'Lalu Rahman', 'Lombok Tengah', '1978-06-14', 'L', 7, NULL, NULL, 1, 1),
(151, 33, '7602095510840001', 'Sitti Hajar', 'Palopo', '1984-10-15', 'P', 7, NULL, NULL, 2, 1),
(152, 33, '7602094510060001', 'Sitti Nadia Rahman', 'Tangkau', '2005-10-05', 'P', 7, NULL, NULL, 3, 2),
(153, 34, '7602093112700011', 'Lalu Mursalin', 'Lombok', '1970-12-31', 'L', 7, NULL, NULL, 1, 1),
(154, 34, '7602097112740015', 'Baiq Chotimah', 'Lombok', '1974-10-15', 'P', 7, NULL, NULL, 2, 1),
(155, 34, '7602092505890001', 'Abdul Halik Rahman', 'Tangkau', '1989-05-25', 'L', 7, NULL, NULL, 3, 2),
(156, 34, '7602091404940001', 'Lalu Muhammad Nasir', 'Tangkau', '1994-04-14', 'L', 7, NULL, NULL, 3, 2),
(157, 34, '7602095005010005', 'Helimainun Nasia', 'Tangkau', '2001-05-10', 'P', 7, NULL, NULL, 3, 2),
(158, 34, '7602091305790002', 'Lalu Ali Sairi', 'Ketara', NULL, 'L', 7, NULL, NULL, 7, 1),
(159, 35, '7602091212800005', 'NYOMAN SUGIARTA', 'Badung Bali', '1980-12-31', 'L', 4, NULL, NULL, 1, 1),
(160, 35, '7602095207840001', 'Kadek Meilin', 'Kapuas', '1983-05-08', 'P', 7, NULL, NULL, 2, 1),
(161, 35, NULL, 'I Wayan Indra Saputra', 'Tangkau', '1998-10-28', 'L', 7, NULL, NULL, 3, 2),
(162, 35, NULL, 'Ni Kadek Sundari Larasati', 'Tangkau', '2007-03-23', 'P', 7, NULL, NULL, 3, 2),
(163, 36, NULL, 'Lalu Maliki', 'Lombok', '1970-12-31', 'L', 7, NULL, NULL, 1, 1),
(164, 36, '7602094107800028', 'Baiq Rohani', 'Lombok', '1972-12-31', 'P', 7, NULL, NULL, 2, 1),
(165, 36, NULL, 'Lalu Ikhsan', 'Tangkau', '1996-05-10', 'L', 7, NULL, NULL, 3, 2),
(166, 36, NULL, 'Baiq Etiyuliani', 'Tangkau', '2000-07-13', 'P', 7, NULL, NULL, 3, 2),
(167, 37, NULL, 'Djamil', 'Banyuwangi', '1965-03-16', 'L', 7, NULL, NULL, 1, 1),
(168, 37, NULL, 'Setiani', 'Luwuk', '1974-11-11', 'P', 7, NULL, NULL, 2, 1),
(169, 37, NULL, 'Puspitayeni', 'Mamuju', '1997-12-11', 'P', 7, NULL, NULL, 3, 2),
(170, 37, NULL, 'Sugeng Prayitno', 'Mamuju', '2002-12-23', 'L', 7, NULL, NULL, 3, 2),
(171, 37, '765555555', 'Irfan', 'polmas', NULL, 'L', 7, NULL, 'dosen', 1, 1),
(172, 37, '7602094703920001', 'Sri Nur Ratnawati', 'Mamuju', '1991-03-07', 'P', 7, NULL, NULL, 2, 1),
(173, 37, NULL, 'Mulyadi', 'Palopo', '1980-09-22', 'L', 7, NULL, NULL, 1, 1),
(174, 37, NULL, 'Purwati', 'Palopo', '1983-08-03', 'P', 7, NULL, NULL, 2, 1),
(175, 37, NULL, 'Wahyu Ramadhan', 'Tangkau', '2002-11-13', 'L', 1, NULL, NULL, 3, 2),
(176, 37, NULL, 'Ambo Dalle', 'Bali', '1974-12-16', 'L', 7, NULL, NULL, 1, 1),
(177, 37, NULL, 'Fitriawati .R', ' Jembrana Bali', '1979-01-26', 'P', 7, NULL, NULL, 2, 1),
(178, 37, NULL, 'Wulan Safitri', 'Tangkau', '1999-12-25', 'P', 7, NULL, NULL, 3, 2),
(179, 37, NULL, 'Hafid Ahnan Yusuf', 'Tangkau', '2005-04-30', 'L', 7, NULL, NULL, 3, 2),
(180, 37, NULL, 'Pujiono', 'Ketulungan Bone-Bone', '1970-12-31', 'L', 1, NULL, NULL, 1, 1),
(181, 37, NULL, 'Rustik', 'Pinrang', '1970-12-18', 'P', 7, NULL, NULL, 2, 1),
(182, 37, NULL, 'Patmawati', 'Sidodadi', '1992-11-03', 'P', 7, NULL, NULL, 3, 2),
(183, 37, NULL, 'Aan Andriamto', 'Sidomukti', '1997-11-11', 'L', 7, NULL, NULL, 3, 2),
(184, 38, '7602093112500045', 'Mahidin', 'Lombok tengah  NTB', '1950-12-31', 'L', 1, NULL, NULL, 1, 1),
(185, 38, '7602094106710002', 'Marsanah', 'Lombok Tengah NTB', '1971-12-31', 'P', 7, NULL, NULL, 2, 1),
(186, 38, '7602091507930006', 'Nur Rahman', 'Bunde  Papalang', '1993-07-15', 'L', 7, NULL, NULL, 3, 2),
(187, 38, NULL, 'Sahrul Ramadan', 'Bunde Papalang', NULL, 'L', 7, NULL, NULL, 3, 2),
(188, 38, NULL, 'Haerul Niza', 'Tangkau', NULL, 'P', 7, NULL, NULL, 3, 2),
(189, 39, '7602090603750001', 'Lalu Misban', 'Ketara', '1975-03-06', 'L', 7, NULL, NULL, 1, 1),
(190, 39, '7602094107810011', 'Baiq Hermasmiati', 'Ketara', '1981-07-01', 'P', 7, NULL, NULL, 2, 1),
(191, 39, '7602095003970002', 'Baiq Sumanti Sustika', 'Tobadak VI', '1997-03-10', 'P', 7, NULL, NULL, 3, 2),
(192, 39, '7602091309980003', 'Lalu Feri Herlanta', 'Tobadak III', '1998-09-13', 'L', 7, NULL, NULL, 3, 2),
(193, 39, '7602095904010003', 'Baiq Vina Hirdiyanti', 'Salopanghkang IV', '2001-04-19', 'P', 7, NULL, NULL, 3, 2),
(194, 39, '7602090811010001', 'Lalu Zukri Ramdani', 'Salopangkang IV', '2003-11-06', 'L', 7, NULL, NULL, 3, 2),
(195, 39, NULL, 'Sahidin', 'Singaraja', '1970-12-31', 'L', 7, NULL, NULL, 1, 1),
(196, 39, NULL, 'Umi Kalsum', 'Tonusu', '1972-06-06', 'P', NULL, NULL, NULL, 2, 1),
(197, 39, NULL, 'Uswatun Hasanah', 'Poso', '1989-10-06', 'P', NULL, NULL, NULL, 3, 2),
(198, 39, NULL, 'Sapiah', NULL, NULL, 'P', NULL, NULL, NULL, 5, 3),
(199, 40, '7602092506740001', 'Didik Prihanto Yuni Rahardi', 'Wonogiri', '1974-06-25', 'L', NULL, NULL, NULL, 1, 1),
(200, 40, '7602095308770002', 'Hilma', 'Raha', '1977-08-13', 'P', NULL, NULL, NULL, 2, 1),
(201, 40, NULL, 'Ari Wuriyanti Eva Kurnia Sari', 'Wonogiri', '1998-01-03', 'P', NULL, NULL, NULL, 3, 2),
(202, 40, NULL, 'Wahyudi Aprianto', 'Topoyo', '2006-12-25', 'L', NULL, NULL, NULL, 3, 2),
(203, 41, NULL, 'Lalu Mas`Ud', 'Plangsang', '1972-12-31', 'L', NULL, NULL, NULL, 1, 1),
(204, 41, NULL, 'Asmawati', 'Ulu Taba Bone', '1969-11-17', 'P', NULL, NULL, NULL, 2, 1),
(205, 41, NULL, 'Lalu Tsaqib Arhab', 'Makasar', '2007-01-28', 'L', NULL, NULL, NULL, 3, 2),
(206, 41, NULL, 'Lalu Zakir Asyhab', 'Makasar', '2007-04-28', 'L', NULL, NULL, NULL, 3, 2),
(207, 41, NULL, 'Lalu Nur Rahman Zuhri', 'Makasar', '1998-05-23', 'L', NULL, NULL, NULL, 3, 2),
(208, 41, NULL, 'Lalu Aisyuddin Nur', 'Makasar', '2000-06-18', 'L', NULL, NULL, NULL, 3, 2),
(209, 41, NULL, 'Lalu Muliadi', 'Ketara', '1981-01-27', 'L', NULL, NULL, NULL, 7, 1),
(210, 42, '7602093112680010', 'LALU MAHRIP', 'Plansang', NULL, 'L', 7, NULL, NULL, 1, 1),
(211, 42, '7602097112720012', 'Baiq Ayuni', 'Lombok', '1972-12-31', 'P', 7, NULL, NULL, 2, 1),
(212, 42, '7602090206960002', 'LaLU Mahmud Ahmad MR.', 'Toabo', '1996-06-02', 'L', 7, NULL, NULL, 3, 2),
(213, 42, '7602097107000001', 'Baiq Aiti Zaujan Hasanah MR.', 'Tangkau', NULL, 'P', NULL, NULL, NULL, 3, 2),
(214, 42, '7602092003090001', 'Lalu Muhammad Hafazah MR.', 'Toabo', '2009-03-20', 'L', NULL, NULL, NULL, 3, 2),
(215, 43, NULL, 'LALU ZUBAER Ibnu Hawan', 'NTB', '1971-08-17', 'L', NULL, NULL, NULL, 1, 1),
(216, 43, NULL, 'Usniah', 'Rogojampi', '1975-12-12', 'P', NULL, NULL, NULL, 2, 1),
(217, 43, NULL, 'Lalu Surya Jaya Usman', 'Lombok', '1993-02-06', 'P', NULL, NULL, NULL, 3, 2),
(218, 43, NULL, 'Baiq Nia Apriza', 'Tangkau', '1994-04-25', 'P', NULL, NULL, NULL, 3, 2),
(219, 43, NULL, 'Baiq Dian Melisa', 'Tangkau', '1997-04-20', 'P', NULL, NULL, NULL, 3, 2),
(220, 43, NULL, 'Lalu Oktariah Jene', 'tangkau', '2002-10-21', 'L', NULL, NULL, NULL, 3, 2),
(221, 43, '7602096504940001', 'Baiq Nia Afriza', 'Tangkau', '1994-04-25', 'P', 7, NULL, NULL, 3, 2),
(222, 43, '7602096004970001', 'Biaq Dian Meliza', 'Tangkau', '1997-04-20', 'P', 7, NULL, NULL, 3, 2),
(223, 43, '7602093112860035', 'Muslim', 'Lombok', '1986-12-31', 'L', NULL, NULL, NULL, 1, 1),
(224, 43, NULL, 'Rabiatun Hadawiah', 'Lombok', '1990-06-20', 'P', NULL, NULL, NULL, 2, 1),
(225, 43, NULL, 'Misdawatun Aini', 'Tangkau', '2007-07-08', 'P', NULL, NULL, NULL, 3, 2),
(226, 44, '7602090204610001', 'AHMAD SUEHRI', 'Jember', '1961-02-04', 'L', 7, NULL, NULL, 1, 1),
(227, 44, '7602096008720002', 'Sriana', 'Banyuwangi', '1972-08-20', 'P', 7, NULL, NULL, 2, 1),
(228, 44, '3510062102760002', 'Mohamad To\'ip', 'Banyuawngi', '1976-02-21', 'L', NULL, NULL, NULL, 10, 4),
(229, 44, '7602090109900001', 'Syaiful Akbar', 'Banyuwangi', '1988-01-01', 'L', NULL, NULL, NULL, 1, 1),
(230, 44, NULL, 'Eni . L', 'Barakang', '1990-07-05', 'P', NULL, NULL, NULL, 2, 1),
(231, 44, NULL, 'Ayu Rahma Sari ', 'Tangkau', '2010-05-04', 'P', NULL, NULL, NULL, 3, 2),
(232, 45, '7602097112620037', 'INAQ SAKI', 'NTB', '1962-12-31', 'P', NULL, NULL, NULL, 1, 5),
(233, 45, '7602097112820042', 'Siti Alimah', 'NTB', '1982-12-31', 'P', NULL, NULL, NULL, 3, NULL),
(234, 45, '7602093112740035', 'LAHUM', 'Lombok', '1973-12-31', 'L', NULL, NULL, NULL, 3, 1),
(235, 45, NULL, 'Murni', 'Lombok', NULL, 'P', NULL, NULL, NULL, 8, 1),
(236, 45, NULL, 'Yuliani', 'Lombok', '1997-04-10', 'P', NULL, NULL, NULL, 4, 2),
(237, 45, NULL, 'Saiful Azimi', 'Lombok', '1999-11-06', 'L', NULL, NULL, NULL, 4, 2),
(238, 45, NULL, 'Ahmad Fauzi', 'Tangkau', '2009-03-20', 'L', NULL, NULL, NULL, 4, 2),
(239, 45, NULL, 'ACE', 'Lombok', '1964-12-31', 'P', NULL, NULL, NULL, 1, 3),
(240, 45, NULL, 'Rodiah Mastorina', 'Tangkau', '1997-04-10', 'P', NULL, NULL, NULL, NULL, 2),
(241, 45, '7604030508800006', 'YON PRAYOGI', 'Sugiwaras', '1980-08-05', 'L', NULL, NULL, NULL, 1, 1),
(242, 45, '7604035203850006', 'Baiq Malia Samsuni', 'Kal-Sel', '1985-03-12', 'P', NULL, NULL, NULL, NULL, 1),
(243, 45, '7604035909120002', 'Nur Anisa', 'Polewali', '2012-09-19', 'P', NULL, NULL, NULL, NULL, 2),
(244, 46, NULL, 'LALU MUKSIN', 'Lombok NTB', '1953-12-31', 'L', NULL, NULL, NULL, 1, 1),
(245, 46, '7602097112550046', 'Baig Mustiayi', 'lombok', '1955-12-31', 'P', NULL, NULL, NULL, NULL, 1),
(246, 46, NULL, 'Lalu Abdul Rahman', 'lombok', '1996-08-27', 'L', NULL, NULL, NULL, 3, 2),
(247, 47, '7602090502870001', 'MUJITAHID', 'LOMBOK TENGAH', '1987-02-05', 'L', NULL, NULL, NULL, 1, 1),
(248, 47, '7602094707880006', 'Indayani', 'lombok tengah', '1988-07-07', 'P', NULL, NULL, NULL, 2, 1),
(249, 48, '7602090302710003', 'SOFYANUDDIN', 'SOLO', '1971-02-03', 'L', NULL, NULL, NULL, 1, 1),
(250, 48, '76020959068300004', 'Aidah Suryani', 'Sidomukti', '1983-06-19', 'P', NULL, NULL, NULL, 2, 1),
(251, 49, '7602091601470001', 'ARIFIN', 'Amlapura', '1947-01-16', 'L', 1, NULL, NULL, 1, 1),
(252, 49, '7602095905540001', 'Mukminah', 'Bali', '1954-05-19', 'P', 7, NULL, NULL, 2, 1),
(253, 49, '7602096103930001', 'Fitria ningsih', 'Tabolang', '1993-03-21', 'P', 7, NULL, NULL, 3, 2),
(254, 49, '7602095208940001', 'Jurniawati', 'Tabolang', '1994-08-12', 'P', 7, NULL, NULL, 3, 2),
(255, 49, '7602092703970002', 'Saupan Arif', 'Tangkau', '1997-03-27', 'L', 7, NULL, NULL, 3, 2),
(256, 49, '7602090305990002', 'Sofian Arif Yudana', 'Tangkau', '1999-09-03', 'L', 7, NULL, NULL, 3, 2),
(257, 49, '7602091809010001', 'Muh.Irfan Arif', 'Tangkau', '2001-09-18', 'L', 7, NULL, NULL, 3, 2),
(258, 50, '760209', 'Wayan Rurug', 'Denpasar', '1960-01-07', 'L', 4, NULL, NULL, 1, 1),
(259, 50, '760209', 'Ketut Kantor', 'Denpasar', '1963-07-08', 'P', 7, NULL, NULL, 2, 1),
(260, 50, '760209', 'Made Suartini', 'Tangkau', '1991-07-09', 'P', 7, NULL, NULL, 3, 2),
(261, 50, '760209', 'Komang Lestari', 'Tangkau', '1993-04-25', 'P', 7, NULL, NULL, 3, 2),
(262, 50, '760209', 'Ketut Agus Putrawiasa', 'Tangkau', '2000-08-01', 'L', 7, NULL, NULL, 3, 2),
(263, 51, '7602093112540014', 'ALI SADIKIN', 'Karangsasar', '1954-12-31', 'L', NULL, NULL, NULL, 1, 1),
(264, 51, '7602096112640001', 'Rukinah', 'Rawamangun Palopo', '1964-12-31', 'P', 7, NULL, NULL, 2, 1),
(265, 51, '760209010582', 'Jupri Bin Ali Sadikin', 'Tangkau', '1982-05-01', 'L', 7, NULL, NULL, 3, 2),
(266, 51, '7602095212840002', 'Irawati', 'Mantana', '1984-12-12', 'P', NULL, NULL, NULL, 3, NULL),
(267, 51, '7602093112040010', 'Junaedi', 'Mamuju', '2004-12-31', 'L', 7, NULL, NULL, 3, 2),
(268, 52, '7602093112650027', 'Sakdah', 'Berembeng Lombok', '1965-12-31', 'L', 1, NULL, NULL, 1, 1),
(269, 52, '760209', 'Rusniati', 'Jeneponto', '1965-10-05', 'P', 7, NULL, NULL, 2, 1),
(270, 52, '760209', 'Ilham Wahyudi', 'Tabolang', '1992-08-16', 'L', 7, NULL, NULL, 3, 2),
(271, 52, '760209', 'Sriwahyu Khanshinar', 'Tangkau', '1996-04-06', 'P', 7, NULL, NULL, 3, 2),
(272, 53, '7602093008830001', 'I Gede Ardana', 'Jembrana', '1983-08-30', 'L', 4, NULL, NULL, 1, 1),
(273, 53, '7602097112860030', 'Ni Komang Suarsini', 'Melaya', '1986-12-31', 'P', 7, NULL, NULL, 2, 1),
(274, 53, '7602093012040003', 'I Putu Agus Budiantara', 'Tangkau', '2004-12-30', 'L', 7, NULL, NULL, 3, 2),
(275, 54, '7602092408840001', 'Kadek Sudiana', 'Jembrana', '1985-04-22', 'L', 4, NULL, NULL, 1, 1),
(276, 54, '760209', 'NI Wayan Soniari', 'Denpasar', '1988-12-12', 'P', 7, NULL, NULL, 2, 1),
(277, 54, '760209', 'Kadek Dwi Ariyanti', 'Tangkau', '2009-09-14', 'P', 7, NULL, NULL, 3, 2),
(278, 55, '7602093112590009', 'Ketut Seden', 'Bali', '1959-12-31', 'L', 4, NULL, NULL, 1, 1),
(279, 55, '760209', 'Wayan Mardi', 'Bali', '1963-12-31', 'P', 7, NULL, NULL, 2, 1),
(280, 56, '7602093112510006', 'MUHRAN', 'Bali', '1951-12-31', 'L', 1, NULL, NULL, 1, 1),
(281, 56, '7602097112650017', 'Aisah', 'Bali', '1966-12-31', 'P', 7, NULL, NULL, 2, 1),
(282, 57, '7602092005920002', 'Muhammad Saleh ', 'Tangkau', '1992-05-20', 'L', 7, NULL, NULL, 3, 2),
(283, 57, '7602092004960001', 'Ihsan', 'Tangkau', '1996-04-20', 'L', 7, NULL, NULL, 3, 2),
(284, 58, '7602092610870001', 'SAMSUL BAHRI', 'Tembok Bali', '1987-01-18', 'L', 7, NULL, NULL, 1, 1),
(285, 58, '7602096610920002', 'Winda Dewanti', 'Palopo', '1992-10-26', 'P', NULL, NULL, NULL, 2, 1),
(286, 58, '7602094203110001', 'Alfrida Aulia Bahri', 'Tangkau', '2011-04-02', 'P', NULL, NULL, NULL, 3, 2),
(287, 59, '7602090607610001', 'Mamiq Wiranto/H.Muh.Usman', 'Ketara NTB', '1961-07-06', 'L', 1, NULL, NULL, 1, 1),
(288, 59, '7602095009620001', 'Hj.Baiq Sujani', 'Jambik NTB ', '1962-09-10', 'P', 7, NULL, NULL, 2, 1),
(289, 59, '7602091802820001', 'Lalu Wiranto', 'Banjarmasin', '1982-02-18', 'L', 7, NULL, NULL, 3, 2),
(290, 59, '7602093009850002', 'Lalu.Iwan Susanto', 'Jambik', '1985-09-30', 'L', 7, NULL, NULL, 3, 2),
(291, 59, '7602090305870002', 'Lalu Roni Hadlan', 'Reban NTB', '1987-05-03', 'L', 7, NULL, NULL, 3, 2),
(292, 59, '7602092604050001', 'Lalu M. Hamzani', 'Tangkau', '2005-04-26', 'L', 7, NULL, NULL, 3, 2),
(293, 60, '7602091111660002', 'YUDI MUSTAIM', 'Mataram', NULL, 'L', 7, NULL, NULL, 1, 1),
(294, 60, '7602095605680001', 'Sitti Mudrikah', 'Jawa timur', '1968-05-16', 'P', 7, NULL, NULL, 2, 1),
(295, 60, '7602094901910001', 'Dewi Kornelis', 'Palangkaraya', '1991-01-09', 'P', 7, NULL, NULL, 3, 2),
(296, 60, '7602095205990002', 'Rusnawati', 'Tangkau', '1999-05-12', 'P', 7, NULL, NULL, 3, 2),
(297, 60, '7602090912010002', 'Adam Negara', 'Tangkau', '2001-12-09', 'P', 7, NULL, NULL, 3, 2),
(298, 60, '760209', 'Komang Suinta putra', 'Singaraja', '1974-05-08', 'L', 7, NULL, NULL, 1, 1),
(299, 60, '760209', 'Ketut Rasmini', 'Polmas', '1988-03-09', 'P', 7, NULL, NULL, 2, 1),
(300, 60, '760209', 'Gede Ary Eka Sagita', 'Tangkau', '2002-02-06', 'L', 7, NULL, NULL, 3, 2),
(301, 60, '760209', 'Kadek Febri Dwi Andryani', 'Singaraja', '2008-02-20', 'P', 7, NULL, NULL, 3, 2),
(302, 60, NULL, 'komang Yulitri Indriani', 'Tangkau', '2012-07-15', 'P', NULL, NULL, NULL, 3, 2),
(303, 61, '7602093112750043', 'RUMIDI', 'Lombok', '1975-12-31', 'L', 7, NULL, NULL, 1, 1),
(304, 61, '7602097112900040', 'Aisah', 'lombok', '1974-12-31', 'P', 7, NULL, NULL, 2, 1),
(305, 61, NULL, 'Leni Septiani', 'Tangkau', '1996-12-18', 'P', 7, NULL, NULL, 3, 2),
(306, 61, NULL, 'Haikal Parizi', 'Tangkau', '2007-07-26', 'L', 7, NULL, NULL, 3, 2),
(307, 62, '7602091508840001', 'Mustar', 'lombok', '1984-06-15', 'L', 7, NULL, NULL, 1, 1),
(308, 62, '7602096002860001', 'Endang', 'Lombok', '1986-02-20', 'P', 7, NULL, NULL, 2, 1),
(309, 62, '7602094606000002', 'Rini Awalia', 'Tangkau', '2000-06-06', 'P', 7, NULL, NULL, 3, 2),
(310, 62, '7602090608060001', 'Bharul Rozi', 'Tangkau', '2005-08-06', 'L', 7, NULL, NULL, 3, 2),
(311, 62, '760209', 'Wayan Suarsana', 'Badung', NULL, 'L', 4, NULL, NULL, 1, 1),
(312, 62, '760209', 'Poni', 'Palopo', '1975-03-10', 'P', 7, NULL, NULL, 2, 1),
(313, 62, '760209', 'Putu Ayu Suyastini', 'Baras', '1992-12-05', 'P', 7, NULL, NULL, 3, 2),
(314, 62, '760209', 'Komang Pajar Ayudian', 'Morak', '2001-11-20', 'L', 7, NULL, NULL, 3, 2),
(315, 62, '760209', 'Komang Sudiarta', 'Bali', '1986-10-10', 'L', 7, NULL, NULL, 7, 2),
(316, 62, '760209', 'Putu Kantun', 'Buleleng', '1951-12-30', 'L', 4, NULL, NULL, 1, 1),
(317, 62, '760209', 'Nyoman Sri Tangi', 'Buleleng', '1955-12-30', 'P', 7, NULL, NULL, 2, 1),
(318, 62, '760209', 'Sukiah', 'Lombok', '1970-12-12', 'L', 1, NULL, NULL, 1, 1),
(319, 62, '760209', 'Maunah', 'Lombok', '1969-11-10', 'P', 7, NULL, NULL, 2, 1),
(320, 62, NULL, 'Mulyadi', NULL, NULL, 'L', 7, NULL, NULL, 1, NULL),
(321, 62, NULL, 'Yusnita Lupiana', NULL, NULL, 'P', 7, NULL, NULL, 2, NULL),
(322, 62, NULL, 'Atiwi', NULL, NULL, 'P', 7, NULL, NULL, 3, NULL),
(323, 63, '760209', 'RUSLAN', 'Lombok', '1978-10-11', 'L', 1, NULL, NULL, 1, 1),
(324, 63, '7602096012840002', 'Sahhirah', 'Bali', '1984-12-20', 'P', 7, NULL, NULL, 2, 1),
(325, 63, '760209', 'Hasan Assidiq', 'Tangkau', '2001-07-24', 'L', 7, NULL, NULL, 3, 2),
(326, 63, '760209', 'Zul Hadi', 'Tangkau', '2004-02-05', 'L', 7, NULL, NULL, 3, 2),
(327, 63, '760209', 'Zaenap', 'Tangkau', '2007-11-29', 'P', 7, NULL, NULL, 3, 2),
(328, 63, '7602091208740001', 'Sutarko', 'Luwu Utara', '1974-08-12', 'L', 7, NULL, NULL, 1, 1),
(329, 63, '760209', 'Mak Inah', 'Luwu Utara', '1982-12-31', 'P', 7, NULL, NULL, 2, 1),
(330, 63, '760209', 'Tarmiati', 'Luwu Utara', '1998-06-02', 'P', 7, NULL, NULL, 3, 2),
(331, 63, NULL, 'Pajar Ramadani', 'Tangkau', '2006-09-28', 'L', 7, NULL, NULL, 3, 2),
(332, 63, NULL, 'Ishak', 'Lombok', '1965-12-31', 'L', 7, NULL, NULL, 1, 1),
(333, 63, NULL, 'Sri Angkonawati', 'Palopo', '1985-12-31', 'P', 7, NULL, NULL, 2, 1),
(334, 63, NULL, 'Muhamad Arselan', 'Tangkau', '1998-11-12', 'L', 7, NULL, NULL, 3, 2),
(335, 63, NULL, 'Dedi Irawan', 'Tangkau', '2000-01-17', 'L', 7, NULL, NULL, 3, 2),
(336, 63, NULL, 'Faisal Hamdam', 'Tangkau', '2004-08-09', 'L', 7, NULL, NULL, 3, 2),
(337, 64, '7602093112200001', 'AMAQ FATIMAH', 'Lombok Timur', '1944-08-10', 'L', 7, NULL, NULL, 1, 1),
(338, 64, '7602097112250001', 'Inaq Rumlah', 'Lombok timur', '1938-05-03', 'P', 7, NULL, NULL, 2, 1),
(339, 64, '7602097112560028', 'Sumarni', 'Lotim', '1956-12-31', 'P', NULL, NULL, NULL, 2, 1),
(340, 64, '7602096311030002', 'Laila Tu Zohrah', 'Lotim', '2003-11-23', 'P', NULL, NULL, NULL, 3, 2),
(341, 64, '7602095107110001', 'Sabrina', 'lotim', '2011-07-11', 'P', NULL, NULL, NULL, 3, 2),
(342, 65, '7602096102450001', 'MAHYAM', 'Lombok', '1950-12-10', 'P', 7, NULL, NULL, 1, 3),
(343, 65, NULL, 'Lalu Marjan', 'Tangkau', '1993-08-08', 'L', 7, NULL, NULL, 3, 2),
(344, 65, '7602090611112950001', 'Lalu Ahmad  Hadi', 'Tangkau', '1994-06-06', 'L', 7, NULL, NULL, 3, 2),
(345, 66, '7602093112780013', 'LALU AHMAD HADI', 'Lombok', '1978-12-31', 'L', 7, NULL, NULL, 1, 1),
(346, 66, '760209', 'Baiq Nurniasih', 'Lombok', '1982-12-31', 'P', 7, NULL, NULL, 2, 1),
(347, 66, NULL, 'Baiq OvianaAinun Hafizah', 'Lombok', '1998-09-13', 'P', 7, NULL, NULL, 3, 2),
(348, 66, NULL, 'Lalu Abdul Hamid', 'Lombok', '2000-02-28', 'L', 7, NULL, NULL, 3, 2),
(349, 66, NULL, 'Lalu Gunawan Fiqri', 'Lombok', '2002-03-13', 'L', 7, NULL, NULL, 3, 2),
(350, 66, NULL, 'A n w a r', 'Lombok', '1965-08-15', 'L', 7, NULL, NULL, 1, 1),
(351, 66, NULL, 'Miani', 'Lombok', '1969-12-31', 'P', 7, NULL, NULL, 2, 1),
(352, 66, NULL, 'Saupi', 'Tangkau', '1997-04-15', 'L', 7, NULL, NULL, 3, 2),
(353, 66, NULL, 'Nur Asanah', 'Tangkau', '1996-06-27', 'P', 7, NULL, NULL, 3, 2),
(354, 67, '7602093101780001', 'MAWARDI', 'Lombok Tengah', '1978-01-31', 'L', 7, NULL, NULL, 1, 1),
(355, 67, '7602094810900004', 'Pitriani', 'Poso', '1990-10-08', 'P', 7, NULL, NULL, 2, 1),
(356, 67, NULL, 'Wardianto', 'Mamuju', '2010-10-06', 'L', 7, NULL, NULL, 3, 2),
(357, 68, NULL, 'LALU INDAR JAYA', 'Lombok Tengah', '1964-01-10', 'L', 1, NULL, NULL, 1, 1),
(358, 68, NULL, 'Haeriah', 'Buleleng', NULL, 'P', 7, NULL, NULL, 2, 1),
(359, 68, '7602090810890003', 'Muhammad Yusuf', 'Sulawesi Tengah', '1989-10-08', 'L', 7, NULL, NULL, 3, 2),
(360, 68, NULL, 'Wiji Kasihani', 'Palopo', '2003-02-11', 'P', 7, NULL, NULL, 3, 2),
(361, 68, NULL, 'Rismiani', 'Tangkau', '2007-04-03', 'P', 7, NULL, NULL, 3, 2),
(362, 68, NULL, 'Daeng Latta', 'Jeneponto', '1967-08-15', 'L', 7, NULL, NULL, 1, 1),
(363, 68, NULL, 'Diana', 'Jeneponto', '1966-10-20', 'P', 7, NULL, NULL, 2, 1),
(364, 68, NULL, 'Narti', 'Jeneponto', '1985-05-10', 'P', 7, NULL, NULL, 3, 2),
(365, 68, '7602093112570037', 'I Wayan Sidia', 'Jembrana Bali ', '1957-12-31', 'L', 4, NULL, NULL, 1, 1),
(366, 68, NULL, 'Nengah Medri', 'Jembrana Bali ', '1964-07-10', 'P', 7, NULL, NULL, 2, 1),
(367, 68, NULL, 'Gede Ekana', 'Jembrana Bali ', '1981-06-04', 'L', 4, NULL, NULL, 1, 1),
(368, 68, NULL, 'Putu Novita Sari', 'Palopo', '1988-04-24', 'P', 7, NULL, NULL, 2, 1),
(369, 68, NULL, 'I Luh Krina Dewi', 'Tangkau', '2003-10-23', 'P', 7, NULL, NULL, 3, 2),
(370, 68, NULL, 'Kadek Agus Bogiana', 'Tangkau', '2006-06-21', 'L', 7, NULL, NULL, 3, 2),
(371, 69, '7602091501600001', 'I WAYANG DARYA', 'Denpasar Bali ', '1960-01-15', 'L', 4, NULL, NULL, 1, 1),
(372, 69, '7602096405650002', 'Ni Nyoman Medri', 'Denpasar Bali ', '1965-05-24', 'P', 7, NULL, NULL, 2, 1),
(373, 69, '7602095308910003', 'Ni Komang Kariati', 'Tangkau', '1991-08-13', 'P', 7, NULL, NULL, 3, 2),
(374, 69, '7602095205930001', 'Ni Ketut Purwaniasih', 'Tangkau', '1993-05-15', 'P', 7, NULL, NULL, 3, 2),
(375, 69, '7602096612070001', 'Ni Wayan Sujaliati', 'Tangkau', '2007-12-26', 'P', 7, NULL, NULL, 4, 2),
(376, 69, NULL, 'Ni Wayan Mudastri', 'Buleleng Bali ', '1960-10-07', 'P', 7, NULL, NULL, 1, 1),
(377, 69, NULL, 'I Komang Artayasa', 'Buleleng Bali ', '1987-03-11', 'L', 7, NULL, NULL, 3, 2),
(378, 69, NULL, 'I Ketut Astrawan', 'Tangkau', '1995-06-26', 'L', 7, NULL, NULL, 3, 2),
(379, 70, '7602093112800010', 'I Wayan Sudiana', 'Badung Bali ', '1980-12-31', 'L', 4, NULL, NULL, 1, 1),
(380, 70, '7602097112870010', 'Ni Ketut Kasti', 'Palopo', '1987-12-31', 'P', 7, NULL, NULL, 2, 1),
(381, 70, '7602091206050000', 'I Wayan Suartika', 'Tangkau', '2005-06-12', 'L', 4, NULL, NULL, 3, 2),
(382, 70, NULL, 'Wayan Rata', 'Badung Bali', '1970-05-14', 'L', 4, NULL, NULL, 1, 1),
(383, 70, NULL, 'Sarinah', 'Lepangan Pinrang', '1975-02-20', 'P', 2, NULL, NULL, 2, 1),
(384, 70, '7602093112650007', 'H.Lalu Marzuki  S.Pd.I', 'Lombok', '1965-12-31', 'L', 1, NULL, NULL, 1, 1),
(385, 70, NULL, 'Hj.Baiq Masriawti', 'Lombok', '1973-05-15', 'P', 7, NULL, NULL, 2, 1),
(386, 70, NULL, 'Muh. Faizul Patan', 'Tangkau', '1993-12-05', 'L', 7, NULL, NULL, 3, 2),
(387, 70, NULL, 'Rika Aprilia Utami', 'Tangkau', '1996-04-23', 'P', 7, NULL, NULL, 3, 2),
(388, 70, NULL, 'Wiwik Sukma Anjani', 'Tangkau', '2007-07-11', 'P', 7, NULL, NULL, 3, 2),
(389, 70, NULL, 'Zainuddin', 'Sampoang', '1989-03-08', 'L', 7, NULL, NULL, 1, 1),
(390, 70, NULL, 'Rahma Wati', 'Tangkau', '1990-07-06', 'P', 7, NULL, NULL, 2, 1),
(391, 70, NULL, 'Aula Ulandari', 'Tangkau', '2010-10-06', 'P', 7, NULL, NULL, 3, 2),
(392, 70, NULL, 'Agus Musliadi', 'Lombok', '1995-10-10', 'L', NULL, NULL, NULL, 1, 1),
(393, 70, NULL, 'Uswantun hasanah', 'Poso', '1989-10-16', 'P', NULL, NULL, NULL, 2, 2),
(394, 70, NULL, 'hendra Kusuma', 'Tangkau', '2007-07-27', 'L', NULL, NULL, NULL, 3, NULL),
(396, 71, '7602091206720001', 'I Putu Widiastawa', 'Jembrana', NULL, 'L', 4, NULL, NULL, 1, 1),
(397, 71, '7602094407720001', 'Ketut Sadri', 'jembrana', NULL, 'P', 4, NULL, NULL, 2, 1),
(398, 71, '7602097010960001', 'Ni Kadek Dwi Artini', 'Tangkau', '1996-10-30', 'P', 4, NULL, NULL, 3, 2),
(399, 71, '7602090206910001', 'I Putu Mas Juniadi', 'Tangkau', '1991-06-02', 'L', 4, NULL, NULL, 1, 1),
(400, 71, '7602116004900001', 'Kadek Resmiati', 'Tommo', '1990-04-20', 'P', 4, NULL, NULL, 2, 1),
(401, 72, NULL, 'Efendi Dg Emba', 'Jeneponto', '1971-12-31', 'L', 1, NULL, NULL, 1, 1),
(402, 72, NULL, 'Rini yani', 'Surabaya', '1978-07-28', 'P', 1, NULL, NULL, 2, 1),
(403, 72, NULL, 'Putri', 'Surabaya', '2001-06-15', 'P', 1, NULL, NULL, 3, 2),
(404, 72, NULL, 'Indah Riani', 'Surabaya', '2005-04-17', 'P', 1, NULL, NULL, 3, 2),
(405, 73, '7602093112580017', 'Gurur Gede Cemeng', 'Buleleng', NULL, 'L', 4, NULL, NULL, 1, 1),
(406, 73, '7602093108600001', 'Ketut Sumpena', 'Buleleng', NULL, 'P', 4, NULL, NULL, 2, 1),
(407, 73, '7602091210820001', 'Putu Kariada', 'Buleleng', NULL, 'L', 4, NULL, NULL, 3, 2),
(408, 73, NULL, 'Ni Ketut Redi Ernawati', 'Konawe', NULL, 'P', NULL, NULL, NULL, 7, 2),
(409, 74, NULL, 'Ni Nyoam Sulasmini', 'Klungkung', NULL, 'P', 4, NULL, NULL, 1, 3),
(410, 74, NULL, 'Ni Wayan Sulastriningsih', 'Tangkau ', '1991-12-02', 'P', 4, NULL, NULL, 3, 2),
(411, 74, NULL, 'Made Agus Suiyasa Putra', 'Tangkau ', '1993-08-26', 'L', NULL, NULL, NULL, 3, 2),
(412, 75, '7602093003660001', 'I Gusti Ngurah Made Mertha', 'Sukasada', '1966-03-30', 'L', 4, NULL, NULL, 1, 1),
(413, 75, '7602095205720001', 'Jero Putu Ratni', 'Desa Warnasari', '1972-05-12', 'P', 4, NULL, NULL, 2, 1),
(414, 75, '7602091907010001', 'Gusti Ngurah Putu Oka Pratama Putra', 'Tangkau', '2001-07-19', 'L', 4, NULL, NULL, 4, 2),
(415, 76, '7602093003820001', 'I Putu Suardi Anatara', 'Buleleng', NULL, 'L', 4, NULL, NULL, 1, 1),
(416, 76, '7602096004820001', 'Ni Komang Resmini', 'Buleleng', NULL, 'P', 4, NULL, NULL, 2, 1),
(417, 76, '7602092611020001', 'I Kadek Rama Dana Putra', 'Tangkau ', '2002-11-26', 'L', 4, NULL, NULL, 3, 2),
(418, 77, '7602092105740001', 'Nyoman Budi Armawan', 'Bali', '1974-05-21', 'L', 4, NULL, NULL, 1, 1),
(419, 77, '7602090106770001', 'Ketut Santi Ekaningsih', 'Makasar', '1977-06-21', 'P', 7, NULL, NULL, 2, 1),
(420, 77, '7602090408970001', 'Gede Eka Darmawan', 'Bali', '1997-08-04', 'L', 7, NULL, NULL, 3, 2),
(421, 77, '7602094401020001', 'Made Sinta Darmayanti', 'Tangkau', '2002-01-04', 'P', 7, NULL, NULL, 3, 2),
(422, 78, '7602091709650001', 'KETUT REDEN', 'Jembrana', '1965-09-17', 'L', 7, NULL, NULL, 1, 1),
(423, 78, '7602097112700016', 'Ni Ketut Sari', 'Jembrana', '1970-12-31', 'P', 7, NULL, NULL, 2, 1),
(424, 78, '7602096909890001', 'Ni Luh Sarwati', 'Tangkau', '1989-09-29', 'P', 7, NULL, NULL, 2, 1),
(425, 78, '7602091510920003', 'I Made Suartama', 'Tangkau', '1992-10-15', 'L', 7, NULL, NULL, 3, 2),
(426, 79, '7602093112650023', NULL, 'Klungkung', NULL, 'L', 7, NULL, NULL, 1, 1),
(427, 79, '7602097112660014', 'Ni Made Parti', 'Palembang', '1966-12-31', 'P', 7, NULL, NULL, 2, 1),
(428, 79, '7602090202920001', 'Ketut Sinte Widana', 'Tangkau', '1992-02-02', 'P', 7, NULL, NULL, 3, 2),
(429, 79, '7602090208870001', 'Komang Wirkana', 'Jembrana', '1987-08-02', 'L', NULL, NULL, NULL, NULL, 1),
(430, 80, '7602093112660018', 'Lalu Mahli  S.Pd.I', 'Lombok', NULL, 'L', NULL, NULL, NULL, 1, 1),
(431, 80, '7602097112710013', 'Baiq Maslaah', 'lombok', NULL, 'P', NULL, NULL, NULL, 2, 1),
(432, 80, '7602095810900001', 'Baiq Khamsyatun Nasin', 'Tangkau', '1990-10-18', 'P', 7, NULL, NULL, 3, 2),
(433, 80, '7602095806930001', 'Baiq Lisa Apriatin', 'Tangkau', '1993-08-29', 'P', 7, NULL, NULL, 3, 2),
(434, 80, '7602094710980001', 'Baiq Nazipatul Insani', 'Tangkau', '1998-10-07', 'P', 7, NULL, NULL, 3, 2),
(435, 80, '7602094102060001', 'Baiq Intan Febriantika', 'Tangkau', '2006-02-01', 'P', 7, NULL, NULL, 3, 2),
(436, 80, NULL, 'Lalu M.Zaki D.', 'Tangkau', '2010-06-01', 'L', 7, NULL, NULL, 3, 2),
(437, 81, '7602092307770003', 'KADEK SUARDIKA', 'Bali', '1977-07-23', 'L', 1, NULL, NULL, 1, 1),
(438, 81, '7602094505820002', 'Wayan Simpen', 'Bali', '1982-05-05', 'P', 7, NULL, NULL, 2, 1),
(439, 81, '7602095306050001', 'I Luh Sujani', 'Tangkau', '2005-06-13', 'P', 7, NULL, NULL, 3, 2),
(440, 82, '7602093112740016', 'Sannang', 'Jeneponto', '1974-12-31', 'L', 1, NULL, NULL, 1, 1),
(441, 82, '7602097112800010', 'Baji Handayani', 'jeneponto', '1980-12-31', 'P', 7, NULL, NULL, 2, 1),
(442, 82, '7602093112980018', 'Sahir', 'Tangkau', '1998-12-31', 'L', 7, NULL, NULL, 3, 2),
(443, 82, '7602093112000018', 'Arif', 'Tangkau', '2000-12-31', 'L', 7, NULL, NULL, 3, 2),
(444, 82, '7602095005030001', 'Nurfia', 'Tangkau', '2003-05-10', 'P', 7, NULL, NULL, 3, 2),
(445, 82, '7602095509060001', 'Reski Awalia', 'Tangkau', '2006-09-15', 'P', 7, NULL, NULL, 3, 2),
(446, 82, '7602095509060001', 'Risna Awalia', 'Tangkau', '2006-09-15', 'P', 7, NULL, NULL, 3, 2),
(447, 83, '7602094604500001', 'Jumariah', 'Jeneponto', '1950-04-06', 'L', NULL, NULL, NULL, 1, 3),
(448, 83, '7602093112830001', 'Amiruddin S.', 'Jeneponto', '1983-12-31', 'L', 7, NULL, NULL, 3, 4),
(449, 83, '7602094507970001', 'Maria Ulfa', 'Tangkau', '1997-07-05', 'P', 7, NULL, NULL, 3, 2),
(450, 84, '7602092011800001', 'Agus Dg Situju', 'Bantaeng', '1980-11-20', 'L', 7, NULL, NULL, 1, 1),
(451, 84, '7602095510820002', 'Darmawati', 'Jeneponto', '1982-10-15', 'P', 7, NULL, NULL, 2, 1),
(452, 84, '7602091008030003', 'Ishad', 'Tangkau', '2003-08-10', 'L', 7, NULL, NULL, 3, 2),
(453, 84, '7602090306070001', 'Ilham', 'Tangkau', '2007-06-03', 'L', 7, NULL, NULL, 3, 2),
(454, 85, '7602093112470004', 'BAUSA DG NGESA', 'Jeneponto', '1947-12-31', 'L', 7, NULL, NULL, 1, 1),
(455, 85, '7602097112540005', 'Hasnah', 'Jeneponto', '1954-12-31', 'P', 1, NULL, NULL, 2, 1),
(456, 85, '7602095503840002', 'Fatmawati Fajja', 'Jeneponto', '1984-03-15', 'P', 7, NULL, NULL, 3, 2),
(457, 85, '7602092912890002', 'Hasrul Hasba', 'Mamuju', '1989-12-29', 'L', 7, NULL, NULL, 3, 2),
(458, 85, '7602090203010001', 'Zulkifli', 'Jeneponto', '2001-03-02', 'L', 7, NULL, NULL, 4, 2),
(459, 85, '7602090302070001', 'Rasia Audia', 'Tangkau', '2007-03-02', 'P', 7, NULL, NULL, 4, 2),
(460, 86, '7602090403800001', 'Syamsudin Dg Tawang', 'Jeneponto', '1980-03-04', 'L', 7, NULL, NULL, 1, 1),
(461, 86, '7602094404870003', 'Rosmawati Dg Kebe', 'Jenetalasa', '1987-04-04', 'P', 1, NULL, NULL, 2, 1),
(462, 86, '760209', 'Muhammad Irdam', 'Jeneponto', '2010-03-02', 'L', 7, NULL, NULL, 3, 2),
(463, 86, NULL, 'Zainal', NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(464, 86, '7602095702880001', 'Hasmawati', 'Jeneponto', '1988-05-17', 'P', 7, NULL, NULL, 3, 4),
(465, 86, NULL, 'Udin', 'Jeneponto', '1970-12-31', 'L', NULL, NULL, NULL, 1, 1),
(466, 86, NULL, 'Ramatiah', 'Jeneponto', '1974-12-31', 'P', NULL, NULL, NULL, 2, NULL),
(467, 86, NULL, 'Dika', 'Jeneponto', '2010-12-31', 'L', NULL, NULL, NULL, 3, NULL),
(468, 87, '7602091012710001', 'Abdul Rahman R.', 'Jeneponto', '1971-12-10', 'L', 7, NULL, NULL, 1, 1),
(469, 87, '7602097112720007', 'Sitti Khalija', 'Jeneponto', '1972-12-31', 'P', 7, NULL, NULL, 2, 1),
(470, 87, '7602092702020001', 'Nur Ali Rewa R.', 'Tangkau', '2002-02-27', 'L', 7, NULL, NULL, 3, 2),
(471, 87, NULL, 'Amiruddin', 'Jeneponto', '1972-08-06', 'L', 7, NULL, NULL, 7, 2),
(472, 87, '7062096305920001', 'RahmaPuspita Sari R.', 'Tangkau', '1992-05-23', 'P', 7, NULL, NULL, 2, 1),
(473, 87, NULL, 'Hamsir', 'Topoyo', '1988-06-15', 'L', 7, NULL, NULL, 1, 1),
(474, 87, '7602094409930001', 'Siti Riska R', 'Tangkau', '1993-09-14', 'P', 7, NULL, NULL, 2, 1),
(475, 88, NULL, 'Made Sada', 'Klungkung', NULL, 'L', 4, NULL, NULL, 1, 1),
(476, 88, NULL, 'Ketut Samiasih', 'Klungkung', NULL, 'P', 7, NULL, NULL, 2, 1),
(477, 88, NULL, 'Kadek Ayu Muliani', 'Tangkau', '2007-02-04', 'P', 7, NULL, NULL, 3, 2),
(478, 88, NULL, 'Putut Suarjana', 'Tangkau', '1989-05-13', 'L', 7, NULL, NULL, 1, 1),
(479, 89, NULL, 'Komang Suarningsih', 'Toabo', '1990-05-15', 'P', 7, NULL, NULL, 8, 1),
(480, 89, NULL, 'Gede Ardiana', 'Tangkau', '2009-03-27', 'L', 7, NULL, NULL, 4, 2),
(481, 90, '7602091111590001', 'Made\\ Sukayasa', 'Buleleng', NULL, 'L', 7, NULL, NULL, 1, 1),
(482, 90, '7602096007640002', 'Ni Made Mustari', 'Buleleng', NULL, 'P', 7, NULL, NULL, 2, 1),
(483, 90, '7602092303020001', 'Komang Merta Putra Yasa', 'Tangkau', '2002-03-23', 'L', 7, NULL, NULL, 3, 2),
(484, 90, '7602090706990001', 'Gede Juni Yastawa Putra', 'Tangkau', '1999-06-07', 'L', 7, NULL, NULL, 4, 2),
(485, 91, '7602090404760001', 'Komang Adnyana', 'Bali', '1976-04-04', 'L', 7, NULL, NULL, 1, 1),
(486, 91, '7602096504820001', 'Ni luh Sukertiasih', 'Bali', '1984-04-25', 'P', 7, NULL, NULL, 2, 1),
(487, 91, NULL, 'I Putu  Suadsana', 'Topoyo', '2008-08-12', 'L', 7, NULL, NULL, 3, 2),
(488, 92, '7602091706760003', 'KETUT WIRIADA', 'Buleleng', NULL, 'L', 4, NULL, NULL, 1, 1),
(489, 92, '7602090007790003', 'Wayan Sunarti', 'Jembrana', NULL, 'P', 7, NULL, NULL, 2, 1),
(490, 92, '7602095410990006', 'Luh Restiani', 'Tangkau', '1999-10-14', 'P', NULL, NULL, NULL, 3, 2),
(491, 92, '7602091410990001', 'Kadek Rustini', 'Tangkau', '1999-10-14', 'P', 7, NULL, NULL, 3, 2),
(492, 93, '7602091806030001', 'Komang Buda Juni Dharmawan', 'Tangkau', '2003-06-18', 'L', 4, NULL, NULL, 3, 2),
(493, 93, '7602092106080001', 'Ketut Reda Juni Dharma Putra', 'Tangkau', '2008-06-21', 'L', 7, NULL, NULL, 3, 2),
(494, 93, NULL, 'Wayan Someyasa', 'Tangkau', '2001-07-16', 'L', 7, NULL, NULL, 7, 2),
(495, 94, '7602093112580036', 'I Nyoman Gantiana', 'Mengwi', NULL, 'L', 4, NULL, NULL, 1, 1),
(496, 94, '7602095608600001', 'Ni Nyoman Murniati', 'Mengwi', NULL, 'P', 7, NULL, NULL, 2, 1),
(497, 94, '7602090103000002', 'I Wayan Agus Martana', 'Tangkau', '2000-03-01', 'L', 7, NULL, NULL, 3, 2),
(498, 94, '7602090103000001', 'Ni Made Ayu Martini', 'Tangkau', '2000-03-01', 'P', 7, NULL, NULL, 3, 2),
(499, 94, NULL, 'Putu Diastra', 'Mengwi', NULL, 'L', 7, NULL, NULL, 1, 1),
(500, 94, NULL, 'Ni Kadek Supertini', 'Bali', '1980-12-31', 'P', 7, NULL, NULL, 2, 1),
(501, 94, NULL, 'Putu Agus Adisaputra', 'Tangkau', '2008-09-06', 'L', 7, NULL, NULL, 3, 2),
(502, 94, '7602093112610013', 'I Wayan Sudrianta', 'Denpasar', '1961-12-31', 'L', 7, NULL, NULL, 1, 1),
(503, 94, '7602095605660001', 'Ni wayan Sukarmini', 'Denpasar ', '1966-05-16', 'P', 7, NULL, NULL, 2, 1),
(504, 94, '7602090603850001', 'I Wayan Dedi Sudiarta', 'Denpasar', '1985-03-06', 'L', NULL, NULL, NULL, 3, 2),
(505, 94, '7602096606910001', 'Ni Made Ari Juni Asih ', 'Mamuju', '1991-06-26', 'P', NULL, NULL, NULL, 3, 2),
(506, 94, '7602090303940001', 'Komang Agus Arimbwa', 'Mamuju', '1994-03-03', 'L', 7, NULL, NULL, 3, 2),
(507, 94, '7602095204010002', 'Ni Ketut Murti Handayani', 'Tangkau', '2001-04-12', 'P', 7, NULL, NULL, 3, 2),
(508, 94, '7602095204010003', 'Wayan Mandalawati', 'Tangkau', '2001-04-12', 'P', 7, NULL, NULL, 3, 2),
(509, 94, '7602095904020001', 'Made Sugiartini', 'Tangkau', '2002-04-19', 'P', 7, NULL, NULL, 3, 2),
(510, 94, '7602095608050001', 'Komang Agustini', 'Tangkau', '2005-08-16', 'P', 7, NULL, NULL, 3, 2),
(511, 95, '7602090704810001', 'Gede Septarawan', 'Sekumpul', NULL, 'L', 7, NULL, NULL, 1, 1),
(512, 95, '7602094710840002', 'Nengah Widihayanti', 'Tejakula', NULL, 'P', 7, NULL, NULL, 2, 1),
(513, 95, '7602094910060003', 'Luh Diah Oktaviani', 'Bali', '2006-10-09', 'P', 7, NULL, NULL, 3, 2),
(514, 95, '7602092002800001', 'Wayan Sudiana', 'Tejakula', NULL, 'L', 7, NULL, NULL, 1, 1),
(515, 95, NULL, 'I Luh Suryani', 'Bali', '1990-10-10', 'P', 7, NULL, NULL, 2, 1),
(516, 95, NULL, 'Wayan Mogiaksa', 'Tangkau', '2010-05-04', 'L', 7, NULL, NULL, 3, 2),
(517, 96, '7602093012620003', 'I Nengah Bali', 'Tejkula', NULL, 'L', 7, NULL, NULL, 1, 1),
(518, 96, '7602097012620001', 'Ni Ketut Artati', 'Tejakula', NULL, 'P', 7, NULL, NULL, 2, 1),
(519, 96, '7602094911960001', 'Nyoman Wisnu Berata', 'Tangkau', '1996-11-09', 'L', 7, NULL, NULL, 3, 2),
(520, 97, '7602091412750001', 'Ketut Dita Antara', 'Badung', NULL, 'L', 7, NULL, NULL, 1, 1),
(521, 97, '7602094308780002', 'Ni Putut Suterniasih', 'Sukasada', NULL, 'P', 7, NULL, NULL, 2, 1),
(522, 97, '7602094608050002', 'Ni Made Rismawati', 'Tangkau', '2005-08-06', 'P', 7, NULL, NULL, 3, 2),
(523, 97, '7602091701070001', 'Nyoman Asda Irawan', 'Tangkau', '2007-01-17', 'L', 1, NULL, NULL, 3, 2),
(524, 98, '7602092008720001', 'Musriadi', 'Sengkang', '1972-08-20', 'L', 7, NULL, NULL, 1, 1),
(525, 98, '7602094608730002', 'Nurjanna', 'Toraja', '1973-08-06', 'P', 7, NULL, NULL, 2, 1),
(526, 98, NULL, 'Nuriftah Riadi', 'Samarinda', '1998-03-12', 'P', 7, NULL, NULL, 3, 2),
(527, 98, NULL, 'Ahmad Nugrah Riadi', 'Topoyo', '2001-02-25', 'L', 7, NULL, NULL, 3, 2),
(528, 98, NULL, 'Ahmad Mutawakil Riadi', 'Topoyo', '2007-03-17', 'L', 7, NULL, NULL, 3, 2),
(529, 99, '7602091701710001', 'Muhammad Ali', 'Bone', '1971-07-17', 'L', 7, NULL, NULL, 1, 1),
(530, 99, '7602095504820001', 'Indayani', 'Bali', '1982-04-15', 'P', 7, NULL, NULL, 2, 1),
(531, 99, '7602092207000001', 'Irwan Ardiansah', 'Tangkau', '2000-07-22', 'L', 7, NULL, NULL, 3, 2),
(532, 99, '7602094604070001', 'Nur Afni Madani', 'Mamuju', '2007-04-06', 'P', 7, NULL, NULL, 3, 2),
(533, 100, '760209100575002', 'ASJUDAN', 'Amlapura-Bali', '1975-05-10', 'L', 7, NULL, NULL, 1, 1),
(534, 100, '7602094506760001', 'Saharia', 'Bone', '1976-06-05', 'P', 7, NULL, NULL, 2, 1),
(535, 100, '7602092505960002', 'Taufik Kurahman', 'Tangkau', '1996-05-25', 'L', 7, NULL, NULL, 3, 2),
(536, 100, '7602096805990001', 'Rika Ridayani', 'Tabolang', '1999-05-28', 'P', 7, NULL, NULL, 3, 2),
(537, 101, '7602090510830001', 'HAMKA', 'Jeneponto', '1983-10-05', 'L', 7, NULL, NULL, 1, 1),
(538, 101, '7602095006820001', 'Rahma', 'Jeneponto', '1982-08-10', 'P', 7, NULL, NULL, 2, 1),
(539, 101, '7602091611060001', 'Muhammad Rifal', 'Tangkau', '2006-11-16', 'L', 7, NULL, NULL, 3, 2),
(540, 102, '7602091610720001', 'Ridwan', 'Makale', '1972-10-16', 'L', 7, NULL, NULL, 1, 1),
(541, 102, '7602092912790001', 'Aminah Gonang', 'Makale', '1979-12-29', 'P', 7, NULL, NULL, 2, 1),
(542, 102, '7602094107010002', 'Nurhidayah Muthmainna', 'Makale', '2001-07-01', 'L', 7, NULL, NULL, 3, 2),
(543, 102, '7602090402040001', 'Muhammad Ashabul Kahfi', 'Makale', '2004-02-04', 'L', 7, NULL, NULL, 3, 2);
INSERT INTO `penduduk` (`Id_penduduk`, `id_kk`, `nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `id_agama`, `wajib_pilih`, `pekerjaan`, `id_shdk`, `id_status`) VALUES
(544, 102, '7602091001780001', 'Sarianto', 'Makale', '1978-01-10', 'L', 7, NULL, NULL, 7, 2),
(545, 102, '7602091708900002', 'Zainal', 'Makale', '1990-08-17', 'L', 7, NULL, NULL, 7, 2),
(546, 102, '7602090805910002', 'Abdul Rahim', 'Samarinda', '1991-05-08', 'L', 7, NULL, NULL, 7, 2),
(547, 103, '7602092108570001', 'Nyoman Kerta', 'Buleleng', '1957-08-21', 'L', NULL, NULL, NULL, 1, 1),
(548, 103, '7602094609600001', 'Made Sujati', 'Buleleng', '1960-09-06', 'P', 7, NULL, NULL, 2, 1),
(549, 103, '7602094504720002', 'Made Budiasih', 'Buleleng', '1972-04-04', 'P', NULL, NULL, NULL, 2, 1),
(550, 104, '7602095411900001', 'Ni Luh Ade Purnama Dewi', 'Tangkau', '1990-11-14', 'P', 7, NULL, NULL, 3, 2),
(551, 104, '7602094310920001', 'Ni Luh Komang Uye Pertiwi', 'Tangkau', '1992-10-03', 'P', 7, NULL, NULL, 3, 2),
(552, 104, '7602092203970001', 'I Made Om Bayu Prarmana', 'Tangkau', '1997-03-22', 'L', 7, NULL, NULL, 3, 2),
(553, 104, '7602091011030002', 'I Nyoman Agung Suksma', 'Tangkau', '2003-11-10', 'L', 1, NULL, NULL, 3, 2),
(554, 105, '7602093112740001', 'I GEDE SUDIARTA/ MUKLIS', 'Buleleng', '1974-10-31', 'L', NULL, NULL, NULL, 1, 1),
(555, 105, '7602096004780002', 'Sitti Irayani', 'Singaraja', '1978-04-20', 'P', 7, NULL, NULL, 2, 1),
(556, 105, '7602091809920001', 'Rian Listianto', 'Tabolang', '1992-09-18', 'L', 7, NULL, NULL, 3, 2),
(557, 105, '7602094609980001', 'Diah Listianti', 'Tangkau', '1998-09-06', 'P', 7, NULL, NULL, 3, 2),
(558, 105, '7602091206030002', 'Risky Nur Iman', 'Tangkau', '2003-06-12', 'L', 7, NULL, NULL, 3, 2),
(559, 105, '7602094104090001', 'Listi Aprianti', 'Tangkau', '2009-04-01', 'P', 7, NULL, NULL, 3, 2),
(560, 106, '7602093112750062', 'SAHABUDDIN  Dg Tumpu', 'Jeneponto', '1975-12-31', 'L', 1, NULL, NULL, 1, 1),
(561, 106, '7602097112800070', 'Nurlaela', 'Jeneponto', '1980-12-31', 'P', NULL, NULL, NULL, 2, 1),
(562, 106, '7602090203010001', 'Zulkifli', 'Jeneponto', '2001-03-02', 'L', 7, NULL, NULL, 3, 2),
(563, 106, NULL, 'Zainuddin', 'Jeneponto', '2002-02-18', 'L', NULL, NULL, NULL, 3, 2),
(564, 107, '7602090708800002', 'Alamsyah', 'Bantaeng', '1980-08-07', 'L', 1, NULL, NULL, 1, 2),
(565, 107, '7602091609810001', 'Sudirman', 'Bantaeng', '1981-09-18', 'L', NULL, NULL, NULL, 12, 2),
(566, 107, '7602095011870001', 'Kartina', 'Bantaeng', '1987-11-10', 'P', NULL, NULL, NULL, 12, 2),
(567, 107, '7602094204920001', 'Nurbaya', 'Bantaeng', '1992-04-02', 'P', NULL, NULL, NULL, 12, 2),
(568, 107, '7602094204920002', 'Nurbiya', 'Bantaeng', '1992-04-02', 'P', NULL, NULL, NULL, 12, 2),
(569, 107, NULL, 'Muhammad Yusuf', 'Bantaeng', '1975-08-08', 'L', NULL, NULL, NULL, 1, 1),
(570, 107, NULL, 'Sana', 'Bantaeng', '1976-07-02', 'P', NULL, NULL, NULL, 2, 1),
(571, 107, NULL, 'Sumiati', 'Bantaeng', '1999-05-14', 'P', NULL, NULL, NULL, 3, 2),
(572, 107, NULL, 'Sukaeni', 'Bantaeng', '2003-03-19', 'P', NULL, NULL, NULL, 3, 2),
(573, 108, '7602092109850001', 'KETUT YANG LIANG', 'Singaraja', '1985-09-21', 'L', 7, NULL, NULL, 1, 1),
(574, 108, NULL, 'Wayan Suliantini', 'Tomo', '1991-06-12', 'P', 7, NULL, NULL, 2, 1),
(575, 108, '7602091909070001', 'Putu Sinta Anggawinata', 'Tangkau', '2007-09-19', 'L', 7, NULL, NULL, 3, 2),
(576, 108, NULL, 'Kadek Diva Ayanti', 'salupangkang', '2010-11-05', 'P', 7, NULL, NULL, 3, 2),
(577, 109, '7602091511200001', ' Labodini', 'Makasar', '1920-11-15', 'L', 7, NULL, NULL, 1, 1),
(578, 109, '7602094910300001', 'Hj.Yanjang', 'Makasar', '1930-10-09', 'P', NULL, NULL, NULL, 1, 1),
(579, 110, '7602091203550001', 'MAKIN', 'Jeneponto', '1955-03-12', 'L', 7, NULL, NULL, 1, 1),
(580, 110, '7602094406690001', 'S a j i', 'Jeneponto', '1958-06-04', 'P', NULL, NULL, NULL, 2, 1),
(581, 110, '7602091007850001', 'Arsad', 'Jeneponto', '1985-07-10', 'L', NULL, NULL, NULL, 3, 2),
(582, 111, '7602093112720071', 'MUSTIRAH', 'Lombok', '1972-11-08', 'L', 1, NULL, NULL, 1, 1),
(583, 111, '7602095006730001', 'BAIQ MUHAJIR R.', 'lombok', '1973-06-10', 'P', NULL, NULL, NULL, 2, 1),
(584, 111, NULL, 'Mega Handini', 'Tangkau', '1997-12-12', 'P', NULL, NULL, NULL, 3, 2),
(585, 111, NULL, 'Muh.Jahidin Sumarno', 'Tangkau', '2005-05-10', 'L', NULL, NULL, NULL, 3, 2),
(586, 111, NULL, 'Muh, Ardiansah', 'Tangkau', '2007-10-05', 'L', NULL, NULL, NULL, 3, 2),
(587, 111, NULL, 'I Ketut Linggih', 'Unggahan', '1977-01-02', 'L', 4, NULL, NULL, 1, 1),
(588, 111, NULL, 'Ni Ketut Sumiasih', 'Buleleng', NULL, 'P', NULL, NULL, NULL, 2, 1),
(589, 111, NULL, 'I Putu Redit Witana', 'Morowali', '2011-05-15', 'L', NULL, NULL, NULL, 3, 2),
(590, 111, NULL, 'I Gede Singadana', 'Unggahan', '1950-12-13', 'L', NULL, NULL, NULL, 5, 1),
(591, 111, NULL, 'Alamsyah', 'Jeneponto', '1980-08-07', 'L', NULL, NULL, NULL, 1, 2),
(592, 111, NULL, 'Sudirman', 'Jeneponto', '1981-09-15', 'L', NULL, NULL, NULL, 11, 2),
(593, 111, NULL, 'Nurbaya', 'Jeneponto', '1992-04-02', 'P', NULL, NULL, NULL, 11, 2),
(594, 111, NULL, 'Nurbiya', 'Jeneponto', '1992-04-02', 'P', NULL, NULL, NULL, 11, 2),
(595, 112, '7602091512570001', 'NINRIK', 'BAROBO', '1957-12-15', 'L', 1, NULL, NULL, 1, 1),
(596, 112, '7602095811600001', 'NURSIAH', 'BAROBO', '1960-11-18', 'P', NULL, NULL, NULL, 2, 1),
(597, 112, '7602091508920003', 'RUSLAN', 'BAROBO', '1992-08-15', 'L', NULL, NULL, NULL, 3, 2),
(598, 112, '7602093003930002', 'RANDI', 'MAKASSAR', '1993-03-30', 'L', NULL, NULL, NULL, 3, 2),
(599, 113, '7602095504790002', 'NURMI', 'TORAJA', '1979-04-15', 'P', 1, NULL, NULL, 1, 5),
(600, 113, '7602090805910006', 'ABD RAHMAN', 'SAMARINDA', '1991-05-08', 'L', NULL, NULL, NULL, 7, 2),
(601, 114, '7602091110730001', 'RUSTANG S.Ag', 'Baraya', '1973-10-11', 'L', NULL, NULL, NULL, 1, 1),
(602, 114, '7602095808800001', 'ST Ramlah', 'Jeneponto', '1980-08-18', 'P', NULL, NULL, NULL, 2, 1),
(603, 115, '7602093112650020', 'I Made Suenten', 'Selat Bll', '1965-12-31', 'L', 4, NULL, NULL, 1, 1),
(604, 115, '7602097001650002', 'Ketut Resini', 'Selat Bll', '1965-01-30', 'P', 4, NULL, NULL, 2, 1),
(605, 115, '7602091606820002', 'I Gede Sumedana', 'Selat Bll', '1982-06-16', 'L', 4, NULL, NULL, 1, 1),
(606, 115, NULL, 'Ni Kadek Nitarini', 'Bali', '1988-10-10', 'P', 4, NULL, NULL, 2, 1),
(607, 116, '7602090207570001', 'Wayan Dana', 'Badung', '1957-07-02', 'L', 4, NULL, NULL, 1, 1),
(608, 116, '7602096104630001', 'Ni Nyoman Arka', 'Badung', '1963-04-21', 'P', 4, NULL, NULL, 2, 1),
(609, 116, '7602090205860001', 'Wayan Suarsana', 'Badung', '1986-05-02', 'L', 4, NULL, NULL, 1, 1),
(610, 116, '7602094707890001', 'Ni Wayan Yuli Artini', 'Tangkau', '1989-07-07', 'P', 4, NULL, NULL, 2, 1),
(611, 116, NULL, 'I Wayan Diartawa', NULL, NULL, 'P', 4, NULL, NULL, NULL, NULL),
(612, 116, NULL, 'Ketut Gede Suarta', 'Nusa Penida', '1932-12-31', 'L', 4, NULL, NULL, 1, 1),
(613, 116, NULL, 'Ni Wayan Tantri', 'Nusa Panida', '1942-12-31', 'P', 4, NULL, NULL, 2, 1),
(614, 116, NULL, 'Ni Ketut Merta', 'Lombok', '1937-12-31', 'P', 4, NULL, NULL, 7, 3),
(615, 117, '7602092104830001', 'Putu Merta Yasa', 'Jembrana', '1983-12-31', 'L', 4, NULL, NULL, 1, 1),
(616, 117, '7602095509860001', 'Ni Kadek Tastri', 'Jembrana', '1986-12-31', 'P', 4, NULL, NULL, 2, 1),
(617, 117, '7602094801060001', 'Ni Luh Ayu Restiani', 'Tangkau', '2006-01-08', 'P', 4, NULL, NULL, 3, 2),
(618, 117, NULL, 'Ni Nyoman Murtiasih ', 'Tangkau', '2013-04-10', 'P', NULL, NULL, NULL, 3, 2),
(619, 118, '7602091405840001', 'Komang Suparta yasa', 'Bali', '1982-12-24', 'L', 4, NULL, NULL, 3, 1),
(620, 118, '7602092710820001', 'Ni Komang Sutriani', 'Klungkung', '1982-10-27', 'P', 4, NULL, NULL, 8, 1),
(621, 118, '7602092012070001', 'I Gede Ngurah Sudarma', 'Tangkau', '2001-12-25', 'L', 4, NULL, NULL, 4, 2),
(622, 118, '7602090903020001', 'Ni Kadek Astutiani', 'Tangkau', '2002-03-09', 'P', 4, NULL, NULL, 4, 2),
(623, 119, '7602093112650019', 'Nyoman Samba', 'Klungkung', '1965-12-31', 'L', 4, NULL, NULL, 1, 1),
(624, 119, '7602097112750019', 'Ni Made Sari', 'Klungkung', '1975-12-31', 'P', 4, NULL, NULL, 2, 1),
(625, 119, '7602096511930001', 'Ni Nyoman Supartini', 'Tangkau', '1993-11-26', 'P', 4, NULL, NULL, 3, 2),
(626, 119, '7602090809860001', 'I Made Merta Yasa', 'Klungkung', '1986-09-06', 'L', 4, NULL, NULL, 1, 1),
(627, 119, NULL, 'Ni Kadek Wastini', 'Tommo I.II', '1990-12-31', 'P', 4, NULL, NULL, 2, 1),
(628, 119, NULL, 'Putu Guntur', 'Tangkau', '2010-01-27', 'L', 4, NULL, NULL, 3, 2),
(629, 120, '7602097112580005', 'Ni Made Sekar', 'Bali', '1958-12-31', 'P', 4, NULL, NULL, 1, 3),
(630, 120, '7602091208880001', 'I Wayan Eka Bayu Putra', 'Tangkau', '1988-08-12', 'L', 4, NULL, NULL, 3, 1),
(631, 120, '7602095505870001', 'Eka Sulistia wati', 'Jawa', '1987-05-15', 'P', 4, NULL, NULL, 8, 1),
(632, 120, '7602096811050001', 'Ni Wayan Ayu Puspita Sari', 'Tangkau', '2005-11-28', 'P', 4, NULL, NULL, 4, 2),
(633, 120, '7602092708800002', 'Gede Suarmanik', 'Bali', '1980-08-27', 'L', 4, NULL, NULL, 7, 2),
(634, 120, NULL, 'IDA BAGUS NYOMAN SUGIARTA', 'Badung Bali', '1961-05-15', 'L', 4, NULL, NULL, 1, 1),
(635, 120, NULL, 'Agung Rai Artini', 'Badung Bali', '1959-05-08', 'P', 4, NULL, NULL, 2, 1),
(636, 121, '7602091111780002', 'IDA BAGUS NYOMAN KARTIKA', 'Ayunan Badung', '1978-11-11', 'L', 4, NULL, NULL, 1, 1),
(637, 121, '7602095007850006', 'Ida Ayu Putu Yuli Artini', 'Ayunan Badung', '1985-07-10', 'P', 4, NULL, NULL, 2, 1),
(638, 121, NULL, 'Ida Bgs.Putu Angga Kerta Bhuana', 'Ayunan Badung', '2004-01-27', 'L', 4, NULL, NULL, 4, 2),
(639, 121, NULL, 'Ida Ayu Made Arianti', 'Tangkau', '2010-03-11', 'P', 4, NULL, NULL, 3, 2),
(640, 122, '7602090102590001', 'I Ketut Ngesal', 'Badung Bali', '1959-02-01', 'L', 4, NULL, NULL, 1, 1),
(641, 122, '7602097112610012', 'Ni Wayan Raji', 'Badung Bali', '1961-12-31', 'P', 4, NULL, NULL, 2, 1),
(642, 122, '7602092303920001', 'Komang Eli Susanto', 'Tangkau', '1992-03-23', 'L', 4, NULL, NULL, 3, 2),
(643, 123, '7602090102690001', 'Ketut Suardika', 'Badung', '1969-02-01', 'L', 4, NULL, NULL, 1, 1),
(644, 123, '7602094411710001', 'Ni Wayan Yastini', 'Buleleng', '1971-11-04', 'P', 4, NULL, NULL, 2, 1),
(645, 123, '7602094411900001', 'Ni Luh Yulia Wati', 'Tangkau', '1990-11-04', 'P', 4, NULL, NULL, 3, 4),
(646, 123, '7602097008930001', 'Ni Kadek Widyawati', 'Tangkau', '1993-08-30', 'P', 4, NULL, NULL, 3, 2),
(647, 123, '7602092302030001', 'Nyoman Sudarma Yasa', 'Tangkau', '2003-02-23', 'L', 4, NULL, NULL, 3, 2),
(648, 124, '7062093112440007', 'Ketut Suwenda', 'Jembrana Bali', '1944-12-31', 'L', 4, NULL, NULL, 1, 1),
(649, 124, '7602097112490010', 'Nengah Sandri', 'Jembrana Bali', '1949-12-31', 'P', 4, NULL, NULL, 2, 1),
(650, 124, '7602091805740001', 'Kadek Suka Arjana', 'Jembrana Bali', '1974-05-18', 'L', 4, NULL, NULL, 3, 1),
(651, 124, '7602097012740003', 'Made Derni', 'Buleleng Bali', '1974-12-30', 'P', 4, NULL, NULL, 8, 1),
(652, 124, '7602095109910003', 'Ni Putu Widi Emianti', 'Tangkau', '1991-09-11', 'P', 4, NULL, NULL, 4, 2),
(653, 124, '7602090304960002', 'Kadek Dwi Ardana Putra', 'Tangkau', '1996-04-03', 'L', 4, NULL, NULL, 4, 2),
(654, 124, '7602090901040001', 'Ketut Abdi Ardiawan', 'Tangkau', '2004-01-09', 'L', 4, NULL, NULL, 4, 2),
(655, 124, '7602090704070001', 'Gede Ardi Apriana', 'Tangkau', '2007-04-07', 'L', 4, NULL, NULL, 4, 2),
(656, 125, '7602093112420004', 'Ketut Bomber', 'Jembrana', '1942-12-31', 'L', 4, NULL, NULL, 1, 1),
(657, 125, '7602097112520006', 'Ni Putu Sutri', 'Jembrana', '1952-12-31', 'P', 4, NULL, NULL, 2, 1),
(658, 125, '7602095111900002', 'Ketut Catur Anggrawati A.Md.Keb', 'Tangkou', '1990-11-11', 'P', 4, NULL, NULL, 3, 2),
(659, 126, '7602090105430001', 'Ketut Reda', 'Badung Bali', '1943-05-01', 'L', 4, NULL, NULL, 1, 1),
(660, 126, '7602097112500057', 'Ni Nyoman Mager', 'Bali', '1950-12-31', 'P', 4, NULL, NULL, 2, 1),
(661, 127, '7602091707760002', 'Ketut Narsa', 'Denpasar Bali', '1976-07-17', 'L', 4, NULL, NULL, 1, 1),
(662, 127, '7602096305770003', 'Made Jeliasih', 'Denpasar Bali', '1977-05-13', 'P', 4, NULL, NULL, 2, 1),
(663, 127, '7602091905990002', 'Wayan Ariana', 'Tangkau', '1999-05-19', 'L', 4, NULL, NULL, 3, 2),
(664, 127, '7602096210050001', 'Kadek Terianingsih', 'Tangkau', '2005-10-22', 'P', 4, NULL, NULL, 3, 2),
(665, 127, NULL, NULL, NULL, NULL, 'P', 4, NULL, NULL, NULL, NULL),
(666, 128, '7602090704710001', 'I Ketut Suena', 'Sukasada Bali', '1971-04-07', 'L', 4, NULL, NULL, 1, 1),
(667, 128, '7602096010780002', 'Ni Ketut Suartika', 'Tejakula Bali', '1978-10-10', 'P', 4, NULL, NULL, 2, 1),
(668, 128, '7602094808950001', 'Ni Luh Widiyanti Suseni', 'Tangkau', '1995-08-08', 'P', 4, NULL, NULL, 3, 2),
(669, 128, '7602094602000001', 'Ni Made Evi Puspita Yanti', 'Tangkau', '2000-02-06', 'P', 4, NULL, NULL, 3, 2),
(670, 128, '7602091704080001', 'I Nyoman Dika Pramana', 'Jayamandiri', '2008-04-17', 'L', NULL, NULL, NULL, 3, 2),
(671, 129, '7602091605760001', 'Gede Redana', 'Bali', '1976-05-16', 'L', 4, NULL, NULL, 1, 1),
(672, 129, '7602096301810001', 'Ni Ketut Herawati', 'Bali', '1981-01-23', 'P', 4, NULL, NULL, 2, 1),
(673, 129, '7602096212970001', 'I Luh Hermayanti', 'Tangkau', '1997-12-22', 'P', 4, NULL, NULL, 3, 2),
(674, 129, '7602096911030001', 'Kadek NovitaYanti', 'Tangkau', '2003-11-29', 'P', 4, NULL, NULL, 3, 2),
(675, 130, '7602093112610011', 'I Nyoman Tonik', 'Badung', '1961-12-31', 'L', 4, NULL, NULL, 1, 1),
(676, 130, '7602097112670005', 'Ni Wayan Kerni', 'Badung', '1967-12-31', 'P', 4, NULL, NULL, 2, 1),
(677, 130, '7602091208850002', 'Ketut Sukiariana', 'Badung', '1985-08-12', 'L', 4, NULL, NULL, 1, 4),
(678, 130, NULL, 'Kadek Sulastri', 'Palopo', '1990-08-14', 'P', 4, NULL, NULL, 2, 1),
(679, 130, '7602090109050001', 'Wayan Sumerta Yasa', 'Tangkau', '2005-09-01', 'L', 4, NULL, NULL, 3, 2),
(680, 130, NULL, 'I Kadek Budiarka', 'Buleleng Bali', '1972-05-14', 'L', 4, NULL, NULL, 1, 1),
(681, 130, NULL, 'Ni luh Sukari', 'Buleleng Bali ', '1979-04-07', 'P', 4, NULL, NULL, 2, 1),
(682, 130, NULL, 'Gede Agus Darmawan', 'Tangkau', '1996-05-18', 'L', 4, NULL, NULL, 3, 2),
(683, 130, NULL, 'Kadek Rediasa', 'Tangkau', '2004-06-06', 'L', 4, NULL, NULL, 3, 2),
(684, 131, '7602092510670001', 'SUMANTO', 'Polmas', '1967-10-24', 'L', 1, NULL, NULL, 1, 1),
(685, 131, '7602096512690003', 'Siti Hijrah', 'Polmas', '1969-12-25', 'P', 7, NULL, NULL, 2, 1),
(686, 131, '7602090603900002', 'Budianto', 'Polmas', '1990-03-06', 'L', NULL, NULL, NULL, 3, 2),
(687, 131, '7602092412930001', 'Rudianto', 'Polmas', '1993-12-24', 'L', 7, NULL, NULL, 3, 2),
(688, 131, '7602090510960002', 'Rosdianto', 'Polmas', '1996-10-05', 'L', 7, NULL, NULL, 3, 2),
(689, 131, '7602094507000004', 'Irma Ayu Lestari', 'Tangkau', '2000-07-05', 'P', 7, NULL, NULL, 3, 2),
(690, 131, '7602092609030001', 'Pangki Suwito', 'Tangkau', '2003-09-26', 'L', 7, NULL, NULL, 3, 2),
(691, 131, '7602092006090001', 'Adi Rai', 'Tangku', '2009-06-20', 'L', 7, NULL, NULL, 3, 2),
(692, 131, '7602090808800001', 'Agus Prasetio', 'Makasar', '1980-08-08', 'L', 7, NULL, NULL, 7, 2),
(693, 132, '7602093112750021', 'Mujiman', 'Palopo', '1975-12-31', 'L', 7, NULL, NULL, 1, 1),
(694, 132, '7602095208830001', 'Jumiati', 'Peti rodongi Poso', '1983-08-12', 'P', 7, NULL, NULL, 2, 1),
(695, 132, '7602095410990002', 'Ati Muliani', 'Peti Rodongi Poso', '1999-10-14', 'P', 7, NULL, NULL, 3, 2),
(696, 133, '7602092405850001', 'Ketut Putra Alit', 'Bali', '1985-05-24', 'L', 4, NULL, NULL, 1, 1),
(697, 133, '7602095812900002', 'Ni Nengah Resmiati', 'Tangkau', '1990-12-19', 'P', 7, NULL, NULL, 2, 1),
(698, 133, '7602091601060002', 'I Putu Desta Guna Arta', 'Mamuju', '2006-01-16', 'L', 7, NULL, NULL, 3, 2),
(699, 133, '7602093112440008', 'Putu Jiwa Panji', 'Bali', '1944-12-31', 'L', 7, NULL, NULL, 5, 1),
(700, 133, '7602097112470011', 'Ni Luh Mangku', 'Bali', '1947-12-31', 'P', 7, NULL, NULL, 5, 1),
(701, 133, '7602090902890001', 'Putu Eka Adnyana', 'Bali', '1989-02-09', 'L', 7, NULL, NULL, 7, 2),
(702, 134, '7602097112420001', 'I Wayan Bila', 'Sukasada Bali', '1942-12-31', 'L', NULL, NULL, NULL, 1, 1),
(703, 134, '7602097112450005', 'Ni Luh Tarmi', 'Wana giri Bali', '1945-12-31', 'P', NULL, NULL, NULL, 2, 1),
(704, 134, '7602094910950001', 'Ni Made Warniti', 'Sukasada Bali', '1995-10-09', 'P', NULL, NULL, NULL, 3, 2),
(705, 135, '7602092808750001', 'Putu Ngurah Putra', 'Bali', '1975-08-28', 'L', NULL, NULL, NULL, 1, 1),
(706, 135, '7602094603760001', 'Nyoman Menuh', 'Bali', '1976-03-06', 'P', NULL, NULL, NULL, 2, 1),
(707, 135, '7602096602980002', 'Gusti Putu Sri Supriawati', 'Bali', '1997-02-26', 'P', NULL, NULL, NULL, 3, 2),
(708, 135, '7602091704060001', 'Gusti Ngurah Made Rai Setiawan', 'Tangkau', '2006-04-17', 'L', NULL, NULL, NULL, 3, 2),
(709, 136, '7602092206650001', 'I Putu Siman', 'Bali', '1965-06-22', 'L', NULL, NULL, NULL, 1, 1),
(710, 136, '7602095105660001', 'N Wayan Sulastri', 'Bali', '1966-05-11', 'P', NULL, NULL, NULL, 2, 1),
(711, 136, '7602091201020001', 'Kadek Edi Satria Putra', 'Bali', '2002-01-12', 'L', NULL, NULL, NULL, 3, 2),
(712, 136, NULL, 'Gede Krisna Adi Putra.', 'Bali ', '1997-01-21', 'L', NULL, NULL, NULL, 7, 2),
(713, 136, NULL, 'Agung Agus Sudiartawan ', 'Bali', '1987-04-21', 'L', NULL, NULL, NULL, 1, 1),
(714, 136, '7602094508840001', 'Putu Sudiasih ', 'Bali', '1984-08-05', 'P', NULL, NULL, NULL, 2, 1),
(715, 137, '7602090805760001', 'Ketut Sukarma', 'Bali', '1976-05-08', 'L', NULL, NULL, NULL, 1, 1),
(716, 137, '7602094105800001', 'Wayan Suparmi', 'Denpasar Bali', '1980-05-01', 'P', NULL, NULL, NULL, 2, 1),
(717, 137, '7602095009970001', 'Putu Susi Devi Arini', 'Tangkau', '1997-09-10', 'P', NULL, NULL, NULL, 3, 2),
(718, 137, '7602096411000001', 'Kadek Ayu Novia Sukraningsih', 'Tangkau', '2000-11-24', 'P', NULL, NULL, NULL, 3, 2),
(719, 137, '7602092505040001', 'NyoMan Dwi Putra', 'Tangkau', '2004-05-25', 'L', NULL, NULL, NULL, 3, 2),
(720, 138, '7602093112780018', 'Gede Suarta', 'Tejakula BLL', '1978-12-31', 'L', NULL, NULL, NULL, 1, 1),
(721, 138, '7602097112680024', 'Ni Ketut Sedri', 'Jembrana Bali', '1968-12-31', 'P', NULL, NULL, NULL, 2, 1),
(722, 138, '7602090710000002', 'Ketut Dedi Putra Negara', 'Tangkau', '2000-10-07', 'L', NULL, NULL, NULL, 3, 2),
(723, 138, '7602090510920001', 'Gede Suyasa', 'Tangkau', '1992-10-05', 'L', NULL, NULL, NULL, 1, 1),
(724, 138, '7602097001880001', 'Ni Made Suarsani', 'Tangkau', '1988-10-30', 'P', 7, NULL, NULL, 2, 1),
(725, 139, '7602093112800001', 'Komang Runtana', 'Badung', '1980-12-31', 'L', NULL, NULL, NULL, 1, 1),
(726, 139, '7602094607820001', 'Ni Putu Somawati', 'Badung', '1982-07-06', 'P', NULL, NULL, NULL, 2, 1),
(727, 139, '7602091007990002', 'Putu Eka Segara Putra', 'Tangkau', '1999-10-07', 'L', NULL, NULL, NULL, 3, 2),
(728, 139, '7602095702060001', 'Kadek Ayux Divarti', 'Tangkau', '2006-02-17', 'P', NULL, NULL, NULL, 3, 2),
(729, 140, NULL, 'Made Tika', 'Nusapenida Bali', NULL, 'L', NULL, NULL, NULL, 1, 1),
(730, 140, NULL, 'Ni Wayan Galung', 'Jembrana', '1964-09-18', 'P', NULL, NULL, NULL, 2, 1),
(731, 140, '7602090705830002', 'Kadek Sunarta', 'Jembrana', '1983-05-07', 'L', NULL, NULL, NULL, 3, 2),
(732, 140, '7602094407880001', 'Ketut Arianti', 'Toabo MMJ', '1988-07-04', 'P', NULL, NULL, NULL, 3, 2),
(733, 140, '7602096007940001', 'Ni Putu Widya Astuti', 'Tangkau', '1994-07-20', 'P', 7, NULL, NULL, 3, 2),
(734, 141, '7602091009570001', 'Wayan Miasa', 'Bali', '1957-09-10', 'L', 7, NULL, NULL, 1, 1),
(735, 141, '7602094910680001', 'Wayan Dendri', 'Bali', '1968-10-09', 'P', 7, NULL, NULL, 2, 1),
(736, 141, '7602092809840001', 'Wayan Merta Yasa', 'Bali', '1984-09-28', 'L', 7, NULL, NULL, 3, 2),
(737, 141, '7602090110880001', ' Kadek Sudiarta', 'Salokayu MMJ', '1988-10-01', 'L', 7, NULL, NULL, 3, 2),
(738, 142, '7602091103750001', 'ARIPIN ', 'Sabanparu', '1975-03-11', 'L', 1, NULL, NULL, 1, 1),
(739, 142, '7602096603760001', 'Roslinda Wati', 'Sapiria MKS', '1976-03-25', 'P', 7, NULL, NULL, 2, 1),
(740, 142, '7602090909940003', 'Andika Prasetio', 'Sabanparu', '1993-09-09', 'L', 7, NULL, NULL, 3, 2),
(741, 142, '7602090810970003', 'Asmar Jayadi', 'Sabanparu', '1997-10-08', 'L', 7, NULL, NULL, 3, 2),
(742, 142, '7602091505760001', 'Hanapi Dg Liwang', 'Jeneponto', '1976-05-15', 'L', 7, NULL, NULL, 1, 1),
(743, 142, '7602097112690010', 'Ramla Dg Caya', 'Jeneponto ', '1969-12-31', 'P', 7, NULL, NULL, 2, 1),
(744, 142, '7602094709060001', 'Muliana Dg Bulaeng', 'Jeneponto', '2006-09-07', 'P', 7, NULL, NULL, 3, 2),
(745, 143, '7602093112100001', 'Santari Dg Tamma', 'Jeneponto', '1910-12-31', 'L', 7, NULL, NULL, 1, 1),
(746, 144, '7602091103690001', 'AHMAD DG LAU', 'Jeneponto', '1969-03-11', 'L', 7, NULL, NULL, 1, 1),
(747, 144, '7602097112740014', 'Nasrianti', 'Lombok', '1974-12-31', 'P', 7, NULL, NULL, 2, 1),
(748, 144, '7602091112940001', 'Hadi Munawir', 'Tangkau', '1994-12-11', 'L', 7, NULL, NULL, 3, 2),
(749, 144, '7602091211970001', 'Panji Mahatir', 'Tangkau', '1997-11-12', 'L', 7, NULL, NULL, 3, 2),
(750, 144, '7602094308000001', 'Siti Latifah Nur Aini', 'Tangkau', '2000-08-03', 'P', NULL, NULL, NULL, 3, 2),
(751, 144, '7602094703120001', 'Siti Nurkhalifah', 'Makasar ', '2012-03-07', 'P', NULL, NULL, NULL, 3, 2),
(752, 144, '7602092208940001', 'Herman Saputra', 'Tangkau', '1994-08-22', 'L', NULL, NULL, NULL, 3, 2),
(753, 144, NULL, 'I GEDE ARYO WIRAWAN', 'Balirejo Palopo', '1982-09-29', 'L', NULL, NULL, NULL, 1, 1),
(754, 144, NULL, 'Ni Made Windri', 'Bali', '1982-09-09', 'P', NULL, NULL, NULL, 2, 1),
(755, 144, NULL, 'Ni Putu Sri Narayani', 'Salupangkang MMJ', '2001-06-03', 'P', NULL, NULL, NULL, 3, 2),
(756, 144, NULL, 'Kadek Agus Susilo', 'Salupangkang MMJ', '2006-11-22', 'P', NULL, NULL, NULL, NULL, NULL),
(757, 145, '7602091408660001', 'ABDUL RAHMAN DG MACONG', 'Togotogo', '1968-08-14', 'L', 1, NULL, NULL, 1, 1),
(758, 145, '7602097112740013', 'Hamsiah', 'Bantaeng', '1974-12-31', 'P', 7, NULL, NULL, 2, 1),
(759, 145, '7602096110950002', 'Suriayati', 'Bontokatangka', '1995-10-21', 'P', 7, NULL, NULL, 3, 2),
(760, 145, '7602092810970001', 'Supriadi', 'Bontokatangka', '1997-10-28', 'L', 7, NULL, NULL, 3, 2),
(761, 145, '7602092104010001', 'Sugianto', 'Tangkau', '2001-04-21', 'L', 7, NULL, NULL, 3, 2),
(762, 145, '7602090201770001', 'Sudirman', 'Saluang', '1977-01-02', 'L', 7, NULL, NULL, 7, 2),
(763, 146, '7602093112480005', 'Rasud Dada', 'Jeneponto', '1948-12-31', 'L', NULL, NULL, NULL, 1, 1),
(764, 146, '7602095506500001', 'Hj. Sitti Halut', 'Jeneponto', '1950-06-15', 'P', 7, NULL, NULL, 2, 1),
(765, 146, '7602091608820001', 'Rudi Rasud', 'Jeneponto', '1982-08-16', 'L', 7, NULL, NULL, 3, 2),
(766, 146, '7602091608820002', 'Rapiudin Rasud', 'Jeneponto', '1982-08-16', 'L', 7, NULL, NULL, 3, 2),
(767, 146, '7602090001000001', 'Rismawati Rasud', 'Tangkau', '2000-01-10', 'P', 7, NULL, NULL, 3, 2),
(768, 147, '7602094808800001', 'DEWI MURNI R.', 'Jeneponto', '1980-08-08', 'P', 7, NULL, NULL, 1, 2),
(769, 147, '7602095403810004', 'Nurmayanti', 'Sunguminasa', '1981-03-14', 'P', NULL, NULL, NULL, 7, 2),
(770, 148, '7602090110790001', 'IRFAN ZAINUDDIN', 'Baraya', '1979-10-01', 'L', 7, NULL, NULL, 1, 1),
(771, 148, '7602095705810001', 'Rusmayanti', 'Baraya', '1981-05-17', 'P', 7, NULL, NULL, 2, 1),
(772, 148, '7602096310030001', 'Fitra Awalia Irfan', 'Topoyo', '2003-10-29', 'P', NULL, NULL, NULL, 3, 2),
(773, 149, '7602097112690017', 'HALIMAH DG TANING', 'Jeneponto', '1966-12-31', 'P', 7, NULL, NULL, 1, 3),
(774, 149, '7602094310840001', 'Zakiah Derajat, A.Ma', 'Bungeng', '1984-10-03', 'P', 7, NULL, NULL, 3, 2),
(775, 149, '7602095010860001', 'Sitti Hadijah', 'Jeneponto', '1986-10-10', 'P', 7, NULL, NULL, 3, 2),
(776, 149, '7602093110880001', 'Andi Lalo Asa', 'Jeneponto', '1988-10-31', 'L', 7, NULL, NULL, 3, 2),
(777, 149, '7602095012980001', 'Sitti Hasanah', 'Jeneponto', '1998-12-10', 'P', 7, NULL, NULL, 3, 2),
(778, 149, '7602095702020001', 'Risma', 'Jeneponto', '2002-02-17', 'P', 7, NULL, NULL, 3, 2),
(779, 149, '7602095912040002', 'Sitti Aisyah Asifa', 'Tangkau', '2004-12-19', 'P', 7, NULL, NULL, 3, 2),
(780, 149, NULL, 'Sahabuddin Dg Tumpu', 'Jeneponto', '1975-12-30', 'L', 7, NULL, NULL, 1, 1),
(781, 149, NULL, 'Nurlaela', 'Jeneponto', '1979-12-15', 'P', 7, NULL, NULL, 2, 1),
(782, 149, NULL, 'Zulkifli Alkarnaen', 'Jeneponrto', '2000-05-03', 'L', 7, NULL, NULL, 3, 2),
(783, 149, NULL, 'Zulfadli', 'Tangkau', '2002-02-17', 'L', 7, NULL, NULL, 3, 2),
(784, 149, NULL, 'Zulfina Damayanti', 'Tangkau', '2004-06-01', 'P', 7, NULL, NULL, 3, 2),
(785, 149, NULL, 'Abu Bakar Dg Lawwa', 'Jeneponto', '1973-06-18', 'L', 7, NULL, NULL, 1, 1),
(786, 149, NULL, 'Nurlaela', 'Jeneponto', '1981-12-31', 'P', 7, NULL, NULL, 2, 1),
(787, 149, NULL, 'Nur Kasmi Dg Jinne', 'Tangkau', '2004-01-13', 'P', 7, NULL, NULL, 3, 2),
(788, 149, NULL, 'Fattawali Dg Limpo', 'Tangkau', '2007-10-07', 'L', 7, NULL, NULL, 3, 2),
(789, 150, '7602093006710002', 'ABDUL KADIR', 'Jeneponto', '1970-06-30', 'L', 1, NULL, NULL, 1, 1),
(790, 150, '7602097006740001', 'Lia', 'Taningtaning', '1973-06-30', 'P', NULL, NULL, NULL, 2, 1),
(791, 150, '7602091012920002', 'Ardi', 'Jeneponto', '1992-12-10', 'L', NULL, NULL, NULL, 3, 2),
(792, 150, '7602096006960004', 'Arni', 'Jeneponto', '1995-06-10', 'P', NULL, NULL, NULL, 3, 2),
(793, 150, '7602093006990002', 'Supardi', 'Tangkau', '1999-06-30', 'L', NULL, NULL, NULL, 3, 2),
(794, 151, '7602090906780001', 'SYAMSUDDIN J.', 'Jeneponto', '1979-05-01', 'L', 7, NULL, NULL, 1, 1),
(795, 151, '7602097112800080', 'Hapsah', 'Jeneponto', '1986-12-31', 'P', NULL, NULL, NULL, 2, 1),
(796, 151, NULL, 'Ridwan', 'Tangkau', '1999-01-17', 'L', NULL, NULL, NULL, 3, 2),
(797, 151, NULL, 'Mariani', 'Tangkau', '2003-04-06', 'P', NULL, NULL, NULL, 3, 2),
(798, 151, NULL, 'Noraliza', 'Tangkau', '2007-09-04', 'P', NULL, NULL, NULL, 3, 2),
(799, 152, '7602097112600047', 'MANINA', 'Jeneponto', '1960-12-31', 'P', 7, NULL, NULL, 1, 4),
(800, 152, '7602093112840025', 'Baccing', 'Jeneponto', '1984-12-31', 'L', NULL, NULL, NULL, 3, 2),
(801, 152, '7602090402900002', 'Amiruddin', 'Jeneponto', '1990-02-04', 'L', NULL, NULL, NULL, 3, 2),
(802, 153, '7602091902770001', 'KAMARUDDIN DG SEWANG', 'Jeneponto', '1977-02-19', 'L', 7, NULL, NULL, 1, 1),
(803, 153, '7602097112800082', 'Hamsinah', 'Bangkengnunu', '1980-12-31', 'P', NULL, NULL, NULL, 2, 1),
(804, 153, '7602090709000002', 'Hamirudding', 'Toabo', '2000-09-19', 'L', NULL, NULL, NULL, 3, 2),
(805, 153, '7602094706070002', 'Sinar Wulandari', 'Tangkau', '2007-02-17', 'P', NULL, NULL, NULL, 3, 2),
(806, 154, NULL, 'Syamsuddin Dg Do\'ding', 'Jeneponto', '1969-10-14', 'L', 7, NULL, NULL, 1, 1),
(807, 154, NULL, 'Rabasiah', 'Jeneponto', '1971-07-08', 'P', NULL, NULL, NULL, 2, 1),
(808, 154, NULL, 'Ramlawati', 'Jeneponto', '1992-10-18', 'P', NULL, NULL, NULL, 3, 2),
(809, 154, NULL, 'Edi Wijaya', 'Sinjai', '1994-11-10', 'L', NULL, NULL, NULL, 3, 2),
(810, 154, NULL, 'Rusli', 'Mamuju', '2003-04-10', 'L', 7, NULL, NULL, 3, 2),
(811, 154, '7602090805300001', 'Tepu', 'Jeneponto', '1930-05-08', 'L', NULL, NULL, NULL, 6, 4),
(812, 154, NULL, 'Rabali', 'Jeneponto', '1947-12-31', 'L', NULL, NULL, NULL, 1, 1),
(813, 154, NULL, 'Satia', 'Jeneponto', '1956-12-31', 'P', NULL, NULL, NULL, 2, 1),
(814, 154, NULL, 'Ida', 'Jeneponto', '1972-05-08', 'P', NULL, NULL, NULL, 3, 2),
(815, 154, NULL, 'Kahar', 'Jeneponto', '1984-12-31', 'L', NULL, NULL, NULL, 3, 2),
(816, 154, NULL, 'Johaseng', 'Jeneponto', '1977-12-31', 'L', 7, NULL, NULL, 1, 1),
(817, 154, NULL, 'Nasria', 'Jeneponto', '1987-12-31', 'P', NULL, NULL, NULL, 2, 1),
(818, 154, NULL, 'Rini', 'Tangkau', '2004-05-12', 'P', NULL, NULL, NULL, 3, 2),
(819, 154, NULL, 'Rahman', 'Jeneponto', '1975-12-31', 'L', 1, NULL, NULL, 1, 1),
(820, 154, NULL, 'Nurjanah', 'Jeneponto', '1982-12-31', 'P', NULL, NULL, NULL, 2, 1),
(821, 154, NULL, 'Amirullah', 'Tangkau', '2003-12-01', 'L', NULL, NULL, NULL, 3, 2),
(822, 155, '7602093112450056', 'JUMADAU', 'Jeneponto', '1945-12-31', 'L', 7, NULL, NULL, 1, 1),
(823, 155, '7602097112520033', 'Sari', 'Jeneponto', '1952-12-31', 'P', NULL, NULL, NULL, 2, 1),
(824, 155, '7602095510930003', 'Kasmawati', 'Jeneponto', '1993-10-15', 'P', NULL, NULL, NULL, 3, 2),
(825, 155, '7602095510930002', 'Rahmatia', 'Jeneponto', '1993-10-15', 'P', NULL, NULL, NULL, 3, 2),
(826, 155, NULL, 'Sudirman', 'Jeneponto', '1986-12-31', 'L', NULL, NULL, NULL, 3, 2),
(827, 155, NULL, 'Hamma', 'Jeneponto', '1968-12-20', 'L', 7, NULL, NULL, 1, 1),
(828, 155, NULL, 'Hayati', 'Palopo', '1971-11-13', 'P', NULL, NULL, NULL, 2, 1),
(829, 155, NULL, 'Masriadi', 'Palopo', '1990-06-26', 'L', NULL, NULL, NULL, 3, 2),
(830, 155, NULL, 'Masrulla', 'Palopo', '1992-06-16', 'L', NULL, NULL, NULL, 3, 2),
(831, 155, NULL, 'Mardiana', 'Tangkau', '2000-06-30', 'P', NULL, NULL, NULL, 3, 2),
(832, 155, NULL, 'Masriana', 'Tangkau', '2003-08-08', 'P', NULL, NULL, NULL, 3, 2),
(833, 156, '7602090102630002', 'RASUNI', 'Jeneponto', '1963-02-01', 'L', 7, NULL, NULL, 1, 1),
(834, 156, '7602097112710040', 'Saha', 'Jeneponto', '1971-12-31', 'P', NULL, NULL, NULL, 2, 1),
(835, 156, '7602091505890002', 'Adi', 'Jeneponto', '1989-05-15', 'L', NULL, NULL, NULL, 3, 2),
(836, 156, NULL, 'Anriani', 'Jeneponto', '1998-07-06', 'P', NULL, NULL, NULL, 3, 2),
(837, 157, '7602093112800084', 'SAMPARA', 'Jeneponto', '1980-12-31', 'L', 7, NULL, NULL, 1, 1),
(838, 157, '7602095111800002', 'Hamsina', 'Bankeng Nunu', '1980-11-11', 'P', NULL, NULL, NULL, 2, 1),
(839, 157, NULL, 'Hajis Muhammad', 'Jeneponto', '2002-05-09', 'L', NULL, NULL, NULL, 3, 2),
(840, 158, '7602094501770001', 'Rusliati', 'Baraya', '1977-01-05', 'P', 1, NULL, NULL, 1, 1),
(841, 158, '7602092406000001', 'Ananda M. Ofkah', 'Topoyo', '2000-06-24', 'L', NULL, NULL, NULL, 3, 2),
(842, 158, '7602096108040001', 'Sitti Nur Ifkah', 'Topoyo', '2004-08-21', 'P', NULL, NULL, NULL, 3, 2),
(843, 158, NULL, 'Suhafid Dada', 'Jeneponto', '1970-01-15', 'L', 7, NULL, NULL, 1, 1),
(844, 158, NULL, 'Hartati', 'Selayar', '1977-06-20', 'P', NULL, NULL, NULL, 2, 1),
(845, 158, NULL, 'Sabara', 'Jeneponto', '1967-06-22', 'L', NULL, NULL, NULL, 1, 1),
(846, 158, NULL, 'Rohani', 'Jeneponto', '1972-05-24', 'P', NULL, NULL, NULL, 2, 1),
(847, 158, NULL, 'Muhammad Agung', 'Jeneponto', '2009-06-22', 'L', NULL, NULL, NULL, 3, 2),
(848, 159, '7602092203630001', 'Kelik Saputra', 'Lampung', '1963-03-22', 'L', 1, NULL, NULL, 1, 1),
(849, 159, '7602090205990001', 'Andry Saputra', 'Tangkau', '1999-05-02', 'L', NULL, NULL, NULL, 3, 2),
(850, 159, '7602092202020001', 'Indra Lesmana Putra', 'Tangkau', '2002-02-22', 'L', NULL, NULL, NULL, 3, 2),
(851, 160, '7602092103670001', 'Paiman', 'Jatim', '1961-03-21', 'L', 7, NULL, NULL, 1, 4),
(852, 160, '7602091108880002', 'Rudianto', 'Bali', '1988-08-11', 'L', 7, NULL, NULL, 3, 2),
(853, 160, '7602094411940001', 'Binti Munirah', 'Banyu wangi', '1994-11-04', 'P', 7, NULL, NULL, 3, 2),
(854, 160, '7602096406010001', 'Ayu Lestari', 'Tangkau', '2001-06-24', 'P', 7, NULL, NULL, 3, 2),
(855, 160, '7602091309030001', 'Wahyu Setiawan ', 'Tangkau', '2003-09-13', 'L', 7, NULL, NULL, 3, 2),
(856, 161, '7602092510750002', 'LALU BAMBANG NIKI', 'lombok', '1975-02-09', 'L', NULL, NULL, NULL, 1, 1),
(857, 161, '7602097112820072', 'Baiq Alpian Haerani', 'lombok', '1982-12-31', 'P', NULL, NULL, NULL, 2, 1),
(858, 161, NULL, 'Pendi Irawan', 'Tangkau', '1997-11-15', 'L', NULL, NULL, NULL, 3, 2),
(859, 161, NULL, 'Rian Gunawan', 'Tangkau', '1999-09-17', 'L', NULL, NULL, NULL, 3, 2),
(860, 161, NULL, 'Ojik Weni Irawan', 'Tangkau', '2002-08-20', 'L', NULL, NULL, NULL, 3, 2),
(861, 161, '7304110101870001', 'U D I N', 'Bantaeng', '1987-01-01', 'L', 1, NULL, NULL, 1, 1),
(862, 161, '7304119206900001', 'RACHMATIA', 'Bontomanai', '1990-06-12', 'P', NULL, NULL, NULL, 2, 1),
(863, 161, '7304110206100001', 'MUH.DIKA', 'MALESYA', '2010-06-02', 'L', NULL, NULL, NULL, 3, 2),
(864, 162, '7602090909720004', 'ASHAR', 'MAJENE', '1972-09-09', 'L', 1, NULL, NULL, 1, 1),
(865, 162, '7602094501780001', 'Surianti', 'polmas', '1978-01-05', 'P', NULL, NULL, NULL, 2, 1),
(866, 163, '7602092907750001', 'DAENG DALLE', 'Sengkang', '1975-07-29', 'L', NULL, NULL, NULL, 1, 1),
(867, 163, '7602097112770053', 'I d a', 'pinrang', '1977-12-31', 'P', NULL, NULL, NULL, 2, 1),
(868, 164, '7602091005850002', 'IBRAHIM', 'Jeneponto', '1985-05-10', 'L', NULL, NULL, NULL, 1, 1),
(869, 164, '7602094709840002', 'A r I a n t i', 'Jeneponto', '1984-09-07', 'P', NULL, NULL, NULL, 2, 1),
(872, 170, '34231', 'aluks', 'weqwe', '2018-11-01', 'L', 1, NULL, NULL, 1, 1),
(873, NULL, '12345', 'Syah', 'Topoyo ', '2019-01-21', 'L', 1, NULL, 'Tani', 3, 2),
(874, 2, '760201307800002', 'Syahrul ', 'Tampa lambagu ', '2019-05-15', 'L', 1, NULL, 'Swasta ', 7, NULL),
(875, 2, '76020921119900024', 'Indar', NULL, '2019-05-15', 'L', 1, NULL, 'Swasta ', 10, 1),
(877, 168, '657789000', 'indar', 'tuna', '2019-06-13', 'L', 1, NULL, NULL, 3, 2),
(878, NULL, '1234567', 'Aluks', 'Mamuju ', '1994-06-12', 'L', 1, NULL, 'Swasta', 1, 1),
(879, 171, '760203462197', 'saya', 'mamuju', '1994-04-12', 'L', 1, NULL, 'pelajar', 1, 1),
(880, 171, '7654321', 'aku', 'mamuju', '2013-03-01', 'L', 1, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_desa`
--

CREATE TABLE `profil_desa` (
  `Id_desa` int(11) NOT NULL,
  `nama_desa` varchar(255) DEFAULT NULL,
  `kepala_desa` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `pass` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_desa`
--

INSERT INTO `profil_desa` (`Id_desa`, `nama_desa`, `kepala_desa`, `alamat`, `user`, `pass`) VALUES
(1, 'T A N G K A U', 'A S J U D A N ', 'Dusun Bumi sari Desa Tangkau Kecamatan Topoyo Kabupaten Mamuju Tengah Prov. Sul-Bar Kode pos 91564', 'admin', 'nimda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_gambar`
--

CREATE TABLE `profil_gambar` (
  `id` int(11) NOT NULL,
  `nama_gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_gambar`
--

INSERT INTO `profil_gambar` (`id`, `nama_gambar`, `judul`, `ket`) VALUES
(1, 'gambar1.jpg', 'Mateng ', '\r\n'),
(2, 'gambar2.jpg', 'judul 2', 'keterangan 2\r\n'),
(3, 'gambar3.jpg', 'judul 3', 'keterangan 3\r\n'),
(4, 'gambar4.jpg', 'judul 4', 'keterangan 4\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shdk`
--

CREATE TABLE `shdk` (
  `Id_shdk` int(11) NOT NULL,
  `nama_shdk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shdk`
--

INSERT INTO `shdk` (`Id_shdk`, `nama_shdk`) VALUES
(1, 'Kepala Keluarga'),
(2, 'Istri'),
(3, 'Anak'),
(4, 'Cucu'),
(5, 'Orang Tua'),
(6, 'Mertua'),
(7, 'Famili Lain'),
(8, 'Menantu'),
(9, 'Suami'),
(10, 'Keponakan'),
(11, 'Saudara'),
(12, 'Adik'),
(13, 'Kaka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `Id_status` int(11) NOT NULL,
  `nama_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`Id_status`, `nama_status`) VALUES
(1, 'Kawin'),
(2, 'Belum Kawin'),
(3, 'Cerai Mati'),
(4, 'Cerai Hidup'),
(5, 'Cerai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `Id_sk` int(11) NOT NULL,
  `id_jenissurat` int(11) DEFAULT NULL,
  `no_surat` varchar(255) DEFAULT NULL,
  `id_penduduk` int(11) DEFAULT NULL,
  `tgl_srt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`Id_sk`, `id_jenissurat`, `no_surat`, `id_penduduk`, `tgl_srt`) VALUES
(8, 1, '123', 5, '2019-04-10'),
(9, 3, '123456', 171, '2019-04-03'),
(10, 3, '01', 39, '2019-05-03'),
(11, 1, '-1', 5, '2019-06-01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`Id_agama`);

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`Id_dusun`);

--
-- Indeks untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  ADD PRIMARY KEY (`Id_jenissurat`);

--
-- Indeks untuk tabel `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`Id_kk`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`Id_penduduk`),
  ADD KEY `id_kk` (`id_kk`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `penduduk_ibfk_3` (`id_status`),
  ADD KEY `penduduk_ibfk_2` (`id_shdk`);

--
-- Indeks untuk tabel `profil_desa`
--
ALTER TABLE `profil_desa`
  ADD PRIMARY KEY (`Id_desa`),
  ADD KEY `kepala_desa` (`kepala_desa`);

--
-- Indeks untuk tabel `profil_gambar`
--
ALTER TABLE `profil_gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shdk`
--
ALTER TABLE `shdk`
  ADD PRIMARY KEY (`Id_shdk`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Id_status`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`Id_sk`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_jenissurat` (`id_jenissurat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `Id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `dusun`
--
ALTER TABLE `dusun`
  MODIFY `Id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  MODIFY `Id_jenissurat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kk`
--
ALTER TABLE `kk`
  MODIFY `Id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `Id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=881;

--
-- AUTO_INCREMENT untuk tabel `profil_desa`
--
ALTER TABLE `profil_desa`
  MODIFY `Id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `profil_gambar`
--
ALTER TABLE `profil_gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `shdk`
--
ALTER TABLE `shdk`
  MODIFY `Id_shdk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `Id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `Id_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kk`
--
ALTER TABLE `kk`
  ADD CONSTRAINT `kk_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `dusun` (`Id_dusun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_ibfk_1` FOREIGN KEY (`id_kk`) REFERENCES `kk` (`Id_kk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_ibfk_2` FOREIGN KEY (`id_shdk`) REFERENCES `shdk` (`Id_shdk`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status` (`Id_status`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_ibfk_4` FOREIGN KEY (`id_agama`) REFERENCES `agama` (`Id_agama`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `surat_keluar_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`Id_penduduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_keluar_ibfk_2` FOREIGN KEY (`id_jenissurat`) REFERENCES `jenis_surat` (`Id_jenissurat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
