<?php
require_once "./config.ini.php";
include("../versesion.php"); //genera $ciclo
include("../commfunc.php");
$f = $fila;

//vermat($_POST);

$plant = request('plant');

$opor = request('opor', 'materia');

$rp = mysqli_query($pl,"select nomplant from des where plant = '".$plant."'");
$fp = mysqli_fetch_array($rp);

$consulta = "select * from pp" . $plant . " where idciclo = '" . $ciclo . "' order by " . $opor;
$rpp = mysqli_query($pl,$consulta) or die("Fallo la consulta para el listado de practicas programadas: " . $consulta . ", " . mysql_qury());
$ttpp = mysqli_num_rows($rpp);
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
            N&Uacute;MERO DE PR&Aacute;CTICAS PROGRAMADAS POR MATERIA (LAB.-TALL.-C.COMP. y CAMPO)<br /><br />
            SEMESTRE:<span style="text-decoration: underline;">&nbsp;&nbsp;<?php echo strtoupper($nciclo); ?>&nbsp;&nbsp;</span>
            <br /><br />
            <div style="width: 600px; text-align: right; margin: auto;">DGES-011</div>
            <br /><br />
            ESCUELA O FACULTAD:<span style="text-decoration: underline;">&nbsp;&nbsp;<?php echo strtoupper($fp['nomplant']); ?>&nbsp;&nbsp;</span>
        </div>
        <br /><br />
        <div style="">
            <table cellpadding="0" cellspacing="0" border="0" style="width: 600px; margin: auto;" class="cpracticas">
                <tr>
                    <th width="67%">NOMBRE DE LAS<br />MATERIAS</th>
                    <th width="15%">SEM. Y<br />GPO.</th>
                    <th width="14%">TOTAL/ PRACT.<br />PROGRAMADAS</th>
                </tr>
                <?php
                    $e = 0;
                    while ($fpp = mysqli_fetch_array($rpp)) {
                        echo "<tr >\n";
                        echo "<td  width=\"67%\">" . $fpp['materia'] . "</td>\n";
                        echo "<td  width=\"15%\" style=\"text-align:center;\">" . $fpp['grupo'] . "</td>\n";
                        echo "<td  width=\"15%\" style=\"text-align:center;\">" . $fpp['npp'] . "</td>\n";
                        echo "</tr>";
                        $e++;
                    }
                    if($e==0&&$plant!="") echo "<tr><td colspan=\"4\">El plantel no tiene pr&aacute;cticas programadas para este ciclo escolar</td></tr>";
                    for ($i = 0; $i < 30 - $e; $i++) {
                        echo "<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>\n";
                    }
                ?>
            </table>
            <br /><br /><br /><br />
            <div style="width: 200px;border-top: 1px solid #555; margin: auto; text-align: center;">
                EL DIRECTOR
            </div>

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
