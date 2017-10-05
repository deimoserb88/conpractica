<?php
require_once "./config.ini.php";
include("../versesion.php"); //genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);
$iddoc = request('iddoc');

$guardar = request('guardar', 0);
if ($guardar) {
    $actualizar = request('actualizar',0);
    $datos = $_POST;
    if($actualizar) array_shift($datos);
    array_pop($datos);
    foreach($datos as $key=>$value){
        $campos[] = $key." = '".$value."'";
    }

    $consulta = "d".$f['plant']." set ".implode(", ",$campos);
    
    if($actualizar) $consulta = "update ".$consulta." where iddoc = '".$iddoc."'";

    else $consulta = "insert into ".$consulta;
    
    mysqli_query($pl,$consulta) or die("Fallo al dar de alta o actualizar al docente: ".$consulta.", ".mysqli_error($pl));
}

$editar = request('edita',0);
if($editar){    
    $rde = mysqli_query($pl,"select * from d".$f['plant']." where iddoc = '".$iddoc."'") or die("Fallo, no se encontro el registro de pe: ".mysqli_error($pl));
    $fde = mysqli_fetch_array($rde);
}

$eliminar = request('eliminar',0);
if($eliminar){
    mysqli_query($pl,"delete from d".$f['plant']." where iddoc = '".$iddoc."'") or die("Fallo, no pudo eliminar el pe: ".mysqli_error($pl));
}

$rd = mysqli_query($pl,"select * from d".$f['plant']." where 1") or die("Fallo la consulta de los docentes: " . mysqli_error($pl));


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
                    <h4>-- DOCENTES --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php pe_menu($f['priv'], false); ?>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <div class="panel panel-default" style="height: 340px; width: 870px;">
                        <div class="panel-heading">Docentes registrados</div>
                        <div>                            
                            <table style="width:98%" >
                                <tr>
                                    <th width="10%">ID</th>
                                    <th width="10%">No.<br />trab.</th>
                                    <th width="50%" style="text-align: left;">Docente</th>
                                    <th width="15%">Materias<br />asignadas</th>
                                    <th width="15%">Acciones</th>
                                </tr>
                            </table>                            
                        </div>
                        <div style="overflow: auto; height: 260px;">
                            <table style="width:100%" class="table table-striped">
                                <?php
                                if (mysqli_num_rows($rd) > 0) {
                                    while ($fd = mysqli_fetch_array($rd)) {
                                        $rma = mysqli_query($pl,"select iddm,idmateria from dm" . $f['plant'] . " where iddoc = '" . $fd['iddoc'] . "' and idciclo = '".$ciclo."'");
                                        $fma = mysqli_num_rows($rma);
                                        $materias = array();
                                        while ($fiddm = mysqli_fetch_array($rma)){                                        
                                            $riddm = mysqli_query($pl,"select materia,sem from m".$f['plant']." where idmateria = '".$fiddm['idmateria']."' order by materia") or die(mysqli_error($pl));
                                            $fnma = mysqli_fetch_array($riddm);
                                            $materias[] = $fnma['materia']." - ".$fnma['sem'].($fnma['sem']<4?"er":"o")." sem";//Nombres de las asignatuiras que imparte el docente 
                                        }
                                        $materiasjs = "Array('".implode("','",$materias)."')";
                                        echo "<tr class=\"sobre\">\n";
                                        echo "<td width=\"5%\" style=\"text-align: center;\">" ; printf("%03s",$fd['iddoc']) ; echo "</td>\n";
                                        echo "<td width=\"15%\" style=\"text-align: center;\">" . $fd['notrab'] . "</td>\n";
                                        echo "<td width=\"50%\"><strong>" . $fd['apat'] ." ".$fd['amat']." ".$fd['nom'] . "</strong></td>\n";
                                        
                                        echo "<td width=\"10%\" style=\"text-align: center;\">";
                                        echo "<a href=\"#\" ";
                                        echo "onmouseover=\"showtooltip(".$materiasjs.");\" ";
                                        echo "onmouseout=\"getElementById('tooltip').style.display='none';\"";
                                        echo " >" . $fma . "</a></td>\n";
                                        
                                        echo "<td width=\"20%\" style=\"text-align: center;\">\n";
                                        echo "<a href=\"".$_SERVER['PHP_SELF']."?edita=1&iddoc=".$fd['iddoc']."\" onclick=\"pe();\"><img src=\"../../images/edit.png\" alt=\"\" /></a>&nbsp;";
                                        if($fma > 0) echo "<img src=\"../../images/crossg.png\" title=\"No puede eliminar al docente mientras tenga asignaturas asociadas\" />";
                                        else echo "<a href=\"#\" onclick=\"if(confirm('Est&aacute; seguro de eliminar al docente '+'".$fd['apat']." ".$fd['amat']."'))location.href='".$_SERVER['PHP_SELF']."?eliminar=1&iddoc=".$fd['iddoc']."'\"><img src=\"../../images/cross.png\" alt=\"\" /></a>";
                                        echo "</td>\n";
                                        echo "</tr>\n";
                                    }
                                } else {
                                    echo "<tr><td>No se han capturado docentes para su plantel</td><tr>";
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
                        <fieldset id="altamodificacionplandeestudios" style="padding: 10px;" >
                            <legend>Alta/modificacion de docentes</legend>
                            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" role="form">
                                
                                <?php
                                    if($editar){
                                        echo '<input type="hidden" name="actualizar" value="1" />';
                                        echo '<input type="hidden" name="iddoc" value="'.$fde['iddoc'].'" />';
                                    }
                                ?>
                                <div class="input-group input-group-sm">
                                    <span class="input-group-addon" id="basic-addon1">N&uacute;mero de trabajador: </span>                                
                                <?php
                                    sfield_in("", "notrab", $fde['notrab'], 6, 6,"form-control",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeypress=\"return validaentradaNum(event);\"  onkeyup=\"activa_guardar_doc();\"",' required="required"',ture);
                                ?>
                                </div>
                                <br />
                                <div class="input-group input-group-sm">
                                    <span class="input-group-addon" id="basic-addon2">Apellido paterno:</span>                                
                                <?php
                                    sfield_in("", "apat", $fde['apat'], 35, 45,"form-control",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeyup=\"activa_guardar_doc();\"",' required="required"',ture);
                                ?>
                                </div>
                                <br />
                                <div class="input-group input-group-sm">
                                    <span class="input-group-addon" id="basic-addon3">Apellido materno:</span>                                
                                <?php                                   
                                    sfield_in("", "amat", $fde['amat'], 35, 45,"form-control",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeyup=\"activa_guardar_doc();\"","",ture);
                                ?>
                                </div>
                                <br />
                                <div class="input-group input-group-sm">
                                    <span class="input-group-addon" id="basic-addon4">Nombre(s):</span>                                
                                <?php                                   
                                    sfield_in("", "nom", $fde['nom'], 35, 45,"form-control",false,false,"onchange=\"this.value=this.value.toUpperCase();\" onkeyup=\"activa_guardar_doc();\"",' required="required"',ture);
                                ?>
                                </div>
                                <br />
                                <div class="input-group input-group-sm">
                                    <span class="input-group-addon" id="basic-addon5">Clave de acceso:</span>                                
                                <?php
                                    sfield_in("", "passwd", $fde['passwd'], 10, 10,"form-control",false,false,"onkeyup=\"activa_guardar_doc();\"",' required="required"',ture);
                                ?>
                                    <span class="input-group-addon">[m&aacute;ximo 10 caracteres]</span>
                                 </div>
                                <br />
                                <button name="guardar" id="guardar" value="1" type="submit" onclick="pe();" class="btn btn-default btn-sm">Guardar datos <img src="../../images/disk.png" alt="Guardar" /></button>
                            </form>
                        </fieldset>
                    </div>
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
