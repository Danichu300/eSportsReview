-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2018 a las 09:48:51
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
-- Base de datos: `esportsreview`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre_equipo` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `videojuego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre_equipo`, `logo`, `videojuego`) VALUES
(1, 'Equipo Chupifástico', NULL, 1),
(2, 'Chunguitos', NULL, 1),
(3, 'Dioses del Olimpo', NULL, 1),
(4, 'Nosemeocurrenada', NULL, 1),
(5, 'Los Pitufos', NULL, 1),
(6, 'MLG TEAM', NULL, 1),
(7, 'The Skipps', NULL, 1),
(8, 'Damn Son', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_partido`
--

CREATE TABLE `equipo_partido` (
  `id_equipo` int(11) NOT NULL,
  `id_partido` int(11) NOT NULL,
  `resultado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo_partido`
--

INSERT INTO `equipo_partido` (`id_equipo`, `id_partido`, `resultado`) VALUES
(1, 2, 1),
(2, 2, 0),
(3, 3, 1),
(4, 3, 0),
(5, 4, 1),
(6, 4, 0),
(7, 5, 0),
(8, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre_jugador` varchar(255) NOT NULL,
  `equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre_jugador`, `equipo`) VALUES
(1, 'ChupiPlayer', 1),
(2, 'The Beast', 1),
(3, 'Da Player', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id_noticia` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `partido` int(11) NOT NULL,
  `titulo` tinytext NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id_noticia`, `admin`, `partido`, `titulo`, `contenido`, `imagen`) VALUES
(1, 1111111111, 2, 'Este es el título para la primera notícia', 'Este es el cuerpo de la primera noticia el cual es largo y bla bla bla', 'Aquí va la imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha_inicio`, `fecha_fin`) VALUES
(1, '2018-04-09', '2018-04-10'),
(2, '2018-04-11', '2018-04-12'),
(3, '2018-04-13', '2018-04-14'),
(4, '2018-04-15', '2018-04-16'),
(5, '2018-04-16', '2018-04-17'),
(6, '2018-04-17', '2018-04-18'),
(7, '2018-04-18', '2018-04-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneo`
--

CREATE TABLE `torneo` (
  `id_torneo` int(11) NOT NULL,
  `nombre_torneo` varchar(255) NOT NULL,
  `partido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `torneo`
--

INSERT INTO `torneo` (`id_torneo`, `nombre_torneo`, `partido`) VALUES
(1, 'Primer Torneo', 2),
(3, 'Torneo prueba', 1),
(4, 'El Mejor Torneo', 5),
(5, 'Casino Tournament', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `password`) VALUES
(123, '123456'),
(1111111111, '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE `videojuego` (
  `id_videojuego` int(11) NOT NULL,
  `nombre_videojuego` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `mecanicas` text NOT NULL,
  `tacticas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id_videojuego`, `nombre_videojuego`, `descripcion`, `mecanicas`, `tacticas`) VALUES
(1, 'Counter-Strike Global Offensive', 'Es un videojuego de disparos en primera persona desarrollado por Valve Corporation en cooperación con Hidden Path Entertainment, y es el cuarto juego de la saga Counter-Strike, sin contar Counter-Strike: Online. Fue lanzado al mercado el 21 de agosto de 2012 para las plataformas de Microsoft Windows, Mac OS X y Xbox 360, mientras que sufrió un retraso en Playstation 3. Posteriormente, la versión para Linux estuvo disponible al público el 22 de septiembre de 2014.', 'En esta nueva entrega de Counter Strike se le ha dado mucho interés al modo competitivo, incluyendo un buscador de partidas online, en donde se juega una partida 5 contra 5 al mejor de 30 rondas (15 de cada lado), es decir el que logre ganar 16 rondas gana la partida. En un principio solo estaban disponibles servidores europeos y estadounidenses, pero con el auge en Sudamérica han agregado servidores en Brasil para que no haya problemas con ping alto. La forma de emparejar a los contrincantes es mediante a un rango, que se obtiene al ganar 10 partidas, de esta manera el sistema evalúa el rendimiento en cada una y genera un rango que una vez obtenido se puede subir o bajar (siempre sobre la base de las habilidades propias y la cantidad de partidas perdidas o ganadas). Se puede hacer la búsqueda de partida en solitario o desde 2 a 4 personas mas, haciendo un total de 5 en el último caso, dejando la posibilidad de que \"una premade\" tenga total libertad para jugar en el mismo equipo sin problemas.', '- Posicionaos estratégicamente.\r\n- Cuidado con el ruido al correr.\r\n- Comunícate con tu equipo.\r\n- Respeta a tus compañeros.\r\n- Evita el fuego amigo.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `videojuego` (`videojuego`);

--
-- Indices de la tabla `equipo_partido`
--
ALTER TABLE `equipo_partido`
  ADD PRIMARY KEY (`id_equipo`,`id_partido`),
  ADD KEY `id_equipo` (`id_equipo`,`id_partido`),
  ADD KEY `id_partido` (`id_partido`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `equipo` (`equipo`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `admin` (`admin`,`partido`),
  ADD KEY `partido` (`partido`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`);

--
-- Indices de la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`id_torneo`),
  ADD KEY `partido` (`partido`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD PRIMARY KEY (`id_videojuego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `torneo`
--
ALTER TABLE `torneo`
  MODIFY `id_torneo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111111112;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id_videojuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo_partido` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipo_ibfk_2` FOREIGN KEY (`videojuego`) REFERENCES `videojuego` (`id_videojuego`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo_partido`
--
ALTER TABLE `equipo_partido`
  ADD CONSTRAINT `equipo_partido_ibfk_1` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`equipo`) REFERENCES `equipo` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`admin`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`partido`) REFERENCES `partido` (`id_partido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `torneo_ibfk_1` FOREIGN KEY (`partido`) REFERENCES `partido` (`id_partido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
