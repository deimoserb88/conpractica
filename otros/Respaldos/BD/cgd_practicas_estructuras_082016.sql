-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 30, 2016 at 02:13 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cgd_practicas`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciclos`
--

CREATE TABLE IF NOT EXISTS `ciclos` (
  `idciclo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomciclo` varchar(45) NOT NULL,
  `cde` date NOT NULL,
  `ca` date NOT NULL,
  `activo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idciclo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `d3010`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

--
-- Table structure for table `d3020`
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
-- Table structure for table `d3030`
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
-- Table structure for table `d3040`
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
-- Table structure for table `d3041`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `d4012`
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
-- Table structure for table `d5010`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5020`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5021`
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
-- Table structure for table `d5022`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5030`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5040`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5050`
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
-- Table structure for table `d5060`
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
-- Table structure for table `d5070`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5080`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5090`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5100`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5101`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5110`
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
-- Table structure for table `d5120`
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
-- Table structure for table `d5130`
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
-- Table structure for table `d5140`
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
-- Table structure for table `d5150`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5160`
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
-- Table structure for table `d5170`
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
-- Table structure for table `d5180`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5190`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5200`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

-- --------------------------------------------------------

--
-- Table structure for table `d5210`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- --------------------------------------------------------

--
-- Table structure for table `des`
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
-- Table structure for table `dm3010`
--

CREATE TABLE IF NOT EXISTS `dm3010` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=283 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm3020`
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
-- Table structure for table `dm3030`
--

CREATE TABLE IF NOT EXISTS `dm3030` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm3040`
--

CREATE TABLE IF NOT EXISTS `dm3040` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm3041`
--

CREATE TABLE IF NOT EXISTS `dm3041` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm4012`
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
-- Table structure for table `dm5010`
--

CREATE TABLE IF NOT EXISTS `dm5010` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=274 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5020`
--

CREATE TABLE IF NOT EXISTS `dm5020` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=252 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5021`
--

CREATE TABLE IF NOT EXISTS `dm5021` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5022`
--

CREATE TABLE IF NOT EXISTS `dm5022` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5030`
--

CREATE TABLE IF NOT EXISTS `dm5030` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1975 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5040`
--

CREATE TABLE IF NOT EXISTS `dm5040` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5050`
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
-- Table structure for table `dm5060`
--

CREATE TABLE IF NOT EXISTS `dm5060` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=298 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5070`
--

CREATE TABLE IF NOT EXISTS `dm5070` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=361 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5080`
--

CREATE TABLE IF NOT EXISTS `dm5080` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5090`
--

CREATE TABLE IF NOT EXISTS `dm5090` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=636 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5100`
--

CREATE TABLE IF NOT EXISTS `dm5100` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5101`
--

CREATE TABLE IF NOT EXISTS `dm5101` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5110`
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
-- Table structure for table `dm5120`
--

CREATE TABLE IF NOT EXISTS `dm5120` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5130`
--

CREATE TABLE IF NOT EXISTS `dm5130` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5140`
--

CREATE TABLE IF NOT EXISTS `dm5140` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5150`
--

CREATE TABLE IF NOT EXISTS `dm5150` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5160`
--

CREATE TABLE IF NOT EXISTS `dm5160` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5170`
--

CREATE TABLE IF NOT EXISTS `dm5170` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=474 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5180`
--

CREATE TABLE IF NOT EXISTS `dm5180` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5190`
--

CREATE TABLE IF NOT EXISTS `dm5190` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=593 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5200`
--

CREATE TABLE IF NOT EXISTS `dm5200` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=427 ;

-- --------------------------------------------------------

--
-- Table structure for table `dm5210`
--

CREATE TABLE IF NOT EXISTS `dm5210` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

-- --------------------------------------------------------

--
-- Table structure for table `m3010`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

-- --------------------------------------------------------

--
-- Table structure for table `m3020`
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
-- Table structure for table `m3030`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=153 ;

-- --------------------------------------------------------

--
-- Table structure for table `m3040`
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
-- Table structure for table `m3041`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=156 ;

-- --------------------------------------------------------

--
-- Table structure for table `m4012`
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
-- Table structure for table `m5010`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5020`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5021`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5022`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5030`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=819 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5040`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=181 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5050`
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
-- Table structure for table `m5060`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=212 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5070`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=243 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5080`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5090`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=279 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5100`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5101`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5110`
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
-- Table structure for table `m5120`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5130`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5140`
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
-- Table structure for table `m5150`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5160`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5170`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=320 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5180`
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
-- Table structure for table `m5190`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=336 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5200`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

-- --------------------------------------------------------

--
-- Table structure for table `m5210`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Table structure for table `pe`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

-- --------------------------------------------------------

--
-- Table structure for table `periodos`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp3010`
--

CREATE TABLE IF NOT EXISTS `pp3010` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp3020`
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
-- Table structure for table `pp3030`
--

CREATE TABLE IF NOT EXISTS `pp3030` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=181 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp3040`
--

CREATE TABLE IF NOT EXISTS `pp3040` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp3041`
--

CREATE TABLE IF NOT EXISTS `pp3041` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp4012`
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
-- Table structure for table `pp5010`
--

CREATE TABLE IF NOT EXISTS `pp5010` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5020`
--

CREATE TABLE IF NOT EXISTS `pp5020` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=228 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5021`
--

CREATE TABLE IF NOT EXISTS `pp5021` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5022`
--

CREATE TABLE IF NOT EXISTS `pp5022` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=182 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5030`
--

CREATE TABLE IF NOT EXISTS `pp5030` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=684 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5040`
--

CREATE TABLE IF NOT EXISTS `pp5040` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5050`
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
-- Table structure for table `pp5060`
--

CREATE TABLE IF NOT EXISTS `pp5060` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5070`
--

CREATE TABLE IF NOT EXISTS `pp5070` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=235 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5080`
--

CREATE TABLE IF NOT EXISTS `pp5080` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5090`
--

CREATE TABLE IF NOT EXISTS `pp5090` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=383 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5100`
--

CREATE TABLE IF NOT EXISTS `pp5100` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5101`
--

CREATE TABLE IF NOT EXISTS `pp5101` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5110`
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
-- Table structure for table `pp5120`
--

CREATE TABLE IF NOT EXISTS `pp5120` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5130`
--

CREATE TABLE IF NOT EXISTS `pp5130` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=265 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5140`
--

CREATE TABLE IF NOT EXISTS `pp5140` (
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
-- Table structure for table `pp5150`
--

CREATE TABLE IF NOT EXISTS `pp5150` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5160`
--

CREATE TABLE IF NOT EXISTS `pp5160` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5170`
--

CREATE TABLE IF NOT EXISTS `pp5170` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=445 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5180`
--

CREATE TABLE IF NOT EXISTS `pp5180` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5190`
--

CREATE TABLE IF NOT EXISTS `pp5190` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=393 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5200`
--

CREATE TABLE IF NOT EXISTS `pp5200` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=427 ;

-- --------------------------------------------------------

--
-- Table structure for table `pp5210`
--

CREATE TABLE IF NOT EXISTS `pp5210` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr3010`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1841 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr3020`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr3030`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=828 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr3040`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr3041`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr4012`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5010`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5020`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2524 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5021`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=295 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5022`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=840 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5030`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4521 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5040`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=284 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5050`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5060`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=453 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5070`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1165 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5080`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5090`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2512 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5100`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=599 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5101`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=326 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5110`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5120`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5130`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2486 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5140`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=549 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5150`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=838 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5160`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=531 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5170`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1889 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5180`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5190`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1035 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5200`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2079 ;

-- --------------------------------------------------------

--
-- Table structure for table `pr5210`
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
  `obs` varchar(200) DEFAULT NULL,
  `vobodes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1004 ;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
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
-- Table structure for table `usuarios`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;
