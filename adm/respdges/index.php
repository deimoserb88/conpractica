<?php
include("config.ini.php");
if (!empty($_REQUEST['ciclo'])) {
    session_start();
    $_SESSION['ciclo'] = $_REQUEST['ciclo'];
    session_write_close();
    if(!empty($_REQUEST['ciclo_activo'])){
        if ($_REQUEST['ciclo_activo'] == 1) {
            mysqli_query($pl, "update ciclos set activo = '0'");
            mysqli_query($pl, "update ciclos set activo = '1' where idciclo='" . $_REQUEST['ciclo'] . "'");
        }
    }
}

include("../versesion.php");

include("../commfunc.php");

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
$body->main_css = "margin: 5px auto; height: 300px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
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
                <h2>Bienvenido <?php 
                                    echo $f['nombre'] . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : "");
                                    if($vs['docenteyadmin']){
                                        echo '&nbsp;|&nbsp;<a href="../respdes/cambiarrol.php?rol=docente" class="label label-info">Trabajar como docente</a>';
                                    }
                ?></h2>
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
        <tr>
            <td style="padding:20px 0 0 20px;" colspan="2">
            <?php
            if ($ciclo == 0) {
                ?>
                    <div style="width: 320px; margin: auto;">
                        <form id="fijar_ciclo" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                            <fieldset id="ciclo" style="padding: 10px;">
                                <legend>Seleccione el ciclo de trabajo</legend>                             
                                                                          
                                    <select name="ciclo">
                                        <option value="0" disabled="disabled">--</option>
                                        <?php
                                            $rc = mysqli_query($pl, "select * from ciclos order by activo desc");
                                            while ($fc = mysqli_fetch_array($rc)) {
                                                echo "<option value=\"" . $fc['idciclo'] . "\">" . $fc['nomciclo'] . "</option>";
                                            }
                                        ?>
                                    </select>
                                    <button type="submit" onclick="pe();">Aceptar <img src="../../images/accept.png" alt="" /></button>
                                    <br />
                                    <input type="checkbox" name="ciclo_activo" value="1"> <span style="font-size: 10px;">Establecer como cliclo activo para toda la Universidad</span>                                                
                            </fieldset>
                        </form>
                    </div>

                <?php } else { ?>
                    <img src="../../images/modadmin.jpg" alt="" />
                <?php } ?>
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
