<?php
//session_start();
//echo "<pre>";
//print_r($_SESSION);
//echo "</pre>";die;


//echo "docentes/index 1<br />";
require_once "./config.ini.php";
//echo "docentes/index 2<br />";
require_once "../versesion.php";
//echo "docentes/index 3<br />";
include("../commfunc.php");
//echo "docentes/index 4<br />";
$f = $fila;


$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);


$header->close_head();

//    $body = new cuerpo();    
$body->body_style = "background-color: " . $color->fc;
//    $body->header_background = "../../images/header2.jpg";
//    $body->header_css = "background-color: #E8F2F3; margin 3px auto; height: 80px;";
$body->main_css = "margin: 5px auto; height: 900px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
$body->main_class = "container";
//    $body->header_class ="header";
$body->header_type = "none";
$body->footer_css = "margin: 5px auto;";

$body->set_cuerpo();
?>

    <div id="principal" class="container" style="height:650px;">
        <table border="0" cellpadding="0" cellspacing="0" summary="" style="margin: auto; width: 908px;" >
            <tr>
                <td style="padding-left: 10px;">
                    <h2>Bienvenid@ 
                        <?php 
                            echo $f['nom'].", ".$siglas_plant . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : "");
                            if($vs['docenteyadmin']){
                                echo '&nbsp;|&nbsp;<a href="../respdes/cambiarrol.php?rol='.($vs['esroot']?'root':'admin').'" class="label label-info">Trabajar como responsable de plantel</a>';
                            }
                        ?></h2>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php main_menu($vs['priv'], true); ?>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <img src="../../images/moddoc.jpg" alt="" />                    
                </td>
            </tr>
        </table>
        <br />
    </div>
<div id="espera">&nbsp;</div>
<div id="guardando"><img src="../../images/espera.jpg" alt="" /></div>
<div id="tooltip" style="visibility: hidden;border:1px solid #666;background-color: #FFF; font-size: 10px;width: 200px;z-index: 99;"></div>
<?php
    $body->close_cuerpo();
    $footer = new footer();
    $footer->set_footer();
?>