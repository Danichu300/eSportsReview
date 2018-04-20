-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2018 a las 14:28:24
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
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `videojuego` varchar(255) NOT NULL,
  `fecha_comentario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `usuario`, `contenido`, `videojuego`, `fecha_comentario`) VALUES
(1, 1, 'hola', 'csgo', '2018-04-17 06:54:50'),
(2, 1, 'prueba', 'csgo', '2018-04-17 06:57:49'),
(3, 1, 'asdadasd', 'csgo', '2018-04-17 06:59:08'),
(4, 1, 'asoidniasndiasnd', 'csgo', '2018-04-17 07:09:37'),
(5, 1, 'Prueba súper final', 'csgo', '2018-04-17 07:12:04'),
(8, 1, 'textamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamentextamen textamen textamen textamen textamen', 'csgo', '2018-04-17 07:40:20'),
(9, 1, 'asdnaskndsad', 'csgo', '2018-04-17 07:46:49'),
(10, 1, 'a ver si ya va ;)', 'csgo', '2018-04-17 07:48:08'),
(11, 1, 'puto amo xd', 'csgo', '2018-04-17 07:49:41'),
(13, 1, 'ay dioh mio xfaboh', 'csgo', '2018-04-17 09:27:37'),
(14, 1, 'Vale, todo sigue guay', 'csgo', '2018-04-18 11:14:28');

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
  `resultado` tinyint(1) DEFAULT NULL
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
  `titulo` tinytext NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `videojuego` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `videojuego` varchar(255) NOT NULL,
  `nombre_partido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha_inicio`, `fecha_fin`, `videojuego`, `nombre_partido`) VALUES
(1, '2018-04-23', '2018-04-24', 'csgo', 'Primer Partido'),
(2, '2018-04-24', '2018-04-25', 'csgo', 'Segundo Partido'),
(3, '2018-04-26', '2018-04-27', 'csgo', 'Tercer Partido'),
(4, '2018-04-27', '2018-04-28', 'csgo', 'Cuarto Partido'),
(5, '2018-04-27', '2018-04-28', 'csgo', 'Partidaso'),
(6, '2018-04-28', '2018-04-29', 'csgo', 'Sexto Partido'),
(7, '2018-04-29', '2018-04-30', 'csgo', 'Séptimo Partido');

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
  `password` varchar(20) NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `password`, `nombre_usuario`, `admin`) VALUES
(1, '123456', 'Danichu300', 1),
(2, 'asdf', 'user_Test', 0),
(3, 'anbhc', 'prueba_usuario', 0),
(4, 'usuario', 'usuario', 0);

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
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`,`usuario`),
  ADD KEY `usuario` (`usuario`);

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
  ADD KEY `admin` (`admin`);

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
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id_videojuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`admin`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `torneo_ibfk_1` FOREIGN KEY (`partido`) REFERENCES `partido` (`id_partido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
