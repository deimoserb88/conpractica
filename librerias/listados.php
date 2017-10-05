<?php
/**
 * Description of listados
 *
 * @author erosales
 */

class elemento_lista {
    
    var $datosfila;

    function elemento_lista($datos){
        
        foreach($datos as $key => $value)
        
            $this->datosfila[] = $value;
        
    }
}

class lista {

    var $elementos;
    var $css;//estilo que va a tener la lista
    var $cp = "0";//Cellpading;
    var $cs = "0";//Cellspacing;
    var $wd = "100%";//width;


    function crear_fila(){

        $this->elementos = array();

    }

    function nuevo_elemento($datos){

        $fila = new elemento_lista($datos);

        $this->crear_fila();

        $this->elementos[] = $fila;

    }

    function muestra_lista($columnas){

        if(sizeof($this->elementos)==0) return 0;

        echo "<table border=\"0\" cellpadding=\"".$this->cp."\" cellspacing=\"".$this->cs."\" width=\"".$this->wd."\" class=\"".$this->css."\">
                <tr>";

        for($i=0;$i<sizeof($columnas);$i++){
            
            echo "<th width=\"".$columnas[$i][1]."\">".$columnas[$i][0]."</th>";

        }

        echo "</tr>\n";

        for($i=0;$i<sizeof($this->elementos);$i++){

            echo "<tr>";
                        
            for($e=0;$e<sizeof($this->elementos[$i]->datosfila);$e++){

                echo "<td style=\"text-align:".$columnas[$e][2].";\">";
                
                if($columnas[$e][3]!="") echo "<a href=\"".$columnas[$e][3].$this->elementos[$i]->datosfila[$e]."\">";
                
                echo $this->elementos[$i]->datosfila[$e];

                if($columnas[$e][3]!="") echo "</a>";
                
                echo "</td>";
                
            }
          

            echo "</tr>\n</table>";
        }

    }
}

?>
