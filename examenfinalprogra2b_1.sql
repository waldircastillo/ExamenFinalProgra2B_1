-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2021 a las 17:44:24
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenfinalprogra2b_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_Marcas` int(11) NOT NULL,
  `nombreMarcas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_Marcas`, `nombreMarcas`) VALUES
(1, 'TOYOTA'),
(2, 'NISSAN'),
(3, 'NISSAN'),
(4, 'IZUZU'),
(5, 'JAC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id_Modelo` int(11) NOT NULL,
  `nombreModelo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id_Modelo`, `nombreModelo`) VALUES
(1, 'HILUX 2021'),
(2, '21CR'),
(3, 'Daihatsu '),
(4, 'SERIE N'),
(5, 'RANGE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int(11) NOT NULL,
  `tipoVehiculo` varchar(25) NOT NULL,
  `id_Modelo` int(11) NOT NULL,
  `id_Marcas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculo`, `tipoVehiculo`, `id_Modelo`, `id_Marcas`) VALUES
(1, 'Pickup', 1, 1),
(2, 'Sedan', 2, 2),
(3, 'Furgon', 3, 3),
(4, 'Camiones', 4, 4),
(5, 'Familiar', 5, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_Marcas`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_Modelo`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`),
  ADD KEY `fk_id_modelo` (`id_Modelo`),
  ADD KEY `fk_id_marcas` (`id_Marcas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_Marcas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_Modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `fk_id_marcas` FOREIGN KEY (`id_Marcas`) REFERENCES `marcas` (`id_Marcas`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_id_modelo` FOREIGN KEY (`id_Modelo`) REFERENCES `modelo` (`id_Modelo`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
