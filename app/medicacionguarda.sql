-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2024 a las 23:20:44
-- Versión del servidor: 8.0.38
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdo1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicacionguarda`
--

CREATE TABLE `medicacionguarda` (
  `id_` int NOT NULL,
  `HC` int NOT NULL,
  `Paciente` varchar(100) NOT NULL,
  `Medicacion` varchar(100) NOT NULL,
  `Cantidad` int NOT NULL,
  `Vencimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `medicacionguarda`
--

INSERT INTO `medicacionguarda` (`id_`, `HC`, `Paciente`, `Medicacion`, `Cantidad`, `Vencimiento`) VALUES
(1, 245285, 'Juan Perez', 'Cisplatino 50mg', 5, '2026-08-31'),
(2, 223602, 'Florencio Huancahuari', 'Cetuximab 500mg', 6, '2027-04-30'),
(3, 243245, 'Rosa Melota', 'Anastrozol 1mg', 30, '2025-01-31'),
(4, 248697, 'Pascual Munoz', 'Cisplatino 50mg', 6, '2026-07-31'),
(5, 245368, 'Natividad Ferreira', 'Trastuzumab 440mg', 1, '2027-07-31'),
(6, 245368, 'Natividad Ferreira', 'Pertuzumab 420mg', 1, '2027-10-31'),
(28, 356425, 'Martha Pyndick', 'Letrozol 2.5mg', 30, '2028-07-31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicacionguarda`
--
ALTER TABLE `medicacionguarda`
  ADD PRIMARY KEY (`id_`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicacionguarda`
--
ALTER TABLE `medicacionguarda`
  MODIFY `id_` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
