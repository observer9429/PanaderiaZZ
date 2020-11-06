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
<%

String mostrar=(String)request.getAttribute("usuarioNull");


%>



<h2>Ingrese  con su usario y clave</h2>

<form name="opcion" action="Control_total" method="post">

	<table>
		
		<input type="hidden" name="opcion" value="loginUsuario">
		
		<tr><td>Usuario:</td><td><input type="text" name="usuario"></td></tr>
		<tr><td>Clave:</td><td><input type="text" name="clave"></td></tr>
		<tr><td><input type="submit" value="Ingresar"></td></tr>
		
	
	</table>

</form>

<% if(mostrar!=null) { %>

<p>Usuario o Clave erroneas, inténtelo otra vez</p>

<% } %>


</body>
</html>