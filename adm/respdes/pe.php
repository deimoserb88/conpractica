<?php
require_once "./config.ini.php";
include("../versesion.php"); //genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);
$idpe = request('idpe');

$guardar = request('guardar', 0);
if ($guardar) {
    $actualizar = request('actualizar',0);
    $datos = $_POST;
    if($actualizar) array_shift($datos);
    array_pop($datos);
    foreach($datos as $key=>$value){
        $campos[] = $key." = '".$value."'";
    }

    $consulta = "pe set plant = '".$f['plant']."', ".implode(", ",$campos);
    
    if($actualizar) $consulta = "update ".$consulta." where idpe = '".$idpe."'";

    else $consulta = "insert into ".$consulta;
    
    mysqli_query($pl,$consulta) or die("Fallo al dar de alta o actualizar el pe: ".$consulta.", ".mysqli_error($pl));
}

$editar = request('edita',0);
if($editar){    
    $rpee = mysqli_query($pl,"select * from pe where idpe = '".$idpe."'") or die("Fallo, no se encontro el registro de pe: ".mysqli_error($pl));
    $fpee = mysqli_fetch_array($rpee);
}

$eliminar = request('eliminar',0);
if($eliminar){
    mysqli_query($pl,"delete from pe where idpe = '".$idpe."'") or die("Fallo, no pudo eliminar el pe: ".mysqli_error($pl));
}

$rpe = mysqli_query($pl,"select * from pe where plant = '" . $f['plant'] . "'") or die("Fallo la consulta de los planteles: " . mysqli_error($pl));

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

    <div id="principal" class="container" style="height:820px;">
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
                    <h4>-- PROGRAMAS EDUCATIVOS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php pe_menu($f['priv'], false); ?>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <div id="listadope" style="height: 170px; width: 870px;">
                        <div style="overflow: auto;" class="panel panel-default">
                            <div class="panel-heading">Programas educativos registrados</div>
                            <table width="98%" class="listado">
                            <tr>
                                <th width="2%">ID</th>
                                <th width="5%">Plan</th>
                                <th width="5%">&Aacute;rea</th>
                                <th width="50%" style="text-align: left;">Programa educativo</th>
                                <th width="8%">Semestres</th>
                                <th width="10%">Asignaturas<br />asociadas</th>
                                <th width="20%">Acciones</th>
                            </tr>                                <?php
                                if (mysqli_num_rows($rpe) > 0) {
                                    while ($fpe = mysqli_fetch_array($rpe)) {
                                        $raa = mysqli_query($pl,"select count(*) as aa from m" . $f['plant'] . " where idpe = '" . $fpe['idpe'] . "' group by idpe");
                                        $faa = mysqli_fetch_array($raa);
                                        echo "<tr class=\"sobre\">";
                                        echo "<td width=\"2%\" style=\"text-align: center;\">" ; printf("%03s",$fpe['idpe']) ; echo "</td>";
                                        echo "<td width=\"5%\" style=\"text-align: center;\">" . $fpe['plan'] . "</td>";
                                        echo "<td width=\"5%\" style=\"text-align: center;\">" . $fpe['area'] . "</td>";
                                        echo "<td width=\"50%\"><strong>" . $fpe['nombre'] . " (".$fpe['abrev'].")</strong></td>";
                                        echo "<td width=\"8%\" style=\"text-align: center;\">" . $fpe['periodos'] . "</td>";
                                        echo "<td width=\"10%\" style=\"text-align: center;\">" . $faa['aa'] . "</td>";
                                        echo "<td width=\"20%\" style=\"text-align: center;\">";
                                        echo "<a href=\"".$_SERVER['PHP_SELF']."?edita=1&idpe=".$fpe['idpe']."\" onclick=\"pe();\"><img src=\"../../images/edit.png\" alt=\"\" /></a>&nbsp;";
                                        if($faa['aa'] > 0) echo "<img src=\"../../images/crossg.png\" title=\"No puede eliminar el programa mientras tenga asignaturas asociadas\" />";
                                        else echo "<a href=\"#\" onclick=\"if(confirm('Est&aacute; seguro de eliminar el programa '+'".$fpe['nombre']."'))location.href='".$_SERVER['PHP_SELF']."?eliminar=1&idpe=".$fpe['idpe']."'\"><img src=\"../../images/cross.png\" alt=\"\" /></a>";
                                        echo "</td>";
                                        echo "</tr>";
                                    }
                                } else {
                                    echo "<tr><td>No se han capturadop programas para su plantel</td><tr>";
                                }
                                ?>
                            </table>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <div id="capturape" style="height: 250px; width: 870px; margin-top: 10px;">
                        <fieldset id="altamodificacionplandeestudios" style="padding: 10px;">
                            <legend>Alta/modificacion de programas educativos</legend>
                            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                                <?php
                                    if($editar){
                                        echo '<input type="hidden" name="actualizar" value="1" />';
                                        echo '<input type="hidden" name="idpe" value="'.$fpee['idpe'].'" />';
                                    }
                                ?>
                                <table width="60%" cellpadding="0" cellspacing="0" border="0" class="formulario">
                                <?php
                                    sfield_in("Plan:", "plan", $fpee['plan'], 6, 6,"",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeyup=\"activa_guardar_pe();\"");
                                    sselect_in("&Aacute;rea:", "area", $fpee['area'], $ac,"select",false,false,"onchange=\"activa_guardar_pe();\"");
                                    //sfield_in(, , $fpee['area'], 6, 5,"",false,false,"onchange=\"this.value=this.value.toUpperCase();\"");
                                    sfield_in("Programa:", "nombre", $fpee['nombre'], 60, 60,"",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeyup=\"activa_guardar_pe();\"");
                                    sfield_in("Abreviatura:", "abrev", $fpee['abrev'], 10, 10,"",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeyup=\"activa_guardar_pe();\"");
                                    sfield_in("Duraci&oacute;n: [semestres]", "periodos", $fpee['periodos'], 2, 2,"",false,false,"onkeyup=\"activa_guardar_pe();\"","style=\"text-align:right;\"");
                                ?>
                                </table>
                                <br />
                                <button name="guardar" id="guardar" value="1" type="submit" disabled="disabled" onclick="pe();">Guardar datos <img src="../../images/disk.png" alt="Guardar" /></button>
                            </form>
                        </fieldset>
                    </div>
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