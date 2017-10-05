<?php
 require_once("login.php"); //Se asegura que el usuario este autenticado
 $atributos = $saml->getAttributes(); //Obtiene sus atributos
 echo "Bienvenido ". $atributos["uNombre"][0]."-".$atributos["uCorreo"][0]; //Imprime los atributos
 foreach ($atributos as $clave => $valor) {
    echo "<br><b>".$clave."</b>:".$valor[0];
}
 echo "<br><br>Usted se encuentra en la seccion privada de esta aplicaci&oacute;n<br><a href='../'>Ir a secci&oacute;n p&uacute;blica</a><br><a href='logout.php'>[Cerrar sesi&oacute;n]</a>";
?>