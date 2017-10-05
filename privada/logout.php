<?php    
    require_once('../config.ini.php');
    if($saml->isAuthenticated()) //Si hay sesi�n iniciada, hacer logout del IDP
		$saml->logout($SP_URL);  	// Se puede pasar como parametro a donde redireccionar tras el logout
	else 
		header("Location:".$SP_URL); //Si no tenia sesi�n iniciada, lo redirecciona a la url configurada. 
?>
