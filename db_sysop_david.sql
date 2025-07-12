-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2025 at 10:53 PM
-- Server version: 8.4.3
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sysop_david`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rfc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usuario` enum('administrador','empleado','ventas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `telefono`, `correo`, `password`, `fecha_nacimiento`, `rfc`, `tipo_usuario`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Jameson Lehner lopez', '5552786770', 'arvilla.wolff@example.org', '$2y$12$RqNsbw9uWZ7fdbb9e6OKoOZran0BQ00.KX1XryGfliY.h6uYeemIW', '1993-10-11', 'TWPB444404', 'empleado', 0, '2025-07-11 21:56:02', '2025-07-12 04:10:51'),
(2, 'Monica Kerluke', '5557393161', 'rpacocha@example.org', '$2y$12$0sCGUQTnvxQuGrtPhPM4o.uOkASJV0HrbRXXnaDPjharqH3Wr8zHq', '1989-06-24', 'ALEW831515', 'ventas', 1, '2025-07-11 21:56:03', '2025-07-11 21:56:03'),
(3, 'Margarette DuBuque', '5581181335', 'ron64@example.net', '$2y$12$P30dbN.tG8C8lz2Yz56MI.QKpv/6qm.N0VDdQxF2PN0dTAPYzkJFi', '2001-07-19', 'WMLL377071', 'ventas', 1, '2025-07-11 21:56:03', '2025-07-11 21:56:03'),
(4, 'Magnus Gusikowski', '5590970133', 'eharvey@example.org', '$2y$12$35hcoXRdNXZ8VGoVcY2ZgObf9AA0eeKfA9Nxhq6ER3KQU0QcTLfj2', '2000-11-24', 'FDFM022312', 'administrador', 1, '2025-07-11 21:56:03', '2025-07-11 21:56:03'),
(5, 'Prof. Janiya Mohr Jr.', '5509235905', 'theresa.pfannerstill@example.com', '$2y$12$M3mqBjH04xBa0nMJoT7NruT8XMhGBugFFttlWbFRvNDzV6aiBCeA2', '1979-06-03', 'EHBR118973', 'administrador', 1, '2025-07-11 21:56:03', '2025-07-11 21:56:03'),
(6, 'Polly Zboncak', '5587029755', 'ntoy@example.com', '$2y$12$4EfrKEfBgWQSPnmMvfiPpOt7G9pZX.ogkg3AbdqjJ0XdI8/GKb.4m', '1983-05-11', 'FOER831659', 'ventas', 1, '2025-07-11 21:56:04', '2025-07-11 21:56:04'),
(7, 'Cheyenne Littel I', '5556978974', 'kirlin.carol@example.net', '$2y$12$W0co3uJDQUS/HtGQQM0owuqtWYQWVLarINlimdXlna.m8.zXGXVhm', '2004-05-27', 'BBHO405592', 'ventas', 1, '2025-07-11 21:56:04', '2025-07-11 21:56:04'),
(8, 'Dylan Gibson', '5586509602', 'jules63@example.com', '$2y$12$4FymgoPvfgw8elf0qcbA4OuIjWXQSk7RJW0HM70iRDnv8tw0TocQu', '1972-07-28', 'XTKI783037', 'empleado', 1, '2025-07-11 21:56:04', '2025-07-11 21:56:04'),
(9, 'Mr. Wilburn Hammes V', '5594878108', 'carolyn.glover@example.net', '$2y$12$H3anbV4wWdaXYZYPbzHmx.4NeyZGLTL/eUG/ZuOvQHW2ftORD.gJy', '1970-06-05', 'CTCF743368', 'empleado', 1, '2025-07-11 21:56:04', '2025-07-11 21:56:04'),
(10, 'Johnathan O\'Keefe', '5529087247', 'rahul.von@example.com', '$2y$12$qUYSmNEGRd/SjYCE4AXSFO3.kcLhH.AOlcw1OBCdf8XtHjDnbACf2', '1995-03-09', 'BEQN615923', 'administrador', 1, '2025-07-11 21:56:05', '2025-07-11 21:56:05'),
(11, 'Judson Nader DVM', '5543688024', 'lharris@example.org', '$2y$12$3aiV5xjyk7mherKNTT2tMuzNxmkgVk457ICJNJV0AnA5x1UmBoj2G', '1977-06-16', 'VHZT860103', 'empleado', 0, '2025-07-11 21:56:05', '2025-07-11 21:56:05'),
(12, 'Gladys Purdy', '5562063772', 'chester.mcglynn@example.net', '$2y$12$8.OJ0g/MfQyzwHkZM2gf6.p1Z4Cnja5zMVIy7ENVhWlAIVNX/ISFe', '1996-11-07', 'SLRC355048', 'empleado', 1, '2025-07-11 21:56:05', '2025-07-11 21:56:05'),
(13, 'Coby Huel', '5505621375', 'jenifer.schumm@example.net', '$2y$12$yJE7eDE47LSM/cPcjmZ6xO9WT/scm/.brXS9qmhllewbl9IQisJYS', '1990-09-22', 'JLBF518575', 'administrador', 1, '2025-07-11 21:56:05', '2025-07-11 21:56:05'),
(14, 'Libbie Mueller', '5531428046', 'kub.syble@example.org', '$2y$12$MYOb0tWzlNUqML6l4yQmruX.uUQWWdw4YkQJSmeUD.3lsI8azUXHC', '1979-08-16', 'PUDZ665806', 'empleado', 0, '2025-07-11 21:56:06', '2025-07-12 01:10:12'),
(15, 'Calista Langosh', '5579912738', 'blanda.wilfredo@example.com', '$2y$12$HnXf1KhLQZRG64ibg6jU7.Aqwh5SGsfJMgcTCgYcn7cGgaQ1qvxBG', '1970-12-20', 'YWMV966965', 'administrador', 1, '2025-07-11 21:56:06', '2025-07-11 21:56:06'),
(16, 'Karley Marks IV', '5592991999', 'anderson.eliza@example.net', '$2y$12$VFVxB9Yb0fblFNgkpJXZ3O8TbASCL721Lhzg9yW2kXTa5JWX7AWrS', '1996-05-07', 'DWCY659052', 'ventas', 0, '2025-07-11 21:56:06', '2025-07-11 21:56:06'),
(17, 'Mrs. Nyasia Pfannerstill', '5573079566', 'bortiz@example.org', '$2y$12$CHtfTldOSM8BWqC/ct6z7uzxjS/ap4Masri6OGdMAuPc2oZfFwdLm', '1971-07-30', 'IZGU930835', 'ventas', 1, '2025-07-11 21:56:06', '2025-07-11 21:56:06'),
(18, 'Lela Ritchie', '5523333145', 'nglover@example.com', '$2y$12$36J360ojQi2Sd70r87zY4eUFz7LqFN7DgKjhfXFGsZaW8e8YXBVoS', '1974-03-21', 'GMKH445892', 'empleado', 1, '2025-07-11 21:56:07', '2025-07-11 21:56:07'),
(19, 'Kane Raynor IV', '5589072085', 'mcorwin@example.com', '$2y$12$1L7MasrCM2xORXu8gjVlseGZW2CN3AjKq6L4q4gTEU5luv8dfD0J2', '1981-11-25', 'NKYT231329', 'ventas', 0, '2025-07-11 21:56:07', '2025-07-11 21:56:07'),
(20, 'Otha Powlowski', '5587840933', 'edgar.bartell@example.com', '$2y$12$6a6IG9lLnuq/ulAGArjxnuri/iNa5Z90bCWcKryWO6WNSC47rqd4K', '1993-06-04', 'AMMW624456', 'empleado', 1, '2025-07-11 21:56:07', '2025-07-11 21:56:07'),
(21, 'Nelda O\'Kon V', '5590514859', 'sauer.joy@example.org', '$2y$12$tW.VN/mM2zDQSIp2X27oB.cFspEd.DssLvq2ZYynWG7F9G7r4GrSO', '1997-09-04', 'KKDN286289', 'ventas', 1, '2025-07-11 21:56:07', '2025-07-11 21:56:07'),
(22, 'Holden O\'Connell', '5539576182', 'deckow.kailyn@example.org', '$2y$12$lNPk7OCc/3rN/.y.26TOp.5WH3J8TrpFG7yD58FL.CfB0BC.IjcQO', '1977-11-07', 'BOZO171594', 'ventas', 1, '2025-07-11 21:56:08', '2025-07-11 21:56:08'),
(23, 'Willow Heidenreich IV', '5504649035', 'zrath@example.com', '$2y$12$XeUjLdgIAgl5NcnYAARde.wSvvQYaD3kyHcpbodLwEhb.sr3tADa6', '1979-10-05', 'NQED857206', 'empleado', 1, '2025-07-11 21:56:08', '2025-07-11 21:56:08'),
(24, 'Albertha Considine', '5572266212', 'rebecca.jacobi@example.com', '$2y$12$xdsZD5cz.ipCuW8P8Y7x0eCBH8B.zUTW5ANn7TYeMrxaWtnPOl0Ee', '1976-02-05', 'JFFT975720', 'empleado', 1, '2025-07-11 21:56:08', '2025-07-11 21:56:08'),
(25, 'Prof. Nona Rolfson IV', '5576760086', 'ethyl.gutkowski@example.net', '$2y$12$K0VCR8WZuCxtsqL3khO92.Mlo0nCWO7CpezY/.A7Ob32awoa3AANO', '1997-10-28', 'JNNP026555', 'administrador', 1, '2025-07-11 21:56:08', '2025-07-11 21:56:08'),
(26, 'Aryanna Reynolds', '5572231938', 'leola83@example.net', '$2y$12$Gn9YrHMMOjVYSRvC8pMgcukZR4IhvTj222iPvhdC0/alQ/RUK.G.6', '1985-01-30', 'ETQZ433178', 'empleado', 1, '2025-07-11 21:56:09', '2025-07-11 21:56:09'),
(27, 'Shirley Schaefer', '5571945885', 'lou.thompson@example.org', '$2y$12$91Fwmvp60wfYX3yBoLdgJuGAaklpdOFCGYcU7eeoCLO9vIRDNTQja', '1981-03-23', 'WGOB868325', 'administrador', 1, '2025-07-11 21:56:09', '2025-07-11 21:56:09'),
(28, 'Prof. Pat Jaskolski', '5576026457', 'pbednar@example.com', '$2y$12$XncJBp.JHdAAvgF.SzdxG.YTX25OywVB6w0Fb6S3Lcn0dmPfwE5de', '1970-11-27', 'RTVU318053', 'ventas', 1, '2025-07-11 21:56:09', '2025-07-11 21:56:09'),
(29, 'Anabelle Zulauf DVM', '5510349944', 'halie.kreiger@example.net', '$2y$12$5lMOVW4I5uB0U8XjY2q2Mez8AieRiXunNbIeuo3T1dyxkiTJIemsa', '1989-06-07', 'GYQE378246', 'administrador', 1, '2025-07-11 21:56:09', '2025-07-11 21:56:09'),
(30, 'Dr. Aniyah Hilpert IV', '5522631189', 'frogahn@example.org', '$2y$12$QAJOeY6z9p/Kj413SAAo0u.ONvuxGPVmTx8XVm8x3wjW7I.vKeEpe', '1970-05-15', 'OUSC654417', 'empleado', 1, '2025-07-11 21:56:10', '2025-07-11 21:56:10'),
(31, 'Rosella Cronin', '5528024769', 'alberta14@example.com', '$2y$12$w5TUesmfaYc0vigce.SP/uwFCvMTteqmS/ck5m8yx6feW/whXqauW', '1971-02-04', 'KEJL888644', 'empleado', 1, '2025-07-11 21:56:10', '2025-07-11 21:56:10'),
(32, 'Constance Crist', '5526049809', 'alanna90@example.com', '$2y$12$EMQFUk6NizR.orVd7kFfRehrF6K2UaBOhQ.bBdcbgmq6eVfQlFUxS', '1973-04-12', 'XHVH959711', 'administrador', 1, '2025-07-11 21:56:10', '2025-07-11 21:56:10'),
(33, 'Prof. Woodrow O\'Hara MD', '5554249962', 'skylar.ruecker@example.net', '$2y$12$F57dsnzr6hJ2dizn5e7xbeTX93L81gBDKOa25a4qZMzII1NH/mhGa', '1973-10-21', 'BQAO988650', 'administrador', 1, '2025-07-11 21:56:10', '2025-07-11 21:56:10'),
(34, 'Mrs. Avis Anderson I', '5592394218', 'barry45@example.org', '$2y$12$hJj3hhttirAmrxCJx4E46u.oWS5vUX/XSRFVd4tFCjpem7tLALCGm', '1985-05-14', 'WJEF314298', 'empleado', 1, '2025-07-11 21:56:11', '2025-07-11 21:56:11'),
(35, 'Prof. Felicita Kohler', '5580995765', 'cfeil@example.net', '$2y$12$Md49K/bf/KRgvgWg.JCzouxaLwJvYJLdgCg5U7ku49lGFsWgr0Qm2', '1984-05-01', 'ARML085236', 'administrador', 0, '2025-07-11 21:56:11', '2025-07-11 21:56:11'),
(36, 'Prof. Estefania O\'Keefe', '5501503551', 'gritchie@example.net', '$2y$12$NoCpiDs8FByZCNWYGa1fAeQGMKmpVp0nwH6eyK1Dljnw/E.3rn1lu', '1998-10-26', 'ZTER867832', 'ventas', 1, '2025-07-11 21:56:11', '2025-07-11 21:56:11'),
(37, 'Lorna Boyle', '5527832481', 'annette.gaylord@example.com', '$2y$12$d0UfN7SwCBAV7iF6j1UUpuou8OUjh9UqdZHILD/Ecwq1S8uvh9oLm', '1977-07-03', 'USFE614033', 'ventas', 1, '2025-07-11 21:56:11', '2025-07-11 21:56:11'),
(38, 'Frankie Rippin III', '5551903027', 'schaden.camren@example.org', '$2y$12$9VGnk9UPYAYzEvyW6BJK2OatmaYoA9mpVq.1biVohHegGwDX/bN2O', '2000-10-11', 'WBSM720377', 'administrador', 1, '2025-07-11 21:56:12', '2025-07-11 21:56:12'),
(39, 'Mrs. Leslie Rau IV', '5514812981', 'olga.stamm@example.net', '$2y$12$crIgvHWnQYo.TnFUD.VY3OeKOxZ5mSiqhp1QLeFKWtC6ScouhTviG', '1984-08-01', 'NKON753459', 'ventas', 1, '2025-07-11 21:56:12', '2025-07-11 21:56:12'),
(40, 'Mrs. Willa Schimmel DDS', '5556074512', 'wyost@example.net', '$2y$12$KZWyOVNvQiznZtYKEdsHCuVhKICf/2G8krLckQ4N4zwmgxqmRBOMy', '1971-11-10', 'CFLV042417', 'administrador', 0, '2025-07-11 21:56:12', '2025-07-11 21:56:12'),
(41, 'Nicole Nitzsche', '5582767531', 'ankunding.eriberto@example.com', '$2y$12$q/Lq8qd0oPrAv1pDtqwY0.Upg/HhZe05H1HUuc4jIgFv61TsL92US', '1974-09-22', 'SPIA371642', 'administrador', 1, '2025-07-11 21:56:12', '2025-07-11 21:56:12'),
(42, 'Luther Kerluke', '5572506043', 'shea.considine@example.org', '$2y$12$ySFQrutIb3HGRTVqqlCz.ugWjyoVLBrCCpuXJwSYd1pDj7aVqwYqe', '1993-04-25', 'ZGAZ599952', 'administrador', 1, '2025-07-11 21:56:13', '2025-07-11 21:56:13'),
(43, 'Prof. Israel Willms DVM', '5528670976', 'vgoldner@example.com', '$2y$12$Op0adQZFC2ELmmGvzZb/a.YoTGQZIN01eKfe2uBTy680Ye0tyJ2Hm', '2003-12-11', 'UWYQ966965', 'empleado', 1, '2025-07-11 21:56:13', '2025-07-11 21:56:13'),
(44, 'Karl Hahn', '5546263623', 'rlockman@example.net', '$2y$12$F/M3k6WwS5V85t/NPTPxWuFRh399IAFELBd9XuU/UtsbrqQvoScR.', '1974-04-11', 'GLEV231849', 'ventas', 1, '2025-07-11 21:56:13', '2025-07-11 21:56:13'),
(45, 'Ms. Gladyce Windler', '5581963195', 'emerald54@example.net', '$2y$12$Fd.XC/ouKOBrWg8LEbFeW.Wid3vKkr0pAqeR2kYYjntX1vJ61ttJ2', '1978-12-28', 'AHUV784263', 'empleado', 1, '2025-07-11 21:56:13', '2025-07-11 21:56:13'),
(46, 'Creola Boyle', '5522340897', 'hollie89@example.org', '$2y$12$39PoFBhace2k6pMd9WB5k.gzcWvxunTY1CR/bCvM0HRAHOwkBlG2u', '1984-03-16', 'NOPW256403', 'empleado', 1, '2025-07-11 21:56:14', '2025-07-11 21:56:14'),
(47, 'Carol Pacocha', '5516235924', 'gust27@example.net', '$2y$12$Doyc2tWAl6uVLsKmDXWu7eCYJYeAYx7A5emOKe9n.aJQHa9kw1fj2', '1994-06-22', 'OMGT640672', 'administrador', 1, '2025-07-11 21:56:14', '2025-07-11 21:56:14'),
(48, 'Hallie Keebler', '5587048397', 'borer.karson@example.org', '$2y$12$yDgyjXP8swoW90bGnnC3G.lpmMriPKhYobyJbaeNnPrSJZQcaa9Si', '1999-03-30', 'NKMQ997355', 'ventas', 1, '2025-07-11 21:56:14', '2025-07-11 21:56:14'),
(49, 'Mr. Deontae Blick DDS', '5507576323', 'celine.oberbrunner@example.org', '$2y$12$ECS83Yfxaqc.aqfQofHzjOC6A/sIL.FJG4XjrUJGlb9dZA86yBye2', '1988-11-21', 'ZADV392592', 'administrador', 1, '2025-07-11 21:56:14', '2025-07-11 21:56:14'),
(50, 'Chauncey Metz', '5530611153', 'thowe@example.com', '$2y$12$WgQJuzaMoVQoJZ/MX5rjXe1YZSlVSsfNCAGolIlOZlLC2R7fRXjzG', '1989-02-17', 'FLTI395461', 'administrador', 1, '2025-07-11 21:56:15', '2025-07-11 21:56:15'),
(51, 'Zoe Donnelly III', '5517029513', 'bobbie.cummings@example.org', '$2y$12$P81igZFAp4a6WvO1/4tM8udLY50M4j/PtyHLgTCR/ZKFVmlnt4Ex2', '1986-07-06', 'OWIB320960', 'ventas', 1, '2025-07-11 21:56:15', '2025-07-11 21:56:15'),
(52, 'Bridie Maggio MD', '5515582272', 'grimes.boris@example.com', '$2y$12$0ipLJrcK8.tyVVaMN.W0w.3mfzCTrH.sptdZys5w8fC.jbeBcyLJu', '1991-05-14', 'XWGL055128', 'ventas', 1, '2025-07-11 21:56:15', '2025-07-11 21:56:15'),
(53, 'Dr. Keyshawn Kshlerin I', '5571166751', 'prince.gusikowski@example.org', '$2y$12$skKYkF.n1EHIdulFMEfcEuJ858VyQIO6neFv9mKKf.7y2t3/zyrqO', '1979-11-07', 'ALYL614021', 'ventas', 1, '2025-07-11 21:56:15', '2025-07-11 21:56:15'),
(54, 'Jaylan Kunde', '5502846439', 'leonardo.vandervort@example.com', '$2y$12$Bqv1.AVQnDiZUQ8ml71Qp.RSCjfP.LhHAgPSuQa.0Kq1Xx/3MfBg6', '1991-03-26', 'DHXJ337048', 'ventas', 1, '2025-07-11 21:56:15', '2025-07-11 21:56:15'),
(55, 'Ms. Adrienne Schuppe DDS', '5527316159', 'bartoletti.kavon@example.com', '$2y$12$rXkCgwEYPXoaDUl0Asq3DOT6iIywpMmsCHv6RNpAM/PICwdKakLOO', '1995-08-27', 'SEPT743727', 'ventas', 1, '2025-07-11 21:56:16', '2025-07-11 21:56:16'),
(56, 'Dr. Braxton Rowe V', '5541019284', 'lehner.antone@example.com', '$2y$12$LWSMYVG6zQaHvRceSa8douDXep4asPJBTy3YBRHVnAOVeUogloSky', '1987-03-07', 'OEPF191668', 'empleado', 1, '2025-07-11 21:56:16', '2025-07-11 21:56:16'),
(57, 'Dr. Candido White II', '5548535163', 'otilia.murphy@example.org', '$2y$12$WGIt2Wm/PuaPH3tQhepKAOFBQExff7SrCAyucxhS0ePpMhAX3bbYi', '1986-11-22', 'YCQC147920', 'ventas', 1, '2025-07-11 21:56:16', '2025-07-11 21:56:16'),
(58, 'Derick Blick', '5568215156', 'pwelch@example.com', '$2y$12$9n8uq4DjXcPPx1feByLE7.fGCyONtZZ03fp3fVm2KAIH.xsLA1QpG', '1993-04-17', 'YEBA461208', 'empleado', 1, '2025-07-11 21:56:16', '2025-07-11 21:56:16'),
(59, 'Tracy Sawayn', '5568209975', 'angus.grady@example.com', '$2y$12$Q/Re.17Z5m2G7KtAsfw34upFlUS9bN/8P4PTk/JX8.0shnVXOZFYO', '1989-12-15', 'PJKI138443', 'administrador', 1, '2025-07-11 21:56:17', '2025-07-11 21:56:17'),
(60, 'Dr. Uriel Shanahan Sr.', '5514019676', 'zaria.collins@example.net', '$2y$12$0grljdWWCR/ccjPeKcVtMOBIGxFSPu6PNziMA2UOdqxJgODaSkKYa', '1988-06-15', 'AZLM214497', 'ventas', 1, '2025-07-11 21:56:17', '2025-07-11 21:56:17'),
(61, 'Elvera Dooley', '5514657297', 'cprohaska@example.net', '$2y$12$ou6dSTMO/3kB7yhyblty/.jcpn/XZviiFdiVuBxpEwBMLtEuGDI.a', '1992-11-21', 'YKBX001224', 'empleado', 1, '2025-07-11 21:56:17', '2025-07-11 21:56:17'),
(62, 'Timothy Klocko', '5508667416', 'dstracke@example.org', '$2y$12$i5vcIVpwS6ww6J75sDRXTuT7WB1.dme1lq1PyVtQBFNE2cLXYUjkO', '1979-10-12', 'IWWK016281', 'empleado', 1, '2025-07-11 21:56:17', '2025-07-11 21:56:17'),
(63, 'Ashley Mosciski', '5572843110', 'remmerich@example.com', '$2y$12$LeVdhOalDPBjuvrvnLSVMuV/G7OGSooySd3yiPYfM5aWX/4YFOMh2', '1979-10-04', 'AYOO201744', 'administrador', 1, '2025-07-11 21:56:18', '2025-07-11 21:56:18'),
(64, 'Hattie Turner', '5534629336', 'sswaniawski@example.com', '$2y$12$l8yGe.SgQEgr8NpLfAk7.ekrxakx5cejFCCcOeFtDo8ab0EteEOWK', '1993-05-02', 'KKJL628446', 'empleado', 0, '2025-07-11 21:56:18', '2025-07-11 21:56:18'),
(65, 'Anabelle Nolan', '5549517710', 'audie.price@example.org', '$2y$12$jMFS8sVas8VUxHBwg1hUI.N9amsthfBDMQTG60Mxsd1Sx4nkkKYuu', '1992-10-26', 'JGNQ057800', 'administrador', 1, '2025-07-11 21:56:18', '2025-07-11 21:56:18'),
(66, 'Martin Heller', '5510127075', 'jack.beer@example.org', '$2y$12$Soni/hI0QIwjJ5pUcIW7weWEkkuW54bZL4TbQnDOuB0qJZZvF5cey', '1977-05-02', 'FPLX975884', 'administrador', 1, '2025-07-11 21:56:18', '2025-07-11 21:56:18'),
(67, 'Jerrod O\'Kon', '5516220343', 'presley.rice@example.com', '$2y$12$35LKBwgdCVIMVRK/n1Yj4OmzyXO6DHrL4KOAG8s4dK4UeWxErFiQi', '1999-04-17', 'PJFN495088', 'ventas', 1, '2025-07-11 21:56:19', '2025-07-11 21:56:19'),
(68, 'Efren Kerluke', '5522951153', 'torrance81@example.com', '$2y$12$UBCnNkTfBOkJe.cDrqiGAOGTKStW3lFTLoyc9w3mh5NvBfq54WKw2', '1970-03-06', 'FJQO959483', 'empleado', 1, '2025-07-11 21:56:19', '2025-07-11 21:56:19'),
(69, 'Wilfredo Bogisich', '5501274596', 'qlarkin@example.com', '$2y$12$qgzofxmAR/u1/XcKaGTnkOs3XI4xGBpGEZjNW2WkTKS2CQC0W.yW2', '1996-05-31', 'QGKR917210', 'empleado', 0, '2025-07-11 21:56:19', '2025-07-11 21:56:19'),
(70, 'Ceasar Mayert', '5511362264', 'uconn@example.com', '$2y$12$dixYuxDD31r4Nsrf2e50IOqjiirE.R//cIqM/sbLMajF3kiukxE8G', '1996-07-18', 'MWAK867190', 'empleado', 1, '2025-07-11 21:56:19', '2025-07-11 21:56:19'),
(71, 'Neoma Tillman', '5561255427', 'goldner.maurice@example.org', '$2y$12$yeLfIXlDFxPTUT5Z3/6cdewIHxLa9rjauUZJuiaqy34c0Q0i7MD/q', '1978-10-15', 'QBCM639948', 'administrador', 1, '2025-07-11 21:56:19', '2025-07-11 21:56:19'),
(72, 'Prof. Madisen Nikolaus V', '5586389463', 'xwiza@example.com', '$2y$12$7lZet8aJHGdHgLqDEq62Du/F/Qdg6BHFPPOFYwD/GJcsOjf8AVjNu', '2000-05-10', 'YRGM823809', 'ventas', 1, '2025-07-11 21:56:20', '2025-07-11 21:56:20'),
(73, 'Eloy Predovic DVM', '5537138997', 'nathan95@example.net', '$2y$12$4Us7zVkG9yCh9/mxUgMDbudgr9CdCj5IF7.KFYmN.WRI40ET1PRTG', '1982-05-12', 'MGTV300775', 'administrador', 1, '2025-07-11 21:56:20', '2025-07-11 21:56:20'),
(74, 'Zander Ondricka MD', '5580653478', 'oparker@example.com', '$2y$12$rFbeAisi/He5BQEnZ/5Seu.7ppEbgKAfmEPv6jRBzNdmW/zeTCp8S', '2001-03-19', 'LVYE518593', 'empleado', 1, '2025-07-11 21:56:20', '2025-07-11 21:56:20'),
(75, 'Elwin Toy', '5558425500', 'bartell.mitchell@example.net', '$2y$12$rm6b/2455B.woIbIomokqO35pXZARbaDxz/S1NCtYpooaR6NuuY56', '1974-11-09', 'QMUV862880', 'ventas', 1, '2025-07-11 21:56:20', '2025-07-11 21:56:20'),
(76, 'Prof. Giuseppe Beatty III', '5511698596', 'orlando.rempel@example.com', '$2y$12$OIG./dFYhX/ofZ9oIaFhiOpRM2MOl9Wwp4QiwKTiyxEKd0STNAD2m', '1974-11-17', 'MVCK780086', 'empleado', 1, '2025-07-11 21:56:21', '2025-07-11 21:56:21'),
(77, 'Tillman Hayes', '5526163863', 'romaguera.martina@example.com', '$2y$12$2.1kwi5vKuG/2kVPSUZ0Lu1La1tYgh3OBuYnHRhtgvRx1ihfFifVe', '1970-08-23', 'THWF248571', 'ventas', 1, '2025-07-11 21:56:21', '2025-07-11 21:56:21'),
(78, 'Kyle Nolan', '5573533059', 'kub.dorris@example.com', '$2y$12$8i/apoUmOKW0mNcqzwySW.SelRbVgPO6MASyiIhty9LzxT3wylYOK', '1989-03-14', 'OAQB082798', 'ventas', 1, '2025-07-11 21:56:21', '2025-07-11 21:56:21'),
(79, 'Stone Howell', '5589110280', 'dicki.brody@example.com', '$2y$12$Uw45SCk6PNhG5TSuD2DX/e4pRRLeplmu9DWQfXUd7B.M2qp3Vl1a6', '1975-07-25', 'UQFA254379', 'administrador', 1, '2025-07-11 21:56:21', '2025-07-11 21:56:21'),
(80, 'Dr. Randy Shanahan DVM', '5558640153', 'nwisozk@example.com', '$2y$12$nwxZuURsCkaNW5AX9HyKvuiC/tpu4yfd4CL5cT512WPczPuI13vqK', '1983-08-13', 'LKTO066880', 'empleado', 1, '2025-07-11 21:56:22', '2025-07-11 21:56:22'),
(81, 'Oda Turner', '5575976141', 'hyatt.verla@example.org', '$2y$12$U6rjn7Q0hxNNnr.G7J1xZOZ5sdZ8JK.2BHFLibfiS/eFJGtFwee2S', '1973-02-27', 'IFPN563293', 'empleado', 1, '2025-07-11 21:56:22', '2025-07-11 21:56:22'),
(82, 'Brannon Wolff', '5507026333', 'ethan.dubuque@example.org', '$2y$12$yr0euRPb/vINTGnUMvj1dOgMLJ7RYCBpCKTXx0PDUwxQkQHPBQS7e', '2004-10-08', 'PRAL867940', 'empleado', 1, '2025-07-11 21:56:22', '2025-07-11 21:56:22'),
(83, 'Ms. Andreanne Eichmann IV', '5545809771', 'gabe55@example.org', '$2y$12$NWtnHDh5DhSy6DqIOThroejWOALbhmwLBo6WlrbgCTRCUFpPxPLKC', '2004-11-29', 'SAHQ236272', 'ventas', 1, '2025-07-11 21:56:22', '2025-07-11 21:56:22'),
(84, 'Prof. Lucio Langworth III', '5524437379', 'bmorar@example.org', '$2y$12$JzZdpvTfmB7rESBHHi79.eREpk.Q6qqAgFtkXJoaWeZBwuGOO3Vxu', '1975-12-13', 'LUQS154635', 'administrador', 1, '2025-07-11 21:56:23', '2025-07-11 21:56:23'),
(85, 'Dr. Xavier Thompson IV', '5571040951', 'nicolas.anabelle@example.com', '$2y$12$MpXHHEIg8K1R04UfY1uXG.cp99rpLejEhJXuhXWRL6f6ivMU4xy0K', '1988-05-08', 'LVJJ580447', 'empleado', 0, '2025-07-11 21:56:23', '2025-07-11 21:56:23'),
(86, 'Hildegard Dicki', '5512174037', 'cayla.emmerich@example.org', '$2y$12$O9dn8UbMwe6895sUBi1c5.CC.IMkOjRAVrEb8425OqQE7n2fu.C8a', '2003-06-16', 'LDOK639638', 'empleado', 1, '2025-07-11 21:56:23', '2025-07-11 21:56:23'),
(87, 'Peggie Boyer', '5597997955', 'josiane.mayert@example.net', '$2y$12$SxCEBzsDByDR//0B2S.vDeIZXDy0dVEHanI.q.nEv75szegOgFwNS', '1981-01-08', 'RFGR904759', 'administrador', 1, '2025-07-11 21:56:23', '2025-07-11 21:56:23'),
(88, 'Dr. Oswald Pfannerstill II', '5558419683', 'cole.leonor@example.org', '$2y$12$ip9FbR8wPyGpsp9JuAsdSOGWjMY1qcBpnGaD9IlY2Af/BDBiRE5.m', '1971-05-20', 'ERBR117892', 'ventas', 1, '2025-07-11 21:56:24', '2025-07-11 21:56:24'),
(89, 'Jameson Von', '5535222229', 'uconroy@example.net', '$2y$12$i0lHRkeVrQnLIZO9llBXnuCKrp2b9Dd56QZ6ZGrrxmSMP8nvbxx4m', '2001-02-20', 'RTXY088358', 'empleado', 1, '2025-07-11 21:56:24', '2025-07-11 21:56:24'),
(90, 'Alysa Rowe', '5586885913', 'kayden.hauck@example.net', '$2y$12$GZlQLa.UFbtW90n5Dt8IgO0BAYM4ZA9JP2LLEIuaFYnTQaXb8CzVu', '1978-07-20', 'LKVR528728', 'ventas', 1, '2025-07-11 21:56:24', '2025-07-11 21:56:24'),
(91, 'Miss Ruthie Beier', '5541937394', 'annalise.emard@example.com', '$2y$12$77trXr2180KmPrflQL65HeIuQaN7kn0BzaCc43/49kLmlYOEKe.qO', '1990-04-09', 'YUTA654881', 'empleado', 1, '2025-07-11 21:56:24', '2025-07-11 21:56:24'),
(92, 'Bette Powlowski III', '5517460941', 'fschmidt@example.net', '$2y$12$MNUrV3.fVp0xIDc4JdaCueBBk2MTxhUnUj8xvZ/xvC6BNTS6musyS', '1983-08-26', 'RAAK470655', 'administrador', 1, '2025-07-11 21:56:24', '2025-07-11 21:56:24'),
(93, 'Sylvester Tremblay', '5587763835', 'zbrown@example.org', '$2y$12$/QEmYiaeiQAs6/ZvISyEi.yJfncuR1hV8zqHXPzk42C2ws1xZJJzS', '1975-10-01', 'SUMU712716', 'ventas', 1, '2025-07-11 21:56:25', '2025-07-11 21:56:25'),
(94, 'Julius Monahan', '5554352986', 'xhilpert@example.net', '$2y$12$8KgFC.v9txd3aKTqe0uWAeIVCZ4.YsriU9MhouufFq1dH7P0Ezs0S', '1995-09-06', 'JWHS658464', 'empleado', 1, '2025-07-11 21:56:25', '2025-07-11 21:56:25'),
(95, 'Herminio Rowe III', '5510664233', 'hodkiewicz.kacey@example.com', '$2y$12$KKX/igQSrtwqnGv1azDXZu68LqG2jEPHbXp9gprbBAm.GmdEwpFXe', '1988-04-17', 'EMFZ244554', 'empleado', 1, '2025-07-11 21:56:25', '2025-07-11 21:56:25'),
(96, 'Desmond Ullrich', '5505005053', 'ledner.minerva@example.net', '$2y$12$7ffkIfZ7FlTnROyUJ2y7eeHM3l4GUllX.o4ZNFOK1jvz5TybKFOSO', '1995-12-15', 'DHPJ499769', 'empleado', 1, '2025-07-11 21:56:25', '2025-07-11 21:56:25'),
(97, 'Brisa Kunde', '5522647630', 'isaias.torphy@example.net', '$2y$12$Q8KuSwJG1J8zu3D.D0iUROS/A62Fci3HTCs9/VKX9/BN2z1rOTe46', '1971-10-24', 'PPKI317309', 'empleado', 1, '2025-07-11 21:56:26', '2025-07-11 21:56:26'),
(98, 'Malika Hills', '5555427800', 'jonas97@example.org', '$2y$12$ae/9hIB3JQ7fyDBSP0AEyu1zE7Tr9UwHoNu8SZwkdK0FH7dA38YzC', '1971-05-05', 'FCPY645042', 'administrador', 1, '2025-07-11 21:56:26', '2025-07-11 21:56:26'),
(99, 'Evans Kassulke', '5520424611', 'lesch.mason@example.org', '$2y$12$CrAF1QB/mg53ba93byAde.byadTJv6GspSOhRjVHS9maaBXODoNaW', '1974-09-02', 'BYVU235949', 'administrador', 1, '2025-07-11 21:56:26', '2025-07-11 21:56:26'),
(100, 'Della Wilderman', '5550564969', 'xmccullough@example.com', '$2y$12$KS/FMVzlQcdWt3Q62WDT6OsYpu/fzNCzVFuKO.uFohpdJ4dyKAHfm', '1997-12-22', 'SKNR740586', 'ventas', 1, '2025-07-11 21:56:26', '2025-07-11 21:56:26'),
(101, 'Admin Principal', '5588990011', 'admin@example.com', '$2y$12$T02yVu6grdGsEwSgmB2AVeNG6X5Nph4VkWkkXD71UipW0x/NacJp2', '1990-01-01', 'ADMP900101XXX', 'administrador', 1, '2025-07-11 16:03:34', '2025-07-11 16:03:34'),
(103, 'Admin Principal', '5551234567', 'admin1@example.com', '$2y$12$E6.J/fNUammt/5t7GsfTqeddot7v00PtAG6lW3e60/vkW9QnrfiVK', '1990-01-01', 'ADMIN900101', 'administrador', 1, '2025-07-11 16:30:06', '2025-07-11 16:30:06'),
(104, 'Admin Ejemplo', '5555555555', 'admin2@example.com', '$2y$10$jK1ZFYc0S34gO6QDsHjYYOdQweo5Te8c3mF4SmrX09YX4UvCKYJ7K', '1990-01-01', 'XXXX900101ABC', 'administrador', 1, '2025-07-11 17:09:45', '2025-07-11 17:09:45'),
(106, 'Admin', '5551234567', 'admin3@example.com', '$2y$12$PoRMrxrn0DTauNnpeWbyvOwMkDPzTGeDybQGUpncwvTMyYYQnONDm', '1990-01-01', 'XAXX010101000', 'administrador', 1, '2025-07-11 17:23:01', '2025-07-11 17:23:01'),
(107, 'David Berumen', '4371002636', 'dberumen@gmail.com', '$2y$12$0YESUDgJAudL/gfOUxiHOORAWyNk1e0.Lne7/WwEmWPOoDGcwkImC', '1992-02-20', 'TWPB443404', 'administrador', 0, '2025-07-12 01:23:51', '2025-07-12 01:24:08'),
(108, 'Jameson g lopez', '45678765', 'admin4@example.com', '$2y$12$C8mk3.bAGA8YU3313osIreoMncaQQhJmVtlaEVyv9J3iwX8S.YECW', '1999-02-21', 'TWPB943404', 'empleado', 1, '2025-07-12 04:47:24', '2025-07-12 04:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_10_045819_create_empleados_table', 1),
(5, '2025_07_10_160400_add_two_factor_columns_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-07-11 21:26:12', '$2y$12$TQxcVUkPgK6DMuRe32FeQuQsU79mW44M6ac7GaAUx4MS3EugCgO1G', NULL, NULL, NULL, 'T9zZhsUT3p', '2025-07-11 21:26:13', '2025-07-11 21:26:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empleados_correo_unique` (`correo`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
