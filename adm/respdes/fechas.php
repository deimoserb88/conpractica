<?php
require_once "./config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;

$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);


$header->close_head();


$body->body_style = "background-color: " . $color->fc;
$body->main_css = "margin: 5px auto; height: 300px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
$body->main_class = "container";
$body->header_type = "none";
$body->footer_css = "margin: 5px auto;";

$body->set_cuerpo();
?>

    <div id="principal" class="container" style="height:650px;">       
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
                    <h4>-- FECHAS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php main_menu($vs['priv']); ?>
            </tr>
            <tr>
                <td style="padding:0;" colspan="2">
                    <br />
                    <div style="width: 90%; margin: auto;">
                        <fieldset id="listado">
                            <legend>Listado de fechas programadas</legend>
                            <table cellpadding="0" cellspacing="5" border="0" style="font-size: 12px;">
                                                                 
                            <?php
                                $fechas = new _FECHA_;    
                                $e = 1;                                
                                /*Primero se consultan las fechas del periodo de PP en el plantel, si no las hay se toman las de la universidad*/
                                $consultaPP = "select day(pde) as pde_d, month(pde) as pde_m, year(pde) as pde_a, day(pa) as pa_d, month(pa) as pa_m, year(pa) as pa_a from periodos where pde is not NULL and pa is not NULL and tipo='0' and idciclo = '".$ciclo."' and plant = '".$f['plant']."'";
                                $rfPP = mysqli_query($pl,$consultaPP)  or die("Fallo la consulta del periodo PP: ".$consulta.", ".mysqli_error($pl));
                                if(mysqli_num_rows($rfPP)==0){
                                    $consultaPP = "select day(pde) as pde_d, month(pde) as pde_m, year(pde) as pde_a, day(pa) as pa_d, month(pa) as pa_m, year(pa) as pa_a from periodos where tipo='0' and idciclo = '".$ciclo."' and plant = '0000'";
                                    $rfPP = mysqli_query($pl,$consultaPP)  or die("Fallo la consulta del periodo PP: ".$consulta.", ".mysqli_error($pl));                                  
                                }
                                $ffPP = mysqli_fetch_array($rfPP);
                                echo "<tr><th>Programaci&oacute;n de pr&aacute;cticas:</th><td>del ".$ffPP['pde_d']." de ".$fechas->meses[$ffPP['pde_m']]." al ".$ffPP['pa_d']." de ".$fechas->meses[$ffPP['pa_m']]."</td></tr>\n";
                                
                                /*Luego se consultan las fechas de las parciales, si no hay definidas se toman las de la Universidad*/
                                $consulta = "select day(pde) as pde_d, month(pde) as pde_m, year(pde) as pde_a, day(pa) as pa_d, month(pa) as pa_m, year(pa) as pa_a from periodos where idciclo = '".$ciclo."' and plant = '".$f['plant']."' and tipo>0 order by tipo";
                                $rf = mysqli_query($pl,$consulta) or die("Fallo la consulta de los periodos: ".$consulta.", ".mysqli_error($pl));
                                if(mysqli_num_rows($rf)==0){
                                    $consulta = "select day(pde) as pde_d, month(pde) as pde_m, year(pde) as pde_a, day(pa) as pa_d, month(pa) as pa_m, year(pa) as pa_a from periodos where idciclo = '".$ciclo."' and plant = '0000' and tipo>0 order by tipo";
                                    $rf = mysqli_query($pl,$consulta) or die("Fallo la consulta de los periodos: ".$consulta.", ".mysqli_error($pl));
                                }
                                                                
                                while ($ff = mysqli_fetch_array($rf))
                                    echo "<tr><th>".$e++."a evaluaci&oacute;n parcial:</th><td>del ".$ff['pde_d']." de ".$fechas->meses[$ff['pde_m']]." al ".$ff['pa_d']." de ".$fechas->meses[$ff['pa_m']]."</td></tr>\n";
                            ?>
                                
                            </table>
                            
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
