
    
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@  page import="ordenes.*" %> 
<%@  page import="java.util.ArrayList" %> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warez</title>

<link rel="stylesheet" href="estilo.css"/>
</head>
<body>

<%
HttpSession sessionP= (HttpSession) request.getSession();
//tambien funciona sin el de arriba
	
//ArrayList<Pedidos> objetosPedidos=(ArrayList<Pedidos>)sessionP.getAttribute("listaPedidosProductos");
ArrayList<Pedidos> objetosPedidos=(ArrayList<Pedidos>)sessionP.getAttribute("listaProductos");

%>

 
 

<jsp:include page="ListaHorizontal.jsp"></jsp:include>

<jsp:include page="ListaVertical.jsp"></jsp:include>

<%if(objetosPedidos!=null){ %>
<jsp:include page="divListaCompra.jsp"></jsp:include>
<%} %>
		<img name="fondoPan.jpg" src="lasImagenes/fondoPan.jpg" id="fotoFondo">

</body>
</html>