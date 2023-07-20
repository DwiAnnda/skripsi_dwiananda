-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Jul 2023 pada 19.22
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skripsi_dwianandadb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
`id_absensi` int(11) NOT NULL,
  `id_kalenderpendidikan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(20) DEFAULT '07:00',
  `id_siswa` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT '1' COMMENT '1=hadir,2=izin/sakit,3=tidak hadir',
  `keterangan` varchar(100) DEFAULT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksesmenu`
--

CREATE TABLE IF NOT EXISTS `aksesmenu` (
`id_aksesmenu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data untuk tabel `aksesmenu`
--

INSERT INTO `aksesmenu` (`id_aksesmenu`, `id_level`, `id_menu`) VALUES
(19, 1, 1),
(20, 1, 2),
(21, 1, 3),
(22, 1, 4),
(23, 1, 6),
(47, 2, 4),
(48, 2, 5),
(49, 2, 6),
(60, 3, 5),
(61, 3, 6),
(62, 3, 8),
(63, 3, 11),
(64, 4, 10),
(65, 4, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biayapendaftaran`
--

CREATE TABLE IF NOT EXISTS `biayapendaftaran` (
`id_biayapendaftaran` int(11) NOT NULL,
  `biaya` double NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calonsiswa`
--

CREATE TABLE IF NOT EXISTS `calonsiswa` (
`id_calonsiswa` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nokk` varchar(100) DEFAULT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `id_jeniskelamin` int(1) NOT NULL DEFAULT '1' COMMENT '1=Laki-laki,2=Perempuan',
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `anak_ke` int(11) NOT NULL,
  `alamat` text,
  `nohp` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ijazah` text,
  `kk` text,
  `akta` text,
  `foto` varchar(225) NOT NULL DEFAULT 'default.jpg',
  `id_pengumuman` int(11) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `id_jalurpendaftaran` int(11) NOT NULL DEFAULT '1',
  `id_status` int(11) NOT NULL DEFAULT '1',
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `calonsiswa`
--

INSERT INTO `calonsiswa` (`id_calonsiswa`, `kode`, `tanggal`, `nik`, `nokk`, `nama_siswa`, `id_jeniskelamin`, `tempat_lahir`, `tanggal_lahir`, `anak_ke`, `alamat`, `nohp`, `email`, `ijazah`, `kk`, `akta`, `foto`, `id_pengumuman`, `id_jalurpendaftaran`, `id_status`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(2, 'm8j2KdCEsf', '2023-07-08', '6303050102880012', '456456456', 'Ahmad Rizal', 1, 'Martapura', '2010-07-08', 1, 'Jalan Ahmad Yani', '082151365654', 'alpiannoorbanjar@gmail.com', 'OFW9vDx1cSVwdp4a.png', 'OFW9vDx1cSVwdp4a2.png', 'OFW9vDx1cSVwdp4a1.png', 'OFW9vDx1cSVwdp4a3.png', 6, 1, 2, 'alpiannoorbanjar@gmail.com', '2023-07-08 04:07:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarnilai`
--

CREATE TABLE IF NOT EXISTS `daftarnilai` (
`id_daftarnilai` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_kelassiswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarsiswa`
--

CREATE TABLE IF NOT EXISTS `daftarsiswa` (
`id_daftarsiswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_kelassiswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `daftarsiswa`
--

INSERT INTO `daftarsiswa` (`id_daftarsiswa`, `tanggal`, `id_kelassiswa`, `id_siswa`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, '2023-07-08', 13, 2, 1, 'admin', '2023-07-08 04:07:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailkelassiswa`
--

CREATE TABLE IF NOT EXISTS `detailkelassiswa` (
`id_detailkelassiswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_kelassiswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `golpangkat`
--

CREATE TABLE IF NOT EXISTS `golpangkat` (
`id_golpangkat` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_gol` varchar(100) NOT NULL,
  `nama_pangkat` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `golpangkat`
--

INSERT INTO `golpangkat` (`id_golpangkat`, `urutan`, `nama_gol`, `nama_pangkat`) VALUES
(1, 1, 'IA', 'Juru Muda'),
(2, 2, 'IB', 'Juru Muda Tingkat I'),
(3, 3, 'IC', 'Juru'),
(4, 4, 'ID', 'Juru Tingkat I'),
(5, 5, 'IIA', 'Pengatur Muda'),
(6, 6, 'IIB', 'Pengatur Muda Tingkat I'),
(7, 7, 'IIC', 'Pengatur'),
(8, 8, 'IID', 'Pengatur Tingkat I'),
(9, 9, 'IIIA', 'Penata Muda'),
(10, 10, 'IIIB', 'Penata Muda Tingkat I'),
(11, 11, 'IIIC', 'Penata'),
(12, 12, 'IIID', 'Penata Tingkat I'),
(13, 13, 'IVA', 'Pembina'),
(14, 14, 'IVB', 'Pembina Tingkat I'),
(15, 15, 'IVC', 'Pembina Mudah'),
(16, 16, 'IVD', 'Pembina Madya'),
(17, 17, 'IVE', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
`id_guru` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `id_pegawai`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(4, 23, 'admin', '2023-06-14 12:06:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
`id_jabatan` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `urutan`, `nama_jabatan`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Administrator', 'alpian', '2022-05-26 00:00:00', NULL, NULL),
(3, 2, 'Kepala Sekolah', 'admin', '2022-06-14 09:06:20', NULL, '2022-07-20 04:07:28'),
(4, 3, 'Guru', 'admin', '2022-06-14 09:06:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kalenderpendidikan`
--

CREATE TABLE IF NOT EXISTS `kalenderpendidikan` (
`id_kalenderpendidikan` int(11) NOT NULL,
  `id_tahunajaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data untuk tabel `kalenderpendidikan`
--

INSERT INTO `kalenderpendidikan` (`id_kalenderpendidikan`, `id_tahunajaran`, `tanggal`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 3, '2023-06-01', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(2, 3, '2023-06-02', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(3, 3, '2023-06-03', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(4, 3, '2023-06-05', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(5, 3, '2023-06-06', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(6, 3, '2023-06-07', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(7, 3, '2023-06-08', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(8, 3, '2023-06-09', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(9, 3, '2023-06-10', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(10, 3, '2023-06-12', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(11, 3, '2023-06-13', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(12, 3, '2023-06-14', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(13, 3, '2023-06-15', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(14, 3, '2023-06-16', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(15, 3, '2023-06-17', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(16, 3, '2023-06-19', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(17, 3, '2023-06-20', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(18, 3, '2023-06-21', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(19, 3, '2023-06-22', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(20, 3, '2023-06-23', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(21, 3, '2023-06-24', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(22, 3, '2023-06-26', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(23, 3, '2023-06-27', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(24, 3, '2023-06-28', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(25, 3, '2023-06-29', 'admin', '2023-06-14 12:06:28', NULL, NULL),
(26, 3, '2023-06-30', 'admin', '2023-06-14 12:06:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoriortuwali`
--

CREATE TABLE IF NOT EXISTS `kategoriortuwali` (
`id_kategoriortuwali` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_kategoriortuwali` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `kategoriortuwali`
--

INSERT INTO `kategoriortuwali` (`id_kategoriortuwali`, `urutan`, `nama_kategoriortuwali`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Ayah', 'System', '2022-06-12 00:00:00', NULL, NULL),
(2, 2, 'Ibu', 'System', '2022-06-12 00:00:00', NULL, NULL),
(3, 3, 'Wali', 'System', '2022-06-12 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
`id_kelas` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `urutan`, `nama_kelas`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(15, 1, 'X A', 'admin', '2023-06-14 12:06:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelassiswa`
--

CREATE TABLE IF NOT EXISTS `kelassiswa` (
`id_kelassiswa` int(11) NOT NULL,
  `id_tahunajaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `kelassiswa`
--

INSERT INTO `kelassiswa` (`id_kelassiswa`, `id_tahunajaran`, `id_guru`, `id_kelas`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(13, 3, 4, 15, 1, 'admin', '2023-06-14 12:06:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE IF NOT EXISTS `level` (
`id_level` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_level` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `urutan`, `nama_level`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Administrator', 'System', '2023-06-24 00:00:00', NULL, NULL),
(2, 2, 'Kepala Sekolah', 'System', '2023-06-24 00:00:00', NULL, NULL),
(3, 3, 'Guru', 'System', '2023-06-24 00:00:00', NULL, NULL),
(4, 4, 'Siswa', 'admin', '2023-07-08 04:07:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matapelajaran`
--

CREATE TABLE IF NOT EXISTS `matapelajaran` (
`id_matapelajaran` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama_matapelajaran` varchar(100) NOT NULL,
  `id_guru` int(11) NOT NULL DEFAULT '1',
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif;2=tidak',
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `matapelajaran`
--

INSERT INTO `matapelajaran` (`id_matapelajaran`, `id_kelas`, `nama_matapelajaran`, `id_guru`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 15, 'Bahasa Indonesia', 4, 1, 'admin', '2023-07-08 05:07:23', 'admin', '2023-07-08 05:07:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
`id_materi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode` varchar(10) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `nama_materi` varchar(100) NOT NULL,
  `file` text,
  `link` text,
  `id_status` int(1) NOT NULL DEFAULT '1',
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id_materi`, `tanggal`, `kode`, `id_matapelajaran`, `nama_materi`, `file`, `link`, `id_status`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(2, '2023-07-08', 'eK2ARGJnzE', 1, 'Menyusun Laporan Hasil Observasi', 'vTez63AGZa91rJMt.pdf', 'https://www.youtube.com/watch?v=Ooczzk1xPME', 1, 'dedy', '2023-07-08 07:07:17', 'dedy', '2023-07-08 07:07:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `keterangan` varchar(50) NOT NULL DEFAULT 'admin',
  `aktif` int(11) NOT NULL DEFAULT '1',
  `user_input` varchar(50) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL DEFAULT '2022-05-21 10:00:00',
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `urutan`, `nama_menu`, `url`, `icon`, `keterangan`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Beranda', 'admin', 'nav-icon fas fa-tachometer-alt', 'admin', 1, 'system', '2022-05-21 10:00:00', NULL, NULL),
(2, 2, 'Master', 'master', 'nav-icon fas fa-tachometer-alt', 'admin', 1, 'system', '2022-05-21 10:00:00', NULL, NULL),
(3, 3, 'Register', 'register', 'nav-icon fas fa-tachometer-alt', 'admin', 1, 'system', '2022-05-21 10:00:00', NULL, NULL),
(4, 4, 'Laporan', 'laporan', 'nav-icon fas fa-tachometer-alt', 'admin', 1, 'system', '2022-05-21 10:00:00', NULL, NULL),
(5, 1, 'Beranda', 'pengguna', 'nav-icon fas fa-tachometer-alt', 'pengguna', 1, 'system', '2022-05-21 10:00:00', NULL, NULL),
(6, 5, 'Profil', 'profil', 'nav-icon fas fa fa-user', 'pengguna', 2, 'system', '2022-05-21 10:00:00', NULL, NULL),
(8, 2, 'Kelas Siswa', 'kelassiswa', 'nav-icon fas fa-tachometer-alt', 'nav-icon fas fa-tachometer-alt', 1, 'admin', '2023-05-15 11:05:31', NULL, NULL),
(9, 2, 'Monitoring Siswa', 'ortu', 'nav-icon fas fa-tachometer-alt', 'nav-icon fas fa-tachometer-alt', 1, 'admin', '2023-05-15 11:05:54', NULL, NULL),
(10, 1, 'Beranda', 'siswa', 'fas fa-fw fa-tachometer-alt', 'fas fa-fw fa-tachometer-alt', 1, 'admin', '2023-07-08 04:07:56', NULL, NULL),
(11, 4, 'Materi', 'kelassiswa/materi', 'fas fa-fw fa-tachometer-alt', 'fas fa-fw fa-tachometer-alt', 1, 'admin', '2023-07-08 05:07:45', NULL, NULL),
(12, 3, 'Materi', 'siswa/materi', 'fas fa-fw fa-tachometer-alt', 'fas fa-fw fa-tachometer-alt', 1, 'admin', '2023-07-08 06:07:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ortuwali`
--

CREATE TABLE IF NOT EXISTS `ortuwali` (
`id_ortuwali` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kategoriortuwali` int(1) NOT NULL DEFAULT '1' COMMENT '1=ayah,2=ibu,3=wali',
  `nik` varchar(50) DEFAULT NULL,
  `nama_ortuwali` varchar(100) NOT NULL,
  `id_jeniskelamin` int(1) NOT NULL DEFAULT '1' COMMENT '1=Laki-laki,2=Perempuan',
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text,
  `pekerjaan` varchar(100) DEFAULT 'Tidak Bekerja',
  `nohp` varchar(13) DEFAULT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ortuwali`
--

INSERT INTO `ortuwali` (`id_ortuwali`, `id_siswa`, `id_kategoriortuwali`, `nik`, `nama_ortuwali`, `id_jeniskelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `pekerjaan`, `nohp`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 2, 1, '6303050102880088', 'Ahmad Zaini', 1, 'Martapura', '1990-07-08', 'Jalan Ahmad Yani', 'Wiraswasta', '082151365654', 1, 'admin', '2023-07-08 04:07:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
`id_pegawai` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `id_jeniskelamin` int(1) NOT NULL DEFAULT '1' COMMENT '1=Laki-laki,2=Perempuan',
  `id_jabatan` int(11) DEFAULT NULL,
  `id_golpangkat` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text,
  `nohp` varchar(13) DEFAULT NULL,
  `foto` varchar(225) NOT NULL DEFAULT 'default.jpg',
  `ktp` text,
  `kk` text,
  `ijazah` text,
  `id_pendidikan` int(11) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama_pegawai`, `id_jeniskelamin`, `id_jabatan`, `id_golpangkat`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `nohp`, `foto`, `ktp`, `kk`, `ijazah`, `id_pendidikan`, `tmt`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, '198802012017061002', 'Administrator', 2, 1, NULL, 'Martapura', '1988-02-01', 'Komplek Plajau Indah Blok B2 Nomor 3', '082151365654', 'iYmfWRpt3SHbXKC9.png', NULL, NULL, NULL, NULL, NULL, 1, 'system', '2022-05-16 00:00:00', 'admin', '2022-07-20 04:07:27'),
(22, '197211191993031006', 'Sulaiman, S.Pd', 1, 3, NULL, 'Banjarbaru', '1990-06-14', 'Jalan Ahmad Yani', '082151365654', 'liOgaX9wpvND5V3c.jpeg', 'swDfR754bxhONcKv1.png', 'swDfR754bxhONcKv2.png', 'swDfR754bxhONcKv.png', 1, '2022-06-14', 1, 'admin', '2023-06-14 12:06:30', 'admin', '2023-06-24 05:06:59'),
(23, '196807161990101001', 'Dedy Aristianto,S.Pd', 1, 4, NULL, 'Banjarbaru', '1990-06-24', 'Jalan Ahmad Yani', '082151365654', 'GMmy20qscAWFNZtC3.png', 'GMmy20qscAWFNZtC1.png', 'GMmy20qscAWFNZtC2.png', 'GMmy20qscAWFNZtC.png', 1, '2023-06-24', 1, 'admin', '2023-06-24 05:06:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pejabat_ttd`
--

CREATE TABLE IF NOT EXISTS `pejabat_ttd` (
`id_pegawai` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `id_golpangkat` int(11) DEFAULT NULL,
  `aktif` int(11) NOT NULL DEFAULT '1',
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `pejabat_ttd`
--

INSERT INTO `pejabat_ttd` (`id_pegawai`, `nip`, `nama_pegawai`, `id_jabatan`, `id_golpangkat`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(2, '19700705.1U.0798', 'Herliannur, S.Ag', 2, 1, 1, 'system', '2022-05-16 00:00:00', 'admin', '2022-06-14 09:06:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan`
--

CREATE TABLE IF NOT EXISTS `pemasukan` (
`id_pemasukan` int(11) NOT NULL,
  `kode_pemasukan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_sumberpemasukan` int(11) NOT NULL,
  `nominal` double NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `kode_pemasukan`, `tanggal`, `id_sumberpemasukan`, `nominal`, `keterangan`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(7, 'PM00001', '2023-06-14', 1, 5000000, 'Dana Bantuan BOS', 'admin', '2023-06-14 12:06:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
`id_pendaftaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pengumuman` int(11) DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date NOT NULL,
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
`id_pendidikan` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_pendidikan` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `urutan`, `nama_pendidikan`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'SMA', 'System', '2022-06-12 00:00:00', NULL, NULL),
(2, 2, 'S1', 'System', '2022-06-12 00:00:00', NULL, NULL),
(3, 3, 'S2', 'System', '2022-06-12 00:00:00', NULL, NULL),
(4, 4, 'S3', 'System', '2022-06-12 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE IF NOT EXISTS `pengeluaran` (
`id_pengeluaran` int(11) NOT NULL,
  `kode_pengeluaran` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_sumberpengeluaran` int(11) NOT NULL,
  `nominal` double NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `kode_pengeluaran`, `tanggal`, `id_sumberpengeluaran`, `nominal`, `keterangan`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(7, 'PN00001', '2023-06-14', 2, 500000, 'Pengecatan Gedung Musola', 'admin', '2023-06-14 12:06:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
`id_pengguna` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_level` int(11) NOT NULL,
  `aktif` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_pegawai`, `nama_pengguna`, `username`, `password`, `id_level`, `aktif`, `token`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Administrator', 'admin', '$2y$10$71IF8kzZE.WN8OkvApbt1unbL2s37OGVIDu6DzKfiF0qOuEyXd9Mm', 1, 1, 'SxKpmyh47e', 'system', '0000-00-00 00:00:00', 'admin', '2022-06-14 08:06:31'),
(2, 22, 'Sulaiman, S.Pd', 'sulaiman', '$2y$10$p6dXaJkVuib/rdVZDNx1S.tZdOR0PEfYaEun3AcA7RrHj4UVQZx42', 2, 1, 'MDjfUtgdQR', 'admin', '2023-06-24 05:06:54', 'admin', '2023-06-24 05:06:54'),
(3, 23, 'Dedy Aristianto,S.Pd', 'dedy', '$2y$10$RQsVEXLUrmARfZ9CACDYv.JrSS719eKkpCV4yLXuGXOOiZWO3.Q.W', 3, 1, 'GTAo9sfdhF', 'admin', '2023-06-24 05:06:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
`id_pengumuman` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `tanggal_pendaftaran` date DEFAULT NULL,
  `tanggal_akhir` date NOT NULL,
  `tempat` varchar(100) NOT NULL DEFAULT '1' COMMENT '1=Laki-laki,2=Perempuan',
  `syarat` text,
  `kontak` varchar(20) DEFAULT NULL,
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `tanggal`, `nomor_surat`, `perihal`, `tanggal_pendaftaran`, `tanggal_akhir`, `tempat`, `syarat`, `kontak`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(6, '2023-06-14', '55/SRT/VI/2023', 'Penerimaan Siswa Baru Juni 2023', '2023-05-01', '2023-07-31', 'Gedung Halaman Sekolah', 'Fotocopy Ijazah Terakhir', '082151365654', 'admin', '2023-07-08 04:07:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
`id_profil` int(11) NOT NULL,
  `nama_aplikasi` text,
  `singkatan` varchar(50) DEFAULT NULL,
  `nama_profil` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `telepon` varchar(15) NOT NULL,
  `kodepos` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logo` varchar(100) NOT NULL DEFAULT 'logo.png'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_aplikasi`, `singkatan`, `nama_profil`, `alamat`, `fax`, `telepon`, `kodepos`, `email`, `website`, `logo`) VALUES
(1, 'APLIKASI MEDIA PEMBELAJARAN INTERAKTIF PADA SMA NEGERI 6 BANJARMASIN BERBASIS WEB', 'AJARI', ' SMA Negeri 6 Banjarmasin', 'JL BIDURI RT.04, Sungai Danau, Kec. Satui, Kab. Tanah Bumbu', '(0511) 3353175', '(0511) 3353175', '70121', 'admin@sman6-bjm.sch.id', 'www.sman6-bjm.sch.id', 'logo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`id_siswa` int(11) NOT NULL,
  `id_calonsiswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nis` varchar(100) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nokk` varchar(100) DEFAULT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `id_jeniskelamin` int(1) NOT NULL DEFAULT '1' COMMENT '1=Laki-laki,2=Perempuan',
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `anak_ke` int(11) NOT NULL,
  `alamat` text,
  `nohp` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `ijazah` text,
  `kk` text,
  `akta` text,
  `foto` varchar(225) NOT NULL DEFAULT 'default.jpg',
  `aktif` int(1) NOT NULL DEFAULT '1' COMMENT '1=aktif,2=tidak',
  `user_input` varchar(100) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(100) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_calonsiswa`, `tanggal`, `nis`, `nik`, `nokk`, `nama_siswa`, `id_jeniskelamin`, `tempat_lahir`, `tanggal_lahir`, `anak_ke`, `alamat`, `nohp`, `email`, `password`, `ijazah`, `kk`, `akta`, `foto`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(2, 2, '2023-07-08', '345435', '6303050102880012', '456456456', 'Ahmad Rizal', 1, 'Martapura', '2010-07-08', 1, 'Jalan Ahmad Yani', '082151365654', 'alpiannoorbanjar@gmail.com', '$2y$10$dKfHjZeFHu/3haD1GVzsJ.cThGvCfg.wb23B8n3iU3xug7RUg8vPC', 'OFW9vDx1cSVwdp4a.png', 'OFW9vDx1cSVwdp4a2.png', 'OFW9vDx1cSVwdp4a1.png', 'OFW9vDx1cSVwdp4a3.png', 1, 'system', '2023-07-08 04:07:41', 'admin', '2023-07-08 04:07:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id_status` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_status` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL DEFAULT '2022-05-20 10:00:00',
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `urutan`, `nama_status`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Hadir', 'system', '2022-05-20 10:00:00', NULL, NULL),
(2, 2, 'Izin', 'system', '2022-05-20 10:00:00', NULL, NULL),
(3, 3, 'Sakit', 'system', '2022-05-20 10:00:00', NULL, NULL),
(4, 4, 'Tanpa Keterangan', 'system', '2022-05-20 10:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
`id_submenu` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_submenu` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT 'far fa-circle nav-icon',
  `aktif` int(1) NOT NULL DEFAULT '1',
  `user_input` varchar(50) NOT NULL DEFAULT 'system',
  `tgl_input` datetime NOT NULL DEFAULT '2022-05-21 10:00:00',
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_submenu`, `id_menu`, `urutan`, `nama_submenu`, `url`, `icon`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 2, 1, 'Menu', 'master/menu', 'far fa-circle nav-icon', 2, 'system', '2022-05-21 10:00:00', NULL, NULL),
(2, 2, 2, 'Sub Menu', 'master/submenu', 'far fa-circle nav-icon', 2, 'system', '2022-05-21 10:00:00', NULL, NULL),
(3, 2, 3, 'Level', 'master/level', 'far fa-circle nav-icon', 2, 'system', '2022-05-21 10:00:00', NULL, NULL),
(4, 2, 2, 'Pengguna', 'master/pengguna', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2023-06-24 05:06:47'),
(5, 2, 5, 'Jabatan', 'master/jabatan', 'far fa-circle nav-icon', 2, 'system', '2022-05-21 10:00:00', NULL, NULL),
(6, 2, 3, 'Tahun Ajaran', 'master/tahunajaran', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2023-06-24 05:06:48'),
(7, 2, 8, 'Satuan', 'master/satuan', 'far fa-circle nav-icon', 2, 'system', '2022-05-21 10:00:00', NULL, NULL),
(8, 2, 9, 'Kelas', 'master/kelas', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2022-06-14 09:06:58'),
(15, 2, 1, 'Pegawai', 'master/pegawai', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2023-06-24 05:06:47'),
(16, 4, 2, 'Laporan Pegawai', 'laporan/pegawai', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2023-06-14 09:06:07'),
(17, 4, 3, 'Laporan Guru', 'laporan/guru', 'far fa-circle nav-icon', 2, 'system', '2022-05-21 10:00:00', 'admin', '2023-06-14 09:06:07'),
(19, 4, 19, 'Laporan Siswa', 'laporan/siswa', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2022-07-03 02:07:25'),
(20, 4, 20, 'Laporan Ortu/Wali', 'laporan/ortuwali', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2022-07-03 02:07:50'),
(22, 4, 22, 'Laporan Kelas Siswa', 'laporan/kelassiswa', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2022-07-03 03:07:01'),
(23, 4, 23, 'Laporan Daftar Siswa', 'laporan/daftarsiswa', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2022-07-03 03:07:12'),
(24, 4, 24, 'Laporan Absensi', 'laporan/absensi', 'far fa-circle nav-icon', 1, 'system', '2022-05-21 10:00:00', 'admin', '2022-07-03 03:07:36'),
(27, 3, 9, 'Kelas Siswa', 'register/kelassiswa', 'far fa-circle nav-icon', 1, 'admin', '2022-06-01 10:06:39', 'admin', '2022-07-02 12:07:55'),
(33, 2, 6, 'Guru', 'master/guru', 'far fa-circle nav-icon', 1, 'admin', '2022-06-04 08:06:55', 'admin', '2022-07-24 06:07:22'),
(34, 3, 3, 'Siswa', 'register/siswa', 'far fa-circle nav-icon', 1, 'admin', '2022-06-27 06:06:12', 'admin', '2023-06-14 04:06:56'),
(36, 2, 31, 'Sumber Pemasukan', 'master/sumberpemasukan', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 12:07:59', NULL, NULL),
(37, 2, 32, 'Sumber Pengeluaran', 'master/sumberpengeluaran', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 01:07:08', NULL, NULL),
(38, 3, 33, 'Pemasukan', 'register/pemasukan', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 01:07:40', NULL, NULL),
(39, 3, 34, 'Pengeluaran', 'register/pengeluaran', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 01:07:48', NULL, NULL),
(40, 4, 35, 'Laporan Pemasukan', 'laporan/pemasukan', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 03:07:59', NULL, NULL),
(41, 4, 36, 'Laporan Pengeluaran', 'laporan/pengeluaran', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 03:07:59', NULL, NULL),
(42, 4, 37, 'Laporan Saldo', 'laporan/saldo', 'far fa-circle nav-icon', 1, 'admin', '2022-07-03 04:07:17', 'admin', '2022-07-03 04:07:19'),
(43, 3, 1, 'Pengumuman', 'register/pengumuman', 'far fa-circle nav-icon', 1, 'admin', '2023-06-08 02:06:59', 'admin', '2023-06-08 03:06:15'),
(44, 4, 1, 'Laporan Pengumuman', 'laporan/pengumuman', 'far fa-circle nav-icon', 1, 'admin', '2023-06-08 03:06:40', NULL, NULL),
(45, 2, 5, 'Kalender Pendidikan', 'master/kalenderpendidikan', 'far fa-circle nav-icon', 1, 'admin', '2023-06-13 07:06:02', NULL, NULL),
(46, 3, 2, 'Calon Siswa', 'register/calonsiswa', 'far fa-circle nav-icon', 1, 'admin', '2023-06-14 04:06:56', NULL, NULL),
(47, 4, 2, 'Laporan Calon Siswa', 'laporan/calonsiswa', 'far fa-circle nav-icon', 1, 'admin', '2023-06-14 08:06:41', NULL, NULL),
(48, 2, 10, 'Mata Pelajaran', 'master/matapelajaran', 'far fa-circle nav-icon', 1, 'admin', '2023-07-08 05:07:21', NULL, NULL),
(49, 3, 30, 'Materi', 'register/materi', 'far fa-circle nav-icon', 1, 'admin', '2023-07-08 05:07:44', 'admin', '2023-07-08 05:07:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sumberpemasukan`
--

CREATE TABLE IF NOT EXISTS `sumberpemasukan` (
`id_sumberpemasukan` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_sumberpemasukan` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL DEFAULT 'System',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `sumberpemasukan`
--

INSERT INTO `sumberpemasukan` (`id_sumberpemasukan`, `urutan`, `nama_sumberpemasukan`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'BOS (Bantuan Operasional Sekolah)', 'admin', '2022-07-03 01:07:03', NULL, '2022-07-26 04:07:04'),
(2, 2, 'Iuran SPP', 'admin', '2022-07-03 01:07:03', NULL, NULL),
(3, 3, 'Sumbangan', 'admin', '2022-07-03 01:07:04', NULL, NULL),
(5, 5, 'BOP (Bantuan Operasional Pendidikan)', 'admin', '2022-07-26 04:07:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sumberpengeluaran`
--

CREATE TABLE IF NOT EXISTS `sumberpengeluaran` (
`id_sumberpengeluaran` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_sumberpengeluaran` varchar(100) NOT NULL,
  `user_input` varchar(50) NOT NULL DEFAULT 'System',
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `sumberpengeluaran`
--

INSERT INTO `sumberpengeluaran` (`id_sumberpengeluaran`, `urutan`, `nama_sumberpengeluaran`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(1, 1, 'Gaji Guru', 'admin', '2022-07-03 01:07:23', NULL, NULL),
(2, 2, 'Pemeliharaan Gedung', 'admin', '2022-07-03 01:07:23', NULL, NULL),
(4, 3, 'Pembelian ATK', 'admin', '2022-07-27 05:07:38', NULL, NULL),
(5, 4, 'Pembelian Alat Kebersihan', 'admin', '2022-07-27 05:07:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahunajaran`
--

CREATE TABLE IF NOT EXISTS `tahunajaran` (
`id_tahunajaran` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_tahunajaran` varchar(100) NOT NULL,
  `smester` int(1) NOT NULL DEFAULT '1',
  `aktif` int(1) NOT NULL DEFAULT '1',
  `user_input` varchar(50) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `user_ubah` varchar(50) DEFAULT NULL,
  `tgl_ubah` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tahunajaran`
--

INSERT INTO `tahunajaran` (`id_tahunajaran`, `urutan`, `nama_tahunajaran`, `smester`, `aktif`, `user_input`, `tgl_input`, `user_ubah`, `tgl_ubah`) VALUES
(3, 1, '2023/2024', 1, 1, 'admin', '2023-06-14 12:06:27', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
 ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `aksesmenu`
--
ALTER TABLE `aksesmenu`
 ADD PRIMARY KEY (`id_aksesmenu`);

--
-- Indexes for table `biayapendaftaran`
--
ALTER TABLE `biayapendaftaran`
 ADD PRIMARY KEY (`id_biayapendaftaran`);

--
-- Indexes for table `calonsiswa`
--
ALTER TABLE `calonsiswa`
 ADD PRIMARY KEY (`id_calonsiswa`);

--
-- Indexes for table `daftarnilai`
--
ALTER TABLE `daftarnilai`
 ADD PRIMARY KEY (`id_daftarnilai`);

--
-- Indexes for table `daftarsiswa`
--
ALTER TABLE `daftarsiswa`
 ADD PRIMARY KEY (`id_daftarsiswa`);

--
-- Indexes for table `detailkelassiswa`
--
ALTER TABLE `detailkelassiswa`
 ADD PRIMARY KEY (`id_detailkelassiswa`);

--
-- Indexes for table `golpangkat`
--
ALTER TABLE `golpangkat`
 ADD PRIMARY KEY (`id_golpangkat`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
 ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
 ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kalenderpendidikan`
--
ALTER TABLE `kalenderpendidikan`
 ADD PRIMARY KEY (`id_kalenderpendidikan`);

--
-- Indexes for table `kategoriortuwali`
--
ALTER TABLE `kategoriortuwali`
 ADD PRIMARY KEY (`id_kategoriortuwali`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelassiswa`
--
ALTER TABLE `kelassiswa`
 ADD PRIMARY KEY (`id_kelassiswa`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
 ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
 ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `ortuwali`
--
ALTER TABLE `ortuwali`
 ADD PRIMARY KEY (`id_ortuwali`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
 ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pejabat_ttd`
--
ALTER TABLE `pejabat_ttd`
 ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
 ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
 ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
 ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
 ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
 ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
 ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
 ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
 ADD PRIMARY KEY (`id_submenu`);

--
-- Indexes for table `sumberpemasukan`
--
ALTER TABLE `sumberpemasukan`
 ADD PRIMARY KEY (`id_sumberpemasukan`);

--
-- Indexes for table `sumberpengeluaran`
--
ALTER TABLE `sumberpengeluaran`
 ADD PRIMARY KEY (`id_sumberpengeluaran`);

--
-- Indexes for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
 ADD PRIMARY KEY (`id_tahunajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aksesmenu`
--
ALTER TABLE `aksesmenu`
MODIFY `id_aksesmenu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `biayapendaftaran`
--
ALTER TABLE `biayapendaftaran`
MODIFY `id_biayapendaftaran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calonsiswa`
--
ALTER TABLE `calonsiswa`
MODIFY `id_calonsiswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `daftarnilai`
--
ALTER TABLE `daftarnilai`
MODIFY `id_daftarnilai` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daftarsiswa`
--
ALTER TABLE `daftarsiswa`
MODIFY `id_daftarsiswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `detailkelassiswa`
--
ALTER TABLE `detailkelassiswa`
MODIFY `id_detailkelassiswa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `golpangkat`
--
ALTER TABLE `golpangkat`
MODIFY `id_golpangkat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kalenderpendidikan`
--
ALTER TABLE `kalenderpendidikan`
MODIFY `id_kalenderpendidikan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `kategoriortuwali`
--
ALTER TABLE `kategoriortuwali`
MODIFY `id_kategoriortuwali` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kelassiswa`
--
ALTER TABLE `kelassiswa`
MODIFY `id_kelassiswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ortuwali`
--
ALTER TABLE `ortuwali`
MODIFY `id_ortuwali` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pejabat_ttd`
--
ALTER TABLE `pejabat_ttd`
MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `sumberpemasukan`
--
ALTER TABLE `sumberpemasukan`
MODIFY `id_sumberpemasukan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sumberpengeluaran`
--
ALTER TABLE `sumberpengeluaran`
MODIFY `id_sumberpengeluaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
MODIFY `id_tahunajaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
