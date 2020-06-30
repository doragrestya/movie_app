-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2020 pada 11.43
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_movie`
--

CREATE TABLE `tb_movie` (
  `id_movie` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_movie`
--

INSERT INTO `tb_movie` (`id_movie`, `judul`, `tanggal`, `deskripsi`, `gambar`) VALUES
(2, 'Bulan Terbelah di Langit Amerika 2', '2020-06-04', 'Dirilis pada 2015, film ini disutradarai Rizal Mantovani dan ditulis langsung Hanum Salsabiela Rais, Rangga Almahendra, Alim Sudio, dan Baskoro Adi. \r\n\r\nFilm yang berdurasi 100 menit ini mengisahkan tentang kelanjutan petualangan pasangan suami istri, Hanum dan Rangga dalam film 99 Cahaya di Langit Eropa. Dalam film Bulan Terbelah di Langit Amerika, pasangan ini bakal menguak tragedi penyerangan 9/11 dari perspektif masing-masing. Dikisahkan sebagai seorang jurnalis muslim yang bekerja di Wina.', 'bulan.jpg'),
(6, 'Ada Surga di rumahmu', '2020-06-04', 'Film ADA SURGA DI RUMAHMU juga menyimpan sebuah bumbu cinta dalam jalan ceritanya. Hal itu dapat dilihat dari perasaan Nayla yang ternyata memendam perasaan suka pada Ramadhan kecil. Di sisi lain, Abuya yang tak ingin membiarkan kelakuan nakal Ramadhan terpupuk begitu saja meminta sang anak untuk masuk pondok pesantren agar dapat dididik oleh adiknya, Ustad Athar. \r\n\r\nWalau sempat menolak, permintaan dari sang Umi rupanya mampu meluluhkan hati Ramadhan untuk masuk pondok pesantren. Namun, Ramadhan ternyata memendam keinginan untuk dapat tampil di televisi. Hal itulah yang ditentang oleh Umi dan Abuya. Namun, larangan tersebut tak menyurutkan niat Ramadhan untuk menjadi artis hingga sebuah kejadian tak terduga menimpa dirinya. Hidup Ramadhan dewasa (Husein Alatas) berubah saat ustadz Athar mengabarkan bahwa selama ini biaya belajar di pesantren dibayar Abuya dengan mendonorkan ginjal. Kenyataan ini sangat memukul Ramadhan. Ia pun bercita-cita untuk sukses sebagai ustadz. Dorongan dari Kirana (Zeezee Shahab) gadis yang dikenalnya di pesantren saat shooting film yang membuat jalan Ramadhan sebagai ustadz terbuka. Namun perkenalan dengan Kirana menyisakan rasa cemburu Nayla, teman masa kecilnya. Umi yang sakit-sakitan terpaksa harus dilarikan ke rumah sakit saat terjatuh dan muntah di pesta orang tua Kirana. Kejadian ini membuat Ramadhan semakin keras berusaha untuk membahagiakan Abuya yang kehilangan satu ginjalnya dan Umi yang stroke. Sanggupkah Ramadhan meraih cita-citanya? Lalu siapakah gadis yang dipilih Ramadhan? Drama penuh makna ini tentunya sangat menarik untuk ditonton. \r\n\r\nYap, ADA SURGA DI RUMAHMU akan siap menggebrak layar bioskop mulai tanggal 2 April 2015 nanti. Beneran deh, jangan sampai melewatkan aksi para bintang top tersebut. Dijamin rugi!', 'surga.jpg'),
(7, 'Ayat-ayat Cinta', '2020-06-02', 'Sebuah kisah cinta dengan latar belakang agama, terutama Islam, dalam kehidupan. Fahri bin Abdillah adalah pelajar Indonesia yang berusaha menggapai gelar masternya di Al-Azhar. Ia harus berkutat dengan berbagai macam impiannya dan kesederhanaan hidup di Mesir. Ia bertahan dengan menjadi penerjemah buku-buku agama. Semua impian dijalani Fahri dengan penuh antusias kecuali satu: menikah.\r\n\r\nFahri adalah laki-laki taat yang begitu lurus. Dia tidak mengenal pacaran sebelum menikah. Dia kurang artikulatif saat berhadapan dengan perempuan. Hanya ada sedikit perempuan yang dekat dengannya selama ini. Neneknya, Ibunya dan saudara perempuannya.\r\n\r\nPindah ke Mesir membuat hal itu berubah. Tersebutlah Maria Girgis. Tetangga satu flat yang beragama Kristen Koptik tetapi mengagumi Al-Qur\'an, dan mengagumi Fahri. Kekaguman yang berubah menjadi cinta. Sayang, cinta Maria hanya tercurah dalam diari saja.\r\n\r\nLalu ada Nurul. Anak seorang kyai terkenal yang juga mengeruk ilmu di Al-Azhar. Sebenarnya Fahri menaruh hati pada gadis manis ini. Sayang rasa mindernya yang hanya anak keturunan petani membuatnya tidak pernah menunjukkan rasa apa pun pada Nurul. Sementara Nurul pun menjadi ragu dan selalu menebak-nebak.\r\n\r\nSetelah itu ada Noura, juga tetangga yang selalu disiksa Ayahnya sendiri. Fahri berempati penuh dengan Noura dan ingin menolongnya. Sayang hanya empati saja. Tidak lebih. Namun Noura yang mengharap lebih. Dan nantinya ini menjadi masalah besar ketika Noura menuduh Fahri memperkosanya.\r\n\r\nTerakhir muncullah Aisha. Si mata indah yang menyihir Fahri. Sejak sebuah kejadian di metro, saat Fahri membela Islam dari tuduhan kolot dan kaku, Aisha jatuh cinta pada Fahri. Dan Fahri juga tidak bisa membohongi hatinya.', 'aac.jpg'),
(8, 'Hijab', '2020-06-03', 'Kecuali Anin; Bia, Tata dan Sari adalah perempuan bersuami dan berjilbab dengan style yang berbeda-beda. Bia yang desainer dan bersuamikan artis pilihan-pilihannya sendiri.\r\n\r\nSuatu hari, saat arisan bersama, Gamal (suami Sari) menyindir dengan kalimat: \'semua arisan ibu-ibu sebenarnya arisan suami, karena duitnya dari Suami\'. Tata terusik. Kemudian mengajak sahabatnya untuk menggugat ucapan Gamal dengan cara kembali menjadi perempuan mandiri seperti saat mereka masih lajang. Tidak disangka, Sari menyambut dengan antusias. Bia, Tata dan Anin jadi semangat. Akhirnya secara diam-diam mereka bekerja dengan memulai bisnis fashion HIJAB secara online. Bia desainernya, Sari yang mengelola keuangan, Tata dan Anin marketingnya.\r\n\r\nDalam 3 bulan bisnis ini meroket karena keuletan mereka. Disamping itu, fashion HIJAB juga sedang menjadi trend di Indonesia. Mereka telah berhasil membuktikan bahwa mereka bukan tipe perempuan ikut suami. Mereka akhirnya mandiri. Bahkan penghasilan mereka melebihi suami. Tanpa disadari para suami merasa gengsi dan terancam sehingga menyebabkan keretakan rumah tangga.\r\n', 'hijab.jpg'),
(9, 'Ajari Aku Islam', '2020-06-02', 'Ajari Aku Islam adalah sebuah film religi Indonesia 2019 yang berdasarkan pada kisah nyata Jaymes Rianto, yang juga menjadi produsernya. Film tersebut mengambil beberapa lokasi syuting di Kota Medan, diantaranya Masjid Raya Al Mashun, Istana Maimoon, Bundaran Majestik dan Kota Tua Kesawan.', 'aai.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD PRIMARY KEY (`id_movie`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_movie`
--
ALTER TABLE `tb_movie`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
