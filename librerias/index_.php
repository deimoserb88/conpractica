<?php
    include("config.ini.php");    

    $header->nueva_meta('<meta name="KEYWORDS" content="" />');

    $header->title = "[Lista de prueba]";

    $header->set_head();

    $menup->set_script();

    $header->close_head();

    echo "<body>";

            //Definición de las caracteristicas de la lista
            $nuevalista = new lista();
            $nuevalista->wd = "90%";
            $nuevalista->css = "t1";

            //generación de las filas en base a los datso procedentes de una tabla
            $r = mysql_query("select idmensaje,nom,email,tel,mensaje from mensajes") or die("Fallo la consulta: ".mysql_error());
            while($f = mysql_fetch_array($r,MYSQL_NUM)){
                $nuevalista->nuevo_elemento($f);
            }

            //definición de los encabezados de las columnas: "encabezado","ancho relativo de la columna","alineacion de la celda de datos","link de la forma destino.php?dato="
            $columnas[] = array("Id.","5%","center","vermensaje.php?idmensaje=");
            $columnas[] = array("De:","20%","left","");
            $columnas[] = array("Email","15%","left","mailto:");
            $columnas[] = array("Tel:","10%","center","");
            $columnas[] = array("Mensaje","50%","left","");

            //publicación de la lista
            $nuevalista->muestra_lista($columnas);

            $menup->muestra_menuh();
        
            echo "<br />";

            $f1->action = "guarda_datos.php";
            $f1->Begin();
                $f1_nombre->show(true, 2);
                $f1_ecivil->show(true, 2);
                $f1_algo->marcado = true;
                $f1_algo->show(true,2);
                $f1_tit->show(false);
                $f1_ne->show(true);
            $f1->End();

    echo "</body>";

$footer = new footer();
$footer->set_footer();

?>


