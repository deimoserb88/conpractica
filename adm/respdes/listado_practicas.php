<?php
require_once ("./config.ini.php");
include("../versesion.php"); //genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);

$delete = request('delete', 0);
if ($delete > 0) {
    $consulta_del = "delete from pp" . $f['plant'] . " where idpp = '" . $delete . "'";
    mysqli_query($pl, $consulta_del) or die("Fallo al eliminar la practica programada: " . $consulta_del . ", " . mysqli_error($pl));
}


$opor = request('opor', 'grupo, materia');
$opor = " order by " . $opor;



$consulta = "select * from pp" . $f['plant'] . " where idciclo = '" . $ciclo . "' " . $opor;
$rpp = mysqli_query($pl, $consulta) or die("Fallo la consulta para el listado de practicas programadas: " . $consulta . ", " . mysql_qury());

$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);


$header->close_head();

//    $body = new cuerpo();    
$body->body_style = "background-color: " . $color->fc;
//    $body->header_background = "../../images/header2.jpg";
//    $body->header_css = "background-color: #E8F2F3; margin 3px auto; height: 80px;";
$body->main_css = "margin: 5px auto; height: 700px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
$body->main_class = "container";
//    $body->header_class ="header";
$body->header_type = "none";
$body->footer_css = "margin: 5px auto;";

$body->set_cuerpo();
?>

<div id="principal" class="container" style="height:700px;">
    <table border="0" cellpadding="0" cellspacing="0" summary="" style="margin: auto; width: 908px;" >
        <tr>
            <td style="padding-left: 10px;">
                <h2>Bienvenid@ 
                        <?php 
                            echo $f['nombre'].", ".$siglas_plant . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : "");
                            if($vs['docenteyadmin']){
                                echo '&nbsp;|&nbsp;<a href="cambiarrol.php?rol=docente" class="label label-info">Trabajar como docente</a>';
                            }
                        ?></h2>
                <h4>-- PR&Aacute;CTICAS PROGRAMADAS --</h4>
            </td>
            <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
        </tr>
        <tr>
            <?php prac_menu($f['priv'], false); ?>
        </tr>
    </table><br />
    <div style="width: 400px;text-align: left; margin-left: 50px; float: left;">
        <select name="cicloanterior" onchange="location.href = 'listado_practicas.php?ciclo_anteriro=' + this.value;">
            <option value="0">-- Ver un ciclo anterior --</option>
        </select>
    </div> 
    <div style="width: 400px;float: left; text-align: right; margin: 0 auto;">
        <h3><a href="listado_practicas_I.php?opor=<?php echo $opor; ?>" target="_blank">Versi&oacute;n para imprimir <img src="../../images/print.png" alt="" /></a></h3>
    </div>
    <table cellpadding="0" cellspacing="0" border="0" style="width: 822px; margin: 3px auto 0;" class="lpracticas">
        <tr>
            <th width="3%">#</th>
            <th width="67%"><a href="listado_practicas.php?opor=materia" onclick="pe();">Nombre de las <?php if (strpos($opor, "materia")) echo '<img src="../../images/opor.png" alt="materia" />'; ?><br /> materias</a></th>
            <th width="15%"><a href="listado_practicas.php?opor=grupo" onclick="pe();">Sem. y <?php if (strpos($opor, "grupo")) echo '<img src="../../images/opor.png" alt="Grupo" />'; ?><br />Gpo.</a></th>
            <th width="14%"><a href="listado_practicas.php?opor=npp" onclick="pe();">Total/ Pract. <?php if (strpos($opor, "npp")) echo '<img src="../../images/opor.png" alt="total" />'; ?><br />programadas</a></th>
        </tr>
    </table>
    <div id="listado_practicas" style="margin:auto; overflow: auto; border: 1px #999 dotted; width: 820px; height: 500px;">
        <table cellpadding="0" cellspacing="0" border="0" width="100%" class="lpracticas">
            <?php
            $e = 1;
            $cf = 0;
            while ($fpp = mysqli_fetch_array($rpp)) {
                echo "<tr class=\"sobre\" style=\"background-color:" . $cf1[$cf] . "\">\n";
                echo "<td  width=\"3%\" style=\"text-align:center;\">" . $e++ . "</td>\n";
                echo "<td  width=\"67%\">" . $fpp['materia'] . "</td>\n";
                echo "<td  width=\"15%\" style=\"text-align:center;\">" . $fpp['grupo'] . "</td>\n";
                echo "<td  width=\"15%\" style=\"text-align:right;padding-right:10px;\">" . $fpp['npp'] . "&nbsp;<a href=\"listado_practicas.php?delete=" . $fpp['idpp'] . "\" onclick=\"pe();\"> <img src=\"../../images/cross.png\" alt=\"\" /></a></td>\n";
                echo "</tr>";
                $cf = !$cf;
            }
            ?>
        </table>

    </div>
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
