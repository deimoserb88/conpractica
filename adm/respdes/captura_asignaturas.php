<?php
require_once "./config.ini.php";
include("../versesion.php");//genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);

$guardar = request('guardar',0);
if($guardar>0){
    for($i=1;$i<=30;$i++){
        $materia = request('materia'.$i);
        $sem = request('sem'.$i);
        $idpe = request('idpe');
        if($materia!=""&&$sem!=""){
            $consulta = "insert into m".$f['plant']." set materia = '".$materia."', sem = '".$sem."', idpe = '".$idpe."'";
            mysqli_query($pl,$consulta) or die("Fallo al guardar el registro de paracticas programadas: ".$consulta.", ".mysqli_error($pl));
        }
    }
    header("Location: asignaturas.php?idpe=".$idpe);
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

    <div id="principal" class="container" style="height:860px;">
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
                    <h4>-- ASIGNATURAS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php mat_menu($f['priv'], false); ?>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <form id="captura_practicas" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <fieldset id="capturaasignaturas" style="width: 90%;padding:10px;">
                            <legend>ASIGNATURAS</legend>
                            <br />
                            <h1>*Debe escribir los dos datos para cada registro, de lo contrario el registro no se guardar&aacute;</h1>
                            <h1>**Debe oprimir el bot&oacute;n &quot;Guardar&quot; en la parte inferior de la lista antes de salir de la p&aacute;gina o cerrar el navegador</h1>
                            <br />
                            Programa educativo:
                            <?php
                                $rpe = mysqli_query($pl,"select * from pe where plant = '".$f['plant']."'") or die("Fallo al consultar los programas educativos: ".mysqli_error($pl));
                                if(mysqli_num_rows($rpe)>0){
                            ?>
                            <select name="idpe" onchange="guardar.disabled=this.value=='';getElementById('aviso').style.visibility=(this.value==''?'visible':'hidden');">
                                <option value="">--</option>
                                <?php
                                    while($fpe = mysqli_fetch_array($rpe)){
                                        echo "<option value=\"".$fpe['idpe']."\" ".($idpe==$fpe['idpe']?"selected=\"selected\"":"").">".$fpe['nombre']."</option>";
                                    }
                                ?>
                            </select>
                            <table cellpadding="0" cellspacing="0" border="0" class="casignaturas" width="100%">
                                <tr>
                                    <th width="3%">#</th>
                                    <th width="10%">SEM</th>
                                    <th width="87%">MATERIA</th>
                                </tr>
                                <?php
                                    for($i=1;$i<=30;$i++){
                                        echo "<tr class=\"sobre\">\n";
                                        echo "<td style=\"font-size:10px; text-align:right;\">".$i."</td>\n";
                                        echo "<td style=\"background-color:#FFF;\" ><input type=\"text\" name=\"sem".$i."\" size=\"7\" maxlength=\"2\" style=\"border:0; text-align: center;\" /></td>\n";
                                        echo "<td style=\"background-color:#FFF;\" ><input type=\"text\" name=\"materia".$i."\" size=\"90\" maxlength=\"60\" style=\"border:0;\" onchange=\"this.value=this.value.toUpperCase();\" /></td>\n";
                                        echo "</tr>\n";
                                    }

                                ?>
                            </table>
                            <br />
                            <button type="submit" name="guardar" id="guardar" value="1" onclick="pe();" disabled="disabled">Guardar y continuar <img src="../../images/disk.png" alt="Guardar" /></button>
                            <span name="aviso" id="aviso">**DEBE SELECCIONAR UN PROGRAMA EDUCATIVO**</span>
                            <?php
                                }else{
                            ?>
                            <h1>No tiene programas educativos registrados, para poder trabajar con las asignaturas debe registrar primero un programa educativo, <a href="pe.php">aqui</a></h1>
                            <?php } ?>
                        </fieldset>
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
