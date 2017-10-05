<?php    
	
        require_once ("./config.ini.php");
	include("versesion.php");
	include("commfunc.php");
	$f = $fila;
        
        $aviso = request('aviso');
        $volver_a = request('volver_a');
	
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

    <div id="principal" class="container" style="height:300px;">
        <table border="0" cellpadding="0" cellspacing="0" summary="" style="margin: auto; width: 908px;" >
			<tr>
                            <td style="padding-left: 10px;">
                                    <h2>Bienvenido <?php echo $f['nombre'].($ciclo!=0?", est&aacute; trabajando en el ciclo <em>".$nciclo."</em>":"");?></h2>
                            </td>
                            <td style="text-align:right; padding-right:10px;"><h2>- MAI -</h2></td>
			</tr>
			<tr><td></td></tr>
			<tr>
                            <td style="padding:50px 0 0;" colspan="2">
                                <div style="border: 1px dotted #999; width: 300px;margin: auto; text-align: center;">
                                    <br />
                                    <?php echo $aviso;?>
                                    <br /><br />
                                    <button type="button" name="volver_a" onclick="location.href='<?php echo $volver_a; ?>';"><img src="../images/prev.png" alt="" /> Volver </button>
                                    <br /><br />
                                </div>
                                                                                                
                            </td>
			</tr>
		</table>
	<br />
    </div>
<?php
$body->close_cuerpo();
$footer = new footer();
$footer->set_footer();
?> 

