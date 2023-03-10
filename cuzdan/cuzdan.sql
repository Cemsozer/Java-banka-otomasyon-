-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Oca 2023, 13:04:12
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cuzdan`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `account`
--

INSERT INTO `account` (`id`, `acc_id`, `cust_id`, `acc_type`, `balance`) VALUES
(10, 'A0001', 'CS001', 'Saving', 9999);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `firstname`, `lastname`) VALUES
(15, 'CS001', 'cem', 'sözer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `deposit`
--

INSERT INTO `deposit` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `deposit`) VALUES
(1, 'A0001', 'CS001', '2019/02/05', 2977, 1000),
(2, 'A0001', 'CS001', '2019/02/05', -923, 1000),
(3, 'A0001', 'CS001', '2019/02/05', 77, 1000),
(4, 'A0001', 'CS001', '2019/02/05', 577, 1000),
(5, 'A0003', 'CS004', '2019/02/05', 2000, 4000),
(6, 'A0004', 'CS005', '2019/02/06', 3000, 2000),
(7, 'A0005', 'CS006', '2019/02/06', 5000, 3000),
(8, 'A0005', 'CS006', '2019/07/02', 3000, 1000),
(9, 'A0001', 'CS001', '2019/07/30', 2077, 1000),
(10, 'A0002', 'CS002', '2020/06/17', 12900, 1000),
(11, 'A0007', 'CS007', '2020/06/17', 8000, 3000),
(12, 'A0001', 'CS001', '2023/01/01', 99999, 10000),
(13, 'A0002', 'CS002', '2023/01/01', -113132, 999999);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `f_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `to_account`, `amount`) VALUES
(2, 'A0001', 'A0002', 500),
(5, 'A0001', 'A0002', 500),
(6, 'A0001', 'A0002', 400),
(7, 'A0001', 'A0002', 1000),
(8, 'A0003', 'A0002', 2000),
(9, 'A0004', 'A0003', 400),
(10, 'A0005', 'A0004', 1000),
(11, 'A0002', 'A0001', 1000),
(12, 'A0002', 'A0001', 1000),
(13, 'A0007', 'A0006', 1000),
(14, 'A0009', 'A0008', 999),
(15, 'A0001', 'A0002', 100000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'kobi', '123'),
(2, 'ram', '321'),
(3, 'John', 'John');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `withdraw`
--

INSERT INTO `withdraw` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `withdraw`) VALUES
(1, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(2, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(3, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(4, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(5, 'A0001', 'CS001', '2019/02/04', 5000, 233),
(6, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(7, 'A0001', 'CS001', '2019/02/04', 1000, 100),
(8, 'A0001', 'CS001', '2019/02/04', 1000, 400),
(9, 'A0001', 'CS001', '2019/02/04', 1000, 200),
(10, 'A0001', 'CS001', '2019/02/04', 1000, 200),
(11, 'A0001', 'CS001', '2019/02/04', 1000, 233),
(12, 'A0001', 'CS001', '2019/02/04', 1000, 233),
(13, 'A0001', 'CS001', '2019/02/04', 1000, 2),
(14, 'A0001', 'CS001', '2019/02/04', 1000, 223),
(15, 'A0001', 'CS001', '2019/02/04', 977, 233),
(16, 'A0001', 'CS001', '2019/02/04', 977, 233),
(17, 'A0001', 'CS001', '2019/02/04', 977, 1000),
(18, 'A0001', 'CS001', '2019/02/04', 1977, 1000),
(19, 'A0002', 'CS002', '2019/02/05', 13900, 1000),
(20, 'A0001', 'CS001', '2019/02/05', 1077, 500),
(21, 'A0003', 'CS004', '2019/02/05', 5000, 3000),
(22, 'A0004', 'CS005', '2019/02/06', 4000, 1000),
(23, 'A0005', 'CS006', '2019/02/06', 8000, 2000),
(24, 'A0001', 'CS001', '2019/02/10', 1577, 500),
(25, 'A0005', 'CS006', '2019/07/02', 5000, 2000),
(26, 'A0007', 'CS007', '2020/06/17', 10000, 2000),
(27, 'A0009', 'CS009', '2022/12/30', 100000, 768),
(28, 'A0009', 'CS009', '2022/12/30', 100000, 100),
(29, 'A0002', 'CS002', '2023/01/01', 99999, 313131);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
