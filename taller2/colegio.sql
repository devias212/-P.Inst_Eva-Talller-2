-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2023 a las 04:05:13
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `matricula` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`matricula`, `nombre`) VALUES
(1001, 'pedro garcia m'),
(1002, 'ana gonzales c'),
(1003, 'jhon medina t'),
(1004, 'sara restrepo j'),
(1005, 'fabian gomez r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_materia`
--

CREATE TABLE `asignar_materia` (
  `id_aulas` int(11) NOT NULL,
  `codigo_de_puerta` int(11) DEFAULT NULL,
  `materia_asignada` varchar(255) DEFAULT NULL,
  `cedula` int(11) NOT NULL,
  `materia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignar_materia`
--

INSERT INTO `asignar_materia` (`id_aulas`, `codigo_de_puerta`, `materia_asignada`, `cedula`, `materia`) VALUES
(1, 456879, 'matematicas', 30399657, 'Matematicas'),
(2, 412365, 'español', 34001147, 'Español'),
(3, 423987, 'ingles', 52033236, 'Ingles'),
(4, 632785, 'deportes', 52494277, 'Deportes'),
(5, 845693, 'religion', 75063014, 'Religion'),
(6, 425963, 'filosofia', 52355683, 'Filosofia'),
(7, 256879, 'quimica', 75077205, 'Quimica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id_aulas` int(11) NOT NULL,
  `codigo_de_puerta` int(11) DEFAULT NULL,
  `materia_asignada` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id_aulas`, `codigo_de_puerta`, `materia_asignada`) VALUES
(1, 456879, 'matematicas'),
(2, 412365, 'español'),
(3, 423987, 'ingles'),
(4, 632785, 'deportes'),
(5, 845693, 'religion'),
(6, 425963, 'filosofia'),
(7, 256879, 'quimica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`) VALUES
(111, 'Matematicas'),
(112, 'Español'),
(113, 'Filosofia'),
(114, 'Quimica'),
(115, 'Religion'),
(116, 'Ingles'),
(117, 'Deportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `cedula` int(11) NOT NULL,
  `materia` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`cedula`, `materia`, `nombre`) VALUES
(30399657, 'Matematicas', 'Enrique Leon G'),
(34001147, 'Español', 'David Jaramillo F'),
(52033236, 'Ingles', 'Peter Smith P'),
(52355683, 'Filosofia', 'Diogenes Mosquera T'),
(52494277, 'Deportes', 'elkin Correa R'),
(75063014, 'Religion', 'Gabriel Maon T'),
(75077205, 'Quimica', 'Jose Gutierrez M');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id_aulas`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
