<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="estilo.css"/>
</head>
<body>  

	<h2>Formulario de Registro</h2>
	
	<form name="miformulario" method="post" action="Control_total">
	
	<input type="hidden" name="opcion" value="registrar">
                    <!-- el id es para poder modificarlo desde css -->
                    
                    
          <table>          
           <tr> <td>Nombre:&nbsp;</td> <td><input type="text" name="nombre" id="nombre" autofocus></td></tr> 
            <tr> <td>Apellido:&nbsp;</td> <td><input type="text" name="apellido" id="apellido"></td></tr>
            <tr> <td>Edad:&nbsp;</td> <td><input type="number" name="edad" id="edad" min="18" max="110" step="1" 
                               placeholder="Mayor de 18 años"  ></td></tr>
            
            <tr> <td>Usuario:&nbsp;</td><td><input type="text" name="usuario" id="usuario"></td></tr>
            <tr> <td>Clave:&nbsp;</td><td><input type="text" name="clave" id="clave"></td></tr>
            <tr> <td>Email:&nbsp;</td> <td><input type="email" name="email" id="email" autofocus></td></tr> 
            <tr> <td>Dirección:&nbsp;</td><td><input type="text" name="direccion" id="direccion"></td></tr>
            <tr> <td>Distrito:&nbsp;</td><td><input type="text" name="distrito" id="distrito"></td></tr>
            <tr> <td>Departamento:&nbsp;</td><td><input type="text" name="departamento" id="departamento"></td></tr>
            
            <tr><td><input type="submit" value="enviar"></td></tr>
            
           
          </table>          
                    
                     
                    

     </form>
            
	



</body>
</html>