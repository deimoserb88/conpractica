<?php

require_once 'config.ini.php';

require_once("login.php"); //Se asegura que el usuario este autenticado

$atributos = $saml->getAttributes(); //Obtiene sus atributos

$cuenta = $atributos['uCuenta'][0];

include 'commfunc.php';

//session_start();
//$_SESSION = array();
//session_destroy();
//session_write_close();



$tipousuario = 0; //1->Responsable DGES, 2->Responsable plantel, 3->Docente, etc
$activo = -1;


$plantel = array(   "3010","3020","3030","3040","3041","4012","5010","5020","5021","5022","5030","5040","5050","5060","5070",
                    "5080","5090","5100","5101","5110","5120","5130","5140","5150","5160","5170","5180","5190","5200","5210");

$esdocente = $esadmin = $esroot = false;

//primero lo buscamos como docente
$i = 0;
do{
    
    $plt = $plantel[$i++];
    
    $sql = "select * from d".$plt." where notrab = '".$cuenta."' and activo = 1";
    
//    echo $sql;
    
    $rd = mysqli_query($pl,$sql) or die("fallo - ".mysqli_error($pl));
    
    $esdocente = mysqli_num_rows($rd) != 0;
    
    //echo $i." - por aqui si - ".$sql." - ".mysqli_num_rows($rd)."<br />";
    
}while(!$esdocente && $i < count($plantel));

session_start();
$_SESSION = array();

if($esdocente){
    $fd = mysqli_fetch_assoc($rd);
    $activo = $fd['activo'];
    
    $_SESSION['usertype'] = $tipousuario = 3;
    $_SESSION['plant'] = $plt;    
    $_SESSION['priv'] = 2;

}




//2o buscamos como respdes o root
    $sql = "select * from usuarios where notrab = '".$cuenta."' and activo = 1";
       
    $ra = mysqli_query($pl,$sql) or die("fallo - ".mysqli_error($pl));
    
    $esadmin = mysqli_num_rows($ra) != 0;
    
if($esadmin){
    $fa = mysqli_fetch_assoc($ra);
    $activo = $fa['activo'];

    $_SESSION['usertype'] = $tipousuario = $fa['tipo'];
    $_SESSION['plant'] = $fa['plant'];
    $_SESSION['docenteyadmin'] = $esdocente;
    $_SESSION['priv'] = $fa['priv'];
    $_SESSION['esroot'] = false;    
    
    $esroot = $fa['priv'] == 0;
    
    if($esroot){
        $_SESSION['esroot'] = true;
        $_SESSION['esrootasadmin'] = false;
        $_SESSION['rootnotrab'] = $atributos['uCuenta'][0];
        
    }
    
}


if($esdocente || $esadmin){
    $_SESSION['ip'] = sha1($_SERVER['REMOTE_ADDR']);        
    $_SESSION['userid'] = $cuenta;
    if ($tipousuario > 1) {
        $rc = mysqli_query($pl, "select * from ciclos where activo = 1") or die("Fallo la consulta del ciclo activo: " . mysqli_error($pl));
        $fc = mysqli_fetch_array($rc);
        $_SESSION['ciclo'] = $fc['idciclo'];
    }    
    
    session_write_close();
    if($esroot){
        echo '<script>window.location.href="respdges/index.php";</script>';
    }elseif($esadmin){
        echo '<script>window.location.href="respdes/index.php";</script>';
    }elseif($esdocente){
        echo '<script>window.location.href="docentes/index.php";</script>';
    }
    
    
    
    exit();
    
}

    

header("Location: logout.php"); 
//segundo vemos si es admin de plantel o root
//$ra = mysqli_query($pl,"select priv from usuarios where ");


//switch ($tipousuario) {
//    case 1:header("Location: respdges/index.php");
//        break;
//    case 2:header("Location: respdes/index.php");
//        break;
//    case 3:
//        break;
//}




//if (count($planteles_imparte)>1){
//    $sql = "select plant,nomplant from des where plant in ('".implode("','", $planteles_imparte)."')";
//    $rp = mysqli_query($pl,$sql);
//    echo "Seleccione el plantel en el que capturar&aacute; pr&aacute;cticas:"
//    while($fp = mysqli_fetch_assoc($rp)){
//        
//    }
//}





//vermat($saml);die;

//if (isset($_POST['iniciar'])) {
//    $login = request('login');
//    $passwd = request('passwd');
//    if (strlen($login) > 0 xor strlen($passwd) > 0) {
//        $msg = "Por favor, introduzca nombre de usuario y clave de acceso";
//    } elseif (strlen($login) > 0 && strlen($passwd) > 0) {
//        $consulta = "select * from usuarios where login = '" . $login . "' and passwd = '" . $passwd . "' and 1";
//        $r = mysqli_query($pl, $consulta) or die("Fallo la consulta de usuarios: " . mysqli_error($pl));
//        //echo $consulta;
//        if (mysqli_num_rows($r) != 0) {
//            $f = mysqli_fetch_array($r);
//            $tipousuario = $f['tipo'];
//            $priv = $f['priv'];
//            $activo = $f['activo'];
//            if (!$activo)
//                $msg = "Cuenta desactivada, no puede utilizar el sistema";
//        }else {
//            $soydocente = request('soydocente', 0);
//            $plant = request('plant');
//            if ($soydocente && $plant != "") {
//                $consulta = "select * from d" . $plant . " where notrab = '" . $login . "' and passwd = '" . $passwd . "' and 1";
//                $r = mysqli_query($pl, $consulta) or die("Fallo la consulta de usuario docente: " . $consulta . ", " . mysqli_error($pl));
//                if (mysqli_num_rows($r) != 0) {
//                    $f = mysqli_fetch_array($r);
//                    $tipousuario = 3;
//                    $priv = 2;
//                    $activo = $f['activo'];
//                    if (!$activo)
//                        $msg = "Cuenta desactivada, no puede utilizar el sistema";
//                }
//            }
////        }
//        $ent = (int) (0.5 * $activo * ($activo + 1));
//        $consulta = "insert into reg values('" . $ent . "','" . $login . "','" . $tipousuario . "','" . $f['plant'] . "','" . $_SERVER['REMOTE_ADDR'] . "',CURDATE(),CURTIME())";
//        mysqli_query($pl, $consulta) or die("fallo el registro de acceso: " . $consulta . ", " . mysqli_error($pl));
//
//        if ($activo == 1) {
//            //de aqui en adelante significa que el usuario ha sido identificado y se iniciar su sesion.
//            session_start();
//            $_SESSION['ip'] = sha1($_SERVER['REMOTE_ADDR']);
//            $_SESSION['usertype'] = $tipousuario;
//            $_SESSION['priv'] = $priv;
//            $_SESSION['userid'] = $login;
//            $_SESSION['passwd'] = $passwd;
//            $_SESSION['plant'] = ($f['plant'] != "" ? $f['plant'] : $plant);
//            setcookie(session_name(), session_id(), time() + 3600, $ruta, $dominio);
//            if ($tipousuario > 1) {
//                $rc = mysqli_query($pl, "select * from ciclos where activo = 1") or die("Fallo la consulta del ciclo activo: " . mysqli_error($pl));
//                $fc = mysqli_fetch_array($rc);
//                $_SESSION['ciclo'] = $fc['idciclo'];
//            }
//
//
//            session_write_close();
//            switch ($tipousuario) {
//                case 1:header("Location: respdges/index.php");
//                    break;
//                case 2:header("Location: respdes/index.php");
//                    break;
//                case 3:header("Location: docentes/index.php");
//                    break;
//            }
//        } else {
//            if ($activo == 0)
//                $msg = "Cuenta desactivada";
//            if ($activo == -1)
//                $msg = "Usuario no encontrado";
//        }
//    }
//} else {
//    $msg = "- * -";
//}

/*$header->nueva_meta('<meta name="KEYWORDS" content="" />');

$header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

$header->title = "[Educaci&oacute;n Superior]";

$header->set_head(false);

$header->close_head();

$body->body_style = "background-color: " . $color->fc;

$body->main_css = "margin: 5px auto; height: 500px; font-size: 18px; box-shadow: 0 0 3px #BBB;";
$body->main_class = "container";
$body->header_type = "none";
$body->footer_css = "margin: 5px auto;";

$body->set_cuerpo(false);*/
?>

<!--<div id="container" class="container" style="height:350px;">
    <div style="height:100px; width: 680px; margin: auto; ">
        <br />
        <img src="../images/bienvenido.jpg" border="0" alt="" />
    </div>            
    <form action="<?php //echo $_SERVER['PHP_SELF']; ?>" method="post">
        <fieldset id="iniciosesion" style="width:600px; margin: auto; font-size: 12px;">
            <legend>INICIO DE SESI&Oacute;N</legend><br />
            <table class="formulario" style="width: 100%; font-size: 12px;">
                <tr class="sobre">
                    <td style="text-align:right;">Usuario:</td>
                    <td style="text-align:left;"><input type="text" size="10" maxlength="20" name="login" id="login" />
                        [Docentes poner n&uacute;mero de trabajador]</td>
                </tr>
                <tr class="sobre">
                    <td style="text-align:right;">Clave de acceso:</td>
                    <td style="text-align:left;"><input type="password" size="10" maxlength="20" name="passwd" id="passwd" /></td>
                </tr>
                <tr class="sobre">
                    <td style="text-align:center;">Soy docente: 
                        <input type="checkbox" name="soydocente" value="1" onclick="plant.disabled = !this.checked;
                                if (this.checked)
                                    getElementById('selec_plant').innerHTML = '-Seleccione su plantel-';
                                else {
                                    getElementById('selec_plant').innerHTML = '--';
                                    getElementById('plant').value = '';
                                }" />
                    </td>
                    <td style="text-align:left;">
                        <select name="plant" id="plant" disabled="disabled" >
                            <option value="" disabled="disabled" selected="selected" id="selec_plant">--</option>
                            <?php
                            /*$rp = mysqli_query($pl, "select plant,nomplant from des order by nomplant") or die("Fallo al cargar planteles: " . mysqli_error($pl));
                            while ($fp = mysqli_fetch_array($rp)) {
                                echo "<option value=\"" . $fp['plant'] . "\">" . $fp['nomplant'] . "</option>";
                            }*/
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;"><?//php echo $msg . "<br /><br />"; ?>
                        <button type="submit" value="1" name="iniciar" id="iniciar">Iniciar <img src="../images/next.png" alt="" /></button>
                    </td>
                </tr>
            </table>
            <br />
        </fieldset>
    </form>
</div>

<div id="espera">&nbsp;</div>
<div id="guardando">
    <img src="../../images/espera.jpg" alt="" />
    <img src="../images/espera.jpg" alt="" />
</div>-->

<?php
/*$body->close_cuerpo(false);
$footer = new footer();
$footer->set_footer();*/
?> 