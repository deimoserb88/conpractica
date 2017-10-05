<?php
require_once "config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;





$opor = request('opor', ' order by grupo');
/*SE OBTIENE EL NOMBRE DEL PLANTEL*/
$rp = mysqli_query($pl,"select nomplant from des where plant = '".$vs['plant']."'");
$fp = mysqli_fetch_array($rp);
/*****************************/

$parcial = request('parcial');
/*SE OBTIENEN LAS PRACTICAS REALIZADAS*/
$consulta = "select * from pr" . $vs['plant'] . " where idciclo = '" . $ciclo . "' and parcial = '".$parcial."' and iddoc = '".$f['iddoc']."'".$opor;
$rpr = mysqli_query($pl,$consulta) or die("Fallo la consulta para el listado de practicas realizadas: " . $consulta . ", " . mysql_qury());
$ttpr = mysqli_num_rows($rpr);//Se cuentan para mostrar correctamente el listado
/*************************************/

/*OBTENER EL PERIODO PARA PODER IMPRIMIRLO EN EL FROMATO*/
$consulta = "select date_format(pde,'%d/%m/%Y') as pde,date_format(pa,'%d/%m/%Y') as pa from periodos where (plant = '".$vs['plant']."' or plant = '0000') and idciclo = '".$ciclo."' and tipo = '".$parcial."'";//SE SUPONDRA QUE SI NO SE HAN DEFINIDO PERIODS PARA EL PLANTEL SE TOMARAN LOS GENERALES DE LA UNIVERSIDAD
$rpp = mysqli_query($pl,$consulta) or die("Fallo la consulta para encontrar el periodo: " . $consulta . ", " . mysql_qury());
$fpp = mysqli_fetch_array($rpp);
/**************************************/


?>
<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="utf-8"/>
        <title></title>
        <script type="text/javascript" src="../../jscript.js"></script>
        <style type="text/css">            
            table.pracreal {
                border: 1px solid #444;
            }
            table.pracreal th {
                background-color: #FFF;
                font-size: 10px;
                border-width: 2px 0 2px 2px;
                border-style: solid;
                border-color: #444;    
            }
            table.pracreal td{
                border-width: 0 1px 1px 0;
                border-style: solid;
                border-color: #444;
                height: 24px;
            }            
        </style>
    </head>
    <body style="font-family: 'Times New Roman'; font-size: 12px; width: 1000px;"><br /><br />
        <div id="header" style="text-align: center; width: 100%;">
            <strong style="font-size: 16px;">UNIVERSIDAD DE COLIMA</strong><br />
            <strong style="font-size: 14px;">DIRECCI&Oacute;N GENERAL DE EDUCACI&Oacute;N SUPERIOR</strong><br />
            PR&Aacute;CTICAS REALIZADAS (lab.-Tall. C de comp. y Campo) <strong  style="font-size: 14px;">DGES-012</strong><br /><br />
            <table cellpadding="0" cellspacing="0" border="0" style="font-size: 14px; width: 100%; text-align: left;">
                <tr>
                    <td width="33%" style="border:2px solid #000;">FACULTAD:<br /><?php echo strtoupper($fp['nomplant']); ?></td>
                    <td width=" 4%" style="border:0;">&nbsp;</td>
                    <td width="28%" style="border:0;">&nbsp;</td>
                    <td width=" 5%" style="border:0;">&nbsp;</td>
                    <td width="30%" style="border:2px solid #000;">SEMESTRES:<br /><?php echo strtoupper($nciclo); ?></td>
                </tr>
                <tr><td colspan="5">&nbsp;</td></tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td style="border:2px solid #000;">FECHAS:<br />DEL <?php echo $fpp['pde'] . " AL " . $fpp['pa'];?></td>
                    <td colspan="2">&nbsp;</td>                        
                </tr>
            </table>
                        
        </div>
        <br /><br />
        <div style="width: 100%;">
            <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; margin: auto;" class="pracreal">
                <tr>
                    <th width="37%">MATERIA</th>
                    <th width=" 6%">SEM.<br />GPO.</th>
                    <th width=" 5%">H<br />&nbsp;&nbsp;&nbsp;R<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S.</th>
                    <th width="17%">NOMBRE DE LA<br />PR&Aacute;CTICA</th>
                    <th width="14%">NOMBRE<br />Y FIRMA<br />DEL TITULAR</th>
                    <th width="21%" style="border-right:2px solid #000;">NOMBRE Y FIRMA<br />DEL JEFE DE GRUPO</th>
                </tr>
                <?php
                    $e = 0;
                    while ($fpr = mysqli_fetch_array($rpr)) {
                        echo "<tr >\n";
                            $consulta = "select materia from m".$vs['plant']." where idmateria = '".$fpr['idmateria']."'";
                            $rm = mysqli_query($pl,$consulta) or die("Fallo al buscar la materia: ".$consulta.", ".mysqli_error($pl));
                            $fm = mysqli_fetch_array($rm);
                            echo "<td>" . $fm['materia'] . "</td>\n";
                            echo "<td style=\"text-align:center;\">" . $fpr['grupo'] . "</td>\n";
                            echo "<td style=\"text-align:center;\">" . $fpr['hrs'] . "</td>\n";
                            echo "<td>" . $fpr['practica'] . "</td>\n";
                            echo "<td>&nbsp</td>\n";
                            echo "<td>&nbsp</td>\n";
                        echo "</tr>";
                        $e++;
                    }
                    if($e==0) echo "<tr><td colspan=\"4\">No tiene pr&aacute;cticas realizadas para imprimir</td></tr>";
                    for ($i = 0; $i < 10 - $e; $i++) {
                        echo "<tr> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> </tr>\n";
                    }
                ?>
            </table>
            <table width="100%" cellpadding="5" cellspacing="0" border="0">
                <tr><td style="border-bottom: 1px solid #444;">OBSERVACIONES:</td></tr>
                <tr><td style="border-bottom: 1px solid #444;">&nbsp;</td></tr>
                <tr><td style="border-bottom: 1px solid #444;">&nbsp;</td></tr>                
            </table>
            <br /><br />
            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td width="16%">&nbsp;</td>
                    <td style="width: 26%;border-bottom: 1px solid #555; margin: auto; text-align: center;">&nbsp;</td>
                    <td width="16%">&nbsp;</td>
                    <td style="width: 26%;border-bottom: 1px solid #555; margin: auto; text-align: center;">&nbsp;</td>
                    <td width="16%">&nbsp;</td>
                </tr>                
                <tr><td>&nbsp;</td><td style="text-align: left;">RESPONSABLE DE TALLER<br />LABORATORIO O CENTRO DE C&Oacute;MPUTO</td><td>&nbsp;</td><td style="text-align: center;">EL DIRECTOR</td>&nbsp;</tr>
            </table>
        </div><br /><br />
        <table width="200" border="0" cellspacing="0" cellpadding="0" style="margin: auto;">
            <tr>
                <td width="85" background="../../images/imprimir.png" onClick="window.print();" style="cursor:pointer;">&nbsp;</td>
                <td width="30">&nbsp;</td>
                <td width="85" background="../../images/cerrar.png" onClick="window.close();" style="cursor:pointer;">&nbsp;</td>
            </tr>
        </table>
        <br />   
    </body>
</html>
