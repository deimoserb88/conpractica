-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2015 a las 14:23:08
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.2-1ubuntu4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cgd_practicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `notrab` varchar(4) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `plant` varchar(4) NOT NULL,
  `login` varchar(15) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `priv` tinyint(1) DEFAULT '1',
  `tipo` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1>RespDGES, 2>RespPlant, 3>Docente',
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `notrab`, `nombre`, `plant`, `login`, `passwd`, `email`, `priv`, `tipo`, `activo`) VALUES
(1, '', 'Enrique', '0000', 'root', 'deimosfobos', 'erosales@ucol.mx', 0, 1, 1),
(2, '', 'Juan Vega', '0000', 'juan', 'juanv', NULL, 0, 1, 1),
(3, '', 'Rosalba Díaz Valencia', '3010', 'contabilidad', 'fcatec', NULL, 1, 2, 1),
(4, '', 'María Isabel Rodríguez', '3020', 'filosofia', 'escfilo', NULL, 1, 2, 1),
(5, '', 'Marcela Reyes Ramírez', '3030', 'marcela', 'f3030', NULL, 1, 2, 1),
(6, '', 'Carmen Mireya Rodriguez', '3040', 'lenguas', 'felex', NULL, 1, 2, 1),
(7, '', 'Javier Mendoza', '4012', 'instituto', 'beartes', NULL, 1, 2, 1),
(8, '', 'Briseida Ramos Ramírez', '5010', 'ciencias', 'faceduc', NULL, 1, 2, 1),
(9, '', 'Ma. Guadalupe Torres Bonilla', '5020', 'coadmon', 'fcamzo', NULL, 1, 2, 1),
(10, '', 'Salvador Barragan Gonzalez', '5030', 'ingenieria', 'mecanica', NULL, 1, 2, 1),
(11, '', 'Blanca Lorena Carrillo', '5040', 'arquitectura', 'diseno', NULL, 1, 2, 1),
(12, '', 'Gladis Espinoza González', '5050', 'ciencias', 'ambiente', NULL, 1, 2, 1),
(13, '', 'Alejandro Marquez', '5060', 'ciencias', 'agronomo', NULL, 1, 2, 1),
(14, '', 'Mirna Miranda Maciel', '5070', 'ciencias', 'marinas', NULL, 1, 2, 1),
(15, '', 'Delia Cristina Álvarez', '5080', 'ciencias', 'cpolitica', NULL, 1, 2, 1),
(16, '', 'Laura Larios Gómes', '5090', 'ciencia', 'quimica', NULL, 1, 2, 1),
(17, '', 'Esteban Alcaraz Viera', '5100', 'colima', 'fcacol', NULL, 1, 2, 1),
(18, '', 'Luis Enrique Cárdenas Voges', '5110', 'derecho', 'facuder', NULL, 1, 2, 1),
(19, '', 'Oriana Zahret Gaytan Gómez', '5120', 'economia', 'facecom', NULL, 1, 2, 1),
(20, '', 'Eduardo Hernández Torres', '5130', 'enfermeria', 'facenfe', NULL, 1, 2, 1),
(21, '', 'Sebastian Gonzalez Zepeda', '5140', 'ingeniero', 'faccivil', NULL, 1, 2, 1),
(22, '', 'Gabriela Pérez Andrade', '5150', 'letras', 'falcom', NULL, 1, 2, 1),
(23, '', 'Dr. Javier Fuentes Moreno', '5160', 'medicina', 'nutricion', NULL, 1, 2, 1),
(24, '', 'Luis Zamora Rocha', '5170', 'medicina', 'zootecnia', NULL, 1, 2, 1),
(25, '', 'Paulina Alcocer Garcia', '5180', 'pedagogia', 'didactica', NULL, 1, 2, 1),
(26, '', 'Fabiola Rojas Larios', '5190', 'psicologia', 'facpsicol', NULL, 1, 2, 1),
(27, '', 'Aaron Vazaquez Godina', '5200', 'telematica', 'compured', NULL, 1, 2, 1),
(28, '', 'Idalia Zamora Luna', '5210', 'trabajo', 'social', NULL, 1, 2, 1),
(29, '', 'Mayra Macías Cruz', '5101', 'merca', 'dotecnia', NULL, 1, 2, 1),
(30, '', 'Aurora Ramirez Tiburcio', '5021', 'comercio', 'exterior', NULL, 1, 2, 1),
(31, '', 'Zhared Pérez Pérez', '3041', 'turismo', 'esctur', NULL, 1, 2, 1),
(32, '', 'Otoniel Sosa Rodriguez', '5022', 'gastronomia', 'turgastro', 'art_20_100@hotmail.com', 1, 2, 1),
(33, '', 'Pablo Ernesto Martel', '5021', 'escuela', 'comercio', NULL, 1, 2, 1),
(34, '', 'Amalia Jimenez', '5050', 'ciencias', 'amalia', NULL, 1, 2, 1),
(35, '', 'Sofia León', '5100', 'colima', 'sofia', NULL, 1, 2, 1),
(36, '', 'Salvador Barragan Gonzalez', '5030', 'sbg', 'fime', NULL, 1, 2, 1);
