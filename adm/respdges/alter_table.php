<?php
require_once "./config.ini.php";
include("../versesion.php");

//$plant[] = "3010";
$plant[] = "3020";
$plant[] = "3030";
$plant[] = "3040";
$plant[] = "4012";
$plant[] = "5010";
$plant[] = "5020";
$plant[] = "5022";
$plant[] = "5030";
$plant[] = "5040";
$plant[] = "5050";
$plant[] = "5060";
$plant[] = "5070";
$plant[] = "5080";
$plant[] = "5090";
$plant[] = "5100";
$plant[] = "5110";
$plant[] = "5120";
$plant[] = "5130";
$plant[] = "5140";
$plant[] = "5150";
$plant[] = "5160";
$plant[] = "5170";
$plant[] = "5180";
$plant[] = "5190";
$plant[] = "5200";
$plant[] = "5210";
$plant[] = "5101";
$plant[] = "5021";
$plant[] = "3041";

foreach($plant as $value){

$sql1 = "
CREATE TABLE IF NOT EXISTS `dm".$value."` (
  `iddm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmateria` int(10) unsigned NOT NULL,
  `iddoc` int(10) unsigned NOT NULL,
  `idciclo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddm`)
);
";

$sql2 = "
CREATE TABLE IF NOT EXISTS `d".$value."` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notrab` varchar(5) NOT NULL COMMENT 'Numero de trabajador',
  `nom` varchar(45) NOT NULL,
  `apat` varchar(45) NOT NULL,
  `amat` varchar(45) DEFAULT NULL,
  `passwd` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddoc`)
);
";

$sql3 = "
CREATE TABLE IF NOT EXISTS `m".$value."` (
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
);
";

$sql4 = "
CREATE TABLE IF NOT EXISTS `pp".$value."` (
  `idpp` int(11) NOT NULL AUTO_INCREMENT,
  `idmateria` int(11) DEFAULT NULL,
  `materia` varchar(60) NOT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `npp` tinyint(2) DEFAULT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpp`)
);
";

$sql5 = "
CREATE TABLE IF NOT EXISTS `pr".$value."` (
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
);
";

$sql6 = "ALTER TABLE `pr".$value."` ADD `obs` VARCHAR(200) NULL AFTER `practica`";
/*
mysqli_query($pl,$sql1) or die("Fallo 1 :( ".  mysqli_error($pl));
mysqli_query($pl,$sql2) or die("Fallo 2 :( ".  mysqli_error($pl));
mysqli_query($pl,$sql3) or die("Fallo 3 :( ".  mysqli_error($pl));
mysqli_query($pl,$sql4) or die("Fallo 4 :( ".  mysqli_error($pl));
mysqli_query($pl,$sql5) or die("Fallo 5 :( ".  mysqli_error($pl));
*/

mysqli_query($pl,$sql6) or die("Fallo 6 :( ".  mysqli_error($pl));



}

echo "Ya";
?>
