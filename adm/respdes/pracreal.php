<?php
require_once "./config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;

$iddoc = request('iddoc', 0);
$parcial = request('parcial', 0);
$grupo = request('grupo', 0);

/* GUARDAR EL CAMBIO EN EL VOBO SI LO HAY */
$vobo = request('vobo', 0);
if ($vobo > 0) {
    $consulta = "update pr" . $f['plant'] . " set vobodes = not vobodes where idpr = '" . $vobo . "'";
    mysqli_query($pl, $consulta) or die(mysqli_error($pl));
}
/* * ************************************* */



/* OBTENER TODOS LOS DOCENTES QUE HAN CAPTURADO PRACTICAS REALIZADAS */
$consulta = "select concat_ws(' ',nom,apat) as nombre, iddoc from d" . $f['plant'] . " where iddoc in (select distinct iddoc from pr" . $f['plant'] . ($parcial != 0 ? " where parcial = '" . $parcial . "'" : "") . ") order by nombre";
$rdoc = mysqli_query($pl, $consulta) or die("Fallo la consulta de los docentes que ya capturaron practicas realizadas: " . $consulta . ", " . mysqli_error($pl));
/* * ******************************* */

/* OBTENER LOS GRUPOS PARA LOS CUALES HAY PRACTICAS REALIZADAS */
$consulta = "select distinct grupo from pr" . $f['plant'] . " where 1 " . ($parcial != 0 ? " and parcial = '" . $parcial . "'" : "") . " order by grupo";
$rgp = mysqli_query($pl, $consulta) or die("Fallo al obtener los grupos: " . $consulta . ", " . mysqli_error($pl));
while ($fgp = mysqli_fetch_array($rgp))
    $grupos[] = $fgp['grupo'];
if ($grupo == 0)
    $gprs = $grupos;
else
    $gprs[] = $grupo;
/* * ********************************************************** */

/* OBTENER LAS PARCIALES QUE CAPTURARON LOS DOCENTES EN ESTE CICLO, POR SI PIDIO TODAS LAS PARCIALES */
if ($parcial == 0) {
    $consulta = "select distinct parcial from pr" . $f['plant'] . " where idciclo = '" . $ciclo . "' order by parcial";
    $rpar = mysqli_query($pl, $consulta) or die("Fallo la consulta de las distintas parciales capturadas por el docente. " . $consulta . ", " . mysqli_error($pl));
    while ($fpar = mysqli_fetch_array($rpar))
        $parciales[] = $fpar['parcial'];
} else
    $parciales[] = $parcial;
/* * ******************************************************* */


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
                <h4>-- LISTADO DE PR&Aacute;CTICAS REALIZADAS --</h4>
            </td>
            <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
        </tr>
        <tr>
<?php main_menu($f['priv']); ?>
        </tr>
        <tr>
            <td style="padding:20px 0 0 20px; font-size: 12px;" colspan="2">

                
                <div class="btn-group" style="margin-bottom:20px;">
                  <button type="button" class="btn btn-success" data-toggle="dropdown" aria-haspopup="true">
                    <?php  
                        switch($parcial){
                            case 1:echo "Primera parcial ";break;
                            case 2:echo "Segunda parcial ";break;
                            case 3:echo "Tercera parcial ";break;
                            case 4:echo "Cuarta parcial ";break;
                            case 5:echo "Quinta parcial ";break;
                            default : echo "Todas las parciales";
                        }
                      
                    ?>                    
                  </button>
                  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                  </button>                    
                  <ul class="dropdown-menu">     
                    <li><a href="pracreal.php?parcial=1&grupo=<?=$grupo?>&iddoc=<?=$iddoc?>">Primera parcial</a></li>
                    <li><a href="pracreal.php?parcial=2&grupo=<?=$grupo?>&iddoc=<?=$iddoc?>">Segunda parcial</a></li>
                    <li><a href="pracreal.php?parcial=3&grupo=<?=$grupo?>&iddoc=<?=$iddoc?>">Tercera parcial</a></li>
                    <li><a href="pracreal.php?parcial=4&grupo=<?=$grupo?>&iddoc=<?=$iddoc?>">Cuarta parcial</a></li>
                    <li><a href="pracreal.php?parcial=5&grupo=<?=$grupo?>&iddoc=<?=$iddoc?>">Quinta parcial</a></li>
                  </ul>
                </div> 
                
                <div class="btn-group" style="margin-bottom:20px;">
                  <button type="button" class="btn btn-success" data-toggle="dropdown" aria-haspopup="true">
                    <?php  
                        if($grupo == 0){
                            echo "Todos los grupos ";
                        }else{
                            echo "Grupo ".$grupo;
                        }
                      
                    ?>                    
                  </button>
                  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                  </button>                    
                  <ul class="dropdown-menu">                         
                        <?php
                            foreach ($grupos as $key => $value) {
                                echo '<li><a  href="pracreal.php?parcial='.$parcial.'&grupo='.$value.'&iddoc='.$iddoc.'">' . $value . '</a></li>';
                            }
                        ?>
                  </ul>
                </div> 

                <div class="btn-group" style="margin-bottom:20px;">
                  <button type="button" class="btn btn-success" data-toggle="dropdown" aria-haspopup="true">
                    <?php  
                        if($iddoc == 0){
                            echo "Todos los docentes ";
                        }else{
                            $rdocente = mysqli_query($pl,"select concat_ws(' ',nom,apat,amat) as nombre from d" . $f['plant'] . " where iddoc = '".$iddoc."'") or die(mysqli_error($pl));
                            $fdocente = mysqli_fetch_assoc($rdocente);
                            echo "Docente ".$fdocente['nombre'];
                        }
                      
                    ?>                    
                  </button>
                  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                  </button>                    
                  <ul class="dropdown-menu">                         
                        <?php
                            while ($fdoc = mysqli_fetch_array($rdoc)) {
                                echo '<li><a  href="pracreal.php?parcial='.$parcial.'&grupo='.$grupo.'&iddoc='.$fdoc['iddoc'].'">' . $fdoc['nombre'] . '</a></li>';
                            }
                        ?>
                  </ul>
                </div>                 
                
                
            
                <fieldset id="listadopracticasrealizadas" style="width: 800px; padding: 10px;">
                    <legend>PR&Aacute;CTICAS REALIZADAS</legend>
                    <br />                                 
                    <div style="width: 822px; text-align: right; margin: auto;">
                        <h3>
                            <a href="pracreal_I.php?parcial=<?php echo $parcial; ?>&idperiodo=<?php echo $fpc['idperiodo']; ?>" target="_blank">Versi&oacute;n para imprimir <img src="../../images/print.png" alt="" /></a>
                        </h3>
                    </div>                                            
                    <div style="overflow: auto; height: 460px;">
                        <table class="cpracticas" style="width: 100%;">
                            <tr>
                                <th width= "5%">GRUPO</th>                                    
                                <th width="30%">MATERIA</th>
                                <th width="25%">DOCENTE</th>                                    
                                <th width="30%">PRACTICA</th>
                                <th width= "5%">HRS.</th>
                                <th width= "5%">VoBo</th>                                        
                            </tr>
                            <?php
                            for ($e = 0; $e < sizeof($parciales); $e++) {

                                echo "<tr><td style=\"text-align:center;background-color:#FFB;font-size:10px;\" colspan=\"6\">" . $parciales[$e] . "a PARCIAL</td></tr>";

                                foreach ($gprs as $valorgrupo) {

                                    $consulta = "select distinct m" . $f['plant'] . ".idmateria,m" . $f['plant'] . ".materia from m" . $f['plant'] . " left join pr" . $f['plant'] . " on m" . $f['plant'] . ".idmateria = pr" . $f['plant'] . ".idmateria where  pr" . $f['plant'] . ".parcial = '" . $parciales[$e] . "' and pr" . $f['plant'] . ".idciclo = '" . $ciclo . "' order by pr" . $f['plant'] . ".grupo,m" . $f['plant'] . ".materia";
                                    $rmat = mysqli_query($pl, $consulta) or die("Fallo en la consulta de las materias: " . $consulta . ", " . mysqli_error($pl));

                                    while ($fmat = mysqli_fetch_array($rmat)) {
                                        /* SE OBTIENEN LAS PRACTICAS RALIZADAS POR CADA MATERIA PARA LA PARCIAL, MATERIA Y GRUPO SELECCIONADOS */
                                        $consulta = "select * from pr" . $f['plant'] . " where 1";
                                        if ($iddoc != 0)
                                            $consulta .= " and iddoc='" . $iddoc . "'"; //DOCENTE
                                        $consulta .= " and idciclo = '" . $ciclo . "' and idmateria = '" . $fmat['idmateria'] . "'"; //MATERIA
                                        $consulta .= " and grupo = '" . $valorgrupo . "' and parcial = '" . $parciales[$e] . "' order by grupo"; //GRUPO Y PARCIAL
                                        $rpr = mysqli_query($pl, $consulta) or die("Fallo en la consulta de las practicas realizadas: " . $consulta . ", " . mysqli_error($pl));

                                        /*                                         * ********************************** */
                                        $ttpr = mysqli_num_rows($rpr);
                                        $fpr = mysqli_fetch_array($rpr);
                                        //$ttm = (sizeof($materias) * $ttpr);
                                        $firstpass = true; //para ayduar con el rowspan

                                        if ($ttpr > 0) {
                                            echo "<tr>\n";
                                            echo "<td style=\"font-size:10px; text-align:center;\" rowspan=\"" . $ttpr . "\">" . $valorgrupo . "</td>\n";
                                            echo "<td style=\"background-color:#FFF;font-size:10px;\" rowspan=\"" . $ttpr . "\">" . $fmat['materia'] . "</td>\n";
                                            $rnomdoc = mysqli_query($pl, "select concat_ws(' ',nom,apat) as nomdoc from d" . $f['plant'] . " where iddoc = '" . $fpr['iddoc'] . "'");
                                            $fnomdoc = mysqli_fetch_array($rnomdoc);
                                            echo "<td style=\"background-color:#FFF;font-size:10px; text-align:left;\" rowspan=\"" . $ttpr . "\">" . $fnomdoc['nomdoc'] . "</td>\n";
                                            do {
                                                if (!$firstpass)
                                                    echo "<tr>\n";
                                                else {
                                                    //echo "<td style=\"background-color:#FFF;font-size:10px; text-align:center;\" rowspan=\"".$ttpr."\">".$fpr['parcial']."a</td>\n";
                                                    $firstpass = false;
                                                }

                                                echo "<td style=\"background-color:#FFF;font-size:10px; text-align:left;\" >" . $fpr['practica'] . "</td>\n";
                                                echo "<td style=\"background-color:#FFF;font-size:10px; text-align:center;\" >" . $fpr['hrs'] . "</td>\n";
                                                echo "<td style=\"background-color:#" . ($fpr['vobodes'] != 0 ? "0D0" : "D00") . ";font-size:10px; text-align:center;\" >&nbsp;";
                                                echo "<input type=\"checkbox\" name=\"vobo" . $fpr['idpr'] . "\" " . ($fpr['vobodes'] != 0 ? "checked=\"checked\"" : "") . " onclick=\"location.href='pracreal.php?parcial=" . $parcial . "&grupo=" . $grupo . "&iddoc=" . $iddoc . "&vobo=" . $fpr['idpr'] . "';\" />";
                                                echo "</td>\n";
                                                echo "</tr>\n";
                                            } while ($fpr = mysqli_fetch_array($rpr));
                                        }
                                    }
                                }
                            }
                            ?>                                
                        </table>
                    </div>                                                        
                </fieldset>

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