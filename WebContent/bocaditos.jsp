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
 
ArrayList <Productos> losBocaditos=(ArrayList<Productos>)request.getAttribute("objetosProductos"); 

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
             Orejas   
            </figcaption>
            <img src="lasImagenes/bocaditos-orejas.jpg"  width="200" height="200">
            
            
            
            <figcaption>
             Precio:&nbsp;<td><%= losBocaditos.get(0).getPrecio() %></td>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losBocaditos.get(0).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            
            
            <input type="hidden" name="nombre" value="Orejas" >
            <input type="hidden" name="precio" value="<%=losBocaditos.get(0).getPrecio()%>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bocaditos"> 
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
                Alfajores
                </figcaption>
                <img src="lasImagenes/bocaditos-alfajor.jpg"  width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= losBocaditos.get(1).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losBocaditos.get(1).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            <input type="hidden" name="nombre" value="Alfajores" >
            <input type="hidden" name="precio" value="<%= losBocaditos.get(1).getPrecio() %>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bocaditos"> 
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
               Caramandunga
               </figcaption>
                <img src="lasImagenes/bocaditos-caramandunga.jpg" alt="Strelitzia" width="200" height="200">
                
                
               
               <figcaption>
             Precio:&nbsp;<%= losBocaditos.get(2).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losBocaditos.get(2).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            
            
            <input type="hidden" name="nombre" value="Caramandunga" >
            <input type="hidden" name="precio" value="<%=losBocaditos.get(2).getPrecio()%>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bocaditos"> 
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
                Pay de manzana
                </figcaption>
                <img src="lasImagenes/bocaditos-paydemanzana.jpg"  width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= losBocaditos.get(3).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption> 
             Cantidad disponible: &nbsp;<%= losBocaditos.get(3).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            <input type="hidden" name="nombre" value="Pye de Manzana" >
            <input type="hidden" name="precio" value="<%= losBocaditos.get(3).getPrecio() %>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="bocaditos"> 
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