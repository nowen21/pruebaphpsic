-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-01-2022 a las 04:44:51
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `radicaciones`
--

DROP TABLE IF EXISTS `radicaciones`;
CREATE TABLE IF NOT EXISTS `radicaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_solicitante` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `texto_solicitud` text NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_crea` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `radicaciones`
--

INSERT INTO `radicaciones` (`id`, `nombre_solicitante`, `fecha`, `asunto`, `texto_solicitud`, `user_id`) VALUES
(12, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(4, 'local', '2022-01-17 00:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL),
(5, 'local', '2022-01-17 00:00:00', 'aaa', 'asfasfasfasa', NULL),
(6, 'test', '2022-01-17 00:00:00', 'aaa', 'asfasfasfasa', NULL),
(7, '1', '2022-01-17 00:00:00', 'a', 'asfasfasfasfasf', NULL),
(8, 'local', '2022-01-12 00:00:00', 'fasfasf', 'asfasfasfasfas', NULL),
(9, '1', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(10, '1', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(11, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(13, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(14, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(15, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(16, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(17, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(18, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(19, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(20, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(21, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(22, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(23, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(24, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(25, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(26, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(27, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(28, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(29, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(30, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(31, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(32, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(33, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(34, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(35, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(36, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(37, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(38, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(39, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(40, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(41, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(42, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(43, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(44, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(45, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(46, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(47, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(48, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(49, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(50, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(51, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(52, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(53, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(54, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(55, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(56, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(57, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(58, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(59, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(60, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(61, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(62, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(63, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(64, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(65, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(66, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(67, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(68, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(69, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(70, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(71, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(72, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(73, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(74, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(75, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(76, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(77, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(78, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(79, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(80, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(81, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(82, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(83, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(84, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(85, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(86, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(87, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(88, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(89, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(90, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(91, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(92, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(93, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(94, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(95, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(96, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(97, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(98, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(99, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(100, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(101, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(102, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(103, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(104, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(105, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(106, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(107, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(108, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(109, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(110, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(111, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(112, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(113, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(114, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(115, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(116, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(117, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(118, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(119, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(120, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(121, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(122, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(123, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(124, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(125, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(126, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(127, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(128, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(129, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(130, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(131, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(132, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(133, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(134, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(135, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(136, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(137, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(138, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(139, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(140, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(141, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(142, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(143, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(144, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(145, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(146, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(147, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(148, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(149, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(150, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(151, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(152, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(153, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(154, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(155, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(156, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(157, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(158, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(159, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(160, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(161, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(162, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(163, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(164, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(165, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(166, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(167, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL),
(168, '3', '2022-01-17 00:00:00', 'fdfdasfsda', 'fasfsdafadsfsa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `nombre`, `password`) VALUES
(1, 'test@test.com', 'test', '$2y$10$Cx7AgPAw3JpSUVVY6P3u4.xMsvef7g6/KkpDUnuX6Igc4U.6Ya2CS'),
(3, 'test@gmail.com', 'local', 'local'),
(4, 'local@gmail.com', 'host', 'host'),
(5, 'nowen21@gmail.com', 'jose dumar ', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
