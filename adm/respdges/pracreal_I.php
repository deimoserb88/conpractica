<?php
require_once "./config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;



$plant = request('plant');
$iddoc  = request('iddoc',0);
$parcial= request('parcial',0);
$grupo  = request('grupo',0);

/*OBTENER EL NOMBRE DEL PLANTEL*/
$rplant = mysqli_query($pl,"select plant,nomplant,siglas from des where plant='".$plant."'");
$fplant = mysqli_fetch_array($rplant);
$nomplant = $fplant['nomplant'];
/**********************************/

/*OBTENER TODOS LOS DOCENTES QUE HAN CAPTURADO PRACTICAS REALIZADAS*/
$consulta = "select concat_ws(' ',nom,apat) as nombre, iddoc from d".$plant." where iddoc in (select distinct iddoc from pr".$plant.($parcial!=0?" where parcial = '".$parcial."'":"").") order by nombre";
$rdoc = mysqli_query($pl,$consulta) or die("Fallo la consulta de los docentes que ya capturaron practicas realizadas: ".$consulta.", ".mysqli_error($pl));
/**********************************/

/*OBTENER LOS GRUPOS PARA LOS CUALES HAY PRACTICAS REALIZADAS*/
$consulta = "select distinct grupo from pr".$plant." where 1 ".($parcial!=0?" and parcial = '".$parcial."'":"")." order by grupo";
$rgp = mysqli_query($pl,$consulta) or die("Fallo al obtener los grupos: ".$consulta.", ".mysqli_error($pl));
while($fgp = mysqli_fetch_array($rgp)) $grupos[] = $fgp['grupo'];
if($grupo==0) $gprs = $grupos; else $gprs[] = $grupo;
/*************************************************************/

/*OBTENER LAS PARCIALES QUE CAPTURARON LOS DOCENTES EN ESTE CICLO, POR SI PIDIO TODAS LAS PARCIALES*/
if($parcial==0){
    $consulta = "select distinct parcial from pr".$plant." where idciclo = '".$ciclo."' order by parcial";
    $rpar = mysqli_query($pl,$consulta) or die("Fallo la consulta de las distintas parciales capturadas por el docente. ".$consulta.", ".mysqli_error($pl));
    while($fpar = mysqli_fetch_array($rpar)) $parciales[] = $fpar['parcial'];
}else $parciales[]=$parcial;
/**********************************************************/




?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-ES">
    <head>
        <meta charset="UTF-8" />
        <title></title>
        <script type="text/javascript" src="'.$relative.'jscript.js"></script>
        <style type="text/css">
            table.cpracticas{
                border-width: 1px 0 0 1px;
                border-style: solid;
                border-color: #555;
            }
            table.cpracticas th, table.cpracticas td{
                background-color: #EEE;
                border-width: 0 1px 1px 0;
                border-style: solid;
                border-color: #555;
            }
            table.cpracticas td{
                background-color: #FFF;
            }
        </style>
    </head>
    <body style="font-family: 'Times New Roman'; font-size: 12px;"><br /><br />
        <div id="header" style="text-align: center;">
            <strong style="font-size: 16px;">UNIVERSIDAD DE COLIMA</strong><br />
            <strong style="font-size: 14px;">DIRECCI&Oacute;N GENERAL DE EDUCACI&Oacute;N SUPERIOR</strong><br />
            N&Uacute;MERO DE PR&Aacute;CTICAS REALIZADAS POR MATERIA (LAB.-TALL.-C.COMP. y CAMPO)<br /><br />
            SEMESTRE:<span style="text-decoration: underline;">&nbsp;&nbsp;<?php echo strtoupper($nciclo); ?>&nbsp;&nbsp;</span>
            <br /><br />
            ESCUELA O FACULAD:<span style="text-decoration: underline;">&nbsp;&nbsp;<?php echo strtoupper($nomplant); ?>&nbsp;&nbsp;</span>
        </div>
        <br /><br />
        <div style="">
        <table border="0" cellpadding="0" cellspacing="0" summary="" style="margin: auto; width: 908px;" >
            <tr>
                <td style="padding:20px 0 0 20px; font-size: 12px;" colspan="2">                    
                            <br />    
                            <div >
                            <table cellpadding="0" cellspacing="0" border="0" class="cpracticas" width="100%">
                                <tr>
                                    <th width= "5%">GRUPO</th>                                    
                                    <th width="30%">MATERIA</th>
                                    <th width="30%">DOCENTE</th>                                    
                                    <th width="30%">PRACTICA</th>
                                    <th width= "5%">HRS.</th>
                                                                           
                                </tr>
                                <?php                                    
                                 for ($e = 0; $e < sizeof($parciales); $e++) {

                                    echo "<tr><td style=\"text-align:center;font-size:10px;\" colspan=\"6\">" . $parciales[$e] . "a PARCIAL</td></tr>";
                                    
                                    foreach($gprs as $valorgrupo){
                                        
                                        $consulta = "select distinct m".$plant.".idmateria,m".$plant.".materia from m".$plant." left join pr".$plant." on m".$plant.".idmateria = pr".$plant.".idmateria where  pr".$plant.".parcial = '".$parciales[$e]."' and pr".$plant.".idciclo = '".$ciclo."' order by pr".$plant.".grupo,m".$plant.".materia";
                                        $rmat = mysqli_query($pl,$consulta) or die("Fallo en la consulta de las materias: ".$consulta.", ".mysqli_error($pl));                                        
                                    
                                        while ($fmat = mysqli_fetch_array($rmat)) {
                                            /* SE OBTIENEN LAS PRACTICAS RALIZADAS POR CADA MATERIA PARA LA PARCIAL, MATERIA Y GRUPO SELECCIONADOS*/
                                            $consulta = "select * from pr" . $plant . " where 1";
                                            if($iddoc!=0) $consulta .= " and iddoc='" . $iddoc . "'";//DOCENTE
                                            $consulta .= " and idciclo = '" . $ciclo . "' and idmateria = '" . $fmat['idmateria'] . "'";//MATERIA
                                            $consulta .= " and grupo = '".$valorgrupo."' and parcial = '" . $parciales[$e] . "' order by grupo";//GRUPO Y PARCIAL
                                            $rpr = mysqli_query($pl,$consulta) or die("Fallo en la consulta de las practicas realizadas: " . $consulta . ", " . mysqli_error($pl));

                                            /*************************************/
                                            $ttpr = mysqli_num_rows($rpr);
                                            $fpr = mysqli_fetch_array($rpr);
                                            //$ttm = (sizeof($materias) * $ttpr);
                                            $firstpass = true; //para ayduar con el rowspan

                                            if ($ttpr > 0) {
                                                echo "<tr>\n";                                            
                                                echo "<td style=\"font-size:10px; text-align:center;\" rowspan=\"" . $ttpr . "\">" . $valorgrupo . "</td>\n";
                                                echo "<td style=\"background-color:#FFF;font-size:10px;\" rowspan=\"" . $ttpr . "\">" . $fmat['materia'] . "</td>\n";
                                                    $rnomdoc = mysqli_query($pl,"select concat_ws(' ',nom,apat) as nomdoc from d".$plant." where iddoc = '".$fpr['iddoc']."'");
                                                    $fnomdoc = mysqli_fetch_array($rnomdoc);
                                                    echo "<td style=\"background-color:#FFF;font-size:10px; text-align:left;\" rowspan=\"" . $ttpr . "\">" . $fnomdoc['nomdoc'] . "</td>\n";
                                                do{
                                                    if (!$firstpass)
                                                        echo "<tr>\n";
                                                    else {
                                                        //echo "<td style=\"background-color:#FFF;font-size:10px; text-align:center;\" rowspan=\"".$ttpr."\">".$fpr['parcial']."a</td>\n";
                                                        $firstpass = false;
                                                    }

                                                    echo "<td style=\"background-color:#FFF;font-size:10px; text-align:left;\" >" . $fpr['practica'] . "</td>\n";
                                                    echo "<td style=\"background-color:#FFF;font-size:10px; text-align:center;\" >" . $fpr['hrs'] . "</td>\n";
                                                    echo "</tr>\n";
                                                }while ($fpr = mysqli_fetch_array($rpr)); 
                                            }
                                        }
                                        }
                                }
                            ?>                                
                            </table>
                            </div>                                                        

                    
                </td>
            </tr>
        </table>
        <br /><br /><br /><br />

        <div style="width: 200px;border-top: 1px solid #555; margin: auto; text-align: center;">
            EL DIRECTOR
        </div>

        </div><br /><br />

        <table width="200" border="0" cellspacing="0" cellpadding="0" style="margin: auto;">
            <tr>
                <td width="85" onClick="window.print();" style="cursor:pointer; background-image: url(../../images/imprimir.png);">&nbsp;</td>
                <td width="30">&nbsp;</td>
                <td width="85" background="../../images/cerrar.png" onClick="window.close();" style="cursor:pointer;">&nbsp;</td>
            </tr>
        </table>
        <br />   

    </body>
</html>
