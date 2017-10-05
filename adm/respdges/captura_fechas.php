<?php
require_once "./config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;

$rc = mysqli_query($pl,"select year(cde) as ade,year(ca) as aa from ciclos where idciclo = " . $ciclo);
$fc = mysqli_fetch_array($rc);

$date_errors = array();
$date_ok = true;

//$idciclo_update = request('idciclo_update',0);//En caso de que se este haciendo una actucalizacion contendrá la id del ciclo, si no 0

$plant = request('plant','0000');

$idpp_update = request('idpp_update',0);
for($i=1;$i<=5;$i++){
    $idp_update[$i] = request('idp'.$i.'_update',0);

    if($idp_update[$i]!=0 && (!isset($_REQUEST['p'.$i]) || empty ($_REQUEST['p'.$i]))){
        mysqli_query($pl,"delete from periodos where idperiodo = '".$idp_update[$i]."' and plant = '".$plant."'") or die("Fallo al tratar de eliminar el periodo desmarcado: ".mysqli_error($pl));
    }


}

//En la siguiente estructrua se cargan los valores de los ciclos existentes para su actualizacion y visualizacion
//Si se hizo un cambio de plantel, se cargara el periodo de programacion de practicas general por si se quiere usar ese mismo
$rp = mysqli_query($pl,"select * from periodos where idciclo = " . $ciclo . " and plant = '".$plant."'") or die("fallo la consulta de los periodos: ".mysqli_error($pl));
$editar = mysqli_num_rows($rp)>0;//Si ya existen periodos capturados para el ciclo actual para todos los planteles, se actualizara de lo contrario (false) se agregara
if($editar && request('guardar')!=1){
    $i = 1;
    while($fp = mysqli_fetch_array($rp)){
        $fede = date_parse($fp['pde']);
        $fea  = date_parse($fp['pa']);
        if($fp['tipo']==0){
            
            $ppdiade = $fede['day'];
            $ppmesde = $fede['month'];
            $ppaniode= $fede['year'];
            
            $ppdiaa  = $fea['day'];
            $ppmesa  = $fea['month'];
            $ppanioa = $fea['year'];
            
            $idpp = $fp['idperiodo'];//se colocara como input hidden en el formulario y se utilizara para saber si es actualizacion o insercion
        
            
        }else{
            
            $pdiade[$i] = $fede['day'];
            $pmesde[$i] = $fede['month'];
            $paniode[$i]= $fede['year'];
            
            $pdiaa[$i]  = $fea['day'];
            $pmesa[$i]  = $fea['month'];
            $panioa[$i] = $fea['year'];
            
            $p[$i] = 1;
            $idp[$i++] = $fp['idperiodo'];//se colocaran como input hidden en el formulario  y se utilizaran para saber si es actualizacion o insercion
        }
    }
}elseif(!$editar){
    mysqli_free_result($rp);
    $rp = mysqli_query($pl,"select * from periodos where idciclo = " . $ciclo . " and tipo = '0' and plant = '0000'") or die("fallo la segunda consulta de los periodos: ".mysqli_error($pl));
    if(mysqli_num_rows($rp)>0){
        $fp = mysqli_fetch_array($rp);
        $fede = date_parse($fp['pde']);
        $fea = date_parse($fp['pa']);
        
        $ppdiade = $fede['day'];
        $ppmesde = $fede['month'];
        $ppaniode= $fede['year'];
        
        $ppdiaa  = $fea['day'];
        $ppmesa  = $fea['month'];
        $ppanioa = $fea['year'];
    }
}

if(request('guardar')==1){

    $plnat = request('plant');

    $ppdiade = request('ppdiade');
    $ppmesde = request('ppmesde');
    $ppaniode= request('ppaniode');
    if($ppdiade!=""||$ppmesde!=""||$ppaniode!=""||$plant=='0000'){
        $ppde = checkdate($ppmesde, $ppdiade, $ppaniode);
        $ppfede = "'".date('Y-m-d',mktime(0,0,0,$ppmesde,$ppdiade,$ppaniode))."'";
    }else
        $ppfede = "NULL";
    

    $ppdiaa = request('ppdiaa');
    $ppmesa = request('ppmesa');
    $ppanioa= request('ppanioa');
    if($ppdiaa!=""||$ppmesa!=""||$ppanioa!=""||$plant=='0000'){
        $ppa = checkdate($ppmesa, $ppdiaa, $ppanioa);
        $ppfea = "'".date('Y-m-d',mktime(0,0,0,$ppmesa,$ppdiaa,$ppanioa))."'";
    }else
        $ppfea = "NULL";
    
    
    $i = 1;$t = 0;
    while(!empty($_REQUEST['p'.$i.'diade'])){

        $pdiade[$i] = request('p'.$i.'diade');
        $pmesde[$i] = request('p'.$i.'mesde');
        $paniode[$i]= request('p'.$i.'aniode');
        $pde[$i] = checkdate($pmesde[$i], $pdiade[$i], $paniode[$i]);
        $pfde[$i] = date('Y-m-d',mktime(0,0,0,$pmesde[$i],$pdiade[$i],$paniode[$i]));

        $pdiaa[$i] = request('p'.$i.'diaa');
        $pmesa[$i] = request('p'.$i.'mesa');
        $panioa[$i]= request('p'.$i.'anioa');
        $pa[$i] = checkdate($pmesa[$i], $pdiaa[$i], $panioa[$i]);
        $pfa[$i] = date('Y-m-d',mktime(0,0,0,$pmesa[$i],$pdiaa[$i],$panioa[$i]));

        $p[$i] = request('p'.$i);
        $i++;
        $t++;//para el ciclo de captura
    }

    for($i=1;$i<=sizeof($pde);$i++){
        $date_errors[$i] = ($pde[$i] && $pa[$i]);
        $date_ok = $date_ok && $pde[$i] && $pa[$i];
    }

    if($plant=='0000'||($ppfede=="NULL" xor $ppfea=="NULL")) {
        $date_ok = $date_ok && $ppde && $ppa;
    }

    //CLCLO DE CAPTURA
    if($date_ok){

        $consulta_base = "periodos set idciclo = '".$ciclo."', plant = '".$plant;

        if($idpp_update==0) {
            $accion = "insert ";            
        }else{
            $accion = "update ";
        }
                      
        $consulta_pp = $accion.$consulta_base."', tipo = '0', pde = ".$ppfede.", pa = ".$ppfea.", activo = '1'";

        if($idpp_update!=0){
            $consulta_pp .= " where idperiodo = '".$idpp_update."'";
        }
        
        mysqli_query($pl,$consulta_pp) or die("Fallo al registrar el periodo para propgramacion de practicas: ".$consulta_pp.", ".mysqli_error($pl));
        
        for($i=1;$i<=$t;$i++){

            if($idp_update[$i]==0) $accion = "insert "; else $accion = "update ";

            $consulta_pX = $accion.$consulta_base."', tipo = '".$i."', pde = '".$pfde[$i]."', pa = '".$pfa[$i]."', activo ='1'";

            if($idp_update[$i]!=0) $consulta_pX .= " where idperiodo = '".$idp_update[$i]."'";

            mysqli_query($pl,$consulta_pX) or die("Fallo al registrar el periodo para avance de practicas: ".$consulta_pX.", ".mysqli_error($pl));
        
        }
        
        echo "  <script type=\"text/javascript\">
                <!--
                window.location = \"../aviso.php?aviso=Periodos guardados correctamente&volver_a=respdges/captura_fechas.php\"
                //-->
                </script>";
        //header('Location: ../aviso.php?aviso=Periodos guardados correctamente&volver_a=respdges/fechas.php');
    }
}

$fecha = new _FECHA_;

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
                <td style="padding:20px 0 0 20px;" colspan="2">
                    <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" name="captura_periodo">
                        <?php 
                            if(!empty($idpp)) echo "<input type=\"hidden\" name=\"idpp_update\" value=\"".$idpp."\" />";
                            for($i=1;$i<=sizeof($idp);$i++){
                                echo "<input type=\"hidden\" name=\"idp".$i."_update\" value=\"".$idp[$i]."\" />"; 
                            }
                        ?>
                        <fieldset id="capturarperiodo" style="width: 640px; background-color: #FFF">
                            <legend>Introduzca las fechas de los periodos</legend>
                            <br />
                            <table cellpadding="0" cellspacing="0" border="0" class="formulario">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>Plantel</td>
                                    <td colspan="2">
                                        <select name="plant" onchange="submit();">
                                            <option value="0000">Todos los planteles</option>
                                            <?php
                                                $rpl = mysqli_query($pl,"select plant, nomplant from des order by nomplant");
                                                while($fpl = mysqli_fetch_array($rpl)){
                                                    if($fpl['plant']!="0000")
                                                        echo "<option value=\"".$fpl['plant']."\"".($plant==$fpl['plant']?"selected=\"selected\"":"").">".$fpl['nomplant']."</option>";
                                                }
                                            ?>
                                        </select>
                                    </td>
                                </tr>
                                <?php if(!$date_ok){ ?>
                                <tr>
                                    <td colspan="4" style="text-align: center; color: #D60;">
                                        <strong>EXISTE ERRORES EN ALGUNAS FECHAS, FAVOR DE VERIFICAR</strong>
                                    </td>
                                </tr>
                                <?php } ?>
                                <tr <?php if((isset($ppde)||isset($ppa))&&!($ppde&&$ppa)) echo 'style="background-color:#E90;"' ?>>
                                    <td>&nbsp;</td>
                                    <td>Programaci&oacute;n de pr&aacute;cticas</td>
                                    <td>de&nbsp;
                                        <select name="ppdiade">
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=31;$i++) echo "<option value=\"".$i."\" ".($i==$ppdiade?"selected=\"selected\"":"").">".$i."</option>"; ?>
                                        </select>
                                        <select name="ppmesde">
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=sizeof($fecha->meses);$i++) echo "<option value=\"".$i."\" ".($i==$ppmesde?"selected=\"selected\"":"").">".$fecha->meses[$i]."</option>";?>
                                        </select>&nbsp;<input type="hidden" name="ppaniode" value="<?php echo $fc['ade'];?>" />  <?php echo $fc['ade'];?>
                                    </td>
                                    <td>a&nbsp;
                                        <select name="ppdiaa">
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=31;$i++) echo "<option value=\"".$i."\" ".($i==$ppdiaa?"selected=\"selected\"":"").">".$i."</option>";?>
                                        </select>
                                        <select name="ppmesa">
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=sizeof($fecha->meses);$i++) echo "<option value=\"".$i."\" ".($i==$ppmesa?"selected=\"selected\"":"").">".$fecha->meses[$i]."</option>";?>
                                        </select>&nbsp;<input type="hidden" name="ppanioa" value="<?php echo $fc['ade'];?>" /><?php echo $fc['ade'];?>
                                    </td>
                                </tr>

                                <?php for($e=1;$e<=5;$e++){?>
                                <tr <?php if((isset($pde[$e])||isset($pa[$e]))&&!($pde[$e]&&$pa[$e])) echo 'style="background-color:#E90;"' ?>>
                                    <td><input type="checkbox" name="p<?php echo $e;?>" <?php echo "id=\"p".$e."\" ".($e>1&&$p[$e]!=1&&$p[$e-1]!=1?"disabled=\"disabled\"":"")." ".($p[$e]==1?"checked=\"checked\"":"");?> value="1"  onclick="activa_parcial('<?php echo $e;?>',this.checked);" /> </td>
                                    <td><?php echo $parcial[$e];?> parcial</td>
                                    <td>de&nbsp;
                                        <select name="p<?php echo $e;?>diade" id="p<?php echo $e;?>diade" <?php echo (!isset($pdiade[$e])?'disabled="disabled"':'');?>>
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=31;$i++) echo "<option value=\"".$i."\" ".($i==$pdiade[$e]?"selected=\"selected\"":"").">".$i."</option>"; ?>
                                        </select>
                                        <select name="p<?php echo $e;?>mesde" id="p<?php echo $e;?>mesde" <?php echo (!isset($pmesde[$e])?'disabled="disabled"':'');?>>
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=sizeof($fecha->meses);$i++) echo "<option value=\"".$i."\" ".($i==$pmesde[$e]?"selected=\"selected\"":"").">".$fecha->meses[$i]."</option>";?>
                                        </select>
                                        <select name="p<?php echo $e;?>aniode" id="p<?php echo $e;?>aniode" <?php echo (!isset($paniode[$e])?'disabled="disabled"':'');?>>
                                            <option value="">--</option>
                                            <?php echo "<option value=\"".$fc['ade']."\" ".($fc['ade']==$paniode[$e]?"selected=\"selected\"":"").">".$fc['ade']."</option>"; ?>
                                            <?php echo "<option value=\"".$fc['aa']."\" ".($fc['aa']==$paniode[$e]?"selected=\"selected\"":"").">".$fc['aa']."</option>"; ?>                                            
                                        </select>
                                    </td>
                                    <td>a&nbsp;
                                        <select name="p<?php echo $e;?>diaa" id="p<?php echo $e;?>diaa" <?php echo (!isset($pdiaa[$e])?'disabled="disabled"':'');?>>
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=31;$i++) echo "<option value=\"".$i."\" ".($i==$pdiaa[$e]?"selected=\"selected\"":"").">".$i."</option>";?>
                                        </select>
                                        <select name="p<?php echo $e;?>mesa" id="p<?php echo $e;?>mesa" <?php echo (!isset($pmesa[$e])?'disabled="disabled"':'');?>>
                                            <option value="">--</option>
                                            <?php for($i=1;$i<=sizeof($fecha->meses);$i++) echo "<option value=\"".$i."\" ".($i==$pmesa[$e]?"selected=\"selected\"":"").">".$fecha->meses[$i]."</option>";?>
                                        </select>
                                        <select name="p<?php echo $e;?>anioa" id="p<?php echo $e;?>anioa" <?php echo (!isset($panioa[$e])?'disabled="disabled"':'');?>>
                                            <option value="">--</option>
                                            <?php echo "<option value=\"".$fc['ade']."\" ".($fc['ade']==$panioa[$e]?"selected=\"selected\"":"").">".$fc['ade']."</option>"; ?>
                                            <?php echo "<option value=\"".$fc['aa']."\" ".($fc['aa']==$panioa[$e]?"selected=\"selected\"":"").">".$fc['aa']."</option>"; ?>                                            
                                        </select>
                                            <?php //sfield_in("", "p".$e."anioa", $panioa[$e], "2", "2", "text", false, !isset($panioa[$e]),"onkeypress=\"return validaentradaNum(event);\"","",true);?>
                                    </td>
                                </tr>
                                <?php }?>

                                <tr><td colspan="4"></td></tr>
                                <tr>
                                    <td colspan="4">
                                        <button name="guardar" value="1" type="submit" onclick="pe();">Guardar <img src="../../images/disk.png" alt="Guardar" /></button>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </form>
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
