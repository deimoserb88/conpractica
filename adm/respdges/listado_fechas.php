<?php
require_once "./config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;

$consulta = "select plant, nomplant from des where plant in (select distinct plant from periodos) order by nomplant";

$rplant = mysqli_query($pl,$consulta) or die("Fallo la consulta de los planteles: ".mysqli_error($pl));

while($fp = mysqli_fetch_array($rplant)) $fplant[$fp['plant']] = $fp['nomplant'];
$fplant['0000'] = "TODOS LOS PLANTELES";


$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);


$header->close_head();

//    $body = new cuerpo();    
$body->body_style = "background-color: " . $color->fc;
//    $body->header_background = "../../images/header2.jpg";
//    $body->header_css = "background-color: #E8F2F3; margin 3px auto; height: 80px;";
$body->main_css = "margin: 5px auto; height: 500px; font-size: 12px; box-shadow: 0 0 3px #BBB;";
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
                    <h2>Bienvenido <?php echo $f['nombre'] . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : ""); ?></h2>
                    <h4>-- FECHAS --</h4>
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php date_menu($f['priv'], false); ?>
            </tr>
            <tr>
                <td style="padding:0;" colspan="2">
                    <br />
                    <div style="width: 90%; margin: auto;">
                        <fieldset id="listado">
                            <legend>Listado de fechas programadas</legend>
                            <table cellpadding="0" cellspacing="0" border="0" style="font-size: 10px;">
                                <tr>
                                    <th width="22%">Plantel</th>
                                    <th width="13%">Programacion de pr&aacute;cticas</th>
                                    <th width="13%">1a parc.</th>
                                    <th width="13%">2a parc.</th>
                                    <th width="13%">3a parc.</th>
                                    <th width="13%">4a parc.</th>
                                    <th width="13%">5a parc.</th>
                                </tr>
                            <?php
                                $cfa = 0;//variable para alñternar los colores de las filas, usando la matriz $cf1 de config.php
                                foreach($fplant as $key => $value){
                                    $rf = mysqli_query($pl,"select *,date_format(pde,'%e/%m/%y') as pde, date_format(pa,'%e/%m/%y') as pa from periodos where idciclo = '".$ciclo."' and plant = '".$key."' order by tipo") or die("Fallo la consulta de los periodos: ".mysqli_error($pl));
                                    echo "<tr style=\"background-color:".$cf1[$cfa].";\" class=\"sobre\">";
                                    echo "<td>".$value."</td>";
                                    $e = 6;
                                    while($ff = mysqli_fetch_array($rf)){
                                        if($ff['pde']!=NULL)
                                            echo "<td style=\"text-align:center;padding:3px 0;\"><a href=\"captura_fechas.php?plant=".$key."\">de ".$ff['pde']."<br />a ".$ff['pa']."</a></td>";
                                        else echo "<td style=\"text-align:center;vertical-align:middle;color:#999\"><em>-ND-</em></td>";
                                        $e--;
                                    }
                                    for($i=1;$i<=$e;$i++) echo "<td style=\"text-align:center;vertical-align:middle;color:#999\"><em>-ND-</em></td>";
                                    echo "</tr>";
                                    $cfa = !$cfa;
                                }
                            ?>
                            </table>
                            
                        </fieldset>
                        <span style="font-size: 10px;color: #999;"> <strong><em>-ND-</em> No Definido</strong></span>
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
?> >
