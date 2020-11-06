<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@  page import="ordenes.*" %> 
    <%@  page import="ordenes.Productos" %>
    
    <%@  page import="java.util.ArrayList" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="estilo.css"/>
</head>
<body>

<%
 
ArrayList <Productos> lasBebidas=(ArrayList<Productos>)request.getAttribute("objetosProductos"); 

%>
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



<div id="secGaleria">
<section id="secGaleria">
 
 	<form action="Control_total" method="get">
     <figure>  
     
     		<figcaption>
             Chicha   
            </figcaption>
            <img src="lasImagenes/bebidas-chicha.jpg"  width="200" height="200">
            
            
            
            <figcaption>
             Precio:&nbsp;<td><%= lasBebidas.get(0).getPrecio() %></td>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= lasBebidas.get(0).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            
            
            <input type="hidden" name="nombre" value="Chicha" >
            <input type="hidden" name="precio" value="<%=lasBebidas.get(0).getPrecio()%>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bebidas"> 
            <input type="hidden" name="opcionSeccion" value="antinull" >
             
            
            
            <tr><td>
                    <br/><br/> &nbsp;<input type="submit" value="Añadir a compras" >
            </td></tr>
            
            
            
     </figure>
    </form>    
        <!-- /********************************************************* -->
      <form action="Control_total" method="get">
        <figure>
        
        		<figcaption>
                Pepsi
                </figcaption>
                <img src="lasImagenes/bebidas-pepsi.jpg"  width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= lasBebidas.get(1).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= lasBebidas.get(1).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            <input type="hidden" name="nombre" value="Pepsi" >
            <input type="hidden" name="precio" value="<%= lasBebidas.get(1).getPrecio() %>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bebidas"> 
            <input type="hidden" name="opcionSeccion" value="antinull" >
            
      
      		<tr><td>
                    <br/><br/> &nbsp;<input type="submit" value="Añadir a compras" >
            </td></tr>
                
        </figure>
        </form>
        
        
        
         <!-- /********************************************************* -->
        <form action="Control_total" method="get">
        <figure>
        
        		<figcaption>
               Capuchino
               </figcaption>
                <img src="lasImagenes/bebidas-capuchino.jpeg" alt="Strelitzia" width="200" height="200">
                
                
               
               <figcaption>
             Precio:&nbsp;<%= lasBebidas.get(2).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= lasBebidas.get(2).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            
            
            <input type="hidden" name="nombre" value="Capuchino" >
            <input type="hidden" name="precio" value="<%=lasBebidas.get(2).getPrecio()%>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bebidas"> 
            <input type="hidden" name="opcionSeccion" value="antinull" >
             
            
            
            <tr><td>
                    <br/><br/> &nbsp;<input type="submit" value="Añadir a compras" >
            </td></tr>
            
           
               
               
               
        </figure>
    </form>
         <!-- /********************************************************* -->
         
         
        <form action="Control_total" method="get">
        <figure>
        
        		<figcaption> 
                Cafe
                </figcaption>
                <img src="lasImagenes/bebidas-cafe.jpeg"  width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= lasBebidas.get(3).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption> 
             Cantidad disponible: &nbsp;<%= lasBebidas.get(3).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            <input type="hidden" name="nombre" value="Cafe" >
            <input type="hidden" name="precio" value="<%= lasBebidas.get(3).getPrecio() %>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bebidas"> 
            <input type="hidden" name="opcionSeccion" value="antinull" >
            
      
      		<tr><td>
                    <br/><br/> &nbsp;<input type="submit" value="Añadir a compras" >
            </td></tr>
                
        </figure>
        </form>
   
        
       
        
     </section>

</div>





</body>
</html>