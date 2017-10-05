<?php
include("../../config.php");
include("../versesion.php");
include("../commfunc.php");
$f = $fila;



/**ENCONTRAR EL PERIODO DE CAPTURA VIGENTE, DE AQUI SE OBTIENEN LOS DATOS: idperiodo, pde, pa */
$parcial = request('parcial',0);
$consulta = "select *,date_format(pde,'%d/%m/%Y') as pde,date_format(pa,'%d/%m/%Y') as pa from periodos where ".($parcial!=0?" tipo = '".$parcial."' and ":"")." ((plant = '".$vs['plant']."' and idciclo = '".$ciclo."' and (curdate() between pde and pa)) or (plant = '0000' and idciclo = '".$ciclo."' and (curdate() between pde and pa)))";
$rpc = mysql_query($consulta) or die("Fallo la consulta del periodo de captura:".$consulta.", ".mysql_error());
if(mysqli_num_rows($rpc)>0) $fpc = mysql_fetch_array ($rpc); else $fpc['tipo'] = 0;
/*********************************************/
$parcial = request('parcial',$fpc['tipo']);
$edit_allowed = $parcial>0 && $fpc['tipo']>0 && $parcial==$fpc['tipo'];


/*GUARDAR LAS PRACTICAS REALIZADAS CAPTURADAS*/
$guardar = request('guardar',0);
if($guardar){
    $consulta = "select idperiodo from periodos where tipo = '".$parcial."' and ((plant = '".$vs['plant']."' and idciclo = '".$ciclo."' and (curdate() between pde and pa)) or (plant = '0000' and idciclo = '".$ciclo."' and (curdate() between pde and pa)))";
    $ridp = mysql_query($consulta) or die ("Fallo en la consulta del ideperiodo: ".$consulta.", ".mysql_error());
    $fidp = mysql_fetch_array($ridp);
    for($i=1;$i<=20;$i++){
        $idpr = request('idpr'.$i,0);
        $idmateria = request('materia'.$i);
        $grupo = request('grupo'.$i);
        $hrs = request('hrs'.$i);
        $practica = request('practica'.$i);
                
        if($idmateria!=""&&$grupo!=""&&$hrs!=""&&$practica!=""){            
            $consulta = "replace into pr".$vs['plant']." set ".($idpr!=0?"idpr='".$idpr."',":"")." idmateria='".$idmateria."',iddoc='".$f['iddoc']."',parcial='".$parcial."',idciclo='".$ciclo."',grupo='".$grupo."',hrs='".$hrs."',practica='".$practica."',idperiodo='".$fidp['idperiodo']."'";       
            mysql_query($consulta) or die("Fallo al guardar las practicas realizadas: ".$consulta.", ".mysql_error());
        }
    }
}
/*********************************************/

/**CARGAR LAS PRACTICAS SI ES QUE EXISTEN**/
$consulta = "select * from pr".$vs['plant']." where idciclo='".$ciclo."' and iddoc = '".$f['iddoc']."' and parcial = '".$parcial."' order by grupo";
//echo $consulta;//debug
$rpr = mysql_query($consulta) or die ("Fallo en la consulta de las practicas realizadas: ".$consulta.", ".mysql_error());
$i = 1;$pr = array();
while ($fpr = mysql_fetch_array($rpr)) $pr[$i++] = $fpr;

/******************************************/

/*OBTENER EL NOMBRE DEL PLANTEL*/
$consulta = "select nomplant from des where plant = '".$vs['plant']."'";
$rnp = mysql_query($consulta);
$fnp = mysql_fetch_array($rnp);
/*******************************/


/*OBTENER LAS MATERIAS QUE IMPARTE EL DOCENTE*/
$consulta = "select m".$vs['plant'].".* from m".$vs['plant']." left join dm".$vs['plant']." on m".$vs['plant'].".idmateria=dm".$vs['plant'].".idmateria where dm".$vs['plant'].".iddoc = '".$f['iddoc']."' and dm".$vs['plant'].".idciclo = '".$ciclo."' order by m".$vs['plant'].".materia desc";
$rmat = mysql_query($consulta) or die(mysql_error());
while($fmat = mysql_fetch_array($rmat)){
    $materias[$fmat['idmateria']] = $fmat['materia']; 
}
/******************************/



main_header("../../");
?>
<body>    
    <div id="header">
        <img border="0" src="../../images/header1.jpg" alt="FIE"  />
    </div>
    <div id="principal" class="container" style="height:650px;">
        <table border="0" cellpadding="0" cellspacing="0" summary="" style="margin: auto; width: 908px;" >
            <tr>
                <td style="padding-left: 10px;">
                    <h2>Bienvenid@ <?php echo $f['nom'].", ".$siglas_plant . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : ""); ?></h2>
                    <h4>-- PR&Aacute;CTICAS REALIZADAS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php prac_menu($vs['priv']); ?>
            </tr>
            <tr>
                <td style="padding:20px 0 0 20px;" colspan="2">

                    <form id="captura_practicas_realizadas" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">

                        <select name="parcial" onchange="location.href='captura_practicas.php?parcial='+this.value;">
                            <option value="" selected="selected" disabled="disabled">--Seleccione la parcial--</option>
                            <option value="1" <?php echo ($parcial==1?'selected="selected"':""); ?>>Primera</option>
                            <option value="2" <?php echo ($parcial==2?'selected="selected"':""); ?>>Segunda</option>
                            <option value="3" <?php echo ($parcial==3?'selected="selected"':""); ?>>Tercera</option>
                            <option value="4" <?php echo ($parcial==4?'selected="selected"':""); ?>>Cuarta</option>
                            <option value="5" <?php echo ($parcial==5?'selected="selected"':""); ?>>Quinta</option>
                        </select><span style="font-size: 10px;"> Evaluaci&oacute;n parcial, periodo de captura: <?php echo ($edit_allowed?$fpc['pde']." al ".$fpc['pa']:"CAPTURA CERRADA");  ?> </span><br /><br />
                   
                        <fieldset id="capturapracticasrealizadas" style="width: 800px;">
                            <legend>PR&Aacute;CTICAS REALIZADAS</legend>
                            <br />
                            *Debe escribir los cuatro datos para cada registro, de lo contrario el registro no se guardar&aacute;
                            
                            <div style="width: 822px; text-align: right; margin: auto;"><h3><a href="listado_practicas_I.php?parcial=<?php echo $parcial; ?>&idperiodo=<?php echo $fpc['idperiodo']; ?>" target="_blank">Versi&oacute;n para imprimir <img src="../../images/print.png" alt="" /></a></h3></div>
                           
                            <table cellpadding="0" cellspacing="0" border="0" class="cpracticas" width="100%">
                                <tr>
                                    <th width= "2%">#</th>
                                    <th width="36%">MATERIAS</th>
                                    <th width= "6%">SEM.<br />GPO.</th>
                                    <th width= "5%">HRS.</th>
                                    <th width="18%">NOMBRE DE LA<br />PRACTICA</th>
                                    <th width="13%">NOMBRE<br />Y FIRMA<br />DEL TITULAR</th>
                                    <th width="20%">NOMBRE Y FIRMA<br /> DEL JEFE DE GRUPO</th>
                                </tr>
                                <?php
                                    $tm = (sizeof($pr)>20?sizeof($pr):20);
                                    for($i=1;$i<=$tm;$i++){
                                        echo "<tr class=\"sobre\">\n";
                                        echo "<td style=\"font-size:10px; text-align:right;\">".$i."</td>\n";
                                        
                                        echo "<td style=\"background-color:#FFF;\" >";
                                        if(!empty($pr[$i]['idpr'])) echo "<input type=\"hidden\" name=\"idpr".$i."\" value=\"".$pr[$i]['idpr']."\" />";
                                        echo "<select name=\"materia".$i."\" style=\"background-color:#FFF;border:0;color:#888;font-size:10px; width:100%;\" ".($edit_allowed?"":"disabled=\"disabled\"").">";
                                        echo "<option value=\"\">--</option>";
                                        foreach($materias as $key=>$value){
                                            echo "<option value=\"".$key."\" ".($key==$pr[$i]['idmateria']?"selected=\"selected\"":"").">".$value."</option>";
                                        }
                                        echo "</select>";
                                        //echo "<input type=\"text\" name=\"materia".$i."\" size=\"50\" maxlength=\"60\" style=\"border:0;\" onchange=\"this.value=this.value.toUpperCase();\" /></td>\n";
                                        
                                        echo "<td style=\"background-color:#FFF;font-size:10px; \" ><input type=\"text\" name=\"grupo".$i."\" value=\"".$pr[$i]['grupo']."\" size=\"8\" maxlength=\"3\" style=\"border:0;text-align:center;\" onchange=\"this.value=this.value.toUpperCase(); validaGrupo(this);\" ".($edit_allowed?"":"disabled=\"disabled\"")." /></td>\n";
                                        echo "<td style=\"background-color:#FFF;font-size:10px;\" ><input type=\"text\" name=\"hrs".$i."\" value=\"".$pr[$i]['hrs']."\" size=\"7\" maxlength=\"2\" style=\"border:0; text-align:center;\" onkeypress=\"return validaentradaNum(event);\" ".($edit_allowed?"":"disabled=\"disabled\"")." /></td>\n";
                                        echo "<td style=\"background-color:#FFF;font-size:10px;\" ><input type=\"text\" name=\"practica".$i."\" value=\"".$pr[$i]['practica']."\" size=\"30\" maxlength=\"100\" style=\"border:0;\" ".($edit_allowed?"":"disabled=\"disabled\"")." /></td>\n";
                                        echo "<th>--</th>\n";
                                        echo "<th>--</th>\n";
                                        echo "</tr>\n";
                                    }

                                ?>
                            </table>
                            <br />
                            <button type="submit" name="guardar" value="1" <?php if(!$edit_allowed) echo "disabled=\"disabled\""; ?> onclick="pe();">Guardar y continuar <img src="../../images/disk.png" alt="Guardar" /></button>
                        </fieldset>
                    </form>
                    
                    
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div id="banner" style="height:10px;">&nbsp;</div>
<?php include("../pie.html"); ?>

</body>
</html>
