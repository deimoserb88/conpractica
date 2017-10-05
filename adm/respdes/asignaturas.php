<?php 
require_once "./config.ini.php";
include("../versesion.php");//genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);

/*ELIMINAR UNA MATERIA Y BORRA LA RELAICION DE ASINGACION DE DOCNETE SI EXISTE*/
$delete = request('delete',0);
if($delete){
    $idmateria = request('idmateria');
    $consulta = "delete from m".$f['plant']." where idmateria = '".$idmateria."'";
    mysqli_query($pl,$consulta) or die("Fallo al eliminar la asignatura: ".$consulta.", ".mysqli_error($pl));
    $consulta = "delete from dm".$f['plant']." where idmateria = '".$idmateria."' and idciclo = '".$ciclo."'";
    mysqli_query($pl,$consulta) or die("Fallo al eliminar el registro de asignacion docente-materia: ".$consulta.", ".mysqli_error($pl));
}
/**********************/


/*ASIGNAR UN DOCENTA A UNA MATERIA*/
$asignadoc = request('asignadoc',0);
if($asignadoc>0){
    $idmateria = request('idmateria');
    $iddoc = request('iddoc');
    if($asignadoc==1)
        $consulta = "insert into dm".$f['plant']." (idmateria,iddoc,idciclo) values ('".$idmateria."','".$iddoc."','".$ciclo."')";
    if($asignadoc==2)
        $consulta = "delete from dm".$f['plant']." where idmateria='".$idmateria."' and iddoc='".$iddoc."' and idciclo='".$ciclo."'";    
    mysqli_query($pl,$consulta) or die("fallo al relacionar materia-docente: ".$consulta.", ".mysqli_error($pl));
}
///************************/
//
//
/*PREPARA LA CONSULTA PARA FILTRAR POR SEMESTRE LA LISTA DE MATERIAS*/
$idpe = request('idpe');
$semestres = request('semestres','t');
$opor = request('opor','sem');
if($idpe!=""){    
    $consulta = "select * from m".$f['plant']." where idpe = '".$idpe."' and";
    //if($idpe!="") $consulta .= " idpe = '".$idpe."' and";
    if($semestres!='t'){
        switch ($semestres){
            case 'i': $consulta .= " mod(sem,2)=1 and";break;
            case 'p': $consulta .= " mod(sem,2)=0 and";break;
            default : $consulta .= " sem = '".$semestres."' and";break;
        }
    }
    $consulta .= " 1";
    ///*****************************/

    /*PREPARA Y REALIZA LA CONSULTA PARA MOSTRAR LA LISTA DE MATERIAS*/
    
    $consulta .= " order by ".$opor;
    
    $rm = mysqli_query($pl,$consulta) or die("Fallo la consulta de las materiass: ".$consulta.", ".mysql_qury());
    /****************************/
}

/*GENERA UNA LISTA DE LOS DOCENTES DEL PLANTEL PARA LA LISTA DE ASIGNACION DE DOCENTE*/
$rdoc = mysqli_query($pl,"select iddoc, concat_ws(' ',apat,amat,nom) as nom from d".$f['plant']." order by nom");
while($fdoc = mysqli_fetch_array($rdoc)) $docentes[] = $fdoc;
/********************************/


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
        </table><br />
        <div style="margin: 0 auto; width: 822px;">
            <?php
                $rpe = mysqli_query($pl,"select * from pe where plant = '".$f['plant']."'") or die("Fallo al consultar los programas educativos: ".mysqli_error($pl));
                if(mysqli_num_rows($rpe)>0){
            ?>
            <select name="idpe" onchange="pe();location.href='asignaturas.php?idpe='+this.value+'&semestres=<?php echo $semestres;?>&opor=<?php echo $opor;?>'">
                <option value="">-- SELECCIONE UN PROGRAMA EDUCATIVO --</option>
                <?php
                    while($fpe = mysqli_fetch_array($rpe)){
                        echo "<option value=\"".$fpe['idpe']."\" ".($idpe==$fpe['idpe']?"selected=\"selected\"":"").">".$fpe['nombre']."</option>";
                    }
                    $rsem = mysqli_query($pl,"select distinct sem from m".$f['plant']." order by sem");
                ?>
            </select>
            <select name="semestres" onchange="pe();location.href='asignaturas.php?idpe=<?php echo $idpe; ?>&semestres='+this.value+'&opor=<?php echo $opor;?>'">
                <option value="t" <?php if($semestres=='t') echo "selected=\"selected\""; ?>>-- Todos los semestres --</option>
                <option value="i" <?php if($semestres=='i') echo "selected=\"selected\""; ?>>Semestres Impares</option>
                <option value="p" <?php if($semestres=='p') echo "selected=\"selected\""; ?>>Semestres Pares</option>
                <?php
                    while($fsem = mysqli_fetch_array($rsem)){
                        echo "<option value=\"".$fsem['sem']."\" ".($semestres==$fsem['sem']?"selected=\"selected\"":"").">Semestre ".$fsem['sem']."</option>";
                    }
                ?>
            </select>
            <?php
                }else{
            ?>
            <h1>No tiene programas educativos registrados, para poder trabajar con las asignaturas debe registrar primero un programa educativo, <a href="pe.php">aqui</a></h1>
            <?php } ?>
        </div>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 822px; margin: auto;" class="lpracticas">
            <tr>
                <th width="3%">#</th>                
                <th width="10%"><a href="asignaturas.php?opor=sem&<?php echo "idpe=".$idpe."&semestres=".$semestres;?>" onclick="pe();">Semestre<?php if($opor=="sem") echo '<img src="../../images/opor.png" alt="" />'; ?></a></th>
                <th width="47%"><a href="asignaturas.php?opor=materia&<?php echo "idpe=".$idpe."&semestres=".$semestres;?>" onclick="pe();">Materia<?php if($opor=="materia") echo '<img src="../../images/opor.png" alt="" />'; ?></a></th>
                <th width="30%">Docente</th>
                <th width="10%">Acciones</th>
            </tr>
        </table>
        <div id="listado_practicas" style="margin:auto; overflow: auto; border: 1px #999 dotted; width: 820px; height: 500px;">
            <table cellpadding="0" cellspacing="0" border="0" width="100%" class="lpracticas">
                <?php
                    if($idpe!=""){
                        $e=1;$cf=0;
                        while ($fm = mysqli_fetch_array($rm)){
                            $consulta = "select CONCAT_WS(' ',apat,amat,nom) as nm,iddoc from d".$f['plant']." where iddoc in (
                                (SELECT dm".$f['plant'].".iddoc FROM m".$f['plant']." LEFT JOIN dm".$f['plant']." ON m".$f['plant'].".idmateria = dm".$f['plant'].".idmateria WHERE m".$f['plant'].".idmateria = '".$fm['idmateria']."' and dm".$f['plant'].".idciclo = '".$ciclo."'))";
                            $rnda = mysqli_query($pl,$consulta) or die("fallo la consulta del nombre del docente: ".$consulta.", ".mysqli_error($pl));
                            //echo $consulta;
                            $fnda = mysqli_fetch_array($rnda);
                            echo "<tr class=\"sobre\" style=\"background-color:".$cf1[$cf]."\">\n";
                            echo "<td  width=\"3%\" style=\"text-align:center;\">".$e++."</td>\n";
                            echo "<td  width=\"10%\" style=\"text-align:center;\">".$fm['sem']."</td>\n";
                            echo "<td  width=\"47%\">".$fm['materia']."</td>\n";
                            echo "<td  width=\"30%\">";
                            if($fnda['nm']!=""){                            
                                echo "<a href=\"asignaturas.php?iddoc=".$fnda['iddoc']."&asignadoc=2&idmateria=".$fm['idmateria']."&semestres=".$semestres."&opor=".$opor."\" onclick=\"pe();\" >";
                                echo "<img src=\"../../images/scrossg.png\" alt=\"\" /></a>&nbsp;";
                                echo $fnda['nm'];
                            }else{
                                if(sizeof($docentes)>0){
                                    echo "<select class=\"select\" style=\"background-color:".$cf1[$cf].";border:0;color:#888\" name=\"iddoc\" onchange=\"pe();location.href='asignaturas.php?iddoc='+this.value+'&asignadoc=1&idmateria=".$fm['idmateria']."&idpe=".$idpe."&semestres=".$semestres."&opor=".$opor."';\">";
                                    echo "<option value=\"\">--Seleccione un docente para asignarlo a la materia--</option>";
                                    for($i=0;$i<sizeof($docentes);$i++)
                                        echo "<option value=\"".$docentes[$i][0]."\">".$docentes[$i][1]."</option>";
                                    echo "</select>";
                                }else{
                                    echo "No hay docentes capturados para asignar";
                                }
                            }
                            echo "</td>\n";
                            echo "<td  width=\"10%\" style=\"text-align:center;\"><a href=\"asignaturas.php?delete=1&idmateria=".$fm['idmateria']."&idpe=".$idpe."&semestres=".$semestres."&opor=".$opor."\" onclick=\"pe();\" title=\"Eliminar asignatura\"> <img src=\"../../images/cross.png\" alt=\"\" /></a></td>\n";
                            echo "</tr>";
                            $cf = !$cf;
                        }
                        if($e==1) echo "<tr><td>No hay materias asignadas el programa educativo y/o semestre seleccionados</td></tr>";
                    }else{
                            echo "<tr class=\"sobre\">\n";
                            echo "<td style=\"text-align:center;\">SELECCIONE UN PROGRAMA EDUCATIVO DE LA LISTA PARA VER SUS ASIGNATURAS</td>\n";
                            echo "</tr>\n";
                        
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