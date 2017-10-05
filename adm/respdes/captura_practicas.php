<?php
require_once "./config.ini.php";

include("../versesion.php");//genera $ciclo

include("../commfunc.php");

$f = $fila;

//vermat($_POST);

/**ENCONTRAR EL PERIODO DE CAPTURA VIGENTE, SI ESTA FUERA DEL PERIODO NO SE LE PERMITIRA CAPTURAR */
$consulta = "select *,date_format(pde,'%d/%m/%Y') as pde,date_format(pa,'%d/%m/%Y') as pa from periodos where tipo = '0' and  ((plant = '".$f['plant']."' and idciclo = '".$ciclo."' and (curdate() between pde and pa)) or (plant = '0000' and idciclo = '".$ciclo."' and (curdate() between pde and pa)))";
$rpc = mysqli_query($pl,$consulta) or die("Fallo la consulta del periodo de captura:".$consulta.", ".mysqli_error($pl));
if(mysqli_num_rows($rpc)>0) {
    $fpc = mysqli_fetch_array ($rpc); 
    $edit_allowed = true;
}else{
    $edit_allowed = false;
}
/*********************************************/


$guardar = request('guardar',0);
if($guardar){
    for($i=1;$i<=30;$i++){
        $materia = request('materia'.$i);
        list($idmateria,$materia) = explode("/",$materia);
        $grupo = request('grupo'.$i);
        $npp = request('npp'.$i);
        if($materia!=""&&$grupo!=""&&$npp!=""){
            $consulta = "insert into pp".$f['plant']." set idmateria = '".$idmateria."', materia = '".$materia."', grupo = '".$grupo."', npp = '".$npp."', idciclo = '".$ciclo."'";
            mysqli_query($pl,$consulta) or die("Fallo al guardar el registro de paracticas programadas: ".$consulta.", ".mysqli_error($pl));
        }
    }
}

/**OBTENER LOS NOMBRES DE LAS ASIGNATURAS PARA LOS LISTADOS DE SELECCION*/
$materias = array();
$consulta = "select * from m".$f['plant']." order by idpe,sem,materia";
$rmat = mysqli_query($pl,$consulta);
while($fmat = mysqli_fetch_array($rmat)) $materias[] = array($fmat['idmateria'],$fmat['materia'],$fmat['idpe'],$fmat['sem']); 
/***********************************************************************/

$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);


$header->close_head();

//    $body = new cuerpo();    
$body->body_style = "background-color: " . $color->fc;
//    $body->header_background = "../../images/header2.jpg";
//    $body->header_css = "background-color: #E8F2F3; margin 3px auto; height: 80px;";
$body->main_css = "margin: 5px auto; height: 977px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
$body->main_class = "container";
//    $body->header_class ="header";
$body->header_type = "none";
$body->footer_css = "margin: 5px auto;";

$body->set_cuerpo();
?>

    <div id="principal" class="container" style="height:950px;">
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
                <?php prac_menu($f['priv'], false);?>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <form id="captura_practicas" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <fieldset id="capturapracticas" style="width: 800px; padding: 10px;" <?php echo ($edit_allowed?'':'disabled="disabled"');?>>
                            <legend>PR&Aacute;CTICAS PROGRAMADAS POR MATERIA</legend>
                            <br />
                            <span style="font-size: 10px;"> Periodo de captura: <?php echo ($edit_allowed?$fpc['pde']." al ".$fpc['pa']:"<strong><u>CAPTURA CERRADA</u></strong>");  ?> </span><br /><br />
                            <h1>**Debe escribir los tres datos para cada registro, de lo contrario el registro no se guardar&aacute;</h1>
                            <table cellpadding="0" cellspacing="0" border="0" class="cpracticas" width="100%">
                                <tr>
                                    <th width="3%">#</th>
                                    <th width="67%">NOMBRE DE LAS<br />MATERIAS</th>
                                    <th width="15%">SEM. Y<br />GPO.</th>
                                    <th width="15%">TOTAL/ PRACT.<br />PROGRAMADAS</th>
                                </tr>
                                <?php
                                    for($i=1;$i<=30;$i++){
                                        echo "<tr class=\"sobre\">\n";
                                        echo "<td style=\"font-size:10px; text-align:right;\">".$i."</td>\n";
                                        echo "<td style=\"background-color:#FFF;\" ><select name=\"materia".$i."\" style=\"border:0; width:100%;\" />\n"; 
                                        echo "<option value=\"\" disabled=\"disabled\" selected=\"selected\">--</option>";
                                        foreach($materias as $mats){
                                            $rpe = mysqli_query($pl,"select abrev from pe where idpe = '".$mats[2]."'") or die(mysqli_error($pl));
                                            $fpe = mysqli_fetch_array($rpe);
                                            echo "<option value=\"".$mats[0]."/".$mats[1]."\">[".$mats[3]."-".$fpe['abrev']."] ".$mats[1]."</option>\n";
                                        }
                                        echo "</select>\n";
     
                                        echo "</td>\n";
                                      
                                        echo "<td style=\"background-color:#FFF;\" ><input type=\"text\" name=\"grupo".$i."\" size=\"7\" maxlength=\"3\" style=\"border:0;text-align:center;width:100%;\" onchange=\"this.value=this.value.toUpperCase();validaGrupo(this);\" /></td>\n";

                                        echo "<td style=\"background-color:#FFF;\" ><input type=\"text\" name=\"npp".$i."\" size=\"7\" maxlength=\"2\" style=\"border:0;text-align:center;width:100%;\" onkeypress=\"return validaentradaNum(event);\" /></td>\n";
                     
                                        
                                    }

                                ?>
                            </table>
                            <br />
                            <button type="submit" name="guardar" value="1" onclick="pe();">Guardar y continuar <img src="../../images/disk.png" alt="Guardar" /></button>
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

