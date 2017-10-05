<?php    
require_once 'config.ini.php';
 //require_once('config.php');
 echo "SECCION PUBLICA";
if($saml->isAuthenticated()) //Si el usuario ya esta autenticado en saml
	{ $atributos= $saml->getAttributes(); //Obtener sus atributos
            //header("Location: adm/inisesion.php");
	  echo "<br> Existe sesion a nombre de ".$atributos["uNombre"][0]."<br><a href='./privada/'>Ir a secci&oacute;n privada</a>"; //Imprimir el atributo uNombre
       } 
	else 
 echo "<br>No hay sesion iniciada<br><a href='./adm/versesion.php'>Iniciar sesi&oacute;n</a>";

/*    $header->nueva_meta('<meta name="KEYWORDS" content="" />');
    
    $header->nueva_meta("<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>");

    $header->title = "[Educaci&oacute;n Superior]";

    $header->set_head(false);
  
    $header->close_head();

    $body->body_style = "background-color: ".$color->fc;

    $body->main_css = "margin: 5px auto; height: 300px; font-size: 18px; box-shadow: 0 0 3px #BBB;";
    $body->main_class = "container";
;
    $body->footer_css = "margin: 5px auto;";
    
    $body->set_cuerpo();*/
    
?>

        <!--<div id="principal" class="container" style="margin: auto; height: 350px; ">
            <div style="height:100px; width: 680px; margin: auto; ">
                <br />
                <img src="images/bienvenido.jpg" border="0" alt="" />
            </div>            
                <form action="adm/inisesion.php" method="post">
                    <fieldset id="iniciosesion" style="width:600px; margin: auto; font-size: 12px;">
                        <legend>INICIO DE SESI&Oacute;N</legend><br />
                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                            <tr class="sobre">
                                <td style="text-align:right;">Usuario:</td>
                                <td style="text-align:left;"><input type="text" size="10" maxlength="20" name="login" id="login" />
                                [Docentes poner n&uacute;mero de trabajador]</td>
                            </tr>
                            <tr class="sobre">
                                <td style="text-align:right;">Clave de acceso:</td>
                                <td style="text-align:left;"><input type="password" size="10" maxlength="20" name="passwd" id="passwd" /></td>
                            </tr>
                            <tr class="sobre">
                                <td style="text-align:center;">Soy docente: 
                                    <input type="checkbox" name="soydocente" value="1" onclick="plant.disabled=!this.checked; if(this.checked) getElementById('selec_plant').innerHTML = '-Seleccione su plantel-'; else {getElementById('selec_plant').innerHTML ='--';getElementById('plant').value='';}" />
                                </td>
                                <td>
                                    <select name="plant" id="plant" disabled="disabled">
                                        <option value="" disabled="disabled" selected="selected" id="selec_plant">--</option>
                                    <?php
                                       /* $rp = mysqli_query($pl,"select plant,nomplant from des order by nomplant") or die("Fallo al cargar planteles: ".mysqli_error($pl));
                                        while($fp = mysqli_fetch_array($rp)){
                                            echo "<option value=\"".$fp['plant']."\">".$fp['nomplant']."</option>";
                                        }*/
                                    ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:center;">- * -<br /><br />
                                    <button type="submit" value="1" name="iniciar" id="iniciar">Iniciar <img src="images/next.png" alt="" /></button>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
          
        </div>-->
<?php 
  /*  $body->close_cuerpo();
    $footer = new footer();
    $footer->set_footer();   */
?> 