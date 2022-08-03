-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2022 pada 01.43
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabang`
--

CREATE TABLE `cabang` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT '',
  `alamat` varchar(255) DEFAULT '',
  `kota` varchar(255) DEFAULT '',
  `propinsi` varchar(255) DEFAULT '',
  `kodepos` varchar(6) DEFAULT '',
  `telp` varchar(20) DEFAULT '',
  `email` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`id`, `userid`, `nama`, `alamat`, `kota`, `propinsi`, `kodepos`, `telp`, `email`) VALUES
(1, 'cabang', 'Siwalan', 'Jl. Siwalan', 'Surabaya', 'jawa timur', '', '012345678', 'siwalan@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id` bigint(20) NOT NULL,
  `idproduk` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT '',
  `thumbnail` varchar(255) DEFAULT '',
  `st` varchar(1) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `conter`
--

CREATE TABLE `conter` (
  `jual` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `conter`
--

INSERT INTO `conter` (`jual`) VALUES
(79);

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) DEFAULT '',
  `idproduk` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `favorite`
--

INSERT INTO `favorite` (`id`, `userid`, `idproduk`) VALUES
(42, '', 1),
(48, 'user', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambarlain`
--

CREATE TABLE `gambarlain` (
  `id` int(11) NOT NULL,
  `idproduk` bigint(20) DEFAULT NULL,
  `images` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambarlain`
--

INSERT INTO `gambarlain` (`id`, `idproduk`, `images`) VALUES
(22, 55, '/dist/images/wakanda33phpm7YC6K.jpg'),
(23, 55, '/dist/images/wakanda33phpksdJi1.jpg'),
(24, 55, '/dist/images/wakanda33phpCwyIMa.jpg'),
(25, 56, '/dist/images/esdogerphp1LL6DK.jpg'),
(26, 57, '/dist/images/BeraslelephpTuDRwO.jpg'),
(27, 57, '/dist/images/BeraslelephpzTqdY9.jpg'),
(28, 57, '/dist/images/BeraslelephpGzDo3P.jpg'),
(29, 58, '/dist/images/anuphpxVtSMs.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(2, 'Darat'),
(3, 'Air');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT '',
  `alamat` varchar(255) DEFAULT '',
  `kota` varchar(255) DEFAULT '',
  `propinsi` varchar(255) DEFAULT '',
  `kodepos` varchar(6) DEFAULT '',
  `telp` varchar(20) DEFAULT '',
  `email` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `userid`, `nama`, `alamat`, `kota`, `propinsi`, `kodepos`, `telp`, `email`) VALUES
(1, 'user', 'Kevin Surya', 'jalan siwalan', 'surabaya', 'Jawa Tengahjawa timur', '', '081222555889', 'user@gmail.com'),
(8, 'fairuz@gmail.com', 'Fairuz', 'Jalan', 'Sidoarjo', 'Jawatimur', '', '081', 'fairuz@gmail.com'),
(9, 'fairuz', 'Rizqi', 'Jalan', 'Kkk', 'Jjj', '', '081', 'fairuz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `nota` varchar(255) DEFAULT '',
  `tanggal` datetime DEFAULT NULL,
  `idproduk` int(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT '',
  `harga` double(10,0) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT '',
  `jumlah` int(11) DEFAULT NULL,
  `userid` varchar(100) DEFAULT '',
  `idcabang` int(11) DEFAULT NULL,
  `st` varchar(1) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `nota`, `tanggal`, `idproduk`, `judul`, `harga`, `thumbnail`, `jumlah`, `userid`, `idcabang`, `st`, `flag`) VALUES
(5, '220712/0073J', '2022-07-12 03:08:09', 1, 'Kucing', 290000, '/dist/images/kucing.jpg', 1, 'user', 1, '1', 's'),
(6, '220712/0074J', '2022-07-12 03:27:54', 1, 'Kucing', 290000, '/dist/images/kucing.jpg', 1, 'user', 1, NULL, NULL),
(7, '220712/0075J', '2022-07-12 11:02:25', 1, 'Kucing', 290000, '/dist/images/kucing.jpg', 1, 'user', 1, NULL, NULL),
(8, '220718/0076J', '2022-07-18 16:12:50', 2, 'Anjing', 290000, '/dist/images/anjing.jpg', 1, 'user', 1, NULL, NULL),
(9, '220719/0077J', '2022-07-19 04:30:06', 1, 'Kucing', 290000, '/dist/images/kucing.jpg', 1, 'user', 1, NULL, NULL),
(10, '220719/0078J', '2022-07-19 12:28:26', 1, 'Kucing', 290000, '/dist/images/kucing.jpg', 1, 'user', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `idsubkategori` int(11) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT '',
  `subkategori` varchar(255) DEFAULT '',
  `judul` varchar(255) DEFAULT '',
  `deskripsi` text DEFAULT NULL,
  `harga` double(10,0) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT '',
  `st` varchar(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `idkategori`, `idsubkategori`, `kategori`, `subkategori`, `judul`, `deskripsi`, `harga`, `thumbnail`, `st`) VALUES
(1, 1, 1, 'Hewan Darat', 'sub1', 'Kucing', 'kucing adalah hewan mamalia berkaki empat dan berambut, kucing merupakan hewan karnivora , kucing memiliki indra penglihatan yg sangat tajam. kucing menjadi hewan peliharaan favorit karena ia imut lucu dan menggemaskan', 290000, '/dist/images/kucing.jpg', '1'),
(2, 1, 1, 'Hewan Darat', 'sub1', 'Anjing', 'Anjing, juga dikenal dengan nama Canis lupus familiaris, atau canine (baca: kénayn), adalah hewan yang biasanya digunakan sebagai peliharaan. Anjing kadang-kadang disebut sebagai “teman terbaik manusia” karena mereka dipelihara serta biasanya setia dan suka berada di sekitar manusia.', 290000, '/dist/images/anjing.jpg', '1'),
(3, 1, 1, 'Hewan Darat', 'sub1', 'Macan', 'Harimau (Panthera tigris) adalah spesies kucing terbesar yang masih hidup dari genus Panthera. Harimau memiliki ciri loreng yang khas pada bulunya, berupa garis-garis vertikal gelap pada bulu oranye, dengan bulu bagian bawah berwarna putih. ', 2500000, '/dist/images/macan.jpg', '1'),
(5, 2, 2, 'Hewan Air', 'sub2', 'Cupang', 'Ikan Cupang (Betta sp.) adalah ikan air tawar yang habitat asalnya adalah beberapa negara di Asia Tenggara, antara lain Indonesia, Thailand, Malaysia, dan Vietnam. Ikan ini mempunyai bentuk dan karakter yang unik dan cenderung agresif dalam mempertahankan wilayahnya', 15000, '/dist/images/cupang.jpg', '1'),
(6, 2, 2, 'Hewan Air', 'sub2', 'Hiu', 'Ikan hiu adalah ikan tulang rawan yang dikenal juga sebagai ikan buas. Jenis ikan ini termasuk dalam ordo pleurotremata yang memiliki 20 suku dan ratusan jenis. Hiu ini hidup dalam perairan laut, payau, dan air tawar. Hiu terkenal sebagai ikan dengan tubuh yang besar', 7500000, '/dist/images/hiu.jpg', '1'),
(7, 2, 2, 'Hewan Air', 'sub2', 'Lumba-Lumba', 'Lumba-lumba adalah mamalia laut yang sangat cerdas, selain itu sistem alamiah yang melengkapi tubuhnya sangat kompleks. Sehingga banyak teknologi yang terinspirasi dari lumba-lumba.', 6500000, '/dist/images/lumba.jpg', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `signin`
--

CREATE TABLE `signin` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(100) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT '',
  `level` varchar(1) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `foto` varchar(255) DEFAULT '',
  `token` varchar(255) DEFAULT '',
  `token2` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `signin`
--

INSERT INTO `signin` (`id`, `userid`, `pass`, `nama`, `level`, `email`, `foto`, `token`, `token2`) VALUES
(1, 'admin', 'admin', 'Adminitrator', '1', 'admin@gmail.com', '', '', ''),
(2, 'cabang', 'cabang', 'siwalan', '2', 'cabang@gmail.com', '', '', ''),
(4, 'user', 'user', 'Kevin Surya', '3', 'user@gmail.com', '', '', ''),
(12, 'fairuz@gmail.com', '081', 'Fairuz', '3', 'fairuz@gmail.com', '', '', ''),
(13, 'fairuz', '081', 'Rizqi', '3', 'fairuz', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokcabang`
--

CREATE TABLE `stokcabang` (
  `id` bigint(20) NOT NULL,
  `idcabang` int(11) DEFAULT NULL,
  `idproduk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stokcabang`
--

INSERT INTO `stokcabang` (`id`, `idcabang`, `idproduk`) VALUES
(2, 2, 1),
(4, 2, 2),
(5, 1, 3),
(6, 2, 3),
(8, 2, 4),
(9, 1, 5),
(10, 2, 5),
(11, 1, 6),
(12, 2, 6),
(13, 1, 7),
(14, 2, 7),
(16, 2, 8),
(18, 2, 9),
(20, 2, 10),
(22, 2, 11),
(24, 2, 12),
(26, 2, 13),
(28, 2, 14),
(30, 2, 15),
(32, 2, 16),
(34, 2, 46),
(36, 2, 47),
(40, 1, 1),
(48, 1, 9),
(49, 1, 8),
(51, 1, 2),
(52, 1, 2),
(53, 1, 2),
(54, 1, 10),
(56, 1, 77);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkategori`
--

CREATE TABLE `subkategori` (
  `id` int(11) NOT NULL,
  `idkategori` int(11) DEFAULT 0,
  `nama` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gambarlain`
--
ALTER TABLE `gambarlain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stokcabang`
--
ALTER TABLE `stokcabang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `gambarlain`
--
ALTER TABLE `gambarlain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `signin`
--
ALTER TABLE `signin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `stokcabang`
--
ALTER TABLE `stokcabang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
