<?php
require_once ("config.ini.php");
require_once ("../versesion.php");
include("../commfunc.php");

$f = $fila;

$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);

?>
<style type="text/css">
.scrollable-menu{
    height: auto;
    max-height: 300px;
    overflow-x: hidden;
}
</style>
<?php

$header->close_head();

//    $body = new cuerpo();    
$body->body_style = "background-color: " . $color->fc;
//    $body->header_background = "../../images/header2.jpg";
//    $body->header_css = "background-color: #E8F2F3; margin 3px auto; height: 80px;";
$body->main_css = "margin: 5px auto; height: 500px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
$body->main_class = "container";
//    $body->header_class ="header";
$body->header_type = "none";
$body->footer_css = "margin: 5px auto;";

$body->set_cuerpo();
?>

<div id="principal" class="container" style="height:650px;">
    <table summary="" style="margin: auto; width: 100%;" >
        <tr>
            <td style="padding-left: 10px;">
                <h2><strong>Bienvenido <?php echo $f['nombre'] . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : ""); ?></strong></h2>
            </td>
            <td style="text-align:center;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
        </tr>
        <tr>
            <?php
            if ($ciclo != 0){
                main_menu($vs['priv'], true);
            }            
            ?>
        </tr>
    </table>
    <br />
    <div class="panel panel-default" style="width: 75%; margin-left: auto; margin-right: auto;">
        <div class="panel panel-heading">
            Seleccione el plantel que desee trabajar
        </div>
        <div class="panel panel-body">
            <div class="btn-group">
                <button type="button" class="btn btn-default">-- Plantel --</button>
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Desplegar menú</span>
                </button>
                <ul class="dropdown-menu scrollable-menu" role="menu">
                <?php 
                    $sql = "SELECT usuarios.notrab,concat(des.nomplant,' (',usuarios.nombre,')') as nomplant FROM des join usuarios on usuarios.plant = des.plant  WHERE usuarios.plant != '0000' and usuarios.notrab != ''";
                    $r = mysqli_query($pl,$sql) or die(mysqli_error($pl));
                    while($f = mysqli_fetch_assoc($r)){
                        echo '<li><a href="./inisesionadmin.php?notrab='.$f['notrab'].'">'.$f['nomplant'].'</a></li>'."\n";
                    }                        
                ?>
                </ul>
            </div>            
        </div>
    </div>
</div>
<div id="espera">&nbsp;</div>
<div id="guardando">
    <img src="../../images/espera.jpg" alt="" />    
</div>
<?php
$body->close_cuerpo();
$footer = new footer();
$footer->set_footer();
?> 
