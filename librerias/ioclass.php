<?php

/**
 * Description of ioclass
 *
 * @author erosales
 */
class Input {
    public $label;
    public $labelpos;//t-> por encima, b->por debajo, l->a la izquierda, n->sin etiqueta
    public $labeltdw;//ancho de la celda de la etiqueta, si no se define sera del 20%
    public $labelsize;//tamaño reñativo de la fuente en %
    public $info;//etiqueta de informacion adicional como indicaciones del tipo de datos a ingresar.
    public $infopos;//b->por debajo, r->a la derecha, solo estos dos valores
    public $infosize;//s->pequeno(9), m->mediano(12), l->grande(14)
    public $infocolor;
    public $name;
    public $id;
    public $value;
    public $css;
    public $class;
    public $disabled;
    public $readonly; 
    public $required;
    public $accion;
    public $error;

    function __construct(){
        $this->label = "";
        $this->labelpos = "l";
        $this->labeltdw = "20%";
        $this->labelsize = "100%";
        $this->info = "";
        $this->infopos = "r";
        $this->infosize = "s";
        $this->infocolor ="#999";
        $this->disabled = false;
        $this->readonly = false;
        $this->value = "";
        $this->error = false;
        $this->required = true;
        }

    function display($field,$row,$cel,$entabla=true){

        $infosizes = array("s"=>"9","m"=>"12","l"=>"14");
        $info = "<span style=\"font-size:".$infosizes[$this->infosize]."px; color:".$this->infocolor.";\" id=\"info".$this->name."\">".$this->info."</span>";
        if($entabla) echo "<table width=\"100%\">";
        if($row && $cel>=1) echo "<tr>\n";

        if($cel>=1) echo "<td width=\"".$this->labeltdw."\">";
        
        $this->label = "<label for=\"".$this->id."\" style=\"cursor: pointer;font-size: ".$this->labelsize."\">".$this->label."</label>";
        
        switch ($this->labelpos){
            case "l":   echo $this->label;
                        if($cel==2) echo "</td><td>";
                        echo $field;
                        break;
            case "b":   echo $field;
                        if($this->info!=""&&$this->infopos=="r") echo $info;
                        echo "<br />";
                        echo $this->label;
                        if($this->info!=""&&$this->infopos=="b") echo "<br />".$info;
                        break;
            case "t":   echo $this->label."<br />";
                        echo $field;
                        break;
            case "n":   echo $field;
                        break;

        }

        if($this->info!=""&&$this->infopos=="b"&&$this->labelpos!="b") echo "<br />".$info;
        if($this->info!=""&&$this->infopos=="r"&&$this->labelpos!="b") echo $info;

        if($cel>=1) echo "</td>\n";

        if($row && $cel>=1) echo "</tr>\n";
        if($entabla) echo "</table>";
    }


}

class InputTxt extends Input {
    public $size;
    public $maxlen;
    public $type;//text o password

    function  __construct() {
        parent::__construct();
        $this->type = "text";
    }

    function show($row=false,$cel=0){ //cel=0 sin celdas, cel=1 celda para etiqueta y campo juntos, cel=2 celda independiente para cada uno.
                                        //solo cuando la etiqueta esta a la izquierda (labelpos='l')
        
        $field  = "<input type=\"".$this->type."\" name=\"".$this->name."\" id=\"".$this->id."\"";
        $field .= " size=\"".$this->size."\" maxlength=\"".$this->maxlen."\"";
        $field .= ($this->disabled?" disabled=\"disabled\" ":"").($this->readonly?" readonly=\"readonly\"":"").($this->required?" required=\"required\"":"");
        $field .= ($this->accion!=""?" ".$this->accion:"");
        $field .= ($this->css!=""?" style=\"".$this->css."\"":"");
        $field .= ($this->value!=""?' value = "'.$this->value.'"':"");
        if($this->error){
            $this->class .= " error";
        }
        $field .= ($this->class!=""?" class=\"".$this->class."\"":"");
        $field .= " />";

        $this->display($field, $row, $cel);

    }

}

class InputSel extends Input {
    public $size;       //No. de filas si no es lista desplegable
    public $items;      //Los elementos de la lista con sus respectivos valores de la forma $item[value]=label <option value="value">label</option>
    public $itemnull;   //El elemento nulo del inicio de la lista desplegable (--,  -Seleccione uno-, etc)
    public $itemnull_disabled; //El elemento nullo estara desactivodo si True
    
    function  __construct() {
        parent::__construct();
        $this->items = array();
        $this->itemnull_disabled = false;
    }

    function show($row=false,$cel=0,$entabla=true){ //cel=0 sin celdas, cel=1 celda para etiqueta y campo juntos, cel=2 celda independiente para cada uno.)
        $field = "<select ";
        if($this->size>0) $field.="size=\"".$this->size."\"";
        $field .= "name=\"".$this->name."\" id=\"".$this->id."\"";
        $field .= ($this->disabled?" disabled=\"disabled\" ":"").($this->readonly?" readonly=\"readonly\"":"").($this->required?" required=\"required\"":"");
        $field .= ($this->accion!=""?" ".$this->accion:"");
        $field .= ($this->css!=""?" style=\"".$this->css."\"":"");
        if($this->error){
            $this->class .= " error";
        }        
        $field .= ($this->class!=""?" class=\"".$this->class."\"":"");
        $field .= " >\n";
        if($this->itemnull!="") $field .= "<option value=\"\"".($this->itemnull_disabled?"disabled=\"disabled\"":"")." ".($this->value==""?"selected=\"selected\"":"").">".$this->itemnull."</option>\n";
        foreach($this->items as $value=>$label)
            $field .= "<option value=\"".$value."\" ".($this->value==$value?"selected=\"selected\"":"").">".$label."</option>\n";

        $field .= "</select>\n";
        
        if($this->labelpos == "t") $field = '<div style="padding-left:'.$this->labeltdw.';display:inline;">'.$field.'</div>';
        
        $this->display($field, $row, $cel,$entabla);

    }
}


class InputCheck extends Input{
    public $marcado;    //si el checkbox va a estar marcado o no al momento de mostrarlo, debe configurarse en la linea anterior
                        //de la llamada a show

    function  __construct() {
        parent::__construct();
        $this->marcado = false;
        $this->required = false;
    }

    function show($row=false,$cel=0){
        $field = "<input type=\"checkbox\" ";
        $field .= "name=\"".$this->name."\" id=\"".$this->id."\"";
        $field .= ($this->disabled?" disabled=\"disabled\" ":"").($this->readonly?" readonly=\"readonly\"":"").($this->required?" required=\"required\"":"");
        $field .= ($this->marcado?" checked=\"checked\" ":"");
        $field .= ($this->accion!=""?" ".$this->accion:"");
        if($this->error){
            $this->class .= " error";
        }        
        $field .= ($this->class!=""?" class=\"".$this->class."\"":"");
        $field .= " >\n";

        $this->display($field, $row, $cel);
    }
}

class InputRadio extends Input{
    //para este componente, cuando se quiera poner todos en una fila, se debe enviar false en $row
    //y el <tr></tr> deber� ponerse en la llamada a show de la forma <tr>$this->show(false,X)</tr>
    //si se quieren en una columna enviar true en $row    
    public $items;      //array con los elementos a seleccionar, de la forma array("valor"=>"Etiqueta")
    public $selitem;    //elemento de la lista que debe estar seleccionado, -1 para ningunao, valor por defecto, debe configurarse en la linea anterior
                        //de la llamada a show

    function  __construct() {
        parent::__construct();
        $this->marcado = false;
        $this->items = array();
        $this->selitem = -1;
        $this->labelsize = "100%";

    }

    function show($row=false){
        if($this->labelpos=="l") echo "<table width=\"100%\"";
        else echo "<table";
        echo " class=\"radiotbl\"><tr ".($this->error?'class="error"':"")." >";
        if($this->labelpos=="t"&&!$row) echo "<td>";//colspan=\"".sizeof($this->items)."\"
        elseif($row&&$this->labelpos=="l") echo "<td rowspan=\"".(sizeof($this->items)+1)."\" width=\"".$this->labeltdw."\">";
        else echo "<td width=\"".$this->labeltdw."\" style=\"font-size:".$this->labelsize."\">";
        echo $this->label."</td>";
        if($this->labelpos=="t"&&!$row) echo "</tr><tr>";
        //if($this->labelpos=="t"&&!$row) echo "<tr>";
        if(!$row){ echo "<td";
           if($this->labelpos == "t") echo ' style="padding-left:'.$this->labeltdw.'" ';//esto se hace para dejar una sangría a la izquierda con la finalidad de tener alineación con la numeracion de la pregunta
           echo ">\n";
        }
        if($this->error){
            $this->class .= " error";
        }                    
        foreach($this->items as $valor=>$etiqueta){            
            $field = "<input type=\"radio\"";
            $field .= " name=\"".$this->name."\" id=\"".$this->id."_".$valor."\"";
            $field .= " value=\"".$valor."\"";
            $field .= ($this->disabled?" disabled=\"disabled\" ":"").($this->readonly?" readonly=\"readonly\"":"").($this->required?" required=\"required\"":"");
            $field .= ($this->selitem==$valor?" checked=\"checked\" ":"");
            $field .= ($this->accion!=""?" ".$this->accion:"");
            $field .= ($this->class!=""?" class=\"".$this->class."\"":"");
            $field .= " />\n";

            if($row){ echo "<tr>\n<td>\n";}

            echo $field."<label for=\"".$this->id."_".$valor."\" style=\"font-size:80%;cursor: pointer;\">".$etiqueta."</label>";            

        if($row){ echo "</td>\n</tr>\n";}
            else{ echo "&nbsp;&nbsp;";}
        }
        if(!$row){ echo "</td>\n";}
        if($this->labelpos=="t"&&!$row){ echo "</tr>";}
        echo "</table>";
    }
}
class InputCheckList extends Input{
    //para este componente, cuando se quiera poner todos en una fila, se debe enviar false en $row
    //y el <tr></tr> deber� ponerse en la llamada a show de la forma <tr>$this->show(false,X)</tr>
    //si se quieren en una columna enviar true en $row    
    public $items;      //array con los elementos a seleccionar, de la forma array("valor"=>"Etiqueta")
    public $selitems;   //elementos de la lista que deben estar seleccionados, -1 para ningunao, valor por defecto, debe configurarse en la linea anterior
                        //de la llamada a show

    function  __construct() {
        parent::__construct();
        $this->marcado  = false;
        $this->items    = array();
        $this->selitems = array();  
        $this->required = false;
    }
    
    function show($row=false){
        if($this->labelpos=="l") echo "<table width=\"100%\"";
        else echo "<table";
        echo " class=\"radiotbl\"><tr>";
        if($this->labelpos=="t"&&!$row) echo "<td colspan=\"".sizeof($this->items)."\">";
        elseif($row&&$this->labelpos=="l") echo "<td rowspan=\"".(sizeof($this->items)+1)."\" width=\"".$this->labeltdw."\">";
        else echo "<td width=\"".$this->labeltdw."\">";
        echo $this->label."</td>";
        if($this->labelpos=="t"&&!$row) echo "</tr><tr>";
        //if($this->labelpos=="t"&&!$row) echo "<tr>";
        if(!$row) echo "<td>\n";
        if($this->error){
            $diverrora =  '<div class="error" style="padding-left:3px;padding-right:3px;">';
            $diverrorc =  '</div>';
        }else{
            $diverrora = $diverrorc = '';            
        }        
        foreach($this->items as $valor => $etiqueta){            
            $field = "<input type=\"checkbox\"";
            $field .= " name=\"".$this->name."[]\" id=\"".$this->id."_".$valor."\"";
            $field .= " value=\"".$valor."\"";
            $field .= ($this->disabled?" disabled=\"disabled\" ":"").($this->readonly?" readonly=\"readonly\"":"");
            $field .= (in_array($valor,explode(",",$this->selitems))?" checked=\"checked\" ":"");
            $field .= ($this->accion!=""?" ".$this->accion:"");            
            $field .= ($this->class!=""?" class=\"".$this->class."\"":"");
            $field .= " />\n";
            if($row) echo "<tr>\n<td>\n";
            echo $field."<label for=\"".$this->id."_".$valor."\" style=\"font-size:80%;cursor: pointer;\">".$diverrora.$etiqueta.$diverrorc."</label>";            
            if($row) echo "</td>\n</tr>\n";
            else echo "&nbsp;&nbsp;";
        }
        if(!$row) echo "</td>\n";
        if($this->labelpos=="t"&&!$row) echo "</tr>";
        echo "</table>";
    }
}



class Button{
    public $type;//s->submit; b->button, r->reset;
    public $name;
    public $label;
    public $image;
    public $imagepos; //l->left; r->right;
    public $container; //n->none; d->div; t->tabla completa;c->celda;
    public $buttonpos; //l->izquierda, c->centrado, r->derecha
    public $value;

    private $tipos;

    function  __construct() {
        $this->type = "s";
        $this->imagepos = "r";
        $this->container = "d";
        $this->buttonpos = "c";
        $this->value = 1;
        $this->tipos = array("s"=>"submit","r"=>"reset","b"=>"button");
    }

    function show(){
        $boton = "<button name=\"".$this->name."\" id=\"".$this->name."\" type=\"".$this->tipos[$this->type]."\" value=\"".$this->value."\" class=\"".$this->class."\");>";
        //if($this->label!="") echo $this->label;
        switch($this->container){
            case "d":echo "<div style=\"margin:0 auto;text-align:".($this->buttonpos=="c"?"center":($this->buttonpos=="i"?"left":"right")).";\">";break;
            case "t":echo "<table border=\"0\"><tr>";
            case "c":echo "<td>";break;
        }
        echo $boton;
        if($this->imagepos=="r") echo $this->label."&nbsp;<img src=\"".$this->image."\" />";
        else echo "<img src=\"".$this->image."\" />&nbsp;".$this->label;
        echo "</button>";
        switch($this->container){
            case "d":echo "</div>";break;
            case "t":echo "</td></tr></table>";break;
            case "c":echo "</td>";break;
        }
    }

}

class Form{
    public $metodo;
    public $accion;
    public $id;
    public $hiddens;//array con los hiddens ha inclir en el fromulario de la froma array("nombre"=>"valor",...)
    public $class;
    public $style;
    public $onSubmit;
    public $extras;

    function  __construct() {
        $this->metodo = "post";
        $this->hiddens = array();
        $this->style = "";
        $this->class = "";
        $this->onSubmit = "";
        $this->extras = "";
    }

    function Begin(){
        echo "<form action=\"". $this->accion."\" method=\"".$this->metodo."\" id=\"".$this->id."\" "; 
        if($this->onSubmit!="") echo "onsubmit=\"".$this->onSubmit."\" ";
        if($this->extras!="") echo " ".$this->extras." ";
        echo ">\n";
        foreach($this->hiddens as $nombre=>$valor)
                echo "<input type=\"hidden\" name=\"".$nombre."\" value=\"".$valor."\" id=\"".$nombre."\" />\n";
        echo "<div id=\"".$this->id."_body\" ";
        if($this->class!="") echo "class=\"".$this->class."\" ";
        if($this->style!="") echo "style=\"".$this->style."\" ";
        echo ">\n";

    }

    function End(){
        echo "</div>\n";
        echo "</form>\n";
    }


}
?>
