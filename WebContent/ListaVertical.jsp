<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="estilo.css"/>



</head>
<body>

<!-- ejemplo de un tag adentro de un scriplet -->

	

	<c:url var="linkPanes" value="Control_total">

		<c:param name="opcionSeccion" value="antinull">
			
		</c:param>
		
		<c:param name="seccion" value="panes">
			
		</c:param>
		
	

	</c:url>
	
	<!-- ********************************************************************************* -->

	<c:url var="linkTortas" value="Control_total">

		<c:param name="opcionSeccion" value="antinull">
			
		</c:param>
		
		<c:param name="seccion" value="tortas">
			
		</c:param>
	
		
	

	</c:url>
	<!-- ********************************************************************************* -->
	<c:url var="linkBocaditos" value="Control_total">

		<c:param name="opcionSeccion" value="antinull">
			
		</c:param>


		<c:param name="seccion" value="bocaditos">
			
		</c:param>
	
		
	

	</c:url>
	<!-- ********************************************************************************* -->
	<c:url var="linkBebidas" value="Control_total">

		<c:param name="opcionSeccion" value="antinull">
			
		</c:param>

		<c:param name="seccion" value="bebidas">
			
		</c:param>
	
		
	

	</c:url>
	<!-- ********************************************************************************* -->
	<nav id="cabezaLista">
        <header id="nombreLista">Lista de productos</header>
        	<ol>
        		
                <li class="objetos"><a href="${linkPanes}">Panes</a></li>
                <li class="objetos"><a href="${linkTortas}">Tortas</a></li>
                <li class="objetos"><a href="${linkBocaditos}">Bocaditos</a></li>
                <li class="objetos"><a href="${linkBebidas}">Bebidas</a></li>
        	</ol>
        	
        	<img src="pete.gif" id="pitufo">
        </nav>

</body>
</html>