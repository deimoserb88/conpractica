-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-01-2016 a las 12:31:39
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
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE IF NOT EXISTS `ciclos` (
  `idciclo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomciclo` varchar(45) NOT NULL,
  `cde` date NOT NULL,
  `ca` date NOT NULL,
  `activo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idciclo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d3010`
--

CREATE TABLE IF NOT EXISTS `d3010` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d3020`
--

CREATE TABLE IF NOT EXISTS `d3020` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d3030`
--

CREATE TABLE IF NOT EXISTS `d3030` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d3040`
--

CREATE TABLE IF NOT EXISTS `d3040` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d3041`
--

CREATE TABLE IF NOT EXISTS `d3041` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d4012`
--

CREATE TABLE IF NOT EXISTS `d4012` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5010`
--

CREATE TABLE IF NOT EXISTS `d5010` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5020`
--

CREATE TABLE IF NOT EXISTS `d5020` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5021`
--

CREATE TABLE IF NOT EXISTS `d5021` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5022`
--

CREATE TABLE IF NOT EXISTS `d5022` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5030`
--

CREATE TABLE IF NOT EXISTS `d5030` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5040`
--

CREATE TABLE IF NOT EXISTS `d5040` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5050`
--

CREATE TABLE IF NOT EXISTS `d5050` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

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
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5070`
--

CREATE TABLE IF NOT EXISTS `d5070` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5080`
--

CREATE TABLE IF NOT EXISTS `d5080` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5090`
--

CREATE TABLE IF NOT EXISTS `d5090` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5100`
--

CREATE TABLE IF NOT EXISTS `d5100` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5101`
--

CREATE TABLE IF NOT EXISTS `d5101` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5110`
--

CREATE TABLE IF NOT EXISTS `d5110` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5120`
--

CREATE TABLE IF NOT EXISTS `d5120` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5130`
--

CREATE TABLE IF NOT EXISTS `d5130` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5140`
--

CREATE TABLE IF NOT EXISTS `d5140` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5150`
--

CREATE TABLE IF NOT EXISTS `d5150` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5160`
--

CREATE TABLE IF NOT EXISTS `d5160` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5170`
--

CREATE TABLE IF NOT EXISTS `d5170` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5180`
--

CREATE TABLE IF NOT EXISTS `d5180` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5190`
--

CREATE TABLE IF NOT EXISTS `d5190` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5200`
--

CREATE TABLE IF NOT EXISTS `d5200` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d5210`
--

CREATE TABLE IF NOT EXISTS `d5210` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `des`
--

CREATE TABLE IF NOT EXISTS `des` (
  `idplant` int(11) NOT NULL AUTO_INCREMENT,
  `plant` varchar(4) DEFAULT NULL,
  `nomplant` varchar(60) DEFAULT NULL,
  `siglas` varchar(10) DEFAULT NULL,
  `director` varchar(60) DEFAULT NULL,
  `asesorp` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idplant`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm3010`
--

CREATE TABLE IF NOT EXISTS `dm3010` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm3020`
--

CREATE TABLE IF NOT EXISTS `dm3020` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm3030`
--

CREATE TABLE IF NOT EXISTS `dm3030` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=142 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm3040`
--

CREATE TABLE IF NOT EXISTS `dm3040` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm3041`
--

CREATE TABLE IF NOT EXISTS `dm3041` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=257 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm4012`
--

CREATE TABLE IF NOT EXISTS `dm4012` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5010`
--

CREATE TABLE IF NOT EXISTS `dm5010` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=217 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5020`
--

CREATE TABLE IF NOT EXISTS `dm5020` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=203 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5021`
--

CREATE TABLE IF NOT EXISTS `dm5021` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5022`
--

CREATE TABLE IF NOT EXISTS `dm5022` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5030`
--

CREATE TABLE IF NOT EXISTS `dm5030` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1824 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5040`
--

CREATE TABLE IF NOT EXISTS `dm5040` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=203 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5050`
--

CREATE TABLE IF NOT EXISTS `dm5050` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=291 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5070`
--

CREATE TABLE IF NOT EXISTS `dm5070` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=320 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5080`
--

CREATE TABLE IF NOT EXISTS `dm5080` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5090`
--

CREATE TABLE IF NOT EXISTS `dm5090` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=559 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5100`
--

CREATE TABLE IF NOT EXISTS `dm5100` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5101`
--

CREATE TABLE IF NOT EXISTS `dm5101` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5110`
--

CREATE TABLE IF NOT EXISTS `dm5110` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5120`
--

CREATE TABLE IF NOT EXISTS `dm5120` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5130`
--

CREATE TABLE IF NOT EXISTS `dm5130` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5140`
--

CREATE TABLE IF NOT EXISTS `dm5140` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5150`
--

CREATE TABLE IF NOT EXISTS `dm5150` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5160`
--

CREATE TABLE IF NOT EXISTS `dm5160` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5170`
--

CREATE TABLE IF NOT EXISTS `dm5170` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=401 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5180`
--

CREATE TABLE IF NOT EXISTS `dm5180` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5190`
--

CREATE TABLE IF NOT EXISTS `dm5190` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=419 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5200`
--

CREATE TABLE IF NOT EXISTS `dm5200` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=364 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm5210`
--

CREATE TABLE IF NOT EXISTS `dm5210` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m3010`
--

CREATE TABLE IF NOT EXISTS `m3010` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m3020`
--

CREATE TABLE IF NOT EXISTS `m3020` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m3030`
--

CREATE TABLE IF NOT EXISTS `m3030` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m3040`
--

CREATE TABLE IF NOT EXISTS `m3040` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m3041`
--

CREATE TABLE IF NOT EXISTS `m3041` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m4012`
--

CREATE TABLE IF NOT EXISTS `m4012` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5010`
--

CREATE TABLE IF NOT EXISTS `m5010` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5020`
--

CREATE TABLE IF NOT EXISTS `m5020` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5021`
--

CREATE TABLE IF NOT EXISTS `m5021` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5022`
--

CREATE TABLE IF NOT EXISTS `m5022` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5030`
--

CREATE TABLE IF NOT EXISTS `m5030` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=782 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5040`
--

CREATE TABLE IF NOT EXISTS `m5040` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5050`
--

CREATE TABLE IF NOT EXISTS `m5050` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=210 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5070`
--

CREATE TABLE IF NOT EXISTS `m5070` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=184 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5080`
--

CREATE TABLE IF NOT EXISTS `m5080` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5090`
--

CREATE TABLE IF NOT EXISTS `m5090` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=267 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5100`
--

CREATE TABLE IF NOT EXISTS `m5100` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5101`
--

CREATE TABLE IF NOT EXISTS `m5101` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5110`
--

CREATE TABLE IF NOT EXISTS `m5110` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5120`
--

CREATE TABLE IF NOT EXISTS `m5120` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5130`
--

CREATE TABLE IF NOT EXISTS `m5130` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5140`
--

CREATE TABLE IF NOT EXISTS `m5140` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5150`
--

CREATE TABLE IF NOT EXISTS `m5150` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5160`
--

CREATE TABLE IF NOT EXISTS `m5160` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5170`
--

CREATE TABLE IF NOT EXISTS `m5170` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5180`
--

CREATE TABLE IF NOT EXISTS `m5180` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5190`
--

CREATE TABLE IF NOT EXISTS `m5190` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=248 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5200`
--

CREATE TABLE IF NOT EXISTS `m5200` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m5210`
--

CREATE TABLE IF NOT EXISTS `m5210` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pe`
--

CREATE TABLE IF NOT EXISTS `pe` (
  `idpe` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan` varchar(6) NOT NULL COMMENT 'Plan, por ejemplo FD01, etc. No plantel, ver campo plant',
  `area` varchar(5) DEFAULT NULL,
  `peg` text,
  `nombre` varchar(60) NOT NULL,
  `abrev` varchar(10) NOT NULL COMMENT 'Nombre abreviado del programa',
  `plant` varchar(4) NOT NULL COMMENT 'Plantel XXXX, no plan',
  `periodos` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idpe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE IF NOT EXISTS `periodos` (
  `idperiodo` int(11) NOT NULL AUTO_INCREMENT,
  `idciclo` int(11) NOT NULL,
  `plant` varchar(4) NOT NULL COMMENT 'plantel (XXXX)en ceros si aplica para todos',
  `tipo` tinyint(1) NOT NULL COMMENT '0> programacion de prácticas; 1..5>primera parcial, segunda parcial, etc.',
  `pde` date DEFAULT NULL,
  `pa` date DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idperiodo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp3010`
--

CREATE TABLE IF NOT EXISTS `pp3010` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp3020`
--

CREATE TABLE IF NOT EXISTS `pp3020` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp3030`
--

CREATE TABLE IF NOT EXISTS `pp3030` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp3040`
--

CREATE TABLE IF NOT EXISTS `pp3040` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp3041`
--

CREATE TABLE IF NOT EXISTS `pp3041` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=189 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp4012`
--

CREATE TABLE IF NOT EXISTS `pp4012` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5010`
--

CREATE TABLE IF NOT EXISTS `pp5010` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5020`
--

CREATE TABLE IF NOT EXISTS `pp5020` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5021`
--

CREATE TABLE IF NOT EXISTS `pp5021` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5022`
--

CREATE TABLE IF NOT EXISTS `pp5022` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5030`
--

CREATE TABLE IF NOT EXISTS `pp5030` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=589 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5040`
--

CREATE TABLE IF NOT EXISTS `pp5040` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5050`
--

CREATE TABLE IF NOT EXISTS `pp5050` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=258 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5070`
--

CREATE TABLE IF NOT EXISTS `pp5070` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5080`
--

CREATE TABLE IF NOT EXISTS `pp5080` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5090`
--

CREATE TABLE IF NOT EXISTS `pp5090` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=318 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5100`
--

CREATE TABLE IF NOT EXISTS `pp5100` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5101`
--

CREATE TABLE IF NOT EXISTS `pp5101` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5110`
--

CREATE TABLE IF NOT EXISTS `pp5110` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5120`
--

CREATE TABLE IF NOT EXISTS `pp5120` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5130`
--

CREATE TABLE IF NOT EXISTS `pp5130` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5140`
--

CREATE TABLE IF NOT EXISTS `pp5140` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5150`
--

CREATE TABLE IF NOT EXISTS `pp5150` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5160`
--

CREATE TABLE IF NOT EXISTS `pp5160` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5170`
--

CREATE TABLE IF NOT EXISTS `pp5170` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=425 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5180`
--

CREATE TABLE IF NOT EXISTS `pp5180` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5190`
--

CREATE TABLE IF NOT EXISTS `pp5190` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=329 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5200`
--

CREATE TABLE IF NOT EXISTS `pp5200` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=362 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pp5210`
--

CREATE TABLE IF NOT EXISTS `pp5210` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr3010`
--

CREATE TABLE IF NOT EXISTS `pr3010` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1618 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr3020`
--

CREATE TABLE IF NOT EXISTS `pr3020` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr3030`
--

CREATE TABLE IF NOT EXISTS `pr3030` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=798 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr3040`
--

CREATE TABLE IF NOT EXISTS `pr3040` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr3041`
--

CREATE TABLE IF NOT EXISTS `pr3041` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=361 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr4012`
--

CREATE TABLE IF NOT EXISTS `pr4012` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5010`
--

CREATE TABLE IF NOT EXISTS `pr5010` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5020`
--

CREATE TABLE IF NOT EXISTS `pr5020` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2328 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5021`
--

CREATE TABLE IF NOT EXISTS `pr5021` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=295 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5022`
--

CREATE TABLE IF NOT EXISTS `pr5022` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=704 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5030`
--

CREATE TABLE IF NOT EXISTS `pr5030` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3929 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5040`
--

CREATE TABLE IF NOT EXISTS `pr5040` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=232 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5050`
--

CREATE TABLE IF NOT EXISTS `pr5050` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=433 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5070`
--

CREATE TABLE IF NOT EXISTS `pr5070` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1036 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5080`
--

CREATE TABLE IF NOT EXISTS `pr5080` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5090`
--

CREATE TABLE IF NOT EXISTS `pr5090` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2207 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5100`
--

CREATE TABLE IF NOT EXISTS `pr5100` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=580 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5101`
--

CREATE TABLE IF NOT EXISTS `pr5101` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=297 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5110`
--

CREATE TABLE IF NOT EXISTS `pr5110` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5120`
--

CREATE TABLE IF NOT EXISTS `pr5120` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5130`
--

CREATE TABLE IF NOT EXISTS `pr5130` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2100 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5140`
--

CREATE TABLE IF NOT EXISTS `pr5140` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=549 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5150`
--

CREATE TABLE IF NOT EXISTS `pr5150` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=713 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5160`
--

CREATE TABLE IF NOT EXISTS `pr5160` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=467 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5170`
--

CREATE TABLE IF NOT EXISTS `pr5170` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1784 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5180`
--

CREATE TABLE IF NOT EXISTS `pr5180` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5190`
--

CREATE TABLE IF NOT EXISTS `pr5190` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=920 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5200`
--

CREATE TABLE IF NOT EXISTS `pr5200` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1822 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr5210`
--

CREATE TABLE IF NOT EXISTS `pr5210` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=941 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `Entro` char(1) NOT NULL DEFAULT '',
  `Id` varchar(9) NOT NULL DEFAULT '',
  `tipo` tinyint(1) NOT NULL,
  `plant` varchar(4) NOT NULL,
  `Desde` varchar(30) NOT NULL DEFAULT '',
  `Fecha` date DEFAULT NULL,
  `Hora` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;
