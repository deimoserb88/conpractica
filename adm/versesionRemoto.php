<?php

//    echo "versesion 1<br />";
require_once("login.php"); //Se asegura que el usuario este autenticado
//echo "versesion 2<br />";
$atributos = $saml->getAttributes(); //Obtiene sus atributos


session_start();
$vs = $_SESSION;
$ip = sha1($_SERVER['REMOTE_ADDR']);

if ($vs['plant'] == "") {
    session_write_close();
    require_once 'logout.php';
    exit();
}
//echo "<pre>";
//print_r($_SESSION);
//echo "</pre>";die;

$ru = $rd = array();
$sql = "select * from usuarios where notrab ='" . $vs['userid'] . "' and plant = '" . $vs['plant'] . "' and 1";
$ru = mysqli_query($pl, $sql ) or die("Fallo la consultad de usuario 1: " .$sql.'<br />'. mysqli_error($pl));
if ($vs['plant'] != "0000")
    $rd = mysqli_query($pl, "select * from d" . $vs['plant'] . " where notrab ='" . $vs['userid'] . "' and 1") or die("Fallo la consultad de usuario 2: " . mysqli_error($pl));
$existe = (mysqli_num_rows($ru) > 0 || mysqli_num_rows($rd) > 0);
if ($existe) {
    if ($ip != $vs['ip']) {
        echo "Sesi&oacute;n no iniciada. <a href='logout.php'>De clic aqui</a> para iniciar sesi&oacute;n";
        session_write_close();
        die();
    }
} else {
    echo "Usuario no registrado. <a href='logout.php'>Inisiar sesi&oacute;n</a>";
    session_write_close();
    die();
}
session_write_close();
if (@mysqli_num_rows($ru) > 0 && $vs['priv'] < 2) {
    $fila = mysqli_fetch_assoc($ru);
} elseif (@mysqli_num_rows($rd) > 0) {
    $fila = mysqli_fetch_assoc($rd);
}
$rp = mysqli_query($pl, "select siglas,nomplant from des where plant = '" . $vs['plant'] . "'");
$fp = mysqli_fetch_array($rp);
$siglas_plant = $fp['siglas'];
$nomplant = $fp['nomplant'];
$ciclo = isset($_SESSION['ciclo']) ? $_SESSION['ciclo'] : 0; //el ciclo de trabajo, se requiere para realizar cualquier operación
if ($ciclo != 0) {
    $rc = mysqli_query($pl, "select nomciclo from ciclos where idciclo=" . $ciclo);
    $fc = mysqli_fetch_array($rc);
    $nciclo = $fc['nomciclo'];
}
?>
		