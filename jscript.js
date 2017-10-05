// JavaScript Document
//la carga de Ajax
//seccion --> array de archivos que se van a cargar con sus rutas
//quien --> array de id's de los div donde se van a cargar
var objXML = false;
function CargaContenido(seccion,quien){
		try{
			objXML = new ActiveXObject('Msxml2.XMLHTTP');
		}catch (e1){
			try {
				objXML = new ActivoXObject('Microsoft.XMLHTTP');
			}catch (e2){
				objXML = false;
			}
		}
		
		if(window.XMLHttpRequest)
			objXML = new XMLHttpRequest();
		
		if(!objXML&&typeof XMLHttpRequest !== 'undefined')
			objXML = new XMLHttpRequest();
			
		var URL = seccion;
		var dest= quien;
		
		if(objXML){
			objXML.open('GET', URL, true);
			objXML.onreadystatechange = function(){
                            if(objXML.readyState === 4){
                                var texto = objXML.responseText;
                                document.getElementById(dest).innerHTML = texto;
                            }
                        }
			objXML.send(null);
		}else alert('No jaló');
}


function deshabilita(a_quien,hd) //en general y de a uno por uno hd=true para deshabilitar
{
	with(a_quien){
		disabled = hd;
		if(hd) value="";
	}		
}

function valida_cta (str) {
    // *     example 1: strpos('Kevin van Zonneveld', 'e', 5);    // *     returns 1: 14
    var i = str.value.indexOf('-');
    var l = str.value.length;
    if(i === -1 && (l === 6 || l === 8)){       
            var cta = str.value.substr(0,str.value.length-4)+'-'+str.value.substr(str.value.length-4,4);
            str.value = cta;
    }
}

//mensaje emergente
function pe(){
    document.getElementById('guardando').style.visibility='visible';
    document.getElementById('espera').style.visibility='visible';
}




function deshabilitaradio(campo,estado)//estado=true para deshabilitar y desmarcar, false para habilitar.
{
	var i;
	for(i=0;i<campo.length;i++){
		campo[i].disabled=estado;
		if(estado)campo[i].checked=false;
	}
}


function checkemail(str) {
	
	if(str.value.length>0){
		var r1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");
		var r2 = new RegExp("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,3}|[0-9]{1,3})(\\]?)$");
		var isOK = !r1.test(str.value) && r2.test(str.value);
		if (!isOK) {
                    alert('La direccion de correo electronico es incorrecta, por favor verifiquela');
                    str.value = "";
                    str.focus();
                }
		return isOK;
	}else return true;
 }

function validaCta(campo) {  
    var r1 = new RegExp("^(((20)[0-2]{1}[0-9]{1})|([8-9]{1}[0-9]{1}))[0-9]{4}$");  
   // var r1 = new RegExp("^([0-9]{6})|([0-9]{8})$");  
    var errorMessage = "El numero de cuenta no es valido, por favor verifiquelo.";  
    if ((campo.value.match(r1)) || (campo.value.length===0)){return true;}  
    else {  
        alert(errorMessage); 
        campo.value='';
        campo.focus();   
        return false;
    }   
}  

//usar con onkeydown
function validaentradaNum(e) {
   
    tecla = (document.all) ? e.keyCode : e.which;
    
    if (tecla===8||tecla===9||tecla===37||tecla===39||tecla===46) return true; //Teclas de retroceso, tab y .     
    //patron =/[A-Za-z]/; // Solo acepta letras
    patron = /\d/; //Solo acepta números;
    //patron = /\w/; Acepta números y letras
    //patron = /\D/; No acepta números
    //if(tecla>=96) tecla = tecla-48;
//    console.log(tecla)
    te = String.fromCharCode(tecla);
    return patron.test(te); 
}  
function validaentradaTxt(e) {
   
    tecla = (document.all) ? e.keyCode : e.which;
    
    if (tecla===8||tecla===9||tecla===37||tecla===39||tecla===46) return true; //Teclas de retroceso, tab y .     
    patron =/[A-Za-z]/; // Solo acepta letras
//    patron = /\d/; //Solo acepta números;
    //patron = /\w/; Acepta números y letras
    //patron = /\D/; No acepta números
    //if(tecla>=96) tecla = tecla-48;
//    console.log(tecla)
    te = String.fromCharCode(tecla);
    return patron.test(te); 
}  





function Mayusculas(campo){
    campo.value = campo.value.toUpperCase();
}




function scroll_page(){
        window.scrollBy(0,500); // horizontal and vertical scroll increments
    	//scrolldelay = setTimeout('scroll_page()',100); // scrolls every 100 milliseconds
}

//}

function LimitAttach(tField,iType)
{
    file=tField.value;
    switch(iType){
		 case 1:extArray = new Array(".jpg");break;//Array(".gif",".jpg",".png");
		 case 2:extArray = new Array(".pdf");break;
    }
	allowSubmit = false;
    if (!file) return;
    while (file.indexOf("\\") != -1) file = file.slice(file.indexOf("\\") + 1);
    ext = file.slice(file.indexOf(".")).toLowerCase();
    for (var i = 0; i < extArray.length; i++)
    {
        if (extArray[i] === ext)
        {
            allowSubmit = true;
            break;
        }
    }
    
    document.getElementById('guardar').disabled = !allowSubmit;
    
    if (allowSubmit)
    {
		if(iType===1) document.getElementById('ruta_fichero').value=document.getElementById('imagen').value;
		if(iType===2) document.getElementById('ruta_fichero').value=document.getElementById('doc').value;
    }
    else
    {
//        tField.value="";
        document.getElementById('ruta_fichero').value="";
        alert("Solo puede subir archivos con extensiones " + (extArray.join(" ")) + "\nPor favor seleccione un nuevo archivo");
    }
}

function getmouseposition(e){
var IE = document.all?true:false;
    if (IE) { // grab the x-y pos.s if browser is IE
        tempX = event.clientX + document.body.scrollLeft;
        tempY = event.clientY + document.body.scrollTop;
    } else {  // grab the x-y pos.s if browser is NS
        tempX = e.pageX;
        tempY = e.pageY;
    }     
    var tooltip = document.getElementById('tooltip');
    tooltip.style.top = (10+tempY)+'px';
    tooltip.style.left =(15+tempX)+'px';   
    //alert(tempX,tempY);
}

function showtooltip(materias){
    
    var tooltip = document.getElementById('tooltip');
    tooltip.innerHTML = '';
    for(i=0;i<materias.length;i++) tooltip.innerHTML += materias[i]+"<br />";
    tooltip.style.visibility = 'visible';
    tooltip.style.display = 'block';
    tooltip.style.position = 'absolute';
    
    document.onmousemove = getmouseposition;
}

function hidetooltip(){
    document.getElementById('tooltip').style.visibility = 'hidden';
}

function actualizaReloj(){ 
    marcacion = new Date();
    HH = marcacion.getHours();
    MM = marcacion.getMinutes();
    SS = marcacion.getSeconds();
    dd = marcacion.getDate();
    mm = marcacion.getMonth() + 1;
    aa = marcacion.getYear() + 1900;

    var Horario;
    if (HH >= 12) Horario = "pm";
    else Horario = "am";


    if (HH===0) HH = 12;
    else if(HH>12)  HH = parseInt(HH) - 12;

    if (HH<=9)  HH = "0" + HH;

    if (MM<=9)  MM = "0" + MM;

    if (SS<=9)  SS = "0" + SS ;

    var Script = dd + " / " + mm + " / " + aa + "<br />" + HH + ":" + MM + ":" + SS + " " + Horario;

    document.getElementById('Reloj').innerHTML = Script;
    setTimeout("actualizaReloj()",1000);
} 

function activa_parcial(par,hd)//habilita-deshabilita los campos para capturar las fechas de las parciales
{
    var activa = !hd;
    var c = new String(Number(par)+1);
    with(document){
        if(par<5) getElementById('p'+c).disabled = activa;//!getElementById('p'+par).checked;        
        if(activa){
            for(i=5;i>=Number(par);i--){
                if(i!=par) getElementById('p'+String(i)).disabled = activa;
                if(i!=par) getElementById('p'+String(i)).checked = !activa;
                getElementById('p'+String(i)+'diade').disabled = activa;
                getElementById('p'+String(i)+'mesde').disabled = activa;
                getElementById('p'+String(i)+'aniode').disabled = activa;
                getElementById('p'+String(i)+'diaa').disabled = activa;
                getElementById('p'+String(i)+'mesa').disabled = activa;
                getElementById('p'+String(i)+'anioa').disabled = activa;
                getElementById('p'+String(i)+'diade').value = '';
                getElementById('p'+String(i)+'mesde').value = '';
                getElementById('p'+String(i)+'aniode').value = '';
                getElementById('p'+String(i)+'diaa').value = '';
                getElementById('p'+String(i)+'mesa').value = '';
                getElementById('p'+String(i)+'anioa').value = '';
            }
            
        }

        getElementById('p'+par+'diade').disabled = activa;
        getElementById('p'+par+'mesde').disabled = activa;
        getElementById('p'+par+'aniode').disabled = activa;
        getElementById('p'+par+'diaa').disabled = activa;
        getElementById('p'+par+'mesa').disabled = activa;
        getElementById('p'+par+'anioa').disabled = activa;
        if(activa){
            getElementById('p'+par+'diade').value = '';
            getElementById('p'+par+'mesde').value = '';
            getElementById('p'+par+'aniode').value = '';
            getElementById('p'+par+'diaa').value = '';
            getElementById('p'+par+'mesa').value = '';
            getElementById('p'+par+'anioa').value = '';
        }
    }
}

function activa_guardar_pe(){//modificar para que se ajuste al formulario donde se ocupe
	with(document){
		var activa = true;
		activa = activa && (getElementById('plan').value!="");
                activa = activa && (getElementById('area').value!="");
		activa = activa && (getElementById('nombre').value!="");
                activa = activa && (getElementById('abrev').value!="");
		activa = activa && (getElementById('periodos').value!="");

		/*activa = activa && (getElementById('').value.length>0);
		activa = activa && (getElementById('').value.length>0);*/
		getElementById('guardar').disabled = !activa;
	}
}

$(document).ready(function(){
    $('.container').fadeIn(1000);   

         
});  


