<?php

require_once "./config.ini.php";
include("../versesion.php");
include("../commfunc.php");
$f = $fila;

session_start();

$rol = request('rol');

if($rol != ""){

    $plantel = array(   "3010","3020","3030","3040","3041","4012","5010","5020","5021","5022","5030","5040","5050","5060","5070",
                        "5080","5090","5100","5101","5110","5120","5130","5140","5150","5160","5170","5180","5190","5200","5210");    
        
    if($rol == "docente"){
        
        $_SESSION['priv'] = 2;   
        
        $i = 0;
        
        do{

            $plt = $plantel[$i++];

            $sql = "select * from d".$plt." where notrab = '".$f['notrab']."' and activo = 1";

//            echo $sql;

            $rd = mysqli_query($pl,$sql) or die("fallo - ".mysqli_error($pl));

            $esdocente = mysqli_num_rows($rd) != 0;

            //echo $i." - por aqui si - ".$sql." - ".mysqli_num_rows($rd)."<br />";

        }while(!$esdocente && $i < count($plantel));        
        
        $_SESSION['plant'] = $plt;
        
 
        session_write_close();
        
        echo '<script>window.location.href="../docentes/index.php";</script>';
        
        exit();
    }
    
    if($rol == "admin"){
        
        $_SESSION['priv'] = 1;   
        
        $sql = "select * from usuarios where notrab = '".$f['notrab']."' and activo = 1";

        //    echo $sql;

        $ru = mysqli_query($pl,$sql) or die("fallo - ".mysqli_error($pl));

        $fu = mysqli_fetch_assoc($ru);                       
        
        $_SESSION['plant'] = $fu['plant'];
        
        session_write_close();
        
        echo '<script>window.location.href="../respdes/index.php";</script>';
        
        exit();
    }

    if($rol == "root"){
        
        $_SESSION['priv'] = 0;   
        
        $sql = "select * from usuarios where notrab = '".$f['notrab']."' and activo = 1";

        //    echo $sql;
        
        $_SESSION['plant'] = '0000';
        
        session_write_close();
        
        echo '<script>window.location.href="../respdges/index.php";</script>';
        
        exit();
    }
    
    
    
}