<?php

error_reporting(E_ALL ^ E_NOTICE);
ini_set('session.bug_compat_42', 1);
ini_set('session.bug_compat_warn', 0);


class _FECHA_ {
	var $meses = array(1=>"Enero",2=>"Febrero",3=>"Marzo",4=>"Abril",
				   5=>"Mayo",6=>"Junio",7=>"Julio",8=>"Agosto",
				   9=>"Septiembre",10=>"Octubre",11=>"Noviembre",12=>"Diciembre");
				   
	var $semana = array("Domingo","Lunes","Martes","Mi&eacute;rcoles","Jueves","Viernes","S&aacute;bado");
}

$parcial = array(1=>"Primera","Segunda","Tercera","Cuarta","Quinta");

$ac = array(    "CBA"=>"CIENCIAS BIOLOGICAS Y AGROPECUARIAS",
                "CSA"=>"CIENCIAS SOCIALES Y ADMINISTRATIVAS",
                "EH" =>"EDUCACI&Oacute;N Y HUMANIDADES",
                "IT" =>"INGENIER&Iacute;A Y TECNOLOG&Iacute;A",
                "CNE"=>"CIENCIAS NATURALES Y EXACTAS",
                "CS" =>"CIENCIAS DE LA SALUD");

$cf1 = array("#E0E3E8","#F6FAFF");//colores de filas alternadas para tablas 1


$dominio = "www.ucol.mx";
//$ruta = "";
$ruta = "/cgd/dgesn/practicas/";

$nombredep = "DIRECCION GENERAL DE EDUCACION SUPERIOR";

$host ="localhost";
$user = "root";
$passwd = "";
//$user = "wpracticas";
//$passwd = "wpr2011";

$database = "cgd_practicas";



$conpractica = mysql_connect($host,$user,$passwd) or die("Imposible conectarse a la base de datos: ".mysqli_error($pl));
@mysql_select_db($database) or die("Imposible seleccionar la base de datos: ".mysqli_error($pl));
session_name("CONPRACTICA");

?>