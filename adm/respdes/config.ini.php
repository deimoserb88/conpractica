<?php

error_reporting(E_ALL ^ E_NOTICE);

define("_GLOBALPATH_",dirname(__FILE__)."/");

//session_name("CONPRACTICA");
  
include("../../librerias/db.php");

    $sibtucol = new db();

    $sibtucol->db_host = "localhost";

    $sibtucol->db_name = "cgd_practicas";
   
    $pl = $sibtucol->db_connect();

 
    
    
include("../../librerias/listados.php");

include '../../librerias/cuerpo.php';

    $header = new head();

   
    
    $header->crear_jsfile();
    
    $header->nuevo_jsfile("../../jscripts/jquery.js");
    
    $header->nuevo_jsfile("../../jscript.js");
    
    $header->crear_meta();

    //$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Share:400,700' rel='stylesheet' type='text/css' />");//Fonts de Google web fonts
    
    $header->nueva_meta('<link href="https://fontastic.s3.amazonaws.com/YkvRruhw4K6cVhm9Z6RdGC/icons.css" rel="stylesheet">');//Funetes de Fontastic
    
    
    $header->nueva_meta('<meta charset="UTF-8">');
    
    $header->nueva_meta('<link type="image/x-icon" href="http://www.ucol.mx/cms/img/favicon.ico" rel="icon" />');
    
    $header->nueva_meta('<link href="http://www.ucol.mx/cms/css/bootstrap3.css" rel="stylesheet">');
		
    $header->nueva_meta('<link href="http://www.ucol.mx/cms/headerfooterapp.css" rel="stylesheet">');
    
    $header->nueva_meta('<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">');
    
    $header->nueva_meta('<link href="../../1.css" rel="stylesheet">');
   
    //$header->cssfile = "../css/1.css";
    
    
    $body = new cuerpo(); 
    
    include '../../headerfooterucol.php';
 
include '../../librerias/_aux.php';

$color = new __COLORES__();
$color->cb1 = "#026D77";
$color->cb2 = "#EFBE48";
$color->to = "#000";
$color->tc = "#DDD";
$color->fc = "#FFFFFF";//"#E8F2F3";
$color->an = "#4444FF";
$color->ah = "#7777FF";


