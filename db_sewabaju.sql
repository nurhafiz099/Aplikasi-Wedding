-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2020 pada 15.43
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewabaju`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-19 06:35:12', '29032019003635r.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `baju`
--

CREATE TABLE `baju` (
  `id_baju` int(8) NOT NULL,
  `nama_baju` varchar(100) NOT NULL,
  `id_jenis` int(5) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(8) NOT NULL,
  `s` int(5) NOT NULL,
  `m` int(5) NOT NULL,
  `l` int(5) NOT NULL,
  `xl` int(5) NOT NULL,
  `gambar1` text NOT NULL,
  `gambar2` text NOT NULL,
  `gambar3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `baju`
--

INSERT INTO `baju` (`id_baju`, `nama_baju`, `id_jenis`, `kategori`, `deskripsi`, `harga`, `s`, `m`, `l`, `xl`, `gambar1`, `gambar2`, `gambar3`) VALUES
(1, 'Wedding Ruby', 1, 'Anak Perempuan', '1. Prasarana Pesta\r\n2. Buffet 650 Porsi \r\n', 69900000, 1, 1, 1, 1, '060720200449161.jpg', '060720200449261.jpg', '060720200449551.jpg'),
(2, 'Wedding Topaz', 3, 'Anak Laki-Laki', '1. Prasarana Pesta \r\n2. Prasmanan 800 Porsi \r\n3. Aneka Gubukan\r\na. Kambing Guling 2 Ekor\r\nb. Spaghetti 200 porsi\r\nc. Pempek 200 porsi\r\nd. Siomay 200 porsi\r\ne. Es Doger 200 porsi\r\nf. Sup Zoupa 200 porsi\r\ng. Baso malang 200 porsi\r\nh. Soto Ayam 200 porsi\r\ni. Es Krim 200 porsi\r\n\r\n4. Dekorasi pelaminan\r\na. Pelaminan Gebyok\r\nb. Bunga pelaminan lengkap Jawa / Sunda\r\nc. Latar belakang sawit pelaminan\r\nd. 2 buah bunga berdiri\r\ne. Taman miniatur 1 kelompok\r\nf. Gazebo Jalan\r\ng. Janur umbul-umbul 1 pasang\r\nh. Baki Bunga & Es Awal\r\ni. 2 Vas Meja Penerima Tamu\r\nj. Dekor Meja Buffet & Desert\r\n\r\n5. Rias dan Busana\r\na. Rias dan Busana pengantin untuk Resepsi & Akad (Hari yang Sama)\r\nb. Rias + baju orang tua 2 pasang\r\nc. Rias + baju penerima tamu 4 orang\r\nd. Rias + baju pagar ayu & bagus 6 Pasang\r\n\r\n6. Foto dan video\r\na. 2 Album foto Kolase Eksklusif\r\nb. Pengambilan video Akad & Resepsi (lokasi & hari yang sama)\r\nc. 1 buah master\r\nd. 1 Flashdisk + 1 album\r\n\r\n7. Perlengkapan\r\na. Buku tamu & Spidol 2 Buah\r\nb. 2 Tempat Angpaw & Souvenir\r\nc. 2 Meja Penerima tamu\r\n\r\n8. MC untuk Resepsi\r\n\r\nBonus\r\n1. Organ Tunggal + Penyanyi + Sound System\r\n2. Prasmanan Keluarga 75 Porsi\r\n3. Pagar Vip Prasmanan Keluarga\r\n4. Foto Kanvas 40 x 60 cm Eksklusif\r\n5. Cucuk Lampah / Lengser\r\n6. MC Akad Nikah\r\n7. Hand Baquet\r\n8. 2 Buah Bingkai Berdiri', 99900000, 1, 1, 1, 1, '06072020050905).jpg', '06072020050917).jpg', '06072020050928).jpg'),
(3, 'Wedding Diamond', 5, 'Dewasa Laki-Laki', '1. Prasarana Pesta  \r\n2. Prasmanan 1.000 Porsi \r\n3. Aneka Gubukan\r\na. Kambing Guling 3 Ekor\r\nb. Spaghetti 200 porsi\r\nc. Baso 200 porsi\r\nd. Siomay 200 porsi\r\ne. Es Doger 200 porsi\r\nf. Mpe Mpe 200 porsi\r\ng. Pisang Coklat Meleleh 200 porsi\r\nh. Es Krim 200 porsi\r\ni. Pempek 200 porsi\r\nj. Kebab 200 Porsi\r\nk. Zoupa Soup 200 Porsi\r\n\r\n4. Dekorasi pelaminan\r\na. Pelaminan Gebyok / Modern\r\nb. Bunga pelaminan lengkap Jawa / Sunda\r\nc. Latar belakang pelaminan\r\nd. 3 Pasang bunga berdiri\r\ne. Taman miniatur 1 kelompok\r\nf. Gazebo Jalan\r\ng. Janur umbul-umbul 1 pasang\r\nh. Baki Bunga & Es Awal\r\ni. 2 Vas Meja Penerima Tamu\r\nj. Dekor Meja Buffet & Desert\r\n5. Rias dan busana\r\na. Rias dan Busana pengantin untuk Resepsi & Akad (Hari yang Sama)\r\nb. Rias + baju orang tua 2 pasang\r\nc. Rias + baju penerima tamu 4 orang\r\nd. Rias + baju pagar ayu & bagus 6 Pasang\r\n\r\n6. Foto dan video\r\na. 2 Album foto Kolase Eksklusif\r\nb. Pengambilan video Akad & Resepsi (lokasi & hari yang sama)\r\nc. 1 buah master\r\nd. 1 Flashdisk + 1 album\r\n\r\n7. Perlengkapan\r\na. Buku tamu & Spidol 2 Buah\r\nb. 2 Tempat Angpaw & Souvenir\r\nc. 2 Meja Penerima tamu\r\n\r\n8. MC untuk Resepsi & Akad \r\nBonus\r\n1. Organ Tunggal + Penyanyi + Sound System\r\n2. Prasmanan Keluarga 50 Porsi\r\n3. Pagar Vip Prasmanan Keluarga\r\n4. Foto Kanvas 40 x 60 cm Eksklusif\r\n5. Cucuk Lampah / Lengser\r\n6. MC Akad Nikah\r\n7 Hand Baquet\r\n8. 2 Buah Standing Frame', 149900000, 1, 1, 1, 1, '06072020051723).jpg', '06072020051731).jpg', '06072020051741).jpg'),
(4, 'Wedding Silver', 4, 'Dewasa Perempuan', '1. Prasarana Pesta  \r\n2. Prasmanan 1.000 Porsi \r\n3. Aneka Gubukan\r\na. Kambing Guling 3 Ekor\r\nb. Spaghetti 200 porsi\r\nc. Baso 200 porsi\r\nd. Siomay 200 porsi\r\ne. Es Doger 200 porsi\r\nf. Mpe Mpe 200 porsi\r\ng. Pisang Coklat Meleleh 200 porsi\r\nh. Es Krim 200 porsi\r\ni. Pempek 200 porsi\r\nj. Kebab 200 Porsi\r\nk. Zoupa Soup 200 Porsi\r\n\r\n4. Dekorasi pelaminan\r\na. Pelaminan Gebyok / Modern\r\nb. Bunga pelaminan lengkap Jawa / Sunda\r\nc. Latar belakang pelaminan\r\nd. 3 Pasang bunga berdiri\r\ne. Taman miniatur 1 kelompok\r\nf. Gazebo Jalan\r\ng. Janur umbul-umbul 1 pasang\r\nh. Baki Bunga & Es Awal\r\ni. 2 Vas Meja Penerima Tamu\r\nj. Dekor Meja Buffet & Desert\r\n5. Rias dan busana\r\na. Rias dan Busana pengantin untuk Resepsi & Akad (Hari yang Sama)\r\nb. Rias + baju orang tua 2 pasang\r\nc. Rias + baju penerima tamu 4 orang\r\nd. Rias + baju pagar ayu & bagus 6 Pasang\r\n\r\n6. Foto dan video\r\na. 2 Album foto Kolase Eksklusif\r\nb. Pengambilan video Akad & Resepsi (lokasi & hari yang sama)\r\nc. 1 buah master\r\nd. 1 Flashdisk + 1 album\r\n\r\n7. Perlengkapan\r\na. Buku tamu & Spidol 2 Buah\r\nb. 2 Tempat Angpaw & Souvenir\r\nc. 2 Meja Penerima tamu\r\n\r\n8. MC untuk Resepsi & Akad \r\nBonus\r\n1. Organ Tunggal + Penyanyi + Sound System\r\n2. Prasmanan Keluarga 50 Porsi\r\n3. Pagar Vip Prasmanan Keluarga\r\n4. Foto Kanvas 40 x 60 cm Eksklusif\r\n5. Cucuk Lampah / Lengser\r\n6. MC Akad Nikah\r\n7 Hand Baquet\r\n8. 2 Buah Standing Frame', 119900000, 0, 1, 1, 1, '06072020051120s.jpg', '06072020051128s.jpg', '06072020051138s.jpg'),
(5, 'Wedding Safir', 4, 'Dewasa Perempuan', '1. Prasarana Pesta \r\n2. Buffet 500 Porsi \r\n', 79900000, 1, 1, 1, 1, '05072020180906d.jpg', '05072020180906d.jpg', '05072020180906d.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_baju` int(11) NOT NULL,
  `ukuran` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_baju`, `ukuran`, `tgl_mulai`, `tgl_selesai`, `durasi`, `denda`, `status`, `email`, `pickup`, `tgl_booking`, `bukti_bayar`) VALUES
('TRX00000', 1, 's', '2020-07-06', '2020-07-08', 3, 75000, 'Selesai', 'nurhafiz@gmail.com', 'Ambil Sendiri', '2020-07-05', '05072020214642banner-image.jpg'),
('TRX00001', 8, '', '2018-08-15', '2018-08-16', 2, 0, 'Selesai', 'test@gmail.com', 'Ambil Sendiri', '2018-08-13', '13082018064710bukalapak.png'),
('TRX00002', 1, 's', '2019-04-16', '2019-04-17', 2, 50000, 'Selesai', 'irfan@gmail.com', 'Ambil Sendiri', '2019-04-16', '19042019093238asdasd.png'),
('TRX00003', 2, 'm', '2019-04-18', '2019-04-19', 2, 0, 'Cancel', 'irfan@gmail.com', 'Ambil Sendiri', '2019-04-16', ''),
('TRX00004', 4, 's', '2019-04-20', '2019-04-21', 2, 875000, 'Hilang/Rusak', 'irfan@gmail.com', 'Ambil Sendiri', '2019-04-19', '19042019141908imal.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_booking`
--

CREATE TABLE `cek_booking` (
  `id_cek` int(11) NOT NULL,
  `kode_booking` varchar(8) NOT NULL,
  `id_baju` int(11) NOT NULL,
  `ukuran` varchar(50) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cek_booking`
--

INSERT INTO `cek_booking` (`id_cek`, `kode_booking`, `id_baju`, `ukuran`, `tgl_booking`, `status`) VALUES
(1, 'TRX00001', 1, 's', '2018-08-15', 'Selesai'),
(2, 'TRX00001', 1, 's', '2018-08-16', 'Selesai'),
(3, 'TRX00002', 1, 's', '2019-04-18', 'Selesai'),
(4, 'TRX00002', 1, 's', '2019-04-19', 'Selesai'),
(5, 'TRX00003', 2, 'm', '2019-04-18', 'Cancel'),
(6, 'TRX00003', 2, 'm', '2019-04-19', 'Cancel'),
(7, 'TRX00004', 4, 's', '2019-04-20', 'Hilang/Rusak'),
(8, 'TRX00004', 4, 's', '2019-04-21', 'Hilang/Rusak'),
(9, 'TRX00000', 1, 's', '2020-07-06', 'Selesai'),
(10, 'TRX00000', 1, 's', '2020-07-07', 'Selesai'),
(11, 'TRX00000', 1, 's', '2020-07-08', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'ME', 'gome@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'kjk', 'jlkl@gmail.com', '98989898', 'kjlkjkljklj', '2018-03-06 14:01:39', 1),
(3, 'hafiz', 'nurhafiz789@gmail.com', '83190137013', 'paket lengkap', '2020-07-05 16:51:03', 1),
(4, 'hafiz', 'nurhafiz099@gmail.com', '83190137013', 'pesan sekarang', '2020-07-06 03:22:15', NULL),
(5, 'hafiz', 'nurhafiz940@yahoo.co.id', '83190137013', 'apakah paket pernikahan untuk bulan agustus tersedia', '2020-07-06 05:18:01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Jl. Percetakaan Negara No.4', 'WDProject@gmail.com', '08585233222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(1) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Rumah ekonomis'),
(3, 'Rumah Spesial'),
(4, 'Gedung Ekonomis'),
(5, 'Gedung Spesial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`) VALUES
(5, 'Test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '0819898989', 'test doang'),
(6, 'Coba', 'coba@gmail.com', 'c3ec0f7b054e729c5a716c8125839829', '08986776473', 'Jl. coba'),
(7, 'Nama Saya', 'nama@gmail.com', 'e3555ebe8b7daf4a9966f8130fb3a93f', '08123456789', 'Alamat Saya'),
(8, 'Haikal Akmal', 'haikal@gmail.com', '24b90bc48a67ac676228385a7c71a119', '089628785342', 'Jakarta'),
(9, 'hafiz', 'nurhafiz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '91839173193', 'jl pisangan ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																												<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">Pengguna Harus Login Terlebih Dahulu</span></p><p align=\"justify\"><br></p>																																												'),
(5, 'Rekening', 'rekening', '																																	123456789 Bank BRI a/n IRFAN'),
(0, 'Driver', 'driver', '200000'),
(2, 'Privacy Policy', 'privacy', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Wayang decoration(WD) project merupakan suatu pelayanan jasa pernikahan yang ada di Jakarta yang menyediakan beberapa jenis jasa pernikahan dan paket pernikahan yang pemesanannya masih secara manual.</span></div>'),
(3, 'Tentang Kami', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Wayang decoration(WD) project merupakan perusahaan yang bergerak dibidang usaha jasa membantu calon pengantin &amp; keluarga dalam perencanaan dan supervisi pelaksanaan rangkaian acara pesta pernikahan sesuai dengan jadwal yang telah ditetapkan.</span></div>'),
(11, 'FAQs', 'faqs', '																						<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara menyewa Wedding Organizer ?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai member melalui menu yang telah disediakan.</span></div>																						');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `baju`
--
ALTER TABLE `baju`
  ADD PRIMARY KEY (`id_baju`);

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indeks untuk tabel `cek_booking`
--
ALTER TABLE `cek_booking`
  ADD PRIMARY KEY (`id_cek`);

--
-- Indeks untuk tabel `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indeks untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `baju`
--
ALTER TABLE `baju`
  MODIFY `id_baju` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `cek_booking`
--
ALTER TABLE `cek_booking`
  MODIFY `id_cek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
