<?php
require_once "./config.ini.php";
if (!empty($_REQUEST['ciclo'])) {
    session_start();
    $_SESSION['ciclo'] = $_REQUEST['ciclo'];
    session_write_close();
} else
    include("../versesion.php");

include("../commfunc.php");

if ($_REQUEST['ciclo_activo'] == 1) {
    mysqli_query($pl, "update ciclos set activo = '0'") or die(mysqli_error($pl));
    mysqli_query($pl, "update ciclos set activo = '1' where idciclo='" . $_REQUEST['ciclo'] . "'") or die(mysqli_error($pl));
}
if (!empty($_REQUEST['ciclo']))
    header("Location: index.php");

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
$body->main_css = "margin: 5px auto; height: 400px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
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
                <h2>Bienvenid@ <?php echo $f['nombre'] . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : ""); ?></h2>
            </td>
            <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
        </tr>
        <tr>
            <?php main_menu($f['priv'], true); ?>
        </tr>
        <tr>
            <td style="padding:20px 0 0 20px;" colspan="2">                                
                <form id="fijar_ciclo" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                    <div style="width: 320px; margin: auto;">
                        <fieldset id="ciclo" style="padding: 10px;">
                            <legend>seleccione el ciclo de trabajo</legend>                                            
                            <select name="ciclo">
                                <option value="0" disabled="disabled">--</option>
                                <?php
                                $rc = mysqli_query($pl, "select * from ciclos order by activo desc");
                                while ($fc = mysqli_fetch_array($rc)) {
                                    echo "<option value=\"" . $fc['idciclo'] . "\">" . $fc['nomciclo'] . "</option>";
                                }
                                ?>
                            </select>&nbsp;&nbsp;
                            <button type="submit" onclick="pe();">Aceptar <img src="../../images/accept.png" alt="" /></button>
                            <br />
                            <input type="checkbox" name="ciclo_activo" value="1"> <span style="font-size: 10px;">Establecer como cliclo activo para toda la Universidad</span>
                        </fieldset>
                    </div>
                </form>


            </td>
        </tr>
    </table>
    <br />
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
