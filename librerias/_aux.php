<?php

/**
 * Description of aux
 *
 * @author erosales
 */
class __FECHA__ {

    var $meses = array(1 => "Enero", 2 => "Febrero", 3 => "Marzo", 4 => "Abril",
        5 => "Mayo", 6 => "Junio", 7 => "Julio", 8 => "Agosto",
        9 => "Septiembre", 10 => "Octubre", 11 => "Noviembre", 12 => "Diciembre");
    var $meses_corto = array(1 => 'ENE', 2 => 'FEB', 3 => 'MAR', 4 => 'ABR', 5 => 'MAY', 6 => 'JUN',
        7 => 'JUL', 8 => 'AGO', 9 => 'SEP', 10 => 'OCT', 11 => 'NOV', 12 => 'DIC');
    var $semana = array("Domingo", "Lunes", "Martes", "Mi&eacute;rcoles", "Jueves", "Viernes", "S&aacute;bado");

}

class nivel{
    private static $niveles = array(
        1 => 'ems',
        2 => 'lic',
        3 => 'pos'
    );
    public static function nvl($nvl){
        return self::$niveles[$nvl];
    }
}

class __COLORES__ {

    var $cb1; //color base 1
    var $cb2; //color base 2
    var $cb3; //color base 3
    var $cb4; //color base 4
    var $cb5; //color base 5
    var $to; //texto obscuro
    var $tc; //texto claro
    var $bo; //bordes obscuros
    var $bc; //bordes claros
    var $fo; //fondo obscuro
    var $fc; //fondo claro
    var $an; //link normal
    var $ah; //link sobre;
    var $av; //link visitado;

}

class Correo {

    function envia($Asunto, $Mensaje, $Remitente, $RemitenteEmail, $DestinatarioEmail, $DestinatarioEmailCc = "") {
//Copia a sistemas para evidencia
//$DestinatarioEmailCc = $DestinatarioEmailCc=="" ?  "sistemas@ucol.mx" : $DestinatarioEmailCc.",sistemas@ucol.mx";
//para el envio­o en formato HTML
        $headers = "MIME-Version: 1.0\r\n";
        $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
        $headers .= "From: " . $Remitente . "<" . $RemitenteEmail . ">\r\n";

//direcciones que recibiran copia
        $headers .= "BCc: " . $DestinatarioEmailCc . "\r\n";
        $Mensaje.="<hr><center>Universidad de Colima</center>";

//        echo $headers;die;
        
        if (mail($DestinatarioEmail, $Asunto, $Mensaje, $headers)) {
            return(1);
        } else {
            return(0);
        }
    }

// 
}
