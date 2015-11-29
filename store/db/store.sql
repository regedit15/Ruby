-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2015 a las 23:47:19
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE IF NOT EXISTS `carritos` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=980190979 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`id`, `created_at`, `updated_at`) VALUES
(980190966, '2015-08-23 16:56:20', '2015-08-23 16:56:20'),
(980190967, '2015-08-23 18:00:45', '2015-08-23 18:00:45'),
(980190968, '2015-08-23 18:23:36', '2015-08-23 18:23:36'),
(980190972, '2015-08-30 17:26:41', '2015-08-30 17:26:41'),
(980190976, '2015-08-30 19:19:23', '2015-08-30 19:19:23'),
(980190977, '2015-08-30 19:50:53', '2015-08-30 19:50:53'),
(980190978, '2015-10-25 00:49:54', '2015-10-25 00:49:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `carrito_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cantidad` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=980190996 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `producto_id`, `carrito_id`, `created_at`, `updated_at`, `cantidad`) VALUES
(298486374, 1, 1, '2015-04-19 17:13:20', '2015-04-19 17:13:20', 1),
(980190962, 1, 1, '2015-04-19 17:13:20', '2015-04-19 17:13:20', 1),
(980190964, 980190970, 980190963, '2015-04-19 17:38:16', '2015-04-19 17:38:16', 1),
(980190966, 980190972, 980190963, '2015-04-19 17:48:07', '2015-04-19 17:48:07', 1),
(980190969, 980190966, 980190963, '2015-04-26 21:39:11', '2015-04-26 21:39:11', 1),
(980190970, 980190969, 980190963, '2015-06-27 23:42:11', '2015-06-27 23:42:11', 2),
(980190971, 980190971, 980190963, '2015-06-27 23:42:11', '2015-06-27 23:42:11', 2),
(980190972, 980190971, 980190964, '2015-06-27 23:49:20', '2015-06-27 23:49:36', 2),
(980190973, 980190970, 980190964, '2015-06-27 23:49:31', '2015-06-27 23:49:31', 1),
(980190974, 980190971, 980190965, '2015-07-26 16:48:15', '2015-07-26 16:48:15', 1),
(980190975, 980190971, 980190966, '2015-08-23 16:56:20', '2015-08-23 17:50:08', 3),
(980190976, 980190970, 980190966, '2015-08-23 16:57:06', '2015-08-23 17:39:14', 3),
(980190977, 980190967, 980190966, '2015-08-23 17:09:21', '2015-08-23 17:09:21', 1),
(980190978, 980190971, 980190967, '2015-08-23 18:00:45', '2015-08-23 18:00:45', 1),
(980190979, 980190971, 980190968, '2015-08-23 18:23:36', '2015-08-23 18:35:42', 3),
(980190988, 980190970, 980190976, '2015-08-30 19:19:23', '2015-08-30 19:19:23', 1),
(980190989, 980190967, 980190976, '2015-08-30 19:19:29', '2015-08-30 19:19:29', 1),
(980190990, 980190972, 980190976, '2015-08-30 19:19:35', '2015-08-30 19:19:35', 1),
(980190991, 980190971, 980190977, '2015-08-30 19:50:53', '2015-08-30 19:53:37', 3),
(980190992, 980190970, 980190977, '2015-08-30 19:53:51', '2015-08-30 19:53:51', 1),
(980190993, 980190971, 980190978, '2015-10-25 00:49:54', '2015-10-25 00:49:54', 1),
(980190994, 980190967, 980190978, '2015-10-25 00:50:05', '2015-10-25 00:50:05', 1),
(980190995, 980190965, 980190978, '2015-10-25 00:50:23', '2015-10-25 00:50:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `url_imagen` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=980190973 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `descripcion`, `url_imagen`, `precio`, `created_at`, `updated_at`) VALUES
(980190963, 'Tomate', 'Soy un tomate muy rico', 'tomate.png', '18.50', NULL, NULL),
(980190964, 'Lechuga', 'Soy una lechuga muy rica', 'lechuga.png', '30.00', NULL, NULL),
(980190965, 'Pan', 'Soy un pan muy rico', 'pan.png', '20.50', NULL, NULL),
(980190966, 'Naranja', 'Soy una naranja muy rica', 'naranja.png', '6.50', NULL, NULL),
(980190967, 'Coca-Cola', 'Soy un Coca-Cola muy rica', 'coca.png', '26.50', NULL, NULL),
(980190968, 'Sprite', 'Soy un Sprite muy rica', 'sprite.png', '25.00', NULL, NULL),
(980190969, 'Lata de Tomate', 'Soy un lata de tomate muy rica', 'tomate_lata.png', '8.35', NULL, NULL),
(980190970, 'Botella de Tomate', 'Soy una botella de tomate muy rica', 'tomate_botella.png', '28.80', NULL, NULL),
(980190971, 'Arbejas', 'Soy una lata de arbejas muy rica', 'arbejas.png', '7.60', NULL, NULL),
(980190972, 'Jabon en Polvo', 'Soy un jabon en polbo que lava muy bien', 'jabon_en_polvo.png', '15.40', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20141111185217'),
('20150111205333'),
('20150111205830'),
('20150426213111'),
('20150606140304'),
('20150627224323');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=980190979;
--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=980190996;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=980190973;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
