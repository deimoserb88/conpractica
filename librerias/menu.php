<?php

/**
 * Description of menu
 *
 * @author erosales
 */

class Sitem {
    public $caption;
    public $name;
    public $url;
    public $css;
    public $priv;

    function __construct() {
        $this->caption = "";
        $this->name = "";
        $this->url = "#";
        $this->css = "";
        $this->priv = 0;
    }

    function sitem($name,$caption,$url="",$css="",$priv=0){
        $this->name = $name;
        $this->caption = $caption;
        $this->url = $url;
        $this->css = $css;
        $this->priv = $priv;
    }

}

class Item {
    public $sitems;
    public $caption;
    public $name;
    public $url;
    public $css;
    public $priv;

    function __construct(){//cosntructor
        $this->name = "";
        $this->caption = "";
        $this->url = "#";
        $this->css = "";
        $this->priv = 0;
        $this->sitems = array();   
    }

    function item($name,$caption,$url="",$css="",$priv=0){
        $this->name = $name;
        $this->caption = $caption;
        $this->url = $url;
        $this->css = $css;
        $this->priv = $priv;
    }

    function nuevo_sitem($name,$caption,$url="",$css="",$priv=0){
        $Item = new Sitem();
        $Item->sitem($name,$caption,$url,$css,$priv);
        $this->sitems[$name] = $Item;
    }

}

class Mitem {
    public $items;
    public $caption;
    public $name;
    public $url;
    public $css;
    public $priv;

    function __construct(){ //cosntructor
        $this->name = "";
        $this->caption = "";
        $this->url = "#";
        $this->css = "";
        $this->priv = 0;
        $this->items = array();        
    }

    function mitem($name,$caption,$url="",$css="",$priv=0){
        $this->name = $name;
        $this->caption = $caption;
        $this->url = $url;
        $this->css = $css;
        $this->priv = $priv;
    }
    
    function nuevo_item($name,$caption,$url="",$css="",$priv=0){
        $Item = new Item();
        $Item->Item($name,$caption,$url,$css,$priv);
        $this->items[$name] = $Item;
    }
    
}


class Menuh {
    public $name;
    public $css;
    public $mitems;
    public $script;
    public $html;

    function  __construct() {
        $this->name = "";
        $this->css ="";
        $this->script = "";
        $this->mitems = array();                
    }

    function Menuh($name,$css=""){
        $this->name = $name;
        $this->css = $css;
    }

    function nuevo_mitem($name,$caption,$url="",$css=""){
        $Item = new Mitem();
        $Item->Mitem($name,$caption,$url,$css);
        $this->mitems[$name] = $Item;
    }

    function set_script(){
        echo $this->script;
    }

    function muestra_menuh(){

        

        echo "<div class=\"".$this->css."\">";

        echo '<ul id="'.$this->name.'">';

        foreach($this->mitems as $mitem){//Impresion de los items principales Mitems

            echo "<li>";

            echo '<a href="'.$mitem->url.'">';

            echo $mitem->caption;

            echo '</a>';

            if(count($mitem->items)>0){

                echo '<ul>';

                foreach ($mitem->items as $item){//Impresion de los items secundarios Items

                    echo "<li>";

                    echo '<a href="'.$item->url.'">';

                    echo $item->caption;

                    echo '</a>';

                    if(count($item->sitems)>0){

                        echo '<ul>';

                        foreach ($item->sitems as $sitem){//impresion de los subitems Sitems

                            echo "<li>";

                            echo '<a href="'.$sitem->url.'">';

                            echo $sitem->caption;

                            echo '</a>';
                            
                            echo '</li>';

                        }

                        echo "</ul>";

                    }
                    echo '</li>';
                }
                echo "</ul>";

            }
            echo '</li>';
        }
        echo "</ul>";
    echo "</div>";
        
    }

}
?>
