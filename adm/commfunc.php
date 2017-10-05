<?php
/*Libreria de funciones y cnstantes*/

/********costantes****************************************************************/


class _FECHA_ {
	var $meses = array( 1=>"Enero",2=>"Febrero",3=>"Marzo",4=>"Abril",
                            5=>"Mayo",6=>"Junio",7=>"Julio",8=>"Agosto",
                            9=>"Septiembre",10=>"Octubre",11=>"Noviembre",12=>"Diciembre");
				   
	var $semana = array("Domingo","Lunes","Martes","Mi&eacute;rcoles","Jueves","Viernes","S&aacute;bado");
}

$parcial = array(1=>"Primera","Segunda","Tercera","Cuarta","Quinta");

$ac = array(    "CBA"=>"CIENCIAS BIOLOGICAS Y AGROPECUARIAS",
                "CSA"=>"CIENCIAS SOCIALES Y ADMINISTRATIVAS",
                "EH" =>"EDUCACI&Oacute;N Y HUMANIDADES",
                "IT" =>"INGENIER&Iacute;A Y TECNOLOG&Iacute;A",
                "CNE"=>"CIENCIAS NATURALES Y EXACTAS",
                "CS" =>"CIENCIAS DE LA SALUD");

$cf1 = array("#E0E3E8","#F6FAFF");//colores de filas alternadas para tablas 1



/*******funciones**************************************************************/



function main_header($relative="",$redirto="",$redirtime="",$other=""){
echo '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-ES">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />';
if($redirto!="") echo '<meta http-equiv="refresh" content="'.$redirtime.';URL='.$redirto.'" />';
echo '
<title>[MAI-CONPRACTICA-DGES]</title>
<link type="text/css" href="'.$relative.'1.css" rel="stylesheet" />
<script type="text/javascript" src="'.$relative.'jscript.js"></script>';
if($other!="") echo $other;
echo '
</head>';
}

function main_menu($priv=0,$esindex=false){
    echo '
    <td width="'.($esindex?'90%':'86%').'" style="height:24px;">
        <div class="underlinemenu">
             <ul>';
    if(in_array($priv,array('0','1','2'))) echo '<li><a href="fechas.php">Fechas&nbsp;&nbsp;<img src="../../images/date.png" alt="Fechas" /></a></li>';
    if(in_array($priv,array('1'))) echo '<li><a href="pracprog.php">Pr&aacute;cticas programadas&nbsp;&nbsp;<img src="../../images/alacarte.png" alt="Practicas prog" /></a></li>';
    if(in_array($priv,array('0','1','2'))) echo '<li><a href="pracreal.php">Pr&aacute;cticas realizadas&nbsp;&nbsp;<img src="../../images/list-accept.png" alt="Practicas real" /></a></li>';        
    if(in_array($priv,array('2'))) echo '<li><a href="plantel.php">Cambiar de plantel&nbsp;&nbsp;<i class="icon-cambiar"></i></a></li>';
    if(in_array($priv,array('1'))) echo '<li><a href="pe.php">Programas educativos&nbsp;&nbsp;<img src="../../images/graduated.png" alt="PE" /></a></li>';
    if(in_array($priv,array('1'))) echo '<li><a href="asignaturas.php">Asignaturas&nbsp;&nbsp;<img src="../../images/book_open.png" alt="Asignaturas" /></a></li>';
    if(in_array($priv,array('1'))) echo '<li><a href="docentes.php">Docentes&nbsp;&nbsp;<img src="../../images/docentes.png" alt="Docentes" /></a></li>';
    if(in_array($priv,array('0'))) echo '<li><a href="listado_practicas.php" onclick="pe();">Pr&aacute;cticas programadas&nbsp;&nbsp;<img src="../../images/template-edit.gif" alt="Practicas prog" /></a></li>';    
    if(in_array($priv,array('0'))) echo '<li><a href="cciclo.php">Cambiar ciclo&nbsp;&nbsp;<img src="../../images/change.png" alt="Ciclo" /></a></li>';
    if(in_array($priv,array('0'))) echo '<li><a href="vplant.php">Ver plantel&nbsp;&nbsp;<i class="icon-eye"></i></a></li>';


echo'   </ul>
        </div>
    </td>
    <td width="'.($esindex?'10%':'14%').'">
         <div class="underlinemenu">
              <ul>';
    session_start();
    if($_SESSION['esrootasadmin']){
        echo '          <li><a href="../inisesion.php" class="b">Volver&nbsp;<i class="icon-volver"></i></a></li>';
    }else{
        //echo '          <li><a href="../logout.php" class="b">Salir&nbsp;<img src="../../images/door_out.png" alt="Salir" border="0" style="vertical-align:middle;" /></a></li>';
        echo '          <li><a href="../inisesion.php" class="b">Salir&nbsp;<img src="../../images/door_out.png" alt="Salir" border="0" style="vertical-align:middle;" /></a></li>';
    }
    session_write_close();
    if(!$esindex)
    echo '          <li><a href="index.php" class="b">Inicio&nbsp;<img src="../../images/house.png" alt="Inicio" border="0" style="vertical-align:middle;" /></a></li>';
    echo '          </ul>
         </div>
    
    </td>';
    
}


function date_menu($priv=0,$esindex=false){
    echo '
    <td width="'.($esindex?'93%':'86%').'" style="height:24px;">
        <div class="underlinemenu">
             <ul>';
    if(in_array($priv,array('0'))) echo'<li><a href="captura_fechas.php">Capturar&nbsp;&nbsp;<img src="../../images/calendar_week_add.png" alt="Capturar" /></a></li>';
    if(in_array($priv,array('0'))) echo'<li><a href="listado_fechas.php">Listado&nbsp;&nbsp;<img src="../../images/calendar_month.png" alt="Listado" /></a></li>';
echo'   </ul>
        </div>
    </td>
    <td width="'.($esindex?'9%':'14%').'">
         <div class="underlinemenu">
              <ul>';
    session_start();
    if($_SESSION['esroot']){
        echo '          <li><a href="../inisesion.php?notrab='.$_SESSION['rootnotrab'].'" class="b">Volver&nbsp;<i class="icon-volver"></i></a></li>';
    }else{
        echo '          <li><a href="../inisesion.php" class="b">Salir&nbsp;<img src="../../images/door_out.png" alt="Salir" border="0" style="vertical-align:middle;" /></a></li>';
    }
    session_write_close();
    if(!$esindex)
    echo '          <li><a href="index.php" class="b">Inicio&nbsp;<img src="../../images/house.png" alt="Inicio" border="0" style="vertical-align:middle;" /></a></li>';
    echo '          </ul>
         </div>

    </td>';

}


function prac_menu($priv=0,$esindex=false){
    echo '
    <td width="'.($esindex?'93%':'86%').'" style="height:24px;">
        <div class="underlinemenu">
             <ul>';
    if(in_array($priv,array('0','1','2'))) echo '<li><a href="captura_practicas.php">Capturar&nbsp;&nbsp;<img src="../../images/mail-new.png" alt="Capturar" /></a></li>';
    if(in_array($priv,array('0','1','2'))) echo '<li><a href="listado_practicas.php">Listado&nbsp;&nbsp;<img src="../../images/text-enriched.png" alt="Listado" /></a></li>';    
    

echo'   </ul>
        </div>
    </td>
    <td width="'.($esindex?'9%':'14%').'">
         <div class="underlinemenu">
              <ul>';
    session_start();
    if($_SESSION['esroot']){
        echo '          <li><a href="../inisesion.php?notrab='.$_SESSION['rootnotrab'].'" class="b">Volver&nbsp;<i class="icon-volver"></i></a></li>';
    }else{
        echo '          <li><a href="../inisesion.php" class="b">Salir&nbsp;<img src="../../images/door_out.png" alt="Salir" border="0" style="vertical-align:middle;" /></a></li>';
    }
    session_write_close();
    if(!$esindex)
    echo '          <li><a href="index.php" class="b">Inicio&nbsp;<img src="../../images/house.png" alt="Inicio" border="0" style="vertical-align:middle;" /></a></li>';
    echo '          </ul>
         </div>

    </td>';

}


function pe_menu($priv=0,$esindex=false){
    echo '
    <td width="'.($esindex?'93%':'86%').'" style="height:24px;">
        <div class="underlinemenu" ><ul><li></li></ul>';
             //<ul>';
                //if(in_array($priv,array('0','1'))) echo '<li><a href="captura_practicas.php">Capturar&nbsp;&nbsp;<img src="../../images/mail-new.png" alt="Capturar" /></a></li>';
                //if(in_array($priv,array('0','1'))) echo '<li><a href="listado_practicas.php">Listado&nbsp;&nbsp;<img src="../../images/text-enriched.png" alt="Listado" /></a></li>';
                //</ul> Poner esto abajo en el echo
    echo'
        </div>
    </td>
    <td width="'.($esindex?'9%':'14%').'">
         <div class="underlinemenu">
              <ul>';
    session_start();
    if($_SESSION['esroot']){
        echo '          <li><a href="../inisesion.php?notrab='.$_SESSION['rootnotrab'].'" class="b">Volver&nbsp;<i class="icon-volver"></i></a></li>';
    }else{
        echo '          <li><a href="../inisesion.php" class="b">Salir&nbsp;<img src="../../images/door_out.png" alt="Salir" border="0" style="vertical-align:middle;" /></a></li>';
    }
    session_write_close();    
    if(!$esindex)
    echo '          <li><a href="index.php" class="b">Inicio&nbsp;<img src="../../images/house.png" alt="Inicio" border="0" style="vertical-align:middle;" /></a></li>';
    echo '          </ul>
         </div>

    </td>';

}

function mat_menu($priv=0,$esindex=false){
    echo '
    <td width="'.($esindex?'93%':'86%').'" style="height:24px;">
        <div class="underlinemenu">
             <ul>';
    if(in_array($priv,array('1'))) echo '<li><a href="captura_asignaturas.php">Capturar&nbsp;&nbsp;<img src="../../images/mail-new.png" alt="Capturar" /></a></li>';
    if(in_array($priv,array('1'))) echo '<li><a href="asignaturas.php">Listado&nbsp;&nbsp;<img src="../../images/text-enriched.png" alt="Listado" /></a></li>';

echo'   </ul>
        </div>
    </td>
    <td width="'.($esindex?'9%':'14%').'">
         <div class="underlinemenu">
              <ul>';
    session_start();
    if($_SESSION['esroot']){
        echo '          <li><a href="../inisesion.php?notrab='.$_SESSION['rootnotrab'].'" class="b">Volver&nbsp;<i class="icon-volver"></i></a></li>';
    }else{
        echo '          <li><a href="../inisesion.php" class="b">Salir&nbsp;<img src="../../images/door_out.png" alt="Salir" border="0" style="vertical-align:middle;" /></a></li>';
    }
    session_write_close();
    if(!$esindex)
    echo '          <li><a href="index.php" class="b">Inicio&nbsp;<img src="../../images/house.png" alt="Inicio" border="0" style="vertical-align:middle;" /></a></li>';
    echo '          </ul>
         </div>

    </td>';

}




function request($campo,$default=""){
    global $_REQUEST;
    if(isset($_REQUEST[$campo])) return $_REQUEST[$campo];
    else return $default;
}


//para debugueo
function vermat($mat){
    echo "<pre>Matriz:";
    print_r($mat);
    echo "</pre>";
}


//valid field out * Salida de campo valido, es decir que tenga valor y que cumpla criterio si lo hay

/*parametros
1 $label -> etiqueta, si se requiere de un especaio entre la etiqueta y el campo, este debe ser puesto en la llamada
2 $campo -> campo
3 $sep -> separador si lo hay
4 $criterio -> criterio de validación
*/
function vfield_out($label="",$campo="",$sep="",$criterio=true){
    if((strlen(trim($campo))>0) && $criterio){
        echo $label.$campo.$sep;
    }
}
//simple field out * Salida de campo simple en tabla con fila y celdas
/*parametros
1 $label -> etiqueta
2 $campo -> campo
*/
function sfield_out($label,$campo){
    echo "<tr>";
    echo "<td>".$label."</td><td><strong>".$campo."</strong></td>";
    echo "</tr>";
}

//text field out * Salida de campo tipo texto en <textarea> desabilitado con fila y celdas
/*parametros
1 $label -> etiqueta
2 $campo -> campo
*/
function tfield_out($label,$campo,$cols=60){
    echo "<tr>";
    echo "<td>".$label."</td><td><textarea readonly=\"readonly\" cols=\"".$cols."\">".$campo."</textarea></td>";
    echo "</tr>";
}

//Simple field in * Entrada de campo simple tipo texto type ="text" con fila y celda
/*parametros
 1 $label -> etiqueta
 2 $campo -> campo
 3 $value -> valor si lo tiene
 4 $size -> Tamaño del input
 5 $maxlength -> longitud máxima de caracteres
 6 $class -> clase css si se define una especial para el input
 7 $readonly -> Solo lectura
 8 $disabled -> Desabilitado (no se transfiere en el POST)
 9 $action -> alguna acción javascript
10 $add -> Adisional, se puede usar para un estilo específico o para otro parámetro o parámetros
11 $solo -> Sin fila ni celda
 */
function sfield_in($label,$campo,$value="",$size="",$mxlength="",$class="",$readonly=false,$disabled=false,$action="",$add="",$solo = false){
    if (!$solo){
        echo "<tr>";
        echo "<td>";
    }
    echo $label;
    if (!$solo) echo "</td><td>";
    echo "<input type=\"text\" name=\"".$campo."\" id=\"".$campo."\" value=\"".$value."\" size=\"".$size."\" maxlength=\"".$mxlength."\" class=\"".$class."\"";
    if($readonly) echo " readonly=\"readonly\" ";
    if($disabled) echo " disabled=\"disabled\" ";
    if($action!="") echo " ".$action;
    if($add!="") echo " ".$add;
    echo "/>";
    if (!$solo) echo "</td></tr>";
}

//textarea field in * Entrada de área de texto con fila y celda dse tabla
/*parametros
 1 $label -> etiqueta
 2 $campo -> campo
 3 $value -> valor si lo tiene
 4 $cols -> columnas
 5 $rows -> filas
 6 $class -> clase css si se define una especial para el textarea
 7 $readonly -> Solo lectura
 8 $disabled -> Desabilitado (no se transfiere en el POST)
 9 $action -> alguna acción javascript
10 $add -> Adisional, se puede usar para un estilo específico o para otro parámetro o parámetros
*/
function tfield_in($label,$campo,$value="",$cols=60,$rows=5,$class="",$readonly=false,$disabled=false,$action="",$add=""){
    echo "<tr>\n";
    echo "<td>".$label."</td>\n";
    echo "<td><textarea name=\"".$campo."\" cols=\"".$cols."\" rows=\"".$rows."\" class=\"".$class."\"";
    if($readonly) echo " readonly=\"readonly\" ";
    if($disabled) echo " disabled=\"disabled\" ";
    if($action!="") echo " ".$action;
    if($add!="") echo " ".$add;
    echo ">".$value."</textarea>\n";
    echo "</tr>\n";
}



//Simple select in * Entrada simple de campo select con matrices de valores y etiquetas con fila y celda
/*parametros
 1 $label  -> etiqueta
 2 $campo  -> campo
 3 $valueS -> valor si lo tiene para selected
 4 $opts -> matriz de opciones: las keys seran los valores de las options y los values las etiquetas de las opciones
 5 $class -> clase css si se define una especial para el input
 6 $readonly -> Solo lectura
 7 $disabled -> Desabiolitado (no se transfiere en el POST)
 8 $action -> alguna acción javascript
*/
function sselect_in($label,$campo,$valueS="",$opts=array(),$class="",$readonly=false,$disabled=false,$action=""){
    echo "<tr>\n";
    echo "<td>".$label."</td>\n";
    echo "<td><select name=\"".$campo."\" id=\"".$campo."\" class=\"".$class."\" ".($disabled?" disabled=\"disabled\"":"")."".($readonly?" readonly=\readonly\"":"")." ".$action.">\n";
    echo "<option value=\"\" disabled=\"disabled\" selected=\"selected\">--</option>";
    foreach($opts as $key => $value){
        echo "<option value=\"".$key."\"".($valueS==$key?"selected=\"selected\"":"").">".$value."</option>\n";
    }
    echo "</select></td>\n";
    echo "</tr>\n";
}


//Para mostrar --No definido-- en las salidas cullos datos esten vacios en la base de datos; la llamada debe hacerse con un echo o print
function nodef($dato){
    if($dato!="") return $dato;
    else return "--No definido--";
}


$plantel = array(   "3010","3020","3030","3040","3041","4012","5010","5020","5021","5022","5030","5040","5050","5060","5070",
                    "5080","5090","5100","5101","5110","5120","5130","5140","5150","5160","5170","5180","5190","5200","5210");


?>