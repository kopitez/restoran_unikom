-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 04:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran_unikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `no_pemesanan` int(11) NOT NULL,
  `no_pembayaran` int(11) NOT NULL,
  `kode_menu` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`no_pemesanan`, `no_pembayaran`, `kode_menu`, `kuantitas`, `subtotal`) VALUES
(1, 1, 'MN06', 2, '30000.00'),
(1, 1, 'MN08', 1, '30000.00'),
(2, 2, 'MN03', 2, '14000.00'),
(2, 2, 'MN07', 4, '120000.00'),
(2, 2, 'MN05', 6, '60000.00'),
(3, 3, 'MN02', 1, '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `no_meja` int(11) NOT NULL,
  `status_meja` enum('Kosong','Terisi') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`no_meja`, `status_meja`) VALUES
(1, 'Terisi'),
(2, 'Kosong'),
(3, 'Kosong'),
(4, 'Kosong'),
(5, 'Kosong'),
(6, 'Kosong'),
(7, 'Terisi'),
(8, 'Kosong'),
(9, 'Kosong'),
(10, 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `kode_menu` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`kode_menu`, `nama`, `slug`, `harga`, `stok`, `gambar`, `deskripsi`) VALUES
('MN01', 'Pecel Lele', 'pecel-lele', '15000.00', 100, '1691416251_8beefd9c624db42990c2.jpeg', 'Pecel lele atau pecek lele adalah sebuah makanan khas Jawa Timur, Indonesia, yang terdiri dari ikan lele dan sambal tomat. Biasanya, pecel lele berupa ikan lele yang digoreng kering dengan minyak, lalu disajikan dengan sambal tomat dan lalapan. Lalapan biasa terdiri dari kemangi, kubis, mentimun, dan kacang panjang.'),
('MN02', 'Bakso Tahu', 'bakso-tahu', '25000.00', 99, '1691416329_7853ec55d2ac2180738b.jpg', 'Bakso Tahu adalah makanan khas Indonesia yang berasal dari Kota Ungaran, Kabupaten Semarang, Jawa Tengah. Makanan ini dibuat dari tahu yang tengahnya diberi isi bakso. Makanan ini memiliki ciri khas dihidangkan dengan sambal kecap dengan irisan cabe rawit dan saus bumbu kacang.\r\n'),
('MN03', 'Bubur', 'bubur', '15000.00', 98, '1627657885_d81ea0b52b8e295c42c2.jpg', 'Bubur merupakan istilah umum untuk mengacu pada campuran bahan padat dan cair.'),
('MN04', 'Sate', 'sate', '20000.00', 100, '1627657997_0b25b45d8836732f110b.jpg', 'adalah hidangan Asia Tenggara yang terdiri dari daging yang dibumbui, ditusuk dan dipanggang, '),
('MN05', 'Bakso', 'bakso', '22000.00', 94, '1627658086_519e95249148036c0eed.jpeg', 'adalah makanan khas Indonesia yang digemari banyak orang. '),
('MN06', 'Teriyaki Bowl', 'teriyaki-bowl', '35000.00', 98, '1691417012_11cca52bd619ab2abe68.jpg', 'Teriyaki adalah cara memasak makanan Jepang yang dipanaskan atau dipanggang dan dilapisi dengan kecap dan sake, mirin, atau gula beraroma rasa. Sewaktu sedang membuat teriyaki, bahan-bahan makanan yang akan dipanggang dicelupkan dan diolesi dengan saus teriyaki sampai beberapa kali hingga betul-betul masak.'),
('MN07', 'Ayam bakar', 'ayam-bakar', '30000.00', 96, '1627659680_deb3ce68cdd1bf2abc63.jpg', 'adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia'),
('MN08', 'Sprunk', 'sprunk', '7000.00', 99, '1691417081_14201852923193324468.png', 'Sprunk adalah minuman GTA SA.');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nrp` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabatan` enum('Kasir','Koki','Pelayan') COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nrp`, `nama`, `jabatan`, `jenis_kelamin`, `username`, `password`) VALUES
('KOK001', 'Durra', 'Koki', 'Laki-laki', 'durra', '123'),
('KSR001', 'Alvin', 'Kasir', 'Laki-laki', 'alvin', '123'),
('PYN001', 'Fauzan', 'Pelayan', 'Laki-laki', 'fauzan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no_pembayaran` int(11) NOT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT 0.00,
  `pajak` decimal(10,2) DEFAULT 0.00,
  `total_bayar` decimal(10,2) DEFAULT 0.00,
  `uang_bayar` decimal(10,2) DEFAULT 0.00,
  `uang_kembalian` decimal(10,2) DEFAULT 0.00,
  `status_pembayaran` enum('Belum Bayar','Sudah Bayar') COLLATE utf8_unicode_ci DEFAULT 'Belum Bayar',
  `nrp_kasir` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no_pembayaran`, `tanggal_pembayaran`, `total_harga`, `pajak`, `total_bayar`, `uang_bayar`, `uang_kembalian`, `status_pembayaran`, `nrp_kasir`) VALUES
(1, '2023-08-07', '60000.00', '6000.00', '66000.00', '100000.00', '34000.00', 'Sudah Bayar', 'KSR001'),
(2, NULL, '194000.00', '19400.00', '213400.00', '0.00', '0.00', 'Belum Bayar', 'PYN001'),
(3, NULL, '15000.00', '1500.00', '16500.00', '0.00', '0.00', 'Belum Bayar', 'PYN001');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `no_pemesanan` int(11) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `nama_pelanggan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_pemesanan` enum('Belum Selesai','Selesai') COLLATE utf8_unicode_ci DEFAULT 'Belum Selesai',
  `nrp` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`no_pemesanan`, `no_meja`, `tanggal_pemesanan`, `nama_pelanggan`, `status_pemesanan`, `nrp`) VALUES
(1, 3, '2023-08-07', 'Jamar', 'Selesai', 'KOK001'),
(2, 7, '2023-08-07', 'Mambo', 'Belum Selesai', 'KOK001'),
(3, 1, '2023-08-07', 'Jeremy', 'Belum Selesai', 'PYN001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD KEY `detail_pemesanan_ibfk_1` (`no_pemesanan`),
  ADD KEY `detail_pemesanan_ibfk_3` (`no_pembayaran`),
  ADD KEY `detail_pemesanan_ibfk_2` (`kode_menu`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`no_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nrp`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no_pembayaran`),
  ADD KEY `nrp` (`nrp_kasir`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`no_pemesanan`),
  ADD KEY `no_meja` (`no_meja`),
  ADD KEY `nrp` (`nrp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `no_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `no_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `detail_pemesanan_ibfk_1` FOREIGN KEY (`no_pemesanan`) REFERENCES `pemesanan` (`no_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pemesanan_ibfk_2` FOREIGN KEY (`no_pembayaran`) REFERENCES `pembayaran` (`no_pembayaran`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pemesanan_ibfk_3` FOREIGN KEY (`kode_menu`) REFERENCES `menu` (`kode_menu`) ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`nrp_kasir`) REFERENCES `pegawai` (`nrp`) ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`no_meja`) REFERENCES `meja` (`no_meja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`nrp`) REFERENCES `pegawai` (`nrp`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
