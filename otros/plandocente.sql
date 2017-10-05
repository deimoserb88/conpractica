-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 22-11-2010 a las 11:06:54
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `plandocente`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `calendario`
-- 

CREATE TABLE `calendario` (
  `cve_des` varchar(10) NOT NULL,
  `cve_per` varchar(10) NOT NULL,
  `fechaipp` date NOT NULL,
  `fechafpp` date NOT NULL,
  `fechaip1` date NOT NULL,
  `fechafp1` date NOT NULL,
  `fechaip2` date NOT NULL,
  `fechafp2` date NOT NULL,
  `fechaip3` date NOT NULL,
  `fechafp3` date NOT NULL,
  `fechaip4` date NOT NULL,
  `fechafp4` date NOT NULL,
  `fechaip5` date NOT NULL,
  `fechafp5` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `calendario`
-- 

INSERT INTO `calendario` VALUES ('*', '22010', '2010-09-01', '2010-09-12', '2010-09-13', '2010-09-16', '2010-10-19', '2010-10-22', '2010-11-23', '2010-11-30', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `carreras`
-- 

CREATE TABLE `carreras` (
  `cve_plan` varchar(10) NOT NULL,
  `cve_area` varchar(10) NOT NULL default '',
  `nom_car` varchar(100) NOT NULL,
  `dur` tinyint(4) NOT NULL,
  `per_es` varchar(20) NOT NULL,
  PRIMARY KEY  (`cve_plan`,`cve_area`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `carreras`
-- 

INSERT INTO `carreras` VALUES ('fd02', '00', 'PROFESIONAL ASOCIADO EN INFORMATICA ADMINISTRATIVA', 8, '1');
INSERT INTO `carreras` VALUES ('fd05', '01', 'LICENCIATURA EN INFORMÁTICA ADMINISTRATIVA', 9, '1');
INSERT INTO `carreras` VALUES ('fe01', '00', 'INGENIERÍA EN COMUNICACIONES Y ELECTRONICA', 10, '1');
INSERT INTO `carreras` VALUES ('fd03', '0', 'CONTADOR PÚBLICO', 9, '1');
INSERT INTO `carreras` VALUES ('im01', '00', 'INGENIERÍA EN MECATRÓNICA', 8, '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `delegacion`
-- 

CREATE TABLE `delegacion` (
  `Cve_del` tinyint(3) unsigned NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY  (`Cve_del`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `delegacion`
-- 

INSERT INTO `delegacion` VALUES (1, 'Manzanillo');
INSERT INTO `delegacion` VALUES (2, 'Colima');
INSERT INTO `delegacion` VALUES (3, 'Tecomán');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `des`
-- 

CREATE TABLE `des` (
  `cve_des` varchar(10) NOT NULL,
  `cve_del` tinyint(3) unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `siglas` varchar(20) NOT NULL,
  `turno` tinyint(4) NOT NULL,
  `direc` varchar(60) NOT NULL,
  `coord` varchar(60) NOT NULL,
  `login` varchar(8) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY  (`cve_des`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `des`
-- 

INSERT INTO `des` VALUES ('5020', 1, 'FACULTAD DE CONTABILIDAD Y ADMINISTRACIÓN DE MANZANILLO', 'FCAM', 4, 'MARIO DE JESUS NARANJO GONZALEZ', 'HECTOR DAMIAN RAMIREZ FLORES', 'fcam', 'fcam2');
INSERT INTO `des` VALUES ('3030', 1, 'FACULTAD DE INGENIERIA ELECTROMECANICA', 'FIE', 2, 'JORGE GUDIÑO LAU', 'NORBERTO LOPEZ LUIZ', 'fie2', 'fie2');
INSERT INTO `des` VALUES ('3010', 3, 'FACULTAD DE CONTABILIDAD Y ADMINISTRACIÓN DE TECOMÁN', 'FCAT', 2, 'ROSA', 'PIME', 'fcat', 'fcat');
INSERT INTO `des` VALUES ('5100', 2, 'FACULTAD DE CONTABILIDAD Y ADMINISTRACIÓN DE COLIMA', 'FCA', 4, 'ANA', 'JORGE LUIS', 'fca', 'fca');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `desdoc`
-- 

CREATE TABLE `desdoc` (
  `cve_des` varchar(10) NOT NULL,
  `cve_per` varchar(30) NOT NULL,
  `cve_doc` int(11) NOT NULL,
  PRIMARY KEY  (`cve_des`,`cve_per`,`cve_doc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `desdoc`
-- 

INSERT INTO `desdoc` VALUES ('3030', '22010', 4773);
INSERT INTO `desdoc` VALUES ('3030', '22010', 5630);
INSERT INTO `desdoc` VALUES ('5020', '12010', 1494);
INSERT INTO `desdoc` VALUES ('5020', '12010', 1505);
INSERT INTO `desdoc` VALUES ('5020', '12010', 3262);
INSERT INTO `desdoc` VALUES ('5020', '12010', 3274);
INSERT INTO `desdoc` VALUES ('5020', '12010', 3275);
INSERT INTO `desdoc` VALUES ('5020', '12010', 4210);
INSERT INTO `desdoc` VALUES ('5020', '12010', 4773);
INSERT INTO `desdoc` VALUES ('5020', '12010', 5027);
INSERT INTO `desdoc` VALUES ('5020', '12010', 5442);
INSERT INTO `desdoc` VALUES ('5020', '12010', 5630);
INSERT INTO `desdoc` VALUES ('5020', '12010', 5754);
INSERT INTO `desdoc` VALUES ('5020', '12010', 6191);
INSERT INTO `desdoc` VALUES ('5020', '12010', 6193);
INSERT INTO `desdoc` VALUES ('5020', '22010', 1494);
INSERT INTO `desdoc` VALUES ('5020', '22010', 1505);
INSERT INTO `desdoc` VALUES ('5020', '22010', 3262);
INSERT INTO `desdoc` VALUES ('5020', '22010', 3274);
INSERT INTO `desdoc` VALUES ('5020', '22010', 3275);
INSERT INTO `desdoc` VALUES ('5020', '22010', 4210);
INSERT INTO `desdoc` VALUES ('5020', '22010', 4773);
INSERT INTO `desdoc` VALUES ('5020', '22010', 5027);
INSERT INTO `desdoc` VALUES ('5020', '22010', 5442);
INSERT INTO `desdoc` VALUES ('5020', '22010', 5754);
INSERT INTO `desdoc` VALUES ('5020', '22010', 6191);
INSERT INTO `desdoc` VALUES ('5020', '22010', 6193);
INSERT INTO `desdoc` VALUES ('5020', '22010', 6576);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `despe`
-- 

CREATE TABLE `despe` (
  `cve_des` varchar(10) NOT NULL,
  `cve_plan` varchar(10) NOT NULL,
  `cve_area` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `despe`
-- 

INSERT INTO `despe` VALUES ('3010', 'fd03', '0');
INSERT INTO `despe` VALUES ('5020', 'fd05', '01');
INSERT INTO `despe` VALUES ('5020', 'fd03', '0');
INSERT INTO `despe` VALUES ('3030', 'fe01', '00');
INSERT INTO `despe` VALUES ('3010', 'fd05', '01');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `docentes`
-- 

CREATE TABLE `docentes` (
  `cve_doc` int(10) unsigned NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apaterno` varchar(40) NOT NULL,
  `amaterno` varchar(40) default NULL,
  `sexo` varchar(1) NOT NULL,
  `lada` varchar(3) default NULL,
  `tel` varchar(15) default NULL,
  `correoe` varchar(60) default NULL,
  `passw` varchar(30) NOT NULL,
  PRIMARY KEY  (`cve_doc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `docentes`
-- 

INSERT INTO `docentes` VALUES (5630, 'FELIPE DE JESUS', 'TORRES', 'BONILLA', 'M', '312', '3138770', 'felipe@hotmail.com', 'fe');
INSERT INTO `docentes` VALUES (4210, 'MARIA GUADALUPE', 'TORRES', 'BONILLA', 'F', '314', '3373386', 'ltorresbon@hotmail.com', 'nicky2');
INSERT INTO `docentes` VALUES (5754, 'ADRIAN', 'RIVERA', 'PEREGRINA', 'M', '', '', '', 'adrian');
INSERT INTO `docentes` VALUES (3275, 'RUTILIO', 'LOPEZ', 'BARBOSA', 'M', '', '', '', 'rutilio');
INSERT INTO `docentes` VALUES (6191, 'OSCAR', 'MEJIA', 'ARGANDA', 'M', '', '', '', 'oscar');
INSERT INTO `docentes` VALUES (5442, 'YADIRA', 'PÉREZ ', 'MÉNDEZ', 'F', '', '', '', 'yadira');
INSERT INTO `docentes` VALUES (3274, 'ALFONSO', 'ACEVES', 'GORDILLO', 'M', '', '', '', 'alfonso');
INSERT INTO `docentes` VALUES (5027, 'GERARDO', 'MIRAMONTES ', 'POLO', 'M', '', '', '', 'gerardo');
INSERT INTO `docentes` VALUES (1494, 'IVÁN SALVADOR', 'RUBIO', 'HERNÁNDEZ', 'M', '', '', '', 'ivan');
INSERT INTO `docentes` VALUES (1505, 'MA. LUISA', 'RUIZ', 'CORTES', 'M', '', '', '', 'luisa');
INSERT INTO `docentes` VALUES (6193, 'JULIO CESAR ', 'MARQUEZ', 'JIMENEZ', 'M', '', '', '', 'julio');
INSERT INTO `docentes` VALUES (3262, 'JOSE MANUEL', 'NARANJO', 'GONZÁLEZ', 'M', '', '', '', 'manuel');
INSERT INTO `docentes` VALUES (4773, 'JOSE JUAN', 'CORDOVA', 'GALLARDO', 'M', '', '', '', 'juan');
INSERT INTO `docentes` VALUES (6576, 'RICARDO ', 'RIVAS', 'OCHOA', 'M', '314', '4569875', 'ricardo@ucol.mx', 'ricardo');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jefesg`
-- 

CREATE TABLE `jefesg` (
  `no_cta` varchar(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apaterno` varchar(40) NOT NULL,
  `amaterno` varchar(40) default NULL,
  `sexo` varchar(1) NOT NULL,
  `lada` varchar(3) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `correoe` varchar(60) NOT NULL,
  `grado` tinyint(3) unsigned NOT NULL,
  `grupo` varchar(3) NOT NULL,
  `cve_des` varchar(10) NOT NULL,
  `cve_per` varchar(10) NOT NULL,
  PRIMARY KEY  (`no_cta`,`cve_des`,`cve_per`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `jefesg`
-- 

INSERT INTO `jefesg` VALUES ('2002-1563', 'ANA', 'TORRES', 'LARIOS', 'F', '315', '3369584', 'hola@hotmail.com', 5, 'C', '5020', '22010');
INSERT INTO `jefesg` VALUES ('2002-2256', 'JUAN', 'PINEDA', 'DOMINGUEZ', 'M', '314', '1067341', 'juan@hotmail.com', 3, 'C', '5020', '22010');
INSERT INTO `jefesg` VALUES ('2003-2689', 'IDANIA', 'RODRÍGUEZ', 'LARIOS', 'F', '314', '3359874', 'idania@ucol.mx', 1, 'D', '5020', '22010');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `matdoc`
-- 

CREATE TABLE `matdoc` (
  `cve_des` varchar(10) NOT NULL,
  `cve_plan` varchar(10) NOT NULL,
  `cve_area` varchar(10) NOT NULL,
  `cve_mat` varchar(10) NOT NULL,
  `cve_per` varchar(10) NOT NULL,
  `cve_doc` int(10) unsigned NOT NULL,
  `sem` tinyint(4) unsigned NOT NULL,
  `grupo` varchar(3) default NULL,
  `num_prac` tinyint(4) unsigned NOT NULL default '0',
  `num_pracr` tinyint(4) unsigned NOT NULL default '0',
  `cod_asig` int(11) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`cod_asig`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

-- 
-- Volcar la base de datos para la tabla `matdoc`
-- 

INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'a1', '22010', 3274, 1, 'C', 12, 0, 5);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'da1', '22010', 3275, 1, 'C', 5, 0, 6);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'it1', '22010', 6191, 1, 'C', 8, 0, 7);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'mc1', '22010', 5442, 1, 'C', 0, 0, 8);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'si1', '22010', 5027, 1, 'C', 0, 0, 9);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'so1', '22010', 5754, 1, 'C', 0, 0, 10);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'tt1', '22010', 3275, 1, 'C', 8, 0, 11);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'adsi3', '22010', 5754, 3, 'C', 9, 0, 12);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'pv3', '22010', 1494, 3, 'C', 15, 0, 13);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'so3', '22010', 6191, 3, 'C', 0, 0, 14);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'tr3', '22010', 4210, 3, 'C', 10, 0, 15);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'ac5', '22010', 6576, 5, 'C', 11, 0, 16);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'atc5', '22010', 0, 5, 'C', 0, 0, 17);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'ea5', '22010', 0, 5, 'C', 0, 0, 18);
INSERT INTO `matdoc` VALUES ('5020', 'fd05', '01', 'hdgc5', '22010', 0, 5, 'C', 0, 0, 19);
INSERT INTO `matdoc` VALUES ('5020', 'fd03', '0', 'cb1', '22010', 1505, 1, 'B', 15, 0, 20);
INSERT INTO `matdoc` VALUES ('5020', 'fd03', '0', 'cb1', '22010', 4773, 1, 'D', 8, 4, 21);
INSERT INTO `matdoc` VALUES ('3030', 'fe01', '00', 'sisad', '22010', 4773, 1, 'A', 8, 0, 37);
INSERT INTO `matdoc` VALUES ('3010', 'fd05', '01', 'da1', '22010', 4210, 1, 'C', 5, 3, 38);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `materia`
-- 

CREATE TABLE `materia` (
  `cve_plan` varchar(10) NOT NULL,
  `cve_area` varchar(10) NOT NULL,
  `cve_mat` varchar(10) NOT NULL,
  `num_per` tinyint(4) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `objetivo` varchar(250) default NULL,
  `biblio` varchar(250) default NULL,
  `tipo` tinyint(4) NOT NULL,
  `horast` tinyint(4) NOT NULL,
  `horasp` tinyint(4) NOT NULL,
  `credito` float NOT NULL,
  PRIMARY KEY  (`cve_plan`,`cve_area`,`cve_mat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `materia`
-- 

INSERT INTO `materia` VALUES ('fd05', '01', 'bd', 2, 'BASE DE DATOS', 'Al finalizar el curso el alumno conocerá y utilizará el modelo relacional para la configuración de datos y su uso mediante manejadores de base de datos', 'Básica: \r\nKroenke, David M. Procesamiento de Base de Datos. Prentice Hall Hispanoamericana. \r\nDate. Base de Datos. Prentice Hall Hispanoamericana.\r\nWierdhold. Diseño de base de datos. McGraw Hill.\r\nDe Apoyo:\r\nMaterial Bibliográfico de base de datos.', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'tr3', 3, 'TALLER DE REDES', 'Diseñar bases de datos WAN', 'CCNA 2 Exploration Cisco Academy Program', 1, 2, 3, 7);
INSERT INTO `materia` VALUES ('fd03', '0', 'cb1', 1, 'CONTABILIDAD BASICA I', 'Ubicar la contabilidad como una disciplina técnica que requiere de profesionistas capaces y preparados', 'Lara Flores, Elias. Contabilidad I. Ed. Trillas. México. 1996', 1, 3, 2, 8);
INSERT INTO `materia` VALUES ('im01', '00', '001', 3, 'PROGRAMACIÓN AVANZADA', 'Desarrollar programas de cómputo en lenguaje C para controlar dispositivos simples conectados a través de los puertos de salida de la computadora, así como leer datos de variables externas por los puertos de entrada.', 'Documentación técnica de C++ Builder', 2, 3, 4, 7.4);
INSERT INTO `materia` VALUES ('fd05', '01', 'so1', 1, 'SOFTWARE DE OFIMÁTICA', 'El alumno será capaz de utilizar Windows, crear documentos de texto, realizar operaciones y cálculos, enviar y recibir correos y realizar presentaciones.', 'Pascual, F. Domine Microsoft Officce 2000 Profesional. (2da. Edición). México: RA-MA.', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'da1', 1, 'DISEÑO DE ALGORITMOS', 'El alumno obtendrá conocimientos para la creación de algoritmos que resuelvan problemas específicos mediante el uso de computadoras.', 'Joyanes A., Luis. Metodología de la programación: diagramas de flujo, algoritmos. México: McGraw-Hill.', 1, 1, 3, 5);
INSERT INTO `materia` VALUES ('fd05', '01', 'tt1', 1, 'TALLER DE PROGRAMACIÓN', 'El alumno aprenderá el uso de un lenguaje de programación estructurada de tercera generación al mismo tiempo que aplicará y fortalecerá los conocimientos adquiridos en la materia de diseño de algoritmos.', 'Joyanes, A., Luis. Metodología de la programación: Diagramas de flujo, Algoritmos. México: Mc-Hill.', 1, 1, 3, 5);
INSERT INTO `materia` VALUES ('fd05', '01', 'it1', 1, 'INTRODUCCIÓN A LA TELEMÁTICA', 'Enterder los conocimientos básicos para la transmisión de la información a traves de los sistemas de telecomunicaciones.', 'Ricardo, Ruben. Teleinformática Aplicada. Vol. 1. Mc.Graw-Hill.\r\nAlcalde, Eduardo. Introducción a la Teleinformática. Mc.Graw-Hill.', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'mc1', 1, 'MATEMATICAS COMERCIALES', 'Que el alumno domine básicamente los temas de álgebra  tradicional, teoría de conjuntos, lógica y la función de la línea recta evitando en lo posible demostraciones de poca o nula aplicación.', 'Allendoerfer, Carl B., Matemáticas Universitarias. (4a. Edición). México: McGRaw-Hill.\r\nBaldor, Aurelio Dr. (1999). Álgebra. (17a. Edición ).  México:  Publicaciones Cultural. \r\nKleiman. Ariel. Conjuntos con Aplicaciones a la Administración. México: ', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'a1', 1, 'ADMINISTRACIÓN ', 'Al finalizar el curso, el alumno conocerá el proceso administrativo aplicable a todo organismo social.', 'Koontz Harold, Weihrich Heinz. (1999). Administración. Una perspectiva global. (11a. Edición). México: Mc Graw Hill.\r\nStoner James, Freeman Edward, Gilbert Daniel. (1996). Administración.  (6a. Edición). México: Pearson Education.\r\nHellriegel Don, Sl', 1, 2, 2, 4);
INSERT INTO `materia` VALUES ('fd05', '01', 'si1', 1, 'SEMINARIO DE INTEGRACIÓN I', 'Realizar actividades que contribuyan a complementar cada semestre la formación integral del alumno, las cuales se llevarán a cabo mediante un contacto directo con empresas de la localidad o de la región, buscando además propiciar un primer contacto d', '', 1, 0, 4, 4);
INSERT INTO `materia` VALUES ('fd05', '01', 'ttc2', 2, 'TALLER DE TECNOLOGÍAS COMPUTACIONALES', 'Al finalizar el curso, el alumno será capaz de instalar y configurar los distintos dispositivos, así como también conocer el procesamiento de datos.', 'Downton, A.C. Computadoras y Microprocesadores. México: Addison Wesley.\r\nMinassi, Mark. Mantenimiento de la PC. Ventura.\r\nLevine, Guillermo. Estructuras Fundamentales de la Computación, Los Principios. McGraw Hill.\r\nNorton, Peter. Toda la PC. Prentic', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'edpoo1', 2, 'ESTRUCTURA DE DATOS Y PROGRAMACIÓN ORIENTADA A OBJETOS', 'Al finalizar el curso, el alumno será capaz de crear programas de cómputo aplicando las estructuras de datos y el enfoque de la programación orientada a objetos.', 'Yedidyah Langsan. (1997). Estructuras de Datos con C y C++. (2a. Edición). México: Prentice Hall.\r\nDeitel. Programación en C y C++. Prentice Hall.\r\nCuenca Jimenez, Pedro Manuel. Programación En Java. Anaya Multimedia.\r\nSchildt, Herbert. Programación ', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'tr2', 2, 'TECNOLOGÍA DE REDES ', 'El alumno, al finalizar sabrá aplicar los conceptos básicos sobre las redes de computadoras.', 'Tanenbaum, Andrew, S. (1991). Redes de Ordenadores. (2a. Edición). Prentice-Hall Hispanoamericano.\r\nNemzow. (1995). The Ethernet Management Guide. (3a. Edición).  McGraw-Hill. \r\nComer, Douglas E. Redes Globales de Información con Internet y TCP/IP. P', 1, 3, 1, 7);
INSERT INTO `materia` VALUES ('fd05', '01', 'mf1', 2, 'MATEMÁTICAS FINANCIERAS', 'Al término de este curso, el alumno será capaz de resolver y plantear problemas de interés compuesto, valor presente, anualidades a plazo de todo tipo; aplicables a situaciones de la vida actual, utilizando para ello la calculadora y las fórmulas que', 'Portus Gevinden, Liconyan. (1998). Matemáticas Financieras. México: Mc Graw Hill.\r\nDíaz Mata, Alfredo. Aguilera Gómez. (1998). Matemática Financieras. México: Mc Graw Hill.\r\nMorales Felgueres, Carlos. (1995). Elementos de Matemáticas Financieras. Méx', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'merca1', 2, 'MERCADOTECNIA', 'Al finalizar el curso, el alumno será capaz de aplicar los conceptos mercadotécnicos, así como las técnicas propias para cada mercado, en función de los elementos y características de cada empresa y su medio ambiente. ', 'Kotler, Philip. (1996). Dirección de Mercadotecnia, ( 8a. Edición). México: Prentice Hall Hispanoamericana, S.A.\r\nKotler, Philip y Armstrong Gary. (1997). Fundamentos de Mercadotecnia. (4a. Edición). México: Prentice Hall Hispanoamericana, S.A.\r\nStan', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'si2', 2, 'SEMINARIO DE INTEGRACIÓN II', 'Realizar actividades que contribuyan a complementar cada semestre la formación integral del alumno, las cuales se llevarán a cabo mediante un contacto directo con empresas de la localidad o de la región, buscando además propiciar un primer contacto d', '', 1, 0, 4, 4);
INSERT INTO `materia` VALUES ('fd05', '01', 'pv3', 3, 'PROGRAMACIÓN VISUAL', 'Al finalizar el curso, será capaz de resolver problemas en alguno de los lenguajes de programación visual de alto nivel.', 'Ceballos, Francisco Javier. Enciclopedia de Microsoft Visual Basic 6. Alfaomega-Rama.\r\nDelphi 4. Prentice Hall o Pearson Education.\r\nGonzález, Alfonso. Programación de Base de Datos con Visual Basic. Computec-Rama.\r\nEddon, Guy, Eddon, Henry. Active X', 1, 1, 3, 5);
INSERT INTO `materia` VALUES ('fd05', '01', 'adsi3', 3, 'ANÁLISIS Y DISEÑO DE SISTEMAS DE INFORMACIÓN', 'Al finalizar el curso el alumno será capaz de aplicar la metodología adecuada para el desarrollo e implementación de Sistemas de Información.', 'Kendall y Kendall. (1997). Análisis y Diseño de Sistemas de Información. (3a. Edición). México: Prentice Hall.\r\nMc. Millan Claude, González F. Richard. (1989). Análisis de Sistemas. México: Trillas.\r\nScott George M. (1998).  Principios de Sistemas de', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'so3', 3, 'SISTEMAS OPERATIVOS', 'En esta materia el alumno comprenderá los conceptos elementales en que se basan los sistemas  operativos a fin de que pueda aplicar los conocimientos adquiridos en la selección del sistema operativo que deba implantarse para un determinado sistema in', 'Silberschatz Abraham, Galvin Baer Peter. (1999). Sistemas Operativos. (5a. Edición)     México: Addison Wesley.\r\nMilenkovic Milan. (1994). Sistemas Operativos, Conceptos y diseño. (2a. Edición) España: McGraw Hill.\r\nDeitel Harvey M. (1984). Introducc', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'scca4', 4, 'SOFTWARE COMERCIAL DE CONTAIBLIDAD Y ADMINISTRACIÓN', 'Al finalizar el curso, el alumno será capaz de desarrollar actividades contables y administrativas apoyado por los sistemas de información administrativos.', 'Manual del usuario del Contpaq Solución Integral en su versión más actualizada. \r\nManual del usuario de las aplicaciones vistas en la materia.\r\nMaterial consultado en Internet.\r\n', 1, 2, 2, 4);
INSERT INTO `materia` VALUES ('fd05', '01', 'hdw4', 4, 'HERRAMIENTAS DE DISEÑO WEB', 'Al finalizar el curso, el alumno será capaz de diseñar sitios Web de alto impacto, haciendo uso de las herramientas de vanguardia disponibles en el mercado.', 'Isaac, Scott. (1998). A fondo Dynamic HTML, Microsoft Press. México: McGraw Hill.\r\nManual de Dream Weaver.\r\nManual de FrontPage 2000.\r\n', 1, 1, 3, 5);
INSERT INTO `materia` VALUES ('fd05', '01', 'disi4', 4, 'DESARROLLO E IMPLEMENTACIÓN DE SISTEMAS DE INFORMACIÓN', 'Al finalizar el curso, el alumno será capaz de aplicar la metodología adecuada para el desarrollo e implementación de sistemas de información.', 'Kendall y Kendall. ( 1997 ). Análisis y Diseño de Sistemas de Información. ( 3a. Edición). México: Prentice Hall.\r\nMc. Millan Claude, González F. Richard. ( 1989 ). Análisis de Sistemas. México: Trillas.\r\nScott George M. ( 1998 ). Principios de Siste', 1, 2, 2, 4);
INSERT INTO `materia` VALUES ('fd05', '01', 'conta4', 4, 'CONTABILIDAD II', 'Que el alumno conozca conceptos y principios de aplicación para el sistema de registro de diario continental, ajustes, auxiliares y elaboración de hoja de trabajo.', 'Romero López, Javier. (1998). Contabilidad 2. México: Mc Graw Hill.\r\nMéndez V., Antonio y Javier. (1995). Contabilidad Segundo Curso. México: Part.\r\nCalleja Bernal, Fco. J. (1999). Contabilidad Financiera 2. México: Pearson.\r\nLara Flores, Elías. Cont', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'hdgc5', 5, 'HERRAMIENTAS DE DISEÑO GRÁFICO COMPUTARIZADO', 'Proporcionar al alumno conocimientos sobre aplicaciones para el diseño, creación y tratamiento de imágenes.', 'Greenberg, Adele D., Greenberg, Seth. Manual de Photoshop. Osborne. McGraw-Hill.\r\nCorel Corporation. Corel Draw. Corel Corporation.\r\nMaterial Bibliográfico de diseño gráfico.\r\nManuales de PhotoShop y Corel Draw.\r\nMaterial consultado en Internet\r\n', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'atc5', 5, 'ADMINISTRACIÓN DE TECNOLOGÍAS COMPUTACIONALES', 'Formar en el alumno las bases  necesarias que le permitan participar de forma activa en el proceso de administración de la función informática, con el fin de implantar mejoras al proceso, analizando sus formas de administración y control.', 'Hernández  Jiménez Ricardo. (1994). Administración de la Función Informática. (4a. Edición). México: Trillas.\r\nHernández Hernández  Enrique. (1997). Auditoria en Informática, Un enfoque metodológico. México: C.E.C.S.A.\r\nPiattini Velthusis Mario Gerar', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'ea5', 5, 'ESTADÍSTICA ADMINISTRATIVA ', 'Proporcionar a los alumnos las técnicas básicas de la Estadística Descriptiva  y Probabilidad para el manejo de toda clase de datos cuantitativos en la deducción de conclusiones validas con aplicación practica a diversas situaciones relacionadas y co', 'Kazmier, Leonard J. (1993). Estadística aplicada a la administración y la economía. Serie Schawm. (2a. Edición). México: Mc Graw Hill. \r\nBerenson, Mark L. Y Levin, David M. (1996). Estadística básica en administración. (6a. Edición). México: Prentice', 1, 2, 2, 4);
INSERT INTO `materia` VALUES ('fd05', '01', 'ac5', 5, 'ADMINISTRACIÓN DE LA CALIDAD', 'Al finalizar el curso, el alumno conocerá los diferentes enfoques, teorías y metodológicas de la administración de la calidad y productividad. \r\n\r\n', 'Waltan, Mony. (1992). El método Deming en la Práctica. México: Norma.\r\nIshi Kawa, Kaoru. (1995). ¿Que es el control total de calidad?. México: Norma.\r\nM. Juran, J. (1990). Juran y el Liderazgo para la calidad. Madrid: Díaz Santos.\r\nB. Crosby, Philip.', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'dam6', 6, 'DESARROLLO DE APLICACIONES MULTIMEDIA', 'Al finalizar el curso, el alumno será capaz de desarrollar aplicaciones multimedia integrando las herramientas de diseño vistas con anterioridad.', 'Pescador, Dario. (2000). Director 8. Guías Prácticas. Anaya Multimedia.\r\nNyquist, John R., Martin, Robert. (2000). La biblia de Director 8. Anaya Multimedia.\r\nRosenzweig, Gary. Macromedia Director 8 Edición Especial. Macromedia.\r\nCastro Gil, Manuel A', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'tbdd6', 6, 'TALLER DE BASE DE DATOS DISTRIBUIDAS', 'Al finalizar el curso, el alumno conocerá y utilizará los conocimientos de base de datos para  comprender y operar sistemas de bases de datos distribuidos.', 'Kroenke, David M. Procesamiento de base de datos. PHH.\r\nDate,  C.J. Base de datos. PHH.\r\nWierdhold. Diseño de base de datos. McGraw Hill.\r\nMaterial Bibliográfico de Base de datos distribuidas, manuales de usuario de Unix, Windows NT, Novell.\r\n\r\n', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'io6', 6, 'INVESTIGACIÓN DE OPERACIONES', 'Al finalizar el curso, el alumno definirá los conceptos básicos y los principales modelos (económicos, analógicos y simbólicos) de esta materia, identificará situaciones y condiciones en las que sean aplicables dichos modelos y los aplicará a la toma', 'Hillier, Frederick S. Introducción a la Investigación. McGraw Hill.\r\nWinston, W. Investigación de Operaciones. Grupo Editorial Iberoamericana.\r\nShambiln, J., Stevens, G. Investigación de Operaciones. México: McGraw Hill.\r\nAckoff, R., Sasiemi. Fundame', 1, 2, 2, 6);
INSERT INTO `materia` VALUES ('fd05', '01', 'de6', 6, 'DESARROLLO DE EMPRENDEDORES', 'Que el Licenciado en Informática Administrativa, se involucre con el sector productivo y sea un motivador para el desarrollo de la comunidad. Lo anterior mediante la obtención de las bases para la creación de su propia empresa y realización de su pla', 'Alcaraz R., Rafael. (2001). El Emprendedor de Éxito (Guía de planes de negocios). (2a. Edición). México: McGraw Hill. \r\nVarela, Rodrigo. (2001). Innovación empresarial (Arte y Ciencia en la creación de empresas). Colombia: Prentice Hall.\r\nSánchez, Al', 1, 2, 1, 5);
INSERT INTO `materia` VALUES ('fe01', '00', 'sisad', 1, 'SISTEMAS ADMINISTRATIVOS', 'Analizar los sistemas administrativos', 'Pressman, R. Sistemas de Gestión. Ed. McGraw-Hill. México 2002.', 1, 3, 1, 6);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mat_temas`
-- 

CREATE TABLE `mat_temas` (
  `cve_plan` varchar(10) NOT NULL,
  `cve_area` varchar(10) NOT NULL,
  `cve_mat` varchar(10) NOT NULL,
  `no_uni` tinyint(4) NOT NULL,
  `no_tema` tinyint(4) NOT NULL,
  `nom_tema` varchar(100) NOT NULL,
  `subtemas` varchar(250) default NULL,
  PRIMARY KEY  (`cve_plan`,`cve_area`,`cve_mat`,`no_uni`,`no_tema`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mat_temas`
-- 

INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 1, 1, 'DEFINICIÓN DE BASE DE DATOS', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 1, 2, 'SISTEMAS DE BASE DE DATOS', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 1, 3, 'INDEPENDENCIA DE DATOS', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 1, 4, 'CARACTERÍSTICAS DE UNA BASE DE  DATOS', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 1, 5, 'ELEMENTOS DE UNA BASE DE DATOS', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 2, 1, 'NIVEL FISICO', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 2, 2, 'NIVEL DEL USUARIO', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 2, 3, 'NIVEL CONCEPTUAL', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 2, 4, 'ARQUITECTURA DE LOS SISTEMAS CLIENTE SERVIDOR', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 3, 1, 'NORMALIZACION', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 3, 2, 'SQL', '');
INSERT INTO `mat_temas` VALUES ('fd05', '01', 'bd', 3, 3, 'MODELOS DE DISEÑO', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `mat_uni`
-- 

CREATE TABLE `mat_uni` (
  `cve_plan` varchar(10) NOT NULL,
  `cve_area` varchar(10) NOT NULL,
  `cve_mat` varchar(10) NOT NULL,
  `no_uni` tinyint(3) unsigned NOT NULL,
  `nom_uni` varchar(80) NOT NULL,
  `obj_uni` varchar(250) NOT NULL,
  `estrat` varchar(250) default NULL,
  `recursos` varchar(250) default NULL,
  `conoc` varchar(250) default NULL,
  `habil` varchar(250) default NULL,
  `actitud` varchar(250) default NULL,
  `tiempo` tinyint(4) default NULL,
  `criterio` varchar(250) default NULL,
  `desem` varchar(250) default NULL,
  `produc` varchar(250) default NULL,
  PRIMARY KEY  (`cve_plan`,`cve_area`,`cve_mat`,`no_uni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `mat_uni`
-- 

INSERT INTO `mat_uni` VALUES ('fd05', '01', 'bd', 1, 'INTRODUCCION', '', 'Trabajo en equipo. Lectura comentada', '', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('fd05', '01', 'bd', 2, 'ARQUITECTURA DE LOS SISTEMAS DE BASE DE DATOS', '', 'Investigación. Planteamiento y resolución de problemas', '', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('fd05', '01', 'bd', 3, 'DISEÑO DE BASE DE DATOS', '', 'Lectura comentada. Resolución de Ejercicios', '', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('fd03', '0', 'cb1', 1, 'ESTRUCTURA BÁSICA DE LA CONTABILIDAD', 'Conocer los fundamentos de la profesión contable.', 'Lectura comentada. Solución de Ejercicios.', 'Libros de la materia. Pizarron. Cuaderno de trabajo.', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('fd03', '0', 'cb1', 2, 'REGISTRO DE OPERACIONES MERCANTILES', 'Comprender las necesidades de registrar los aumentos y disminuciones que sufren los conceptos de activo, pasivo y capital.', 'Lectura.', 'Computadora. Libros de la materia. Cuadernos de trabajo.', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('fd03', '0', 'cb1', 3, 'MÉTODOS DE REGISTRO Y CONTROL DE MERCANCIAS Y COSTO DE VENTAS', 'Identificar y utilizar los diversos métodos de registro y control de mercancias y costos de ventas.', 'Resolución de ejercicios.', 'Cuadernos de trabajo. Libros de la materia.', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('fd03', '0', 'cb1', 4, 'CONTROL CONTABLE DEL IVA', 'Identificar a partir de saldos del IVA acreditable y trasladado el impuesto por enterar al fisco.', 'Resolución de ejercicios.', 'Computadora, cuadernos de trabajo, libros de la materia.', '', '', '', 0, '', '', '');
INSERT INTO `mat_uni` VALUES ('im01', '00', '001', 1, 'UNIDAD DE COMPETENCIA 1.', 'MANEJAR LOS PRINCIPIOS DE PROGRAMACIÓN ORIENTADA A OBJETOS POO.', 'Lluvia de ideas, exposición y discusión en pequeños grupos.', 'Pintarrón, plumones, computadora, y proyector digital.', 'Conocer y comprender los principios de la POO.', 'Identificar y definir la estructura de los objetos en programación.', 'Analítica, Propositiva, Receptiva/Tolerancia, Constancia.', 17, 'Identificar y definir la estructura de objetos así como utilizar sus métodos y eventos asociados.', 'Diagramas de objetos.', 'Programas de cómputo.');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `periodo`
-- 

CREATE TABLE `periodo` (
  `cve_per` varchar(10) NOT NULL,
  `nom_sem` varchar(50) NOT NULL,
  `activo` varchar(1) NOT NULL,
  PRIMARY KEY  (`cve_per`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `periodo`
-- 

INSERT INTO `periodo` VALUES ('12010', 'ENERO - JULIO 2010', '0');
INSERT INTO `periodo` VALUES ('22010', 'AGOSTO 2010 - ENERO 2011', '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `plandoc`
-- 

CREATE TABLE `plandoc` (
  `usuario` varchar(8) NOT NULL,
  `dato` varchar(30) NOT NULL,
  `nivel` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`usuario`,`dato`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `plandoc`
-- 

INSERT INTO `plandoc` VALUES ('fie', 'fie2', 1);
INSERT INTO `plandoc` VALUES ('es', 'es2', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `planprac`
-- 

CREATE TABLE `planprac` (
  `cod_asig` int(11) NOT NULL,
  `no_prac` int(11) NOT NULL auto_increment,
  `nombre` varchar(60) NOT NULL,
  `objetivo` varchar(150) NOT NULL,
  `cve_lab` varchar(20) NOT NULL,
  `hini` varchar(5) NOT NULL,
  `hter` varchar(5) NOT NULL,
  `fec_rea` date NOT NULL,
  `parcial` tinyint(4) NOT NULL,
  PRIMARY KEY  (`cod_asig`,`no_prac`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `planprac`
-- 

INSERT INTO `planprac` VALUES (21, 1, 'Introducción al COMPAQ', 'Descripción y Uso de las herramientas del COMPAQ', 'CCA', '8:00', '9:40', '2010-09-14', 1);
INSERT INTO `planprac` VALUES (21, 2, 'Registro de estados financieros', 'Mediante el uso del COMPAQ se registran los estados financieros', 'CCA', '10:10', '11:00', '2010-09-16', 1);
INSERT INTO `planprac` VALUES (21, 3, 'Generacion de reportes mediante el COMPAQ', 'Genración de reportes a traves de los estados financieros registrados', 'CCA', '10:00', '12:00', '2010-09-15', 1);
INSERT INTO `planprac` VALUES (21, 4, 'Generación de impuestos', 'Ejercicios sobre impuestos en CONPAQ', 'CCA', '8:00', '9:00', '2010-09-30', 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `talleres`
-- 

CREATE TABLE `talleres` (
  `cve_lab` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cve_des` varchar(10) NOT NULL,
  `respon` varchar(80) NOT NULL,
  PRIMARY KEY  (`cve_lab`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `talleres`
-- 

INSERT INTO `talleres` VALUES ('CCA', 'CENTRO DE COMPUTO ALTERNO', '5020', 'CESAR MARQUEZ JIMENEZ');
INSERT INTO `talleres` VALUES ('CCP', 'CENTRO DE COMPUTO PRINCIPAL', '5020', 'FAVELA COGHLAN');
INSERT INTO `talleres` VALUES ('LA', 'LABORATORIO DE INFORMÁTICA', '5020', 'JOSE MANUEL NARANJO GONZANLEZ');
