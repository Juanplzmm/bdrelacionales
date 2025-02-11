-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:21:07
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Juan Pablo', 'Ochoa Hermosillo', '23325061070396', '2008-07-23', 1, 'ochoahermosilloj@gmail.com', '6674299546'),
(2, 'Victor Emilio', 'Ojeda Castro', '23325061070496', '2008-09-28', 1, 'veoc09.28@gmail.com', '6677554258'),
(3, 'Alejandro ', 'Tizoc Beltrán', '23325061070754', '2008-06-12', 1, 'alejandro.tizoc23@cetis107.edu.mx', '6675720017'),
(4, 'Jan Carlo', 'Martinez Quintero', '23325061070581', '2008-07-06', 1, 'jan.martinez24@cetis107.edu.mx', '6675720017'),
(5, 'Luis Angel', 'Perez lozano', '23325061070854', '2008-06-09', 1, 'luis.perez23@cetis107.edu.mx', '6673090801'),
(6, 'David Sebastian', 'Payan Serrano', '23325061070731', '2008-11-05', 1, 'david.payan23@cetis107.edu.mx', '6774573001'),
(7, 'Jonathan Horus', 'Zazueta Hernandéz', '23325061070263', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6677562259');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programación', 'La materia de Programación en el CETIS 107 se enfoca en enseñar a los estudiantes los fundamentos de la programación mediante el uso de diferentes lenguajes. Los alumnos aprenden a escribir código, desarrollar aplicaciones y resolver problemas lógicos, preparando para el mundo laboral o académico.'),
(2, 'Construcción', 'La materia de Contabilidad en el CETIS 107 introduce a los estudiantes en los principios y técnicas fundamentales de la contabilidad financiera. A través de esta materia, los alumnos aprenden a registrar, clasificar e interpretar transacciones económicas, proporcionando bases para la toma de decisio'),
(3, 'Electrónica', 'La materia de Electrónica en el CETIS 107 aborda los principios y aplicaciones de circuitos electrónicos. Los estudiantes aprenden sobre componentes como resistores, capacitores, diodos y transistores, así como su funcionamiento en sistemas electrónicos, preparando a los alumnos para el diseño y man'),
(4, 'Contabilidad', 'La materia de Contabilidad en el CETIS 107 enseña los fundamentos de la contabilidad financiera y administrativa. Los estudiantes aprenden a registrar, analizar e interpretar las transacciones económicas de una empresa, utilizando herramientas contables para la toma de decisiones y la correcta gesti'),
(5, 'diseño gráfico', 'La materia de Diseño Gráfico en el CETIS 107 enseña a los estudiantes los principios básicos del diseño visual, utilizando herramientas digitales para crear imágenes, logotipos, carteles y otros elementos gráficos. Los alumnos desarrollan habilidades para comunicar ideas de manera efectiva a través '),
(6, 'Ofimatica', 'La materia de Ofimática en el CETIS 107 enseña el uso de herramientas digitales básicas para la productividad, como procesadores de texto, hojas de cálculo, presentaciones y gestión de correo electrónico. Los estudiantes adquieren habilidades esenciales para optimizar el trabajo administrativo y el ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Matemáticas', '4'),
(2, 'Inglés', '4'),
(3, 'Reacciones Químicas', '4'),
(4, 'Historia', '4'),
(5, 'Base de Datos Relacionales', '4'),
(6, 'Base de Datos No Relacionales', '4'),
(7, 'Ciencias Sociales', '4'),
(8, 'Tutorías', '4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
