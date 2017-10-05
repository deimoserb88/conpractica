<?php
  require_once "config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;

$msg = array();

$passwdA  = request('passwdA');
$passwdN1 = request('passwdN1');
$passwdN2 = request('passwdN2');

$error = true;

if($passwdA == "")  $msg[] = "No introdujo su clave actual";
if($passwdA != "" && $passwdA != $f['passwd']) $msg[] = "La clave actual que introdujo es incorrecta";
if($passwdN1 == "") $msg[] = "No introdujo su nueva clave";
if($passwdN2 == "") $msg[] = "No introdujo la confirmaci&oacute;n de su nueva clave";
if($passwdN1 != "" && $passwdN2 != "" && $passwdN1 != $passwdN2) $msg[] = "La nueva clave y la confiramci&oacute;n no coinciden";
$error = count($msg) > 0;

if(!$error){
    mysqli_query($pl,"update d".$vs['plant']." set passwd = '".$passwdN1."' where iddoc = ".$f['iddoc']) or die(mysqli_error($pl));
}

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
                    <h2>Bienvenid@ <?php echo $f['nom'].", ".$siglas_plant . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : ""); ?></h2>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php main_menu($vs['priv'], true); ?>
            </tr> 
        </table>       
        <br />
        <div style="margin: 20px auto; width: 40%; border: 1px solid #CCC; box-shadow: 2px 5px 5px #CCC; padding: 10px;">
            <?php 
            if($error){
                if(count($msg)>1){
                    echo "Se encontraron los siguientes errore:<br/ >";
                    echo "<ul>";
                    for($i=0;$i<count($msg);$i++)
                        echo "<li>".$msg[$i]."</li>";
                    echo "</ul>";                                           
                }else
                    echo $msg[0]."<br />";
                echo "<a href=\"passwd.php\">&LT;&LT;  Volver</a>";
            }else{ ?>
            Su clave se actualiz&oacute; correctamente.
            <?php } ?>
            
            
        </div>
    </div>
<div id="espera">&nbsp;</div>
<div id="guardando"><img src="../../images/espera.jpg" alt="" /></div>
<div id="tooltip" style="visibility: hidden;border:1px solid #666;background-color: #FFF; font-size: 10px;width: 200px;z-index: 99;"></div>
<?php
    $body->close_cuerpo();
    $footer = new footer();
    $footer->set_footer();
?>>
