<?php

require_once "config.ini.php";

include("../versesion.php");

include("../commfunc.php");

$f = $fila;

$np = request('nuevoplantel',"");

if($np != ""){
    session_start();
    $_SESSION['plant'] = $np;
    session_write_close();
    include("../versesion.php");
}

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
                </td>
                <td style="text-align:right; padding-right:10px;"><span id="Reloj" style="font-size: 9px;"><script language="javascript">actualizaReloj()</script></span></td>
            </tr>
            <tr>
                <?php main_menu($vs['priv'], true); ?>
            </tr>
        </table>
        <br />
        <div class="panel panel-info" style="width: 75%; margin: 0 auto;">
            <div class="panel panel-heading">
                <?php
                    $rp = mysqli_query($pl,"select nomplant from des where plant = '".$plt."'");
                    $fp = mysqli_fetch_assoc($rp);
                ?>
                Actualmente est&aacute; trabajando en el sistema para el plantel <strong><?=$nomplant;?>.</strong><br />
                Seleccione el plantel para el cu&aacute;l desee capturar pr&aacute;cticas
            </div>
            <div class="panel panel-body">
                <?php
                    $i = 0;
                    $planteles = array();
                    do{

                        $plt = $plantel[$i++];

                        $sql = "select * from d".$plt." where notrab = '".$f['notrab']."' and activo = 1";

                        $rd = mysqli_query($pl,$sql) or die("fallo - ".mysqli_error($pl));

                        if(mysqli_num_rows($rd) > 0){
                            
                            $sqlp = "select nomplant from des where plant = '".$plt."'";
                            $rp = mysqli_query($pl,$sqlp);
                            $fp = mysqli_fetch_assoc($rp);
                            $planteles[$plt] = $fp['nomplant'];                           
                            
                        }

                    }while( $i < count($plantel));                
                    
                    if(count($planteles)>1){
                        ?>
                        <div class="btn-group">
                          <button type="button" class="btn btn-default">-- Seleccione el plantel --</button>
                          <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                          </button>
                          <ul class="dropdown-menu">                                                
                        <?php
                            foreach($planteles as $key=>$value){
                                echo '<li><a href="plantel.php?nuevoplantel='.$key.'">'.$value.'</a></li>'."\n";
                            }
                            ?>
                          </ul>
                        </div>
                            <?php
                    }else{
                        echo "Actualmente usted solo tiene registradas asignaturas en el plantel: ".$nomplant;
                    }
                    
                    
                ?>
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