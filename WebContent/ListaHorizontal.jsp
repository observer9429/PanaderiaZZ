<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@  page import="ordenes.LosUsuarios" %> 
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="estilo.css"/>
</head>
<body>

<h1 align="center"><span id="eltitulo">La Panaderia ZZ</span></h1>
 
 <%
LosUsuarios	 infUsuario=(LosUsuarios) session.getAttribute("elusuario");
%>


<% if(infUsuario==null){ %>

<jsp:include page="opcionUser.html"></jsp:include>
<% }else{ %>

<h4>Bienvenido: <%= infUsuario.getNombres() %> </h4>

<jsp:include page="opcCerrarSesion.html"></jsp:include>

<% } %>




 
 
 
 
 
 
 
 
 

        <nav id="navprincipal">
            <ul ><!-- listas desordenadas , para ordenarlo ponemos ol-->
                <li>Quienes somos</li>
                <li>Misión</li>
                <li>Visión</li>
                <li>Contactanos</li>
                
            </ul>
        </nav>

</body>
</html>