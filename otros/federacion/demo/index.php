<?php
 require_once('config.php');
 echo "SECCION PUBLICA";
 if($saml->isAuthenticated()) //Si el usuario ya esta autenticado en saml
	{ $atributos= $saml->getAttributes(); //Obtener sus atributos
	  echo "<br> Existe sesion a nombre de ".$atributos["uNombre"][0]."<br><a href='./privada/'>Ir a secci&oacute;n privada</a>"; //Imprimir el atributo uNombre
       } 
	else 
	 echo "<br>No hay sesion iniciada<br><a href='./privada/'>Iniciar sesi&oacute;n</a>";
?>