<?php

require_once ("config.ini.php");
require_once ("../versesion.php");
include("../commfunc.php");


$cuenta = request('notrab');


$sql = "select * from usuarios where notrab = '".$cuenta."' and activo = 1";
       
$ra = mysqli_query($pl,$sql) or die("fallo - ".mysqli_error($pl));
      
$fa = mysqli_fetch_assoc($ra);
$activo = $fa['activo'];

session_start();

$_SESSION['usertype'] = $tipousuario = 1;
$_SESSION['plant'] = $fa['plant']; 
$_SESSION['priv'] = $fa['priv'];
$_SESSION['esrootasadmin'] = true;      
$_SESSION['rootnotrab'] = $atributos['uCuenta'][0];
$_SESSION['userid'] = $cuenta;

$rc = mysqli_query($pl, "select * from ciclos where activo = 1") or die("Fallo la consulta del ciclo activo: " . mysqli_error($pl));
$fc = mysqli_fetch_array($rc);
$_SESSION['ciclo'] = $fc['idciclo'];


session_write_close();
echo '<script>window.location.href="../respdes/index.php";</script>';    
exit();
    

  