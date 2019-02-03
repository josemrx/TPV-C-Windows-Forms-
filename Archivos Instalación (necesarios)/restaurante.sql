-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2019 a las 18:01:53
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_pedido`
--

CREATE TABLE `articulos_pedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulos_pedido`
--

INSERT INTO `articulos_pedido` (`id`, `id_pedido`, `id_producto`) VALUES
(2, 801212, 32),
(3, 801212, 3),
(4, 999910, 3),
(5, 999910, 32),
(6, 930491, 3),
(7, 930491, 32),
(8, 322536, 3),
(9, 322536, 32),
(10, 322536, 1),
(11, 931976, 3),
(12, 931976, 32),
(13, 961900, 3),
(14, 961900, 32),
(15, 961900, 3),
(16, 733361, 3),
(17, 758938, 3),
(18, 795230, 33),
(19, 795230, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT '01/01/2000',
  `precioTotal` double NOT NULL DEFAULT '0',
  `takeAway` tinyint(1) NOT NULL,
  `infoPedido` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `precioTotal`, `takeAway`, `infoPedido`) VALUES
(322536, '02/02/2019', 8.2, 0, ''),
(733361, '02/02/2019', 3.5, 0, ''),
(758938, '02/02/2019', 7, 1, ''),
(795230, '03/02/2019', 7.9, 0, '+ExtraSalsa +ExtraQueso '),
(801212, '02/02/2019', 5.7, 0, ''),
(930491, '02/02/2019', 12.3, 1, ''),
(931976, '02/02/2019', 5.7, 0, ''),
(961900, '02/02/2019', 8.02, 0, '+ExtraSalsa/r/n+NoQueso /r/n+NoLechuga/r/n'),
(982452, '01/01/2000', 0, 0, ''),
(999910, '02/02/2019', 5.7, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL DEFAULT '1',
  `informacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `tipo`, `informacion`) VALUES
(1, 'Coca Cola M', 2.5, 3, '250ml de refresco'),
(2, 'Pepsi M', 2, 3, '250ml de refresco'),
(3, 'Hamburguesa con queso', 3.5, 1, 'Especialidad. Hamburguesa de ternera con queso, lechuga, y ketchup. \r\nLa americana de siempre. '),
(4, 'Coca Cola Peq', 1, 3, '150ml de refresco'),
(5, 'Pepsi Peq', 0.8, 3, '100ml de refresco'),
(6, 'Fanta Nar M', 2.2, 3, '250ml de refresco'),
(7, 'Fanta Nar Peq', 1, 3, '100ml de refresco'),
(10, 'McRib', 4.3, 1, 'McRib mítica, de vuelta a nuestros productos. \r\nCostillitas de ternera sin hueso con salsa barbacoa.'),
(11, 'Hamburguesa Pollo', 2.5, 1, 'Hamburguesa de pollo con lechuga, queso y salsa barbacoa.\r\nPechuga empanada al estilo Kentucky.'),
(31, 'Patatas Fritas Peq', 1.5, 2, 'Patatas Fritas Crujientes, de corte fino.\r\n150Gr.'),
(32, 'Patatas Fritas M', 2.2, 2, 'Patatas Fritas Crujientes, de corte fino. \r\n250Gr.'),
(33, 'Menu M Ham + Pat + Beb', 5, 4, 'Menú el que incluye Hamburguesa completa,\r\nbebida a elegir y Patatas (Tamaño mediano).');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos_pedido`
--
ALTER TABLE `articulos_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_articulo` (`id_producto`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos_pedido`
--
ALTER TABLE `articulos_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos_pedido`
--
ALTER TABLE `articulos_pedido`
  ADD CONSTRAINT `articulos_pedido_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `articulos_pedido_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
