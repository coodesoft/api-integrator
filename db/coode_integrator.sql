-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-12-2019 a las 13:36:24
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coode_integrator`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coode_order`
--

CREATE TABLE `coode_order` (
  `uid` varchar(100) NOT NULL,
  `store` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coode_store`
--

CREATE TABLE `coode_store` (
  `id` int(11) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coode_store`
--

INSERT INTO `coode_store` (`id`, `uid`, `status`) VALUES
(1, 'bazarcaribeño.com/weporkwpeorksdferglsdkggag', 1),
(3, 'hildebrandasanchez.com.ar', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coode_order`
--
ALTER TABLE `coode_order`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `store` (`store`);

--
-- Indices de la tabla `coode_store`
--
ALTER TABLE `coode_store`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coode_store`
--
ALTER TABLE `coode_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coode_order`
--
ALTER TABLE `coode_order`
  ADD CONSTRAINT `coode_order_ibfk_1` FOREIGN KEY (`store`) REFERENCES `coode_store` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
