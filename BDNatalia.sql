-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-01-2017 a las 16:28:20
-- Versión del servidor: 5.7.17-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.13-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BDNatalia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libros`
--

CREATE TABLE `Libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `sinopsis` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Libros`
--

INSERT INTO `Libros` (`id`, `titulo`, `autor`, `fecha`, `portada`, `sinopsis`) VALUES
(1, 'El Ocho', 'Katherine Neville', '1988-11-27', 'http://t2.gstatic.com/images?q=tbn:ANd9GcRwA11qaRrIXg6B82v7FobVxH4Fi9wXJy35dDWbpzop0p0T76QQ', 'El libro cuenta la historia del ajedrez de Montglane y el ansia de ciertas personas por conseguirlo a lo largo de la historia.'),
(2, ' La montaña mágica', 'Thomas Mann', '1924-01-01', 'http://t0.gstatic.com/images?q=tbn:ANd9GcQK1v10g51imHHG4wKVQ1hVfG-8Ufp7KvmN4YMRHX_SqY5_8sGM', 'La novela está dividida en siete capítulos, cada uno de los cuales se subdivide a su vez en varios epígrafes.'),
(3, 'Conversación en la Catedral', 'Mario Vargas Llosa', '1969-12-12', 'http://t3.gstatic.com/images?q=tbn:ANd9GcRA9YLCJMqx-e_ky70tGiGDqEtBJJMILs6F1o5dDVcP_DGlFPX9', 'La novela se inicia con la conversación entre dos personajes dispares que se reencuentran tras muchos años sin verse, a mediados de la década de 1960.'),
(4, 'Tokio blues', 'Haruki Murakami', '1987-12-12', 'http://t0.gstatic.com/images?q=tbn:ANd9GcRjoFKN9RCtdrqZSQ0qZwppD0EJ198OpHUJ50LS9bMZOAcDM4vb', 'Toru Watanabe acaba de llegar a sus 37 años a Hamburgo.Cuando escucha una versión de orquesta de la canción de los Beatles "Norwegian Wood", de repente le abordan sentimientos de pérdida y nostalgia.'),
(5, 'Rojo y negro', 'Stendhal', '1830-01-11', '', 'Rojo y negro está protagonizada por Julien Sorel, hijo de un carpintero del pueblo ficticio de Verrières.'),
(6, 'Anna Karénina', 'Tolstoi', '1877-12-12', '', 'El príncipe Stepán Arkádievich Oblonsky ha sido infiel a su mujer Darya Aleksándrovna, llama a su hermana Anna Karénina para que convenza a Dolly de que no lo abandone.'),
(7, 'Rayuela', 'Julio Cortázar', '1963-01-01', '', 'Contar el argumento de Rayuela de una manera lineal es, con toda seguridad, un reduccionismo que aleja al lector del sentido de la obra.'),
(8, 'La larga marcha', 'Stephen King', '1979-07-07', 'http://image7.casadellibro.com/a/l/t0/17/9788497930017.jpg', 'Un centenar de chicos adolescentes participan en una marcha anual llamada "La larga marcha", que es un "deporte nacional."'),
(9, 'Memorias de una geisha', ' Arthur Golden', '1997-09-27', 'http://t1.gstatic.com/images?q=tbn:ANd9GcSD83TvtapaNRrk-LiLfMnvaxItlS5t0xrJ3mGb8D4sv68iLTsm', 'Chiyo y Satsu viven en un pueblo a las orillas del Mar del Japón. Son conducidas a Gion por un hombre llamado señor Bekku. Satsu es vendida a un burdel y Chiyo a una okiya.'),
(10, 'Ojos de fuego', 'Stephen King', '1980-06-10', 'http://t2.gstatic.com/images?q=tbn:ANd9GcR2FXLv8O4XFeVJ5gEX5LBqMDa5W-tbIeV_-kqnOeNNxRRUDOGA', 'Ojos de fuego es la historia de Andy y Charlene "Charlie" McGee,padre e hija huyen de una agencia gubernamental conocida como The Shop, ubicada en el suburbio ficticio de Longmont, Virginia.'),
(11, 'Veinte poemas de amor y una canción desesperadao', 'Pablo Neruda', '1924-11-27', '', 'El propio poeta señaló que la obra es el resultado consciente de sustituir la ambición poética y la gran elocuencia que trataba de abarcar los misterios del hombre y el universo por un nuevo modo.'),
(12, 'El Principito', '	Antoine de Saint-Exupérya', '1943-04-27', '', 'El narrador cuenta que una vez hizo un dibujo de una boa que digería a un elefante; sin embargo, todos los adultos que veían el dibujo lo interpretaban erróneamente como un sombrero.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
