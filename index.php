<?php
//require_once('config.php');


//echo phpversion();

require_once('./config.ini.php');

//echo "Control de Pr&aacute;cticas de Laboratorio, Taller y Campo";
//if ($saml->isAuthenticated()) { //Si el usuario ya esta autenticado en saml
//    $atributos = $saml->getAttributes(); //Obtener sus atributos
//    echo "<br> Existe sesi&oacute;n a nombre de " . $atributos["uNombre"][0] . "<br><a href='./adm/'>Ir a secci&oacute;n privada</a>"; //Imprimir el atributo uNombre
//} else {
    $header->nueva_meta('<meta name="KEYWORDS" content="" />');

    $header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

    $header->title = "[Educaci&oacute;n Superior]";

    $header->set_head(false);


    $header->close_head();


    $body->body_style = "background-color: " . $color->fc;
    $body->main_css = "margin: 5px auto; height: 400px; font-size: 14px; box-shadow: 0 0 3px #BBB;";
    $body->main_class = "container";
    $body->header_type = "none";
    $body->footer_css = "margin: 5px auto;";
    $body->set_cuerpo();
    ?>


    <div class="panel panel-info" style="margin: 30px auto; width: 75%; ">
        <div class="panel-heading">
            Sistema para el control de pr&aacute;cticas de Laboratorio, Taller y Campo
        </div>
        <div class="panel-body">
            <p class="navbar-text pull-left">Est&aacute; usted por ingresar alsistema de control de pr&aacute;cticas. Para iniciar sesi&oacute;n <a href="./adm/" class="navbar-link">de click aqui.</a></p><br />
            <p class="navbar-text pull-left">De lo contrario puede regresar a la p&aacute;gina principal de la <a href="http://www.ucol.mx" class="navbar-link">Universidad de Colima aqui.</a></p>
        </div>
    </div>

    <?php
    $body->close_cuerpo();
    $footer = new footer();
    $footer->set_footer();
//}
	 //echo "<br>No hay sesi&oacute;n iniciada<br><a href='./adm/'>Iniciar sesi&oacute;n</a>";
