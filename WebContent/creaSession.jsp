<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@  page import="ordenes.LosUsuarios" %> 
    <%@  page import="ordenes.Productos" %>
    <%@  page import="ordenes.Pedidos" %>
    <%@  page import="java.util.ArrayList" %>
    <%@  page import="ordenes.ModeloZZ" %>
    <%@  page import="ordenes.Control_total" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>






<form action="CrearSesion" method="get">

<input type="hidden" name="orden" value="crea" >

para el tipo seccion, pan torta: &nbsp;<input type="text" name="seccion" ><br/>
tipo de pan:&nbsp;&nbsp;<input type="text" name="tipoPan"><br/>
cantidad a llevar:&nbsp;<input type="text" name="cantidad"><br/>
precio del producto: &nbap;<input type="text" name="precio"><br/>


<input type="submit" value="ver sesion">

</form>



</body>
</html>