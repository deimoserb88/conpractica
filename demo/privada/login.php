<?php
  require_once("../config.php");

  $saml->requireAuth(); //Se asegura que un usuario esté autenticado. Si no lo está, inicia el proceso de autenticación.
  //NOTA: El flujo no continuará hasta que el usuario este correctamente autenticado por el IDP
?>