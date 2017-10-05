<?php
require_once "config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;



/* * ENCONTRAR EL PERIODO DE CAPTURA VIGENTE, DE AQUI SE OBTIENEN LOS DATOS: idperiodo, pde, pa */
$parcial = request('parcial', 0);
$consulta = "select *,date_format(pde,'%d/%m/%Y') as pde,date_format(pa,'%d/%m/%Y') as pa from periodos where " . ($parcial != 0 ? " tipo = '" . $parcial . "' and " : "") . " ((plant = '" . $vs['plant'] . "' and idciclo = '" . $ciclo . "' and (curdate() between pde and pa)) or (plant = '0000' and idciclo = '" . $ciclo . "' and (curdate() between pde and pa)))";
//echo $consulta; die;
$rpc = mysqli_query($pl, $consulta) or die("Fallo la consulta del periodo de captura:" . $consulta . ", " . mysqli_error($pl));
if (mysqli_num_rows($rpc) > 0)
    $fpc = mysqli_fetch_array($rpc);
else
    $fpc['tipo'] = 0;
/* * ****************************************** */

$parcial = request('parcial', $fpc['tipo']);
$edit_allowed = $parcial > 0 && $parcial == $fpc['tipo'];

 
/* GUARDAR LAS PRACTICAS REALIZADAS CAPTURADAS */

if (array_key_exists('guardar', $_POST)) {
    
//   vermat($_POST);die;
    
    
    $consulta = "select idperiodo from periodos where tipo = '" . $parcial . "' and ((plant = '" . $vs['plant'] . "' and idciclo = '" . $ciclo . "' and (curdate() between pde and pa)) or (plant = '0000' and idciclo = '" . $ciclo . "' and (curdate() between pde and pa)))";
    $ridp = mysqli_query($pl, $consulta) or die("Fallo en la consulta del ideperiodo: " . $consulta . ", " . mysqli_error($pl));
    $fidp = mysqli_fetch_array($ridp);
        
    $idmateria = request('materia');
    $grupo = request('grupo');
    $hrs = request('hrs');
    $practica = request('practica');
    $obs = request('obs');

    if ($idmateria != "" && $grupo != "" && $hrs != "" && $practica != "") {
        $consulta = "insert into pr" . $vs['plant'] . " set idmateria='" . $idmateria . "',iddoc='" . $f['iddoc'] . "',parcial='" . $parcial . "',idciclo='" . $ciclo . "',grupo='" . $grupo . "',hrs='" . $hrs . "',practica='" . $practica . "',obs='" . $obs ."',idperiodo='" . $fidp['idperiodo'] . "'";
        mysqli_query($pl, $consulta) or die("Fallo al guardar las practicas realizadas: " . $consulta . ", " . mysqli_error($pl));
    }
    
}
/* * ****************************************** */

/* * CARGAR LAS PRACTICAS SI ES QUE EXISTEN* (QUITADO PORQUE AL DAR GUARDAR Y CONTINUAR VUELVE A CARGAR LO COMPTURADO Y NO DA ESPACIO PARA CAPTURAR MAS !!)
  $consulta = "select * from pr".$vs['plant']." where idciclo='".$ciclo."' and iddoc = '".$f['iddoc']."' and parcial = '".$parcial."' order by grupo";
  //echo $consulta;//debug
  $rpr = mysqli_query($pl,$consulta) or die ("Fallo en la consulta de las practicas realizadas: ".$consulta.", ".mysqli_error($pl));
  $i = 1;$pr = array();
  while ($fpr = mysqli_fetch_array($rpr)) $pr[$i++] = $fpr;

  /***************************************** */

/* OBTENER EL NOMBRE DEL PLANTEL */
$consulta = "select nomplant from des where plant = '" . $vs['plant'] . "'";
$rnp = mysqli_query($pl, $consulta);
$fnp = mysqli_fetch_array($rnp);
/* * **************************** */


/* OBTENER LAS MATERIAS QUE IMPARTE EL DOCENTE */
$consulta = "select m" . $vs['plant'] . ".* from m" . $vs['plant'] . " left join dm" . $vs['plant'] . " on m" . $vs['plant'] . ".idmateria=dm" . $vs['plant'] . ".idmateria where dm" . $vs['plant'] . ".iddoc = '" . $f['iddoc'] . "' and dm" . $vs['plant'] . ".idciclo = '" . $ciclo . "' order by m" . $vs['plant'] . ".materia desc";
$rmat = mysqli_query($pl, $consulta) or die(mysqli_error($pl));
while ($fmat = mysqli_fetch_array($rmat)) {
    $materias[$fmat['idmateria']] = $fmat['materia'];
    $semestres[$fmat['idmateria']] = $fmat['sem'];
}
/* * *************************** */

/* OBTENER LAS PRACTICAS REALIZADAS REGISTRADAS POR EL DOCENTE
 * PARA EL PERIODO ACTUAL Y LA PARCIAL SELECCIONADA*/

$sql = "select * from pr" . $vs['plant'] . " where 1 and idciclo = " . $ciclo. " and iddoc = " . $f['iddoc'] . " and parcial = " . $parcial;
$rpr = mysqli_query($pl,$sql) or die($sql."<br/>".mysqli_error($pl));


//***********************************************************************




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
                    echo $f['nom'] . ", " . $siglas_plant . ($ciclo != 0 ? ", est&aacute; trabajando en el ciclo <em>" . $nciclo . "</em>" : "");
                    if ($vs['docenteyadmin']) {
                        echo '&nbsp;|&nbsp;<a href="../respdes/cambiarrol.php?rol=admin" class="label label-info">Trabajar como responsable de plantel</a>';
                    }
                    ?></h2>
                <h4>-- PR&Aacute;CTICAS REALIZADAS --</h4>
            </td>
            <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
        </tr>
        <tr>
<?php prac_menu($vs['priv']); ?>
        </tr>
        <tr>
            <td style="padding:20px 0 0 20px;" colspan="2">

                <form id="captura_practicas_realizadas" class="form-inline" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                    <input type="hidden" name="parcial" value="<?= $parcial; ?>" />
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
                                    <li><a href="captura_practicas.php?parcial=1">Primera parcial</a></li>
                                    <li><a href="captura_practicas.php?parcial=2">Segunda parcial</a></li>
                                    <li><a href="captura_practicas.php?parcial=3">Tercera parcial</a></li>
                                    <li><a href="captura_practicas.php?parcial=4">Cuarta parcial</a></li>
                                    <li><a href="captura_practicas.php?parcial=5">Quinta parcial</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xs-8" style="height: 34px;">
                            <div class="alert alert-info" style="height: 34px; padding: 9px;">Periodo de captura: 
                            <?php 
                                if($parcial > 0 ){
                                    echo ($edit_allowed ? $fpc['pde'] . " al " . $fpc['pa'] : '<span class="label label-danger">CAPTURA CERRADA</span>'); 
                                }else{
                                    echo '<span class="label label-warning">Seleccione una parcial</span>'; 
                                }
                            ?> 
                            </div><br /><br />
                        </div>
                    </div>

                    <div class="panel panel-default" style="width: 810px; margin: 0 auto;">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-sm-9"><h1>PR&Aacute;CTICAS REALIZADAS</h1></div>
                                <div class="col-sm-3"><a class="btn btn-link" href="listado_practicas_I.php?parcial=<?= $parcial; ?>&idperiodo=<?= $fpc['idperiodo']; ?>" target="_blank">Versi&oacute;n para imprimir <img src="../../images/print.png" alt="" /></a></div>
                            </div>
                        </div>
                        <div class="panel-body">                                
                            <div class="row" style="padding: 10px 0">
                                <div class="col-sm-6">
                                    <div  class="input-group input-group-sm">                                    
                                        <span class="input-group-addon">Materia:</span>                                   
                                        <?php
                                        echo '<select id="materia" name="materia" class="form-control" required="required" ' . ($edit_allowed ? '' : 'disabled="disabled"') . '>';
                                        echo '<option value="">--</option>';
                                        foreach ($materias as $key => $value) {
                                            echo '<option value="' . $key . '">' . $value . '</option>';
                                        }
                                        echo '</select>';
                                        ?>
                                    </div>
                                </div>
                                
                                <div class="col-sm-3">
                                    <div class="input-group input-group-sm">
                                        <span class="input-group-addon">Grupo:</span>
                                        <input name="grupo" type="text" class="form-control text-center" id="grupo" required="required" <?=($edit_allowed ? '' : 'disabled="disabled"')?> />
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu pull-right" role="menu">
                                                <li><a href="#" class="gpo">A</a></li>
                                                <li><a href="#" class="gpo">B</a></li>
                                                <li><a href="#" class="gpo">C</a></li>                                                
                                                <li><a href="#" class="gpo">D</a></li>
                                                <li><a href="#" class="gpo">E</a></li>
                                                <li><a href="#" class="gpo">F</a></li>
                                            </ul>                                          
                                        </div>
                                    </div>
                                </div>                                
                                                        
                                <div class="col-sm-3">
                                    <div class="input-group input-group-sm">
                                        <span class="input-group-addon">Horas:</span>
                                        <input name="hrs" type="text" class="form-control" id="horas" required="required" data-toggle="popover" data-trigger="focus" data-container="body" data-placement="bottom" data-content="Duración de la práctica en horas" <?=($edit_allowed ? '' : 'disabled="disabled"')?>  />
                                    </div>
                                </div>                                
                            </div>
                            
                            <div class="row" style="padding: 0 0 10px">
                                <div class="col-sm-12">
                                    <div class="input-group input-group-sm">
                                        <span class="input-group-addon">Práctica:</span>
                                        <input size="100" name="practica" type="text" class="form-control" id="practica" required="required" <?=($edit_allowed ? '' : 'disabled="disabled"')?>  />
                                    </div>
                                </div>
                            </div>

                            <div class="row" style="padding: 0 0 10px">
                                <div class="col-sm-10">
                                    <div class="input-group input-group-sm">
                                        <span class="input-group-addon">Observaciones:</span>
                                        <input size="83" name="obs" type="text" class="form-control" id="obs" <?=($edit_allowed ? '' : 'disabled="disabled"')?>  />
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <button type="submit" name="guardar" class="btn btn-success btn-sm" <?=($edit_allowed ? '' : 'disabled="disabled"')?>>Guardar <i class="icon-guardar"></i></button>
                                </div>
                            </div>
                            
                            
                                <table style="width: 100%;" class="table table-striped table-hover table-condensed fixed_headers">
                                    <tr>
                                        <th>#</th>
                                        <th>MATERIAS</th>
                                        <th>GPO.</th>
                                        <th>HRS.</th>
                                        <th>DESCRIPCIÓN DE LA PRACTICA</th>
                                    </tr>
                                    <?php
                                    //ESTA SECCIÓN CAMBIO, PARA PERMITIR QUE EL FORMULARIO ESTE VACIO DESPUES DE DAR GUARDAR Y CONTINUAR, VER OLD1 PARA VER COMO ESTABA
                                    $i = 1;
                                    if(mysqli_num_rows($rpr) > 0){
                                        while ($fpr = mysqli_fetch_assoc($rpr)){
                                            echo "<tr class=\"sobre\">\n";
                                            echo '<td style="font-size:10px; text-align:right;">' . $i++ . "</td>\n";
                                            echo '<td>';
                                            echo $materias[$fpr['idmateria']];
                                            echo '</td>';
                                            echo '<td>'.$fpr['grupo'].'</td>';
                                            echo '<td>'.$fpr['hrs'].'</td>';
                                            echo '<td>'.$fpr['practica'].'</td>';                                        
                                            echo '</tr>';
                                        }
                                    }
                                    ?>
                                </table>
                            
                            </div>
                        </div>
            
                </form>


            </td>
        </tr>
    </table>
    <br />
</div>
<div id="espera">&nbsp;</div>
<div id="guardando"><img src="../../images/espera.jpg" alt="" /></div>
<div id="tooltip" style="visibility: hidden;border:1px solid #666;background-color: #FFF; font-size: 10px;width: 200px;z-index: 99;"></div>

<script type="text/javascript">

    $(document).ready(function () {

        var semestres = {
                    <?php
                    foreach ($semestres as $key => $value) {
                        echo $key . ':"' . $value . '",';
                    }
                    ?>
            0: "0"};

        $('#materia').change(function () {
            $('#grupo')
                    .val(semestres[$('#materia').val()])
                    .focus();
            var tmpStr = $('#grupo').val();
            $('#grupo')
                    .val('')
                    .val(tmpStr);
        });
        
        $('.gpo').click(function(){
            var ga = $('#grupo').val().substr(0, 1);;
            $('#grupo').val('');
            var g = $(this).text();
            $('#grupo')
                    .val(ga + g)
                    .focus();
            var tmpStr = $('#grupo').val();
            $('#grupo')
                    .val('')
                    .val(tmpStr);            
        });

        $(function () {
          $('[data-toggle="popover"]').popover()
        });
        

    });



</script>



<?php
$body->close_cuerpo();
$footer = new footer();
$footer->set_footer();
?>
