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
    
    //$header->nueva_meta('<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />');
    $header->nueva_meta('<meta charset="UTF-8">');
    
    $header->nueva_meta('<link type="image/x-icon" href="http://www.ucol.mx/cms/img/favicon.ico" rel="icon" />');
    
    $header->nueva_meta('<link href="http://www.ucol.mx/cms/css/bootstrap3.css" rel="stylesheet">');
		
    $header->nueva_meta('<link href="http://www.ucol.mx/cms/headerfooterapp.css" rel="stylesheet">');
    
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

/*codigo heredado para la federacion de indetidad de la universidad de colima*/
//    $saml_lib_path = '/var/simplesamlphp/lib/_autoload.php';//La ruta donde se encuentra la librería principal de simplesamlphp                     
//    require_once($saml_lib_path);
//   //die("aqui");
//    $SP_URL = 'http://localhost:8080/conpractica/';//http://'.$_SERVER['SERVER_NAME']."/personalacademico/app/";  // url de nuestro servidor.
//    $SP_ORIGEN= 'dges_practicas';   // Fuente de autenticación definida en el authsources del SP
//    $saml = new SimpleSAML_Auth_Simple($SP_ORIGEN);   // Se crea la instancia del saml, pasando como parametro la fuente de autenticación.


