<?php

class db {
    public $db_host;
    public $db_name;
    private $db_user;
    private $db_passwd;
 

    function  __construct() {
       $this->db_user ="root";
        $this->db_passwd = "";  
        /* $this->db_passwd = "wpr2011";
        $this->db_user ="wpracticas"; */   
   }
   
   
   function db_connect(){
       
       $rconnect = mysqli_connect($this->db_host,$this->db_user,$this->db_passwd) or die("Imposible conectarse a la base de datos: ".mysqli_error($rconnect));
       
       mysqli_select_db($rconnect,$this->db_name) or die("Imposible seleccionar la base de datos: ".mysqli_error($rconnect));
       
       mysqli_query($rconnect,"SET NAMES 'utf8'");
       
       return $rconnect;
   }
   
   function db_close($rdisconnect){
       
       mysqli_close($rdisconnect);
       
   }

}

