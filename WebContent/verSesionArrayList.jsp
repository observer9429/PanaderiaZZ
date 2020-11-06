<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@  page import="ordenes.Pedidos" %>
     <%@  page import="javax.servlet.http.HttpSession" %>
     <%@  page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

HttpSession misession= (HttpSession) request.getSession();

ArrayList<Pedidos> productosPedidos=(ArrayList<Pedidos>) misession.getAttribute("listaProductos");




%>
<!-- <productosPedidos!=null -->
<%if(productosPedidos!=null){ %>
	<%for(Pedidos e:productosPedidos){ %>
		<p><%=e %></p><br/>
	<%} %>
	
<%} %>
</body>
</html>