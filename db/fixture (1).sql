-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2018 a las 00:13:31
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fixture`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `club1`
--

CREATE TABLE `club1` (
  `ID` int(4) NOT NULL,
  `equipo` varchar(15) DEFAULT NULL,
  `estadio` varchar(20) DEFAULT NULL,
  `pmas` int(5) DEFAULT NULL,
  `pmenos` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `club1`
--

INSERT INTO `club1` (`ID`, `equipo`, `estadio`, `pmas`, `pmenos`) VALUES
(1, 'Boca', 'La Bombonera', 0, 0),
(2, 'River', 'El_Monumental', 0, 0),
(3, 'Independiente', 'Libertadores_de_amer', 0, 0),
(4, 'Racing', 'Peron', 0, 0),
(5, 'Huracan', 'Globo', 0, 0),
(6, 'San_Lorenzo', 'Gasometro', 0, 0),
(7, 'Quilmes', 'Centenario', 0, 0),
(8, 'Lanus', 'Nestor', 0, 0),
(9, 'Colon', 'Brigadier_Lopez', 0, 0),
(10, 'Atletico_Tucuma', 'Amalfitani', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `idfecha` int(11) NOT NULL,
  `diamesaño` datetime NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`idfecha`, `diamesaño`, `estado`) VALUES
(1, '2018-10-26 00:00:00', 'finalizado'),
(2, '2018-10-28 00:00:00', 'en proceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juez`
--

CREATE TABLE `juez` (
  `idjuez` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `posicion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juez`
--

INSERT INTO `juez` (`idjuez`, `nombre`, `posicion`) VALUES
(1, 'juan', 'linea1'),
(2, 'pedro', 'linea2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `idpartido` int(11) NOT NULL,
  `equipo1` text NOT NULL,
  `equipo2` text NOT NULL,
  `fecha` varchar(40) NOT NULL,
  `juez` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sancion`
--

CREATE TABLE `sancion` (
  `idsancion` int(3) NOT NULL,
  `ideequipo` int(3) NOT NULL,
  `puntos` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sancion`
--

INSERT INTO `sancion` (`idsancion`, `ideequipo`, `puntos`) VALUES
(1, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `club1`
--
ALTER TABLE `club1`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`idfecha`);

--
-- Indices de la tabla `juez`
--
ALTER TABLE `juez`
  ADD PRIMARY KEY (`idjuez`);

--
-- Indices de la tabla `sancion`
--
ALTER TABLE `sancion`
  ADD PRIMARY KEY (`idsancion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fecha`
--
ALTER TABLE `fecha`
  MODIFY `idfecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `juez`
--
ALTER TABLE `juez`
  MODIFY `idjuez` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sancion`
--
ALTER TABLE `sancion`
  MODIFY `idsancion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
