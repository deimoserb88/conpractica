-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-08-2011 a las 10:23:21
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.2-1ubuntu4.9

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
-- Estructura de tabla para la tabla `d5060`
--

CREATE TABLE IF NOT EXISTS `d5060` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(10) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5060`
--

CREATE TABLE IF NOT EXISTS `dm5060` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5060`
--

CREATE TABLE IF NOT EXISTS `m5060` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `idpe` int(11) DEFAULT NULL,
  `sem` tinyint(2) DEFAULT NULL,
  `materia` varchar(60) DEFAULT NULL,
  `objtivo` text,
  `compg` text,
  `compe` text,
  `biblio` text,
  `hs` tinyint(2) DEFAULT NULL,
  `ht` tinyint(2) DEFAULT NULL,
  `hp` tinyint(2) DEFAULT NULL,
  `cred` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5060`
--

CREATE TABLE IF NOT EXISTS `pp5060` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5060`
--

CREATE TABLE IF NOT EXISTS `pr5060` (
  `idpr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) NOT NULL,
  `idperiodo` int(10) NOT NULL,
  `parcial` tinyint(1) NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  `grupo` varchar(3) NOT NULL,
  `hrs` tinyint(3) unsigned NOT NULL,
  `practica` varchar(100) NOT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
