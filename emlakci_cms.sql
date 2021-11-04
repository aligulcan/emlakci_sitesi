-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Haz 2021, 20:59:36
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `emlakci_cms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `area` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `numberOfRooms` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `advertisement`
--

INSERT INTO `advertisement` (`id`, `url`, `title`, `description`, `city_id`, `address`, `price`, `area`, `numberOfRooms`, `isActive`, `createdAt`, `rank`) VALUES
(45, 'yatirimlik-sifir-daire', 'Yatırımlık Sıfır daire', '																<p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">MÜKEMMEL LOKASYONDA PRİM GARANTİLİ DAİRELER</strong></p><p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">*METROBÜSE*</strong></p><p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">*METROYA*</strong></p><p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">*ALIŞVERİŞ MERKEZİNE*</strong></p><p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">*ORTA OKUL VE LİSEYE*</strong></p><p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">*E5’E VE OTOBÜS DURAKLARINA *</strong></p><p style=\"box-sizing: inherit; font-family: Roboto; font-stretch: normal; line-height: 1.5; color: rgb(100, 112, 124);\"><strong style=\"box-sizing: inherit;\">*5-15DK YÜRÜME MESAFESİNDE *</strong></p>																', 1, 'YENİMAHALLE   DEMETEVLER   ESKİ 12 CADDE ÜZERİ  HASTANE MERTOSUNA YÜRÜME 2dK', 230000, '130', '3+1', 1, '2021-06-14 14:31:09', 1),
(51, 'demetevler-mah--gez-al-dan-emlak-metro-yani-bagimsiz-salon--asansorlu-satilik', 'DEMETEVLER MAH. GEZ-AL\'DAN EMLAK METRO YANI-BAĞIMSIZ SALON--ASANSÖRLÜ SATILIK', '<p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><br></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">3+1</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">2. KAT</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">ASANSÖRLÜ</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">BAĞIMSIZ SALON</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">İSKANLI</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: x-large;\">135 m2<span fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">&nbsp;</span>KULLANIM ALANLI</span><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; outline: none; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; outline: none; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; outline: none; line-height: normal; font-size: x-large;\">YAPILI BÜYÜK MUTFAK&nbsp;</span></b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></p><div fr-original-style=\"color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255); text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: x-large;\">LAMİNAT PARKE</span></b></div><div fr-original-style=\"color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255); text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: x-large;\">DUŞA KABİN&nbsp;</span></b></div><div fr-original-style=\"color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255); text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat; line-height: normal;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; background: 0px 0px no-repeat; line-height: normal;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">&nbsp;BALKON</b></p></div><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: x-large;\">&nbsp;PVC DOĞRAMA</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">MOBİLYA İÇ KAPILAR</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">VESTİYER</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: x-large;\">LAMİNANT PARKE</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal; color: rgb(255, 0, 0); font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; color: rgb(255, 0, 0); font-size: x-large;\">&nbsp;ASANSÖR</b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: x-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: x-large;\">&nbsp;&nbsp;</span></b><span fr-original-style=\"line-height: normal; color: rgb(128, 0, 128); font-size: xx-large;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; color: rgb(128, 0, 128); font-size: xx-large;\">0505-347-95-90</span></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: 13.5pt; color: red;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: 13.5pt; color: red;\">GÜLER YÜZLÜ–KALİTELİ-HİZMET ODAKLI &nbsp;ANLAYIŞIMIZLA SİZLERİ OFİSİMİZE BEKLİYORUZ.</span></b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"color: rgb(0, 32, 96);\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 32, 96);\"><em fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\">PORTFÖYÜMÜZDEKİ DİĞER GENİŞ DAİRE VE ARSA SEÇENEKLERİ İÇİN BİZİ ARAYABİLİR VE WEB SAYFAMIZI ZİYARET EDEBİLİRSİNİZ...</em></span></b><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"line-height: normal; font-size: 13.5pt; color: rgb(31, 73, 125);\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: 13.5pt; color: rgb(31, 73, 125);\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"><em fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\">PAZAR GÜNLERİ 12:00 19:00 ARASI HİZMET VERMEKTEYİZ</em></span></b></p><p fr-original-style=\"margin: 0px; padding: 0px 0px 10px; background: 0px 0px no-repeat rgb(255, 255, 255); line-height: normal; color: rgb(0, 0, 0); font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\" style=\"padding: 0px 0px 10px; box-sizing: inherit; color: rgb(0, 0, 0); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal; font-family: &quot;Lucida Grande&quot;, LucidaGrande, Arial, sans-serif; text-align: center;\"><b fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"><em fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"><b fr-original-style=\"line-height: normal; color: rgb(0, 0, 0); font-size: large; background-color: rgb(255, 255, 255);\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal; font-size: large;\"><span fr-original-style=\"line-height: normal;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; line-height: normal;\">&nbsp;</span>&nbsp;ADRES: İVEDİK CADDESİ NO : 506 DEMETEVLER - &nbsp;GEZ-AL GEYRİMENKUL</b></span></em></span></b></p>', 2, 'YENİMAHALLE   DEMETEVLER   ESKİ 12 CADDE ÜZERİ  HASTANE MERTOSUNA YÜRÜME 2dK', 355000, '135', '3+1', 1, '2021-06-21 16:33:22', NULL),
(52, 'odullu-konsept-prestijli-yasam------katta-premium-5-1-daireler--', 'ÖDÜLLÜ KONSEPT PRESTİJLİ YAŞAM...!! KATTA PREMİUM 5+1 DAİRELER..', '<h1 data-v-34306426=\"\" class=\"fontRB\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Roboto, sans-serif; font-weight: 700; color: rgb(67, 67, 67); font-size: 24px; line-height: 34px; width: 629.344px; font-variant-ligatures: none;\"><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">ç ve dış yaşam alanlarında, aradığınız ‘KONFOR’u bulabileceğiniz şekilde tasarlandı.</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">İÇ ÖZELLİKLER</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">5+1 Çift banyolu daireler</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">ÇİFT GİYİNME ODALI DAİRELER BAY BAYAN AYRI</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Her blokta tam otomatik 3 adet asansör (biri sedye asansörü)</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Geniş ve kullanışlı ADA mutfak</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Duvar kağıdı uygulaması</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Manzaraya hakim geniş teras balkon</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">70`lik seri ahşap görünümlü pvc doğrama</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Kılıflı boru kalorifer tesisatı uygulaması</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Özel ısı ve ses yalıtımı</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Deprem yönetmenliğine uygun betonarme</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Paratoner sistemi</span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\"><br fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"></span></span></div><div fr-original-style=\"text-align: center;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; color: rgb(0, 0, 0); font-size: 14px; font-weight: 400; text-align: center;\"><span fr-original-style=\"font-size: 24px;\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-size: 24px;\"><span fr-original-style=\"\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-weight: 700;\">Tüm sigorta aksamı siemens</span></span></div></h1>', 2, ' KEÇİOREN // OVACIK MAH.', 875000, '293', '5+1', 1, '2021-06-21 16:36:32', NULL),
(53, 'kaya-gayrm-den-satilik-imarli-g-bahce-yaka-da-1470m2-arsa', 'KAYA GAYRM.DEN SATILIK IMARLI G.BAHCE YAKA DA 1470M2 ARSA', '<p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-variant-ligatures: none;\">1470 M2 %60 IMARLI ARSA SATILIKTIR. 18 UYGULAMA KAPSAMINDA OLUP 6 PARSEL UYGULAMAYA GIRMEKTE OLUP KOLAY BIR ISLEM OLMAKTADIR. UYGUN FIYATLI ARSAMIZ SATILIKTIR.UYGULAMA SONRASI 75 M2LIK 3 ADET VILLA YAPILABILIR.</span><br></p>', 2, 'İZMİR GÜZELBAHÇE YAKA MAHALLESINDE VILLALAR ÖNÜ ', 1850000, '1.470', '-', 1, '2021-06-21 16:39:04', NULL),
(55, 'dasdasdsadas', 'dasdasdsadas', '<p>asdasdasdsa</p>', 4, 'adres', 25, '25', '3+1', 1, '2021-06-22 17:50:31', NULL),
(56, 'dasdas', 'dasdas', '<p>asdasdasdas</p>', 5, '21312', 21321, '23', '3', 1, '2021-06-22 18:11:41', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `advertisement_img`
--

CREATE TABLE `advertisement_img` (
  `id` int(11) NOT NULL,
  `advertisement_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `advertisement_img`
--

INSERT INTO `advertisement_img` (`id`, `advertisement_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(83, 46, '62899-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 0, '2021-06-14 14:33:24'),
(84, 46, '64976-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 1, '2021-06-14 14:33:24'),
(85, 46, '94407-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 0, '2021-06-14 14:33:24'),
(86, 46, '99602-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 0, '2021-06-14 14:33:24'),
(87, 46, '19354-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 0, '2021-06-14 14:33:24'),
(88, 46, '31308-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 0, '2021-06-14 14:33:24'),
(89, 46, '48740-erenkoyde-katta-tek-ebeveyn-banyolu-balkonlu-3-1-satilik-daire.jpg', 0, 1, 0, '2021-06-14 14:33:24'),
(90, 45, '799bad5a3b514f096e69bbc4a7896cd99649091.jpg', 1, 1, 0, '2021-06-14 14:38:51'),
(91, 45, '23644-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 7, 1, 0, '2021-06-14 14:38:51'),
(92, 45, '27948-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 9, 1, 0, '2021-06-14 14:38:51'),
(93, 45, '36599-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 8, 1, 0, '2021-06-14 14:38:51'),
(95, 45, '42689-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 6, 1, 0, '2021-06-14 14:38:51'),
(96, 45, '45208-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 5, 1, 0, '2021-06-14 14:38:51'),
(97, 45, '52219-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 4, 1, 0, '2021-06-14 14:38:51'),
(98, 45, '82477-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 3, 1, 1, '2021-06-14 14:38:51'),
(99, 45, '97049-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 2, 1, 0, '2021-06-14 14:38:51'),
(100, 45, '99736-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:38:51'),
(101, 45, '88332-omerpasa-caddesinde-genis-ve-ferah-120-m2-net-satilik-3-1-daire.jpg', 10, 1, 0, '2021-06-14 14:38:51'),
(102, 47, '18095-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 1, '2021-06-14 14:42:32'),
(103, 47, '21162-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(104, 47, '24474-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(105, 47, '25824-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(106, 47, '35681-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(107, 47, '38943-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(108, 47, '43117-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(109, 47, '43304-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(110, 47, '58443-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(111, 47, '63893-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(112, 47, '73479-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(113, 47, '79184-sahrayiceditte-firsat-108m2-net-masrafsiz-3-1-daire.jpg', 0, 1, 0, '2021-06-14 14:42:32'),
(114, 48, '22548-.jpg', 4, 1, 0, '2021-06-14 14:44:49'),
(115, 48, '15956-.jpg', 10, 1, 0, '2021-06-14 14:44:49'),
(116, 48, '32264-.jpg', 9, 1, 0, '2021-06-14 14:44:49'),
(117, 48, '35512-.jpg', 8, 1, 1, '2021-06-14 14:44:49'),
(119, 48, '44194-.jpg', 7, 1, 0, '2021-06-14 14:44:49'),
(120, 48, '48693-.jpg', 5, 1, 0, '2021-06-14 14:44:49'),
(121, 48, '48947-.jpg', 3, 0, 0, '2021-06-14 14:44:49'),
(122, 48, '62707-.jpg', 6, 1, 0, '2021-06-14 14:44:49'),
(123, 48, '68517-.jpg', 2, 0, 0, '2021-06-14 14:44:49'),
(124, 48, '70650-.jpg', 1, 0, 0, '2021-06-14 14:44:50'),
(125, 48, '75246-.jpg', 11, 1, 0, '2021-06-14 14:44:50'),
(126, 45, 'galatasaray-fc-4-star-logo-f405398910-seeklogo-com.png', 0, 1, 0, '2021-06-16 16:06:55'),
(127, 51, '6a1f647b-effe-4d95-a9d9-e589e2f80ba3.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(128, 51, '4c439118-0c03-4b49-8aeb-ba258c8e00ff.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(129, 51, '6ecd2e2f-26fe-4bdc-abe8-eb703ada6a37.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(130, 51, '85f19268-b523-4b4b-b310-c6932bc89cf7.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(131, 51, '146b3c99-6f23-4fe9-937e-dd53faee42be.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(132, 51, '17019df2-fded-430b-9780-c5a2cee79099.jpg', 0, 1, 1, '2021-06-21 16:34:43'),
(133, 51, 'b0209333-b78b-44e0-8dd9-844e81806630.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(134, 51, 'bea711b1-cf25-463d-b189-f453e0db6bf2.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(135, 51, 'c5166919-cf6e-414f-aadf-8fa4808ef790.jpg', 0, 1, 0, '2021-06-21 16:34:43'),
(136, 53, 'x5-901851498ox6.jpg', 0, 1, 0, '2021-06-21 16:40:37'),
(137, 53, '926626968t11.jpg', 0, 1, 0, '2021-06-21 16:40:37'),
(138, 53, 'x5-926626968g17.jpg', 0, 1, 1, '2021-06-21 16:40:37'),
(139, 53, 'x5-901851498033.jpg', 0, 1, 0, '2021-06-21 16:40:37'),
(140, 53, '4-60153dd2135cd.jpg', 0, 1, 0, '2021-06-21 16:40:37'),
(141, 53, '5-60153dd920740-530-393.jpg', 0, 1, 0, '2021-06-21 16:40:37'),
(142, 52, '65547-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:00'),
(143, 52, '54017-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:00'),
(144, 52, '84298-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:00'),
(145, 52, '98142-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:00'),
(146, 52, '44478-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:00'),
(147, 52, '22657-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler--1-.jpg', 0, 1, 0, '2021-06-21 16:42:00'),
(148, 52, '24498-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:01'),
(149, 52, '36566-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 1, '2021-06-21 16:42:01'),
(150, 52, '54014-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-21 16:42:01'),
(151, 46, '17019df2-fded-430b-9780-c5a2cee790991.jpg', 0, 1, 0, '2021-06-22 17:38:42'),
(152, 55, '78cdc959-63cf-461e-9841-9e59054415de.jpg', 0, 1, 1, '2021-06-22 17:51:01'),
(153, 55, '5d80991e-6ffc-46ca-ab85-cd3ab58283e6.jpg', 0, 1, 0, '2021-06-22 17:51:01'),
(154, 55, 'a549c6d4-141e-4997-952b-aceccb0e223e.jpg', 0, 1, 0, '2021-06-22 17:51:01'),
(155, 48, '6ecd2e2f-26fe-4bdc-abe8-eb703ada6a371.jpg', 0, 1, 0, '2021-06-22 18:11:15'),
(156, 56, '4c439118-0c03-4b49-8aeb-ba258c8e00ff1.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(157, 56, '6a1f647b-effe-4d95-a9d9-e589e2f80ba31.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(158, 56, '6ecd2e2f-26fe-4bdc-abe8-eb703ada6a372.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(159, 56, '85f19268-b523-4b4b-b310-c6932bc89cf71.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(160, 56, '146b3c99-6f23-4fe9-937e-dd53faee42be1.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(161, 56, '17019df2-fded-430b-9780-c5a2cee790992.jpg', 0, 1, 1, '2021-06-22 18:12:04'),
(162, 56, '22657-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(163, 56, '72144-odullu-konsept-prestijli-yasam-katta-premium-5-1-daireler.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(164, 56, 'b0209333-b78b-44e0-8dd9-844e818066301.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(165, 56, 'bea711b1-cf25-463d-b189-f453e0db6bf21.jpg', 0, 1, 0, '2021-06-22 18:12:04'),
(166, 56, 'c5166919-cf6e-414f-aadf-8fa4808ef7901.jpg', 0, 1, 0, '2021-06-22 18:12:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `message` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL,
  `advertisement_id` int(11) DEFAULT NULL,
  `read_status` tinyint(4) NOT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `full_name`, `tel`, `message`, `advertisement_id`, `read_status`, `createdAt`) VALUES
(22, 'Ali Gülcan', '05446086765', 'Merhaba İMYO Emlak,  sahrayiceditteki emlak için yazıyorum. Yüzyüze konuşarak daha detaylı bilgi almdaskjdsajdasdsakdsajdkasjdksajdkasjdkasjdkasjkdawjkdawjkdwajkdawjdkawjkdawjkadwjdaw', 47, 0, '2021-06-19'),
(23, 'ahmet dursun', '0555 555 55 55', 'selam ilan hakkında bilgi almak istiyorum beni arar mısınız ?  ', 47, 0, '2021-06-19'),
(24, 'ali gülcan', 'deneme ', 'deneme ', 48, 0, '2021-06-21'),
(27, 'deneme123', '05446086765', 'deneme mesajıdır bu ', 51, 0, '2021-06-22'),
(28, 'ilan bilgi deneme', '05555555555', 'merhaba bilgi almak istiyorum ', 51, 0, '2021-06-22'),
(29, 'asdasdasd', '05555555555', 'deneme mesaj ', 51, 0, '2021-06-22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehir`
--

CREATE TABLE `sehir` (
  `sehir_id` int(2) NOT NULL,
  `sehir_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sehir_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sehir`
--

INSERT INTO `sehir` (`sehir_id`, `sehir_title`, `sehir_key`) VALUES
(1, 'İSTANBUL', 34),
(2, 'ANKARA', 6),
(3, 'İZMİR', 35),
(4, 'BURSA', 16),
(5, 'ADANA', 1),
(6, 'ADIYAMAN', 2),
(7, 'AFYONKARAHİSAR', 3),
(8, 'AĞRI', 4),
(9, 'AKSARAY', 68),
(10, 'AMASYA', 5),
(11, 'ANTALYA', 7),
(12, 'ARDAHAN', 75),
(13, 'ARTVİN', 8),
(14, 'AYDIN', 9),
(15, 'BALIKESİR', 10),
(16, 'BARTIN', 74),
(17, 'BATMAN', 72),
(18, 'BAYBURT', 69),
(19, 'BİLECİK', 11),
(20, 'BİNGÖL', 12),
(21, 'BİTLİS', 13),
(22, 'BOLU', 14),
(23, 'BURDUR', 15),
(24, 'ÇANAKKALE', 17),
(25, 'ÇANKIRI', 18),
(26, 'ÇORUM', 19),
(27, 'DENİZLİ', 20),
(28, 'DİYARBAKIR', 21),
(29, 'KOCAELİ', 41),
(30, 'KONYA', 42),
(31, 'KÜTAHYA', 43),
(32, 'MALATYA', 44),
(33, 'MANİSA', 45),
(34, 'MARDİN', 47),
(35, 'MERSİN', 33),
(36, 'MUĞLA', 48),
(37, 'MUŞ', 49),
(38, 'NEVŞEHİR', 50),
(39, 'NİĞDE', 51),
(40, 'ORDU', 52),
(41, 'OSMANİYE', 80),
(42, 'RİZE', 53),
(43, 'SAKARYA', 54),
(44, 'SAMSUN', 55),
(45, 'SİİRT', 56),
(46, 'SİNOP', 57),
(47, 'ŞIRNAK', 73),
(48, 'SİVAS', 58),
(49, 'TEKİRDAĞ', 59),
(50, 'TOKAT', 60),
(51, 'TRABZON', 61),
(52, 'TUNCELİ', 62),
(53, 'ŞANLIURFA', 63),
(54, 'UŞAK', 64),
(55, 'VAN', 65),
(56, 'YALOVA', 77),
(57, 'YOZGAT', 66),
(58, 'ZONGULDAK', 67),
(59, 'DÜZCE', 81),
(60, 'EDİRNE', 22),
(61, 'ELAZIĞ', 23),
(62, 'ERZİNCAN', 24),
(63, 'ERZURUM', 25),
(64, 'ESKİŞEHİR', 26),
(65, 'GAZİANTEP', 27),
(66, 'GİRESUN', 28),
(67, 'GÜMÜŞHANE', 29),
(68, 'HAKKARİ', 30),
(69, 'HATAY', 31),
(70, 'IĞDIR', 76),
(71, 'ISPARTA', 32),
(72, 'KAHRAMANMARAŞ', 46),
(73, 'KARABÜK', 78),
(74, 'KARAMAN', 70),
(75, 'KARS', 36),
(76, 'KASTAMONU', 37),
(77, 'KAYSERİ', 38),
(78, 'KİLİS', 79),
(79, 'KIRIKKALE', 71),
(80, 'KIRKLARELİ', 39),
(81, 'KIRŞEHİR', 40);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `isActive`, `createdAt`) VALUES
(4, 'deneme', 'deneme', 'deneme1@deneme.com', 'b37f1948e62781eed7006c98a6dc3a0e', 1, '2021-06-13 15:45:21'),
(6, 'aligulcan', 'Ali Gülcan', 'aligulcan99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-06-21 15:41:27');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `advertisement_img`
--
ALTER TABLE `advertisement_img`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sehir`
--
ALTER TABLE `sehir`
  ADD PRIMARY KEY (`sehir_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tablo için AUTO_INCREMENT değeri `advertisement_img`
--
ALTER TABLE `advertisement_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `sehir`
--
ALTER TABLE `sehir`
  MODIFY `sehir_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
