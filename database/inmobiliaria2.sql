-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-05-2020 a las 13:28:58
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

DROP TABLE IF EXISTS `inmuebles`;
CREATE TABLE IF NOT EXISTS `inmuebles` (
  `referencia` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `operacion` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `superficie` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `precio` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_venta` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendedor` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`referencia`, `tipo`, `operacion`, `provincia`, `superficie`, `precio`, `fecha_venta`, `vendedor`, `imagen`, `created_at`, `updated_at`) VALUES
(2, 'Oficina', 'Venta', 'Lleida', '177', '842343', '10/03/05', 'Marta', './app/images/1588524039_1-Te-flipan-los-duplex-1960x1100.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(3, 'Industrial', 'Venta', 'soria', '150', '115000', NULL, NULL, './app/images/1588524046_a_fill (1).jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(4, 'Parking', 'Venta', 'cordoba', '25', '10000', NULL, NULL, './app/images/1588524092_254862296_1.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(5, 'Casa', 'Alquiler', 'laspalmas', '1400', '2500000', NULL, NULL, './app/images/1588439827_a_fill (1).jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(6, 'Industrial', 'Alquiler', 'Girona', '131', '953156', '05/09/04', 'Pedro', './app/images/6.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(7, 'Parking', 'Alquiler', 'Tarragona', '69', '406686', '07/06/04', 'Pedro', './app/images/7.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(8, 'Oficina', 'Venta', 'Girona', '235', '2158475', '31/10/04', 'Juan', './app/images/8.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(9, 'Piso', 'Alquiler', 'Lleida', '108', '1024380', '28/12/04', 'Juan', './app/images/9.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(10, 'Parking', 'Venta', 'Lleida', '299', '2042768', '06/10/04', 'Antonio', './app/images/10.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(11, 'Oficina', 'Alquiler', 'Girona', '124', '627068', '28/10/04', 'Pedro', './app/images/11.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(12, 'Industrial', 'Venta', 'Girona', '187', '999328', '05/04/04', 'Carmen', './app/images/12.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(13, 'Parking', 'Venta', 'Barcelona', '300', '2937300', '04/11/04', 'Juan', './app/images/13.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(14, 'Local', 'Venta', 'Tarragona', '68', '664700', '01/10/04', 'Carmen', './app/images/14.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(15, 'Industrial', 'Alquiler', 'Girona', '176', '820336', '29/11/04', 'Pedro', './app/images/15.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(16, 'Casa', 'Alquiler', 'Girona', '179', '937960', '21/11/04', 'Carmen', './app/images/16.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(17, 'Casa', 'Alquiler', 'Tarragona', '58', '358846', '08/10/04', 'Luisa', './app/images/17.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(18, 'Suelo', 'Venta', 'Barcelona', '283', '1679605', '06/06/04', 'Carmen', './app/images/18.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(19, 'Piso', 'Alquiler', 'Girona', '55', '472615', '09/04/04', 'Luisa', './app/images/19.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(20, 'Oficina', 'Alquiler', 'Barcelona', '148', '1169496', '19/08/04', 'Marta', './app/images/20.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(21, 'Industrial', 'Venta', 'Barcelona', '228', '2020992', '12/06/04', 'Carmen', './app/images/21.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(22, 'Oficina', 'Alquiler', 'Lleida', '116', '727552', '14/04/04', 'Pedro', './app/images/22.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(23, 'Casa', 'Alquiler', 'Girona', '183', '1438929', '21/04/04', 'Luisa', './app/images/23.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(24, 'Oficina', 'Alquiler', 'Tarragona', '79', '427390', '01/12/04', 'Antonio', './app/images/24.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(25, 'Oficina', 'Alquiler', 'Barcelona', '124', '1170684', '23/05/04', 'Juan', './app/images/25.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(26, 'Local', 'Alquiler', 'Tarragona', '70', '549780', '22/06/04', 'Juan', './app/images/26.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(27, 'Local', 'Alquiler', 'Tarragona', '70', '659330', '23/12/04', 'Pedro', './app/images/27.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(28, 'Casa', 'Alquiler', 'Barcelona', '187', '1660560', '16/06/04', 'Antonio', './app/images/28.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(29, 'Casa', 'Alquiler', 'Tarragona', '91', '753571', '07/07/04', 'Luisa', './app/images/29.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(30, 'Local', 'Alquiler', 'Tarragona', '201', '939072', '04/08/04', 'Carmen', './app/images/30.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(31, 'Industrial', 'Alquiler', 'Barcelona', '142', '1405374', '24/09/04', 'Juan', './app/images/31.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(32, 'Casa', 'Alquiler', 'Girona', '92', '627348', '12/04/04', 'Marta', './app/images/32.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(33, 'Local', 'Alquiler', 'Barcelona', '181', '1504110', '03/07/04', 'Marta', './app/images/33.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(34, 'Casa', 'Venta', 'Barcelona', '281', '2483197', '01/11/04', 'Marta', './app/images/34.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(35, 'Industrial', 'Alquiler', 'Tarragona', '257', '1799771', '31/12/04', 'Luisa', './app/images/35.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(36, 'Industrial', 'Alquiler', 'Tarragona', '140', '1054340', '02/12/04', 'Luisa', './app/images/36.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(37, 'Local', 'Venta', 'Girona', '229', '1160572', '09/07/04', 'Pedro', './app/images/37.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(38, 'Suelo', 'Alquiler', 'Tarragona', '300', '1492800', '08/12/04', 'Antonio', './app/images/38.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(39, 'Parking', 'Alquiler', 'Tarragona', '215', '1154980', '14/01/05', 'Antonio', './app/images/39.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(41, 'Piso', 'Venta', 'Barcelona', '230', '1421860', '23/09/04', 'Juan', './app/images/41.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(42, 'Oficina', 'Venta', 'Tarragona', '168', '1426992', '20/11/04', 'Juan', './app/images/42.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(43, 'Oficina', 'Alquiler', 'Girona', '74', '579716', '22/09/04', 'Marta', './app/images/43.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(44, 'Casa', 'Venta', 'Girona', '278', '1537062', '16/12/04', 'Marta', './app/images/44.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(45, 'Oficina', 'Alquiler', 'Barcelona', '287', '2851058', '02/01/05', 'Antonio', './app/images/45.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(46, 'Oficina', 'Alquiler', 'Lleida', '224', '1294048', '29/10/04', 'Carmen', './app/images/46.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(47, 'Piso', 'Alquiler', 'Barcelona', '53', '249418', '11/08/04', 'Luisa', './app/images/47.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(48, 'Industrial', 'Venta', 'Barcelona', '284', '1457488', '06/07/04', 'Juan', './app/images/48.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(49, 'Local', 'Venta', 'Girona', '40', '321680', '11/01/05', 'Juan', './app/images/49.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(50, 'Local', 'Alquiler', 'Tarragona', '235', '957625', '13/11/04', 'Carmen', './app/images/50.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(51, 'Industrial', 'Venta', 'Lleida', '90', '568620', '14/12/04', 'Antonio', './app/images/51.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(52, 'Local', 'Alquiler', 'Lleida', '206', '1605564', '26/09/04', 'Marta', './app/images/52.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(53, 'Suelo', 'Alquiler', 'Tarragona', '158', '1438748', '17/10/04', 'Carmen', './app/images/53.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(54, 'Suelo', 'Alquiler', 'Barcelona', '71', '686996', '30/05/04', 'Luisa', './app/images/54.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(55, 'Local', 'Venta', 'Girona', '127', '983234', '09/07/04', 'Carmen', './app/images/55.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(56, 'Piso', 'Venta', 'Lleida', '54', '239220', '01/05/04', 'Marta', './app/images/56.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(57, 'Oficina', 'Alquiler', 'Lleida', '54', '512730', '04/07/04', 'Carmen', './app/images/57.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(58, 'Local', 'Alquiler', 'Girona', '274', '2287626', '21/12/04', 'Marta', './app/images/58.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(59, 'Industrial', 'Venta', 'Tarragona', '166', '1373816', '19/11/04', 'Antonio', './app/images/59.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(60, 'Oficina', 'Alquiler', 'Lleida', '270', '1920240', '28/06/04', 'Juan', './app/images/60.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(61, 'Casa', 'Venta', 'Tarragona', '120', '1140840', '12/09/04', 'Carmen', './app/images/61.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(62, 'Industrial', 'Venta', 'Tarragona', '178', '1142938', '23/01/05', 'Antonio', './app/images/62.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(63, 'Piso', 'Venta', 'Barcelona', '144', '738144', '06/09/04', 'Luisa', './app/images/63.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(64, 'Industrial', 'Venta', 'Lleida', '57', '509010', '13/10/04', 'Marta', './app/images/64.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(65, 'Oficina', 'Venta', 'Tarragona', '144', '1436832', '26/05/04', 'Luisa', './app/images/65.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(66, 'Suelo', 'Venta', 'Lleida', '272', '2119424', '24/12/04', 'Pedro', './app/images/66.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(67, 'Industrial', 'Alquiler', 'Barcelona', '219', '948927', '15/10/04', 'Juan', './app/images/67.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(68, 'Local', 'Alquiler', 'Barcelona', '68', '376992', '28/06/04', 'Luisa', './app/images/68.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(69, 'Local', 'Venta', 'Girona', '248', '2212408', '09/10/04', 'Marta', './app/images/69.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(70, 'Casa', 'Alquiler', 'Tarragona', '179', '1647695', '12/07/04', 'Marta', './app/images/70.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(71, 'Casa', 'Venta', 'Girona', '235', '1939925', '01/11/04', 'Carmen', './app/images/71.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(72, 'Suelo', 'Venta', 'Tarragona', '216', '1478952', '15/10/04', 'Carmen', './app/images/72.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(73, 'Parking', 'Alquiler', 'Barcelona', '62', '320044', '04/09/04', 'Antonio', './app/images/73.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(74, 'Industrial', 'Venta', 'Girona', '229', '1098055', '22/10/04', 'Antonio', './app/images/74.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(77, 'Industrial', 'Alquiler', 'Tarragona', '112', '1104992', '25/06/04', 'Pedro', './app/images/77.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(78, 'Piso', 'Venta', 'Lleida', '87', '448485', '04/10/04', 'Marta', './app/images/1588438530_casa-tipica-mallorquina_787358.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(79, 'Parking', 'Venta', 'Barcelona', '298', '2520484', '27/11/04', 'Carmen', './app/images/1588438544_254862296_1.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(80, 'Parking', 'Alquiler', 'Barcelona', '217', '1339107', '05/10/04', 'Carmen', './app/images/1588438562_5cf8eda5-59a8-4bc7-a58c-d4f0fccb0621.c10.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(81, 'Industrial', 'Alquiler', 'Barcelona', '236', '1812244', '17/11/04', 'Pedro', './app/images/1588438577_images (1).jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(82, 'Parking', 'Venta', 'Girona', '117', '1069731', '14/09/04', 'Pedro', './app/images/1588438593_247907927_1.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(83, 'Suelo', 'Venta', 'Lleida', '56', '471072', '29/05/04', 'Marta', './app/images/1588438825_images.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(84, 'Piso', 'Venta', 'Barcelona', '94', '470940', '28/07/04', 'Carmen', './app/images/1588439497_a_fill (2).jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(85, 'Local', 'Alquiler', 'Barcelona', '127', '925322', '03/06/04', 'Antonio', './app/images/85.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(86, 'Piso', 'Venta', 'Girona', '275', '2141700', '08/01/05', 'Juan', './app/images/1588439619_1-Te-flipan-los-duplex-1960x1100.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(87, 'Industrial', 'Alquiler', 'Barcelona', '93', '778875', '12/05/04', 'Luisa', './app/images/87.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(88, 'Parking', 'Alquiler', 'Tarragona', '58', '421196', '10/10/04', 'Pedro', './app/images/88.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(89, 'Local', 'Alquiler', 'Barcelona', '49', '219716', '27/09/04', 'Juan', './app/images/89.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(90, 'Suelo', 'Venta', 'Girona', '292', '2685816', '24/07/04', 'Pedro', './app/images/1588439778_a_fill.jpg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(91, 'Industrial', 'Alquiler', 'Barcelona', '123', '723609', '16/12/04', 'Antonio', './app/images/91.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(92, 'Piso', 'Alquiler', 'Barcelona', '48', '388032', '06/05/04', 'Juan', './app/images/92.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(93, 'Industrial', 'Alquiler', 'Tarragona', '132', '922020', '23/10/04', 'Antonio', './app/images/93.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(94, 'Industrial', 'Alquiler', 'Barcelona', '177', '965358', '08/06/04', 'Luisa', './app/images/94.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(95, 'Local', 'Venta', 'Barcelona', '68', '663816', '23/05/04', 'Antonio', './app/images/95.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(96, 'Industrial', 'Alquiler', 'Tarragona', '103', '728931', '05/02/05', 'Juan', './app/images/96.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(97, 'Suelo', 'Venta', 'Tarragona', '96', '625536', '07/11/04', 'Juan', './app/images/97.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(98, 'Casa', 'Venta', 'Lleida', '227', '1467782', '01/02/05', 'Carmen', './app/images/98.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(99, 'Industrial', 'Alquiler', 'Girona', '251', '2067236', '22/12/04', 'Marta', './app/images/99.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(101, 'Suelo', 'Alquiler', 'Girona', '162', '710694', '27/09/04', 'Marta', './app/images/101.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(102, 'Local', 'Venta', 'Barcelona', '45', '438435', '23/05/04', 'Luisa', './app/images/102.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(103, 'Casa', 'Alquiler', 'Girona', '258', '1188090', '19/07/04', 'Marta', './app/images/103.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(104, 'Oficina', 'Venta', 'Tarragona', '104', '699400', '14/07/04', 'Luisa', './app/images/104.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(105, 'Piso', 'Alquiler', 'Girona', '238', '1854496', '02/02/05', 'Luisa', './app/images/105.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(106, 'Piso', 'Alquiler', 'Lleida', '300', '2105700', '26/01/05', 'Pedro', './app/images/106.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(107, 'Suelo', 'Alquiler', 'Girona', '222', '1791318', '13/12/04', 'Juan', './app/images/107.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(108, 'Suelo', 'Alquiler', 'Tarragona', '187', '1782297', '20/12/04', 'Antonio', './app/images/108.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(109, 'Suelo', 'Alquiler', 'Barcelona', '300', '1528200', '09/08/04', 'Pedro', './app/images/109.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(110, 'Parking', 'Venta', 'Barcelona', '206', '1587642', '20/12/04', 'Luisa', './app/images/110.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(111, 'Suelo', 'Alquiler', 'Tarragona', '162', '954666', '25/11/04', 'Antonio', './app/images/111.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(112, 'Local', 'Alquiler', 'Lleida', '160', '1064800', '22/09/04', 'Pedro', './app/images/112.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(113, 'Suelo', 'Alquiler', 'Barcelona', '89', '887241', '02/01/05', 'Luisa', './app/images/113.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(115, 'Industrial', 'Venta', 'Tarragona', '54', '438750', '15/08/04', 'Carmen', './app/images/115.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(116, 'Parking', 'Venta', 'Girona', '103', '973659', '04/01/05', 'Juan', './app/images/116.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(117, 'Oficina', 'Venta', 'Girona', '274', '1724008', '26/09/04', 'Antonio', './app/images/117.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(118, 'Oficina', 'Venta', 'Girona', '253', '2047276', '10/09/04', 'Luisa', './app/images/118.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(119, 'Parking', 'Venta', 'Lleida', '51', '307989', '06/07/04', 'Pedro', './app/images/119.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(120, 'Piso', 'Venta', 'Tarragona', '174', '973878', '13/12/04', 'Juan', './app/images/120.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(121, 'Parking', 'Venta', 'Barcelona', '152', '688864', '06/12/04', 'Juan', './app/images/121.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(122, 'Casa', 'Alquiler', 'Barcelona', '270', '1385910', '05/02/05', 'Pedro', './app/images/122.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(123, 'Local', 'Alquiler', 'Girona', '179', '1461356', '30/07/04', 'Pedro', './app/images/123.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(124, 'Suelo', 'Alquiler', 'Tarragona', '212', '926228', '05/09/04', 'Antonio', './app/images/124.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(125, 'Industrial', 'Venta', 'Girona', '118', '1067192', '25/08/04', 'Carmen', './app/images/125.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(126, 'Industrial', 'Venta', 'Tarragona', '194', '1373132', '31/08/04', 'Marta', './app/images/126.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(127, 'Industrial', 'Venta', 'Barcelona', '139', '1087119', '29/05/04', 'Juan', './app/images/127.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(128, 'Casa', 'Venta', 'Tarragona', '130', '1230190', '04/01/05', 'Luisa', './app/images/128.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(129, 'Parking', 'Alquiler', 'Lleida', '206', '1363926', '08/01/05', 'Carmen', './app/images/129.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(130, 'Oficina', 'Venta', 'Tarragona', '216', '1389096', '23/11/04', 'Luisa', './app/images/130.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(131, 'Local', 'Venta', 'Lleida', '55', '477345', '04/09/04', 'Carmen', './app/images/131.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(132, 'Oficina', 'Venta', 'Tarragona', '190', '1268630', '04/12/04', 'Juan', './app/images/132.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(133, 'Suelo', 'Alquiler', 'Tarragona', '62', '391964', '14/11/04', 'Pedro', './app/images/133.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(134, 'Oficina', 'Alquiler', 'Tarragona', '275', '1765225', '20/02/05', 'Antonio', './app/images/134.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(135, 'Local', 'Venta', 'Lleida', '45', '229455', '05/10/04', 'Juan', './app/images/135.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(136, 'Oficina', 'Alquiler', 'Lleida', '105', '624435', '24/06/04', 'Antonio', './app/images/136.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(137, 'Casa', 'Venta', 'Barcelona', '119', '686154', '19/01/05', 'Pedro', './app/images/137.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(138, 'Industrial', 'Venta', 'Girona', '88', '678480', '28/12/04', 'Luisa', './app/images/138.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(139, 'Local', 'Alquiler', 'Tarragona', '63', '533925', '22/09/04', 'Antonio', './app/images/139.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(140, 'Piso', 'Venta', 'Barcelona', '222', '1076034', '02/06/04', 'Marta', './app/images/140.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(141, 'Suelo', 'Venta', 'Barcelona', '47', '455477', '31/12/04', 'Antonio', './app/images/141.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(142, 'Oficina', 'Venta', 'Tarragona', '123', '1128156', '23/09/04', 'Pedro', './app/images/142.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(143, 'Oficina', 'Alquiler', 'Tarragona', '134', '1310520', '28/12/04', 'Marta', './app/images/143.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(144, 'Parking', 'Alquiler', 'Barcelona', '121', '782870', '19/11/04', 'Pedro', './app/images/144.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(145, 'Piso', 'Venta', 'Girona', '50', '315550', '14/10/04', 'Pedro', './app/images/145.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(146, 'Parking', 'Venta', 'Girona', '274', '2028970', '20/08/04', 'Luisa', './app/images/146.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(147, 'Parking', 'Alquiler', 'Barcelona', '76', '734388', '28/05/04', 'Antonio', './app/images/147.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(148, 'Local', 'Venta', 'Barcelona', '109', '779241', '30/05/04', 'Marta', './app/images/148.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(149, 'Piso', 'Venta', 'Lleida', '249', '1492506', '12/02/05', 'Luisa', './app/images/149.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(150, 'Casa', 'Alquiler', 'Lleida', '212', '1800516', '19/12/04', 'Juan', './app/images/150.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(151, 'Oficina', 'Alquiler', 'Lleida', '128', '1259904', '02/10/04', 'Luisa', './app/images/151.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(152, 'Oficina', 'Venta', 'Tarragona', '172', '1063648', '13/02/05', 'Marta', './app/images/152.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(153, 'Piso', 'Venta', 'Lleida', '68', '434656', '13/07/04', 'Marta', './app/images/153.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(154, 'Industrial', 'Alquiler', 'Lleida', '52', '508924', '03/09/04', 'Pedro', './app/images/154.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(155, 'Suelo', 'Alquiler', 'Girona', '185', '1403595', '02/10/04', 'Pedro', './app/images/155.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(156, 'Casa', 'Venta', 'Girona', '284', '1561432', '01/07/04', 'Pedro', './app/images/156.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(157, 'Oficina', 'Venta', 'Tarragona', '202', '1891932', '02/10/04', 'Marta', './app/images/157.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(158, 'Casa', 'Alquiler', 'Lleida', '100', '731700', '10/10/04', 'Luisa', './app/images/158.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(160, 'Casa', 'Venta', 'Tarragona', '211', '875228', '23/07/04', 'Marta', './app/images/160.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(161, 'Suelo', 'Venta', 'Tarragona', '165', '1305480', '29/07/04', 'Juan', './app/images/161.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(162, 'Piso', 'Alquiler', 'Lleida', '251', '1361675', '16/08/04', 'Juan', './app/images/162.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(163, 'Local', 'Venta', 'Tarragona', '266', '1161090', '23/11/04', 'Carmen', './app/images/163.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(164, 'Oficina', 'Alquiler', 'Girona', '287', '1395681', '13/09/04', 'Carmen', './app/images/164.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(165, 'Industrial', 'Venta', 'Tarragona', '104', '1001104', '11/10/04', 'Luisa', './app/images/165.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(166, 'Oficina', 'Venta', 'Tarragona', '250', '2275500', '29/07/04', 'Luisa', './app/images/166.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(167, 'Parking', 'Venta', 'Girona', '169', '1370759', '14/01/05', 'Luisa', './app/images/167.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(168, 'Suelo', 'Venta', 'Lleida', '221', '1842035', '15/10/04', 'Antonio', './app/images/168.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(170, 'Suelo', 'Alquiler', 'Lleida', '73', '597286', '20/02/05', 'Antonio', './app/images/170.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(171, 'Suelo', 'Venta', 'Girona', '144', '1358640', '13/11/04', 'Antonio', './app/images/171.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(172, 'Piso', 'Alquiler', 'Tarragona', '108', '558252', '19/10/04', 'Marta', './app/images/172.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(173, 'Oficina', 'Venta', 'Girona', '268', '2400476', '08/03/05', 'Antonio', './app/images/173.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(174, 'Piso', 'Alquiler', 'Lleida', '143', '1131416', '25/08/04', 'Antonio', './app/images/174.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(176, 'Industrial', 'Alquiler', 'Lleida', '193', '1658835', '30/08/04', 'Juan', './app/images/176.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(177, 'Suelo', 'Venta', 'Tarragona', '148', '1431012', '01/09/04', 'Juan', './app/images/177.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(178, 'Local', 'Venta', 'Tarragona', '118', '513300', '26/10/04', 'Marta', './app/images/178.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(179, 'Industrial', 'Venta', 'Barcelona', '156', '848328', '27/02/05', 'Juan', './app/images/179.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(180, 'Suelo', 'Alquiler', 'Tarragona', '201', '1874928', '21/06/04', 'Juan', './app/images/180.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(181, 'Oficina', 'Venta', 'Tarragona', '42', '367584', '11/08/04', 'Antonio', './app/images/181.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(182, 'Local', 'Alquiler', 'Tarragona', '162', '1323054', '25/08/04', 'Antonio', './app/images/182.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(183, 'Local', 'Alquiler', 'Girona', '231', '1446522', '02/09/04', 'Carmen', './app/images/183.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(184, 'Suelo', 'Venta', 'Tarragona', '273', '1447992', '24/10/04', 'Pedro', './app/images/184.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24'),
(185, 'Industrial', 'Venta', 'Barcelona', '265', '2109930', '27/08/04', 'Marta', './app/images/185.jpeg', '2020-05-13 13:24:24', '2020-05-13 13:24:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_resets_table', 1),
(51, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2020_05_08_154020_create_inmuebles_table', 1),
(53, '2020_05_08_162527_create_roles_table', 1),
(54, '2020_05_08_162957_create_role_user_table', 1),
(55, '2020_05_11_155514_create_permissions_table', 1),
(56, '2020_05_11_155751_create_permission_role_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'List role', 'role.index', 'can list roles', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(2, 'Show role', 'role.show', 'can see roles', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(3, 'Edit role', 'role.edit', 'can edit roles', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(4, 'Create role', 'role.create', 'can create roles', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(5, 'Destroy role', 'role.destroy', 'can destroy roles', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(6, 'List user', 'user.index', 'can list users', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(7, 'Show user', 'user.show', 'can see users', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(8, 'Edit user', 'user.edit', 'can edit users', '2020-05-13 12:02:20', '2020-05-13 12:02:20'),
(9, 'Destroy user', 'user.destroy', 'can destroy users', '2020-05-13 12:02:20', '2020-05-13 12:02:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-05-13 12:22:05', '2020-05-13 12:22:05'),
(2, 1, 2, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(3, 1, 3, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(4, 1, 4, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(5, 1, 5, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(6, 1, 6, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(7, 1, 7, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(8, 1, 8, '2020-05-13 12:22:06', '2020-05-13 12:22:06'),
(9, 1, 9, '2020-05-13 12:22:06', '2020-05-13 12:22:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `full-access` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `full-access`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Administrator', 'yes', '2020-05-13 12:02:20', '2020-05-13 12:02:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2020-05-13 12:02:20', '2020-05-13 12:02:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@mail.com', '$2y$10$0U1GknP7ZpJZGrAtKMoZbukEFa339JNSztSKzu3tkiuSdsymq.lhS', NULL, NULL, '2020-05-13 12:02:20', '2020-05-13 12:02:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
