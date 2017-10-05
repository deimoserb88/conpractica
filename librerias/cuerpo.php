<?php

/**
 * Description of cuerpo
 *
 * @author erosales
 */

class head {
    
    public $xml; //xml para ajax
    
    public $dt; //DOCTYPE
    
    public $title;//titulo
    
    public $meta;//metas
    
    public $jsfile;//archivo javascritp a incluir

    public $cssfile;//archivo de hoja de estilos a incluir

    function  __construct() {
        $this->xml = '<?xml version="1.0" encoding="ISO-8859-1" ?>'."\n";//ISO-8859-1
        //$this->dt = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'."\n";
        $this->dt = '<!DOCTYPE html>'."\n";
    }
    
    function crear_meta (){//constructor
        
        $this->meta = array();
        
    }
    
    function nueva_meta($meta){

        $this->meta[] = $meta;


    }
    
    function crear_jsfile (){//constructor
        
        $this->jsfile = array();
        
    }
    
    function nuevo_jsfile($jsfile){

        $this->jsfile[] = $jsfile;


    }
    

    
    function set_head ($xml=false){

        //if($xml) echo $this->xml;
        
        echo $this->dt;

        echo "<html xmlns=\"http://www.w3.org/1999/xhtml\">\n";

        echo "<head>\n";

        foreach($this->meta as $mt){

            echo $mt."\n";

        }

        echo "<title>".$this->title."</title>"."\n";

        if($this->cssfile!="") echo '<link type="text/css" href="'.$this->cssfile.'" rel="stylesheet" />'."\n";

        
      foreach($this->jsfile as $js){

            //echo $js."\n";
            echo '<script type="text/javascript" src="'.$js.'"></script>'."\n";

        }
        
        //if($this->jsfile!="") echo '<script type="text/javascript" src="'.$this->jsfile.'"></script>'."\n";

        
    }

    function close_head(){
        echo "</head>\n";
    }
    
}



class footer {

    function set_footer(){

        echo "</html>";

    }

}


class cuerpo {
    public $body_style;    
    public $body_onload;
    public $body_topmenu;
    public $body_after;
    public $header_type;
    public $header_css;
    public $header_class;
    public $header_background;
    public $header_background_map_name;
    public $header_background_map_text;
    public $main_css;// estilo div principal
    public $main_class;
    public $footer_css;
    public $footer_add;//elementos adisionales en el pie
    
    
    function __construct() {
        $this->body_style = "";
        $this->body_onload = "";
        $this->body_topmenu = array();
        $this->body_after = "";
        $this->header_type = "normal";
        $this->header_css = "background-color:#FFF";
        $this->header_class = "";
        $this->header_background = "";
        $this->header_background_map_name = "";
        $this->header_background_map_text = "";
        $this->main_css = "";
        $this->main_class = "";
        $this->footer_css = "";
        $this->footer_add = "";
    }
    
    function set_cuerpo($esajax=false){
        
        echo "<body";
        if($this->body_style!="") echo " style = \"".$this->body_style."\"";
        if($this->body_onload!="") echo " onload = \"".$this->body_onload."\"";
        echo ">\n";
        
        if($this->body_after != ""){
            echo $this->body_after;
        }
            
            
        
//        echo "<div id=\"fb-root\"></div>
//                <script type=\"text/javascript\">(function(d, s, id) {
//                  var js, fjs = d.getElementsByTagName(s)[0];
//                  if (d.getElementById(id)) return;
//                  js = d.createElement(s); js.id = id;
//                  js.src = \"//connect.facebook.net/es_ES/all.js#xfbml=1\";
//                  fjs.parentNode.insertBefore(js, fjs);
//                }(document, 'script', 'facebook-jssdk'));</script>            
//            ";
        
        
        if(sizeof($this->body_topmenu)>0){
            echo "<div id=\"topmenu\">|";
            foreach($this->body_topmenu as $links){
                echo "<a href=\"".$links[0]."\">".$links[1]."</a>|";            
            }
            echo "</div>";
        }
        if($this->header_type != "none"){
            echo "<div id=\"header\" class = \"".$this->header_class."\" style = \"".$this->header_css."\">
                    <img src = \"".$this->header_background."\" alt = \"\" usemap=\"#".$this->header_background_map_name."\" />\n
                  </div>\n";
        }
        echo "<div id=\"principal\" class = \"".$this->main_class."\" style = \"".$this->main_css."\">";
        
        if($esajax){
            echo "&nbsp;</div>\n";
        
            echo "<div id=\"rssfacebook\" class = \"".$this->main_class."\" style = \"height:300px;overflow:auto;margin: 0 auto;\">"
                    . "<div id=\"divRss\" >&nbsp;</div>"
                    . "</div>";
            
            
            echo "<div id=\"footer\" style = \"".$this->footer_css."\">&nbsp;</div>\n";
        }
        
    }
    
    
    
    function close_cuerpo($esajax=false){
        if(!$esajax){
            echo "&nbsp;</div>\n";
        
           // echo "<div id=\"banner\">&nbsp;</div>";
            if($this->footer_add == ""){
                echo "<div id=\"footer\" style = \"".$this->footer_css."\">&nbsp;</div>\n";            
            }
        }
        if($this->footer_add != ""){
            echo $this->footer_add;
        }
        if($this->header_background_map_text!="") echo $this->header_background_map_text;
        echo "</body>";
    }
}
?>
