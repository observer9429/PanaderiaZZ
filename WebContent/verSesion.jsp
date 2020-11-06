<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@  page import="ordenes.Pedidos" %>
     <%@  page import="javax.servlet.http.HttpSession" %>
     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

//HttpSession misession= (HttpSession) request.getSession();


Pedidos datosFrances=(Pedidos) session.getAttribute("objetoFrances");



//HttpSession lasession= (HttpSession) request.getSession();


Pedidos datosChavata=(Pedidos)session.getAttribute("objetoChavata");
%>

<% if(datosFrances!=null){ %>

				<% if(datosFrances.getCantidadPedido()>0){ %>
					<p><%=datosFrances %></p><br/>

				<% }%>
<%}else{ %>

<p>no hay datos en el objeto frances</p>
<%} %>
<!-- *************************************************************************** -->
<% if(datosChavata!=null){ %>

<p><%=datosChavata %></p><br/>


<%}else{ %>

<p>no hay datos en el objeto cahvata</p>
<%} %>

</body>
</html>