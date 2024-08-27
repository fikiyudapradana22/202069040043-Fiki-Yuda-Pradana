-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 07:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen1`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_santri`
--

CREATE TABLE `daftar_santri` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kamar` varchar(25) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `formal` varchar(25) NOT NULL,
  `diniyah` varchar(25) NOT NULL,
  `ortu` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `guru` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_santri`
--

INSERT INTO `daftar_santri` (`id`, `nama`, `kamar`, `kelas`, `formal`, `diniyah`, `ortu`, `alamat`, `telepon`, `guru`) VALUES
(5, 'Afan Ahmad Dani', 'G - 10', '4', 'SMK', '4', 'Arya', 'Purwosari, Pasuruan', '6282245583131', '1'),
(6, 'Vadil Zakaria', 'G - 14', '2', 'SMA', '2 Ula K', 'Ahcmad', 'Puspo, Pasuruan', '6282245583131', '1'),
(7, 'Tegar Saputra', 'G - 14', '2', 'SMA', '2 Ula K', 'Achmad Mansur', 'Puspo, Pasuruan', '6282245583131', '1'),
(8, 'Riski Setiawan', 'G - 07', '6', 'UYP', '1 Wustho ', 'Akhbar', 'Puspo, Pasuruan', '6282245583131', '1'),
(10, 'Muhammad Nur Farizki Al-Mahbubi', 'G - 02', '1', 'SMK', '4 Ula', 'Ahmad', 'Wonorejo, Pasuruan', '6282245583131', '1');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `pelajaran`) VALUES
(1, 'CEPOT', 'MQ');

-- --------------------------------------------------------

--
-- Table structure for table `id`
--

CREATE TABLE `id` (
  `id` int(11) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id`
--

INSERT INTO `id` (`id`, `password`) VALUES
(1, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `lalaran`
--

CREATE TABLE `lalaran` (
  `id` int(11) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL,
  `id_santri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lalaran`
--

INSERT INTO `lalaran` (`id`, `jam`, `tanggal`, `id_santri`) VALUES
(1, '00:29:16', '2024-08-20', 5),
(2, '00:29:16', '2024-08-20', 6),
(3, '10:48:38', '2024-08-20', 5),
(4, '10:50:41', '2024-08-20', 5),
(5, '10:53:15', '2024-08-20', 5),
(6, '12:37:45', '2024-08-20', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mq`
--

CREATE TABLE `mq` (
  `id` int(11) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL,
  `id_santri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mq`
--

INSERT INTO `mq` (`id`, `jam`, `tanggal`, `id_santri`) VALUES
(1, '12:45:48', '2024-08-20', 10),
(2, '11:05:24', '2024-08-20', 5),
(3, '11:14:56', '2024-08-20', 5),
(4, '11:15:06', '2024-08-20', 5),
(5, '11:15:18', '2024-08-20', 5),
(6, '11:15:22', '2024-08-20', 5),
(7, '11:15:31', '2024-08-20', 5),
(8, '12:27:53', '2024-08-20', 5),
(9, '12:29:10', '2024-08-20', 5),
(10, '12:30:42', '2024-08-20', 5),
(11, '12:31:26', '2024-08-20', 5),
(12, '12:32:35', '2024-08-20', 5),
(13, '12:34:18', '2024-08-20', 5),
(14, '12:34:42', '2024-08-20', 5),
(15, '12:35:10', '2024-08-20', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sorogan`
--

CREATE TABLE `sorogan` (
  `id` int(11) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL,
  `id_santri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sorogan`
--

INSERT INTO `sorogan` (`id`, `jam`, `tanggal`, `id_santri`) VALUES
(1, '11:07:34', '2024-08-20', 5),
(2, '11:07:49', '2024-08-20', 5),
(3, '11:08:08', '2024-08-20', 5),
(4, '11:08:13', '2024-08-20', 5),
(5, '11:08:27', '2024-08-20', 5),
(6, '11:08:45', '2024-08-20', 5),
(7, '11:12:21', '2024-08-20', 5),
(8, '11:12:38', '2024-08-20', 5),
(9, '11:12:46', '2024-08-20', 5),
(10, '12:39:53', '2024-08-20', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_santri`
--
ALTER TABLE `daftar_santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id`
--
ALTER TABLE `id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lalaran`
--
ALTER TABLE `lalaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mq`
--
ALTER TABLE `mq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sorogan`
--
ALTER TABLE `sorogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_santri`
--
ALTER TABLE `daftar_santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `id`
--
ALTER TABLE `id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lalaran`
--
ALTER TABLE `lalaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mq`
--
ALTER TABLE `mq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sorogan`
--
ALTER TABLE `sorogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
