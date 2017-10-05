<?php
  require_once "config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;



/**ENCONTRAR EL PERIODO DE CAPTURA VIGENTE, DE AQUI SE OBTIENEN
 * LOS DATOS: idperiodo, pde, pa */
$parcial = request('parcial',0);
$consulta = "select *,date_format(pde,'%d/%m/%Y') as pde,date_format(pa,'%d/%m/%Y') as pa from periodos where ".($parcial!=0?" tipo = '".$parcial."' and ":"")." ((plant = '".$vs['plant']."' and idciclo = '".$ciclo."' and (curdate() between pde and pa)) or (plant = '0000' and idciclo = '".$ciclo."' and (curdate() between pde and pa)))";
$rpc = mysqli_query($pl,$consulta) or die("Fallo la consulta del periodo de captura:".$consulta.", ".mysqli_error($pl));
if(mysqli_num_rows($rpc)>0) $fpc = mysqli_fetch_array ($rpc); else $fpc['tipo'] = 0;
/*********************************************/
$parcial = request('parcial',$fpc['tipo']);

$delete_allowed = $fpc['tipo'] != 0 && $parcial != 0;

/*BORRAR LA PRACTICA*/
$delete = request('delete',0);
if($delete){
    $idpr = request('idpr');
    $consulta = "delete from pr".$vs['plant']." where idpr = '".$idpr."'";
    mysqli_query($pl,$consulta) or die ("Fallo al borrar la practica: ".$consulta.", ".mysqli_error($pl));
}
/********************/



/*OBTENER LAS MATERIAS QUE IMPARTE EL DOCENTE*/
$consulta = "select m".$vs['plant'].".* from m".$vs['plant']." left join dm".$vs['plant']." on m".$vs['plant'].".idmateria=dm".$vs['plant'].".idmateria where dm".$vs['plant'].".iddoc = '".$f['iddoc']."' and dm".$vs['plant'].".idciclo = '".$ciclo."' order by m".$vs['plant'].".materia desc";
$rmat = mysqli_query($pl,$consulta) or die(mysqli_error($pl));
while($fmat = mysqli_fetch_array($rmat)){
    $materias[$fmat['idmateria']] = $fmat['materia']; 
}
/******************************/

/*OBTENER LAS PARCIALES QUE CAPTURO EL DOCENTE EN ESTE CICLO, POR SI PIDIO TODAS LAS PARCIALES*/
if($parcial==0){
    $consulta = "select distinct parcial from pr".$vs['plant']." where iddoc = '".$f['iddoc']."' and idciclo = '".$ciclo."' order by parcial";
    $rpar = mysqli_query($pl,$consulta) or die("Fallo la consulta de las distintas parciales capturadas por el docente. ".$consulta.", ".mysqli_error($pl));
    while($fpar = mysqli_fetch_array($rpar)) $parciales[] = $fpar['parcial'];
}else $parciales[]=$parcial;
/**********************************************************/


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

    <div id="principal" class="container" style="height:650px;">
        <table border="0" cellpadding="0" cellspacing="0" summary="" style="margin: auto; width: 908px;" >
            <tr>
                <td style="padding-left: 10px;">
                    <h2>Bienvenid@ 
                        <?php 
                            echo $f['nom'].", ".$siglas_plant . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : "");
                            if($vs['docenteyadmin']){
                                echo '&nbsp;|&nbsp;<a href="../respdes/cambiarrol.php?rol=admin" class="label label-info">Trabajar como responsable de plantel</a>';
                            }
                        ?></h2>
                    <h4>-- LISTADO DE PR&Aacute;CTICAS REALIZADAS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php prac_menu($vs['priv']); ?>
            </tr>
        </table>
                    <div class="row" style="width: 840px; margin: 0 auto;" >
                        <div class="col-xs-4">
                            <div class="btn-group" style="margin-bottom:20px;">
                                <button type="button" class="btn btn-default" data-toggle="dropdown" aria-haspopup="true">
                                    <?php
                                    switch ($parcial) {
                                        case 1:echo "Primera parcial ";
                                            break;
                                        case 2:echo "Segunda parcial ";
                                            break;
                                        case 3:echo "Tercera parcial ";
                                            break;
                                        case 4:echo "Cuarta parcial ";
                                            break;
                                        case 5:echo "Quinta parcial ";
                                            break;
                                        default : echo "-- Seleccione la parcial --";
                                    }
                                    ?>                    
                                </button>
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>                    
                                <ul class="dropdown-menu">     
                                    <li><a href="listado_practicas.php?parcial=1">Primera parcial</a></li>
                                    <li><a href="listado_practicas.php?parcial=2">Segunda parcial</a></li>
                                    <li><a href="listado_practicas.php?parcial=3">Tercera parcial</a></li>
                                    <li><a href="listado_practicas.php?parcial=4">Cuarta parcial</a></li>
                                    <li><a href="listado_practicas.php?parcial=5">Quinta parcial</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="panel panel-default" style="width: 810px; margin: 0 auto;">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-sm-9"><h1>PR&Aacute;CTICAS REALIZADAS</h1></div>
                                <div class="col-sm-3">
                                    <?php if($parcial!=0){ ?>
                                    <a class="btn btn-link" href="listado_practicas_I.php?parcial=<?= $parcial; ?>&idperiodo=<?= $fpc['idperiodo']; ?>" target="_blank">Versi&oacute;n para imprimir <img src="../../images/print.png" alt="" /></a>
                                    <?php }else echo "&nbsp;"; ?>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">                                      
                            <div style="overflow: auto; height: 460px;">
                            <table  style="width: 100%;" class="table table-striped table-hover table-condensed table-bordered">
                                <tr>
                                    <th>#</th>                                    
                                    <th>MATERIA</th>
                                    <th>GPO.</th>
                                    <th>HRS.</th>
                                    <th>NOMBRE DE LA PRACTICA</th>
                                    <th>ACCIONES</th>
                                        
                                </tr>
                                <?php                                    
                                 for ($e = 0; $e < sizeof($parciales); $e++) {
                                    $i = 1;
                                    echo "<tr><td style=\"text-align:center;background-color:#FFB;font-size:10px;\" colspan=\"6\">" . $parciales[$e] . "a PARCIAL</td></tr>";
                                    if(count($materias)>0){
                                        foreach ($materias as $key => $value) {
                                            /* SE OBTIENEN LAS PRACTICAS RALIZADAS POR CADA MATERIA PARA LA PARCIAL SELECCIONADA */
                                            $consulta = "select * from pr" . $vs['plant'] . " where iddoc='" . $f['iddoc'] . "' and idciclo = '" . $ciclo . "' and idmateria = '" . $key . "'";
                                            $consulta .= " and parcial = '" . $parciales[$e] . "' order by grupo";
                                            $rpr = mysqli_query($pl,$consulta) or die("Fallo en la consulta de las practicas realizadas: " . $consulta . ", " . mysqli_error($pl));
                                            /*         * *********************************** */
                                            $ttpr = mysqli_num_rows($rpr);
                                            $firstpass = true; //para ayduar con el rowspan

                                            if ($ttpr > 0) {
                                                echo "<tr>\n";
                                                echo "<td style=\"text-align:right;\" rowspan=\"" . $ttpr . "\">" . $i++ . "</td>\n";
                                                echo "<td style=\"\" rowspan=\"" . $ttpr . "\">" . $value . "</td>\n";
                                                while ($fpr = mysqli_fetch_array($rpr)) {
                                                    if (!$firstpass)
                                                        echo "<tr>\n";
                                                    else {
                                                        //echo "<td style=\"background-color:#FFF;font-size:10px; text-align:center;\" rowspan=\"".$ttpr."\">".$fpr['parcial']."a</td>\n";
                                                        $firstpass = false;
                                                    }
                                                    echo "<td style=\" text-align:center;\" >" . $fpr['grupo'] . "</td>\n";
                                                    echo "<td style=\" text-align:center;\" >" . $fpr['hrs'] . "</td>\n";
                                                    echo "<td style=\"\" >" . $fpr['practica'] . "</td>\n";
                                                    echo "<td style=\" text-align:center;\" >"; 
                                                    if($delete_allowed&&$fpr['vobodes']==0)
                                                        echo "<a href=\"#\" onclick=\"if(confirm('&iquest;Est&aacute; seguro de borrar la pr&aacute;ctica ".$fpr['practica']."?')){pe();location.href='listado_practicas.php?delete=1&idpr=".$fpr['idpr']."&parcial=".$parcial."'}\"><img src=\"../../images/cross.png\" alt=\"\" /></a>";
                                                    else
                                                        echo "<img src=\"../../images/crossg.png\" alt=\"\" />";
                                                    echo "</td>\n";
                                                    echo "</tr>\n";
                                                }
                                            } else {
                                                echo "<tr>\n";
                                                echo "<td style=\"text-align:right;\">" . $i++ . "</td>\n";
                                                echo "<td style=\"\">" . $value . "</td>\n";
                                                echo "<td style=\" text-align:left;\" colspan=\"4\">No ha capturado pr&aacute;cticas realizadas para esta parcaial</td>\n";
                                                echo "</tr>\n";
                                            }
                                        }
                                    }
                                }
                            ?>                                
                            </table>
                            </div>                                                        
                        </div>
                    </div>
<div id="espera">&nbsp;</div>
<div id="guardando"><img src="../../images/espera.jpg" alt="" /></div>
<div id="tooltip" style="visibility: hidden;border:1px solid #666;background-color: #FFF; font-size: 10px;width: 200px;z-index: 99;"></div>
<?php
    $body->close_cuerpo();
    $footer = new footer();
    $footer->set_footer();
?>
