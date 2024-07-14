-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2024 a las 21:05:28
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
CREATE DATABASE IF NOT EXISTS `bdo1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bdo1`;

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
  `Vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `medicacionguarda`
--

INSERT INTO `medicacionguarda` (`id_`, `HC`, `Paciente`, `Medicacion`, `Cantidad`, `Vencimiento`) VALUES
(1, 245368, 'Martha Pyndick', 'Letrozol 2.5mg', 30, '2027-06-30'),
(2, 245285, 'Jesus Huancahuari', 'Cisplatino 50mg', 6, '2025-08-31'),
(3, 223602, 'Julia Sarmiento', 'Carboplatino 450mg', 1, '2027-04-30'),
(4, 243245, 'Juan Perez', 'Leuprolide 22.5mg', 2, '2026-10-31'),
(5, 248697, 'Elba Freytez', 'Anastrozol 1mg', 60, '2026-09-30'),
(6, 285692, 'Lionel Moriarti', 'Fluorouracilo 500mg', 20, '2027-06-30'),
(29, 245652, 'Maria Db', 'Cetuximab 100mg', 5, '2026-06-30'),
(31, 244563, 'John Doe', 'Trastuzumab 440mg', 2, '2027-05-31');

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
  MODIFY `id_` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
