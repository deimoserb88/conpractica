<?php

require_once "./config.ini.php";
include("../versesion.php");//genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);

$plant = request('plant');

$delete = request('delete',0);
if($delete>0&&$plant!=""){
    $consulta_del = "delete from pp".$plant." where idpp = '".$delete."'";
    mysqli_query($pl,$consulta_del) or die("Fallo al eliminar la practica programada: ".$consulta_del.", ".mysqli_error($pl));
}

$opor = request('opor','materia');
//$opor = " order by ".$opor;

$rp = mysqli_query($pl,"select plant,nomplant from des order by nomplant");

if($plant!=""){
    $consulta = "select * from pp".$plant." where idciclo = '".$ciclo."' order by ".$opor;
    $rpp = mysqli_query($pl,$consulta) or die("Fallo la consulta para el listado de practicas programadas: ".$consulta.", ".mysqli_error($pl));
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
$body->main_css = "margin: 5px auto; height: 800px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
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
                    <h2>Bienvenid@ <?php echo $f['nombre'] . ", " . ($siglas_plant!=""?$siglas_plant:"DGES") . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : ""); ?></h2>
                    <h4>-- PR&Aacute;CTICAS PROGRAMADAS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php main_menu($f['priv'], true); ?>
            </tr>
            
        </table><br />
        <div style="width: 822px; text-align: center; margin: auto;">
            Plantel <select name="plant" onchange="pe();location.href='listado_practicas.php?plant='+this.value">
                <option value="" selected="selected" disabled="disabled">--</option>
                <?php
                    while($fp = mysqli_fetch_array($rp)){
                        if ($fp['plant']!="0000") echo "<option value=\"".$fp['plant']."\"".($fp['plant']==$plant?"selected=\"selected\"":"").">".$fp['nomplant']."</option>";
                    }
                ?>
            </select>
        </div>
        <div style="width: 822px; text-align: right; margin: auto;"><h3><a href="listado_practicas_I.php?plant=<?php echo $plant; ?>&opor=<?php echo $opor;?>" target="_blank">Versi&oacute;n para imprimir <img src="../../images/print.png" alt="" /></a></h3></div>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 822px; margin: auto;" class="lpracticas">
            <tr>
                <th width="3%">#</th>
                <th width="67%"><a href="listado_practicas.php?opor=materia&plant=<?php echo $plant;?>" onclick="pe();">Nombre de las <?php if($opor=="materia") echo '<img src="../../images/opor.png" alt="materia" />'; ?><br /> materias</a></th>
                <th width="15%"><a href="listado_practicas.php?opor=grupo&plant=<?php echo $plant;?>" onclick="pe();">Sem. y <?php if($opor=="grupo") echo '<img src="../../images/opor.png" alt="materia" />'; ?><br />Gpo.</a></th>
                <th width="14%"><a href="listado_practicas.php?opor=npp&plant=<?php echo $plant;?>" onclick="pe();">Total/ Pract. <?php if($opor=="npp") echo '<img src="../../images/opor.png" alt="materia" />'; ?><br />programadas</a></th>
            </tr>
        </table>
        <div id="listado_practicas" style="margin:auto; overflow: auto; border: 1px #999 dotted; width: 820px; height: 500px;">
            <table cellpadding="0" cellspacing="0" border="0" width="100%" class="lpracticas">
                <?php
                    $e=1;$cf=0;
                    if($plant != ""){
                    while ($fpp = mysqli_fetch_array($rpp)){
                        echo "<tr class=\"sobre\" style=\"background-color:".$cf1[$cf]."\">\n";
                        echo    "<td  width=\"3%\" style=\"text-align:center;\">".$e++."</td>\n";
                        echo    "<td  width=\"67%\">".$fpp['materia']."</td>\n";
                        echo    "<td  width=\"15%\" style=\"text-align:center;\">".$fpp['grupo']."</td>\n";
                        echo    "<td  width=\"15%\" style=\"text-align:right;padding-right:10px;\">".$fpp['npp']."&nbsp;<a href=\"listado_practicas.php?delete=".$fpp['idpp']."&plant=".$plant."&opor=".$opor."\" onclick=\"pe();\"> <img src=\"../../images/cross.png\" alt=\"\" /></a></td>\n";
                        echo "</tr>";
                        $cf = !$cf;
                    }
                    if($e==1&&$plant!="") echo "<tr><td colspan=\"4\">El plantel no tiene pr&aacute;cticas programadas para este ciclo escolar</td></tr>";
                    }else{
                        echo "<tr><td colspan=\"4\">Por favor seleccione un plantel para ver la liste de  pr&aacute;cticas programadas del ciclo escolar</td></tr>";
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
