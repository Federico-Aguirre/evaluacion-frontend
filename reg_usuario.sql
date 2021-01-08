-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-01-2021 a las 11:39:36
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_usuario`
--

CREATE TABLE `reg_usuario` (
  `id` int(200) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pais` varchar(40) NOT NULL,
  `telefono` int(50) NOT NULL,
  `trabajo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reg_usuario`
--

INSERT INTO `reg_usuario` (`id`, `nombre`, `apellido`, `email`, `pais`, `telefono`, `trabajo`) VALUES
(42, 'Federico', 'Aguirre', 'sedent333@gmail.com', 'Argentina', 123123, 'asdad'),
(43, 'Federico', '12312312', 'vbvbt333@gmail.com', 'Argentina', 56756756, 'asdas'),
(44, 'hhhhh', 'hhhh', 'sedjjjjj33@gmail.com', 'Argentina', 564666666, 'dfgdfg'),
(45, 'cccc', 'cccccc', 'cccc@gmail.com', 'Argentina', 2147483647, 'vvv'),
(46, 'nnnn', 'nnnn', 'nnnnnnn@dsgsdg.com', 'Argentina', 2147483647, 'vbnvn'),
(47, 'ñññññ', 'ñññññ', 'zzzzzbbbb@fa.asd', 'Argentina', 2147483647, 'asd'),
(48, 'xcvxcvxvccx', 'xcvxcvxcvxcv', 'xcvzxczxc@gmail.com', 'Argentina', 13123213, 'asdasdsad'),
(49, 'bbbbb', 'bbbbb', 'bbbvvv@gmail.com', 'Argentina', 2147483647, 'sdfasdfaf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reg_usuario`
--
ALTER TABLE `reg_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reg_usuario`
--
ALTER TABLE `reg_usuario`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
