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

<link rel="stylesheet" href="estilo.css"/>

<style>

#listaCompras{

background-color:#ABA08B;
width:300px;
height:600px;
float: right;
margin-top:25px;
margin-right:25px;


}


#listaCompras{

background-color:#ABA08B;
width:350px;
height:600px;
float: right;
margin-top:20px;

margin-right:25px;

}

#secGaleria{
width:85%;
float:center;
float:top;
margin-right:350px;

}

p{
display:inline;
}
</style>

</head>
<body>

<%
 

ArrayList <Productos> losPanes=(ArrayList<Productos>)request.getAttribute("objetosProductos"); 

//ArrayList<HttpSession> dd=new ArrayList<>();


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
             Pan Frances   
            </figcaption>
            <img src="lasImagenes/pan-frances.jpg"  width="200" height="200">
            
            
            
            <figcaption>
             Precio:&nbsp;<td><%= losPanes.get(0).getPrecio() %></td>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losPanes.get(0).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            
            
            <input type="hidden" name="nombre" value="Frances" >
            <input type="hidden" name="precio" value="<%=losPanes.get(0).getPrecio()%>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="panes"> 
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
                Pan Chavata
                </figcaption>
                <img src="lasImagenes/pan-chavata.jpg"  width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= losPanes.get(1).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losPanes.get(1).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            <input type="hidden" name="nombre" value="Chavata" >
            <input type="hidden" name="precio" value="<%= losPanes.get(1).getPrecio() %>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="panes"> 
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
               Pan Integral
               </figcaption>
                <img src="lasImagenes/pan-integral.jpg" alt="Strelitzia" width="200" height="200">
                
                
               
               <figcaption>
             Precio:&nbsp;<%= losPanes.get(2).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losPanes.get(2).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            
            
            <input type="hidden" name="nombre" value="Integral" >
            <input type="hidden" name="precio" value="<%=losPanes.get(2).getPrecio()%>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="panes"> 
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
                Pan de Yema
                </figcaption>
                <img src="lasImagenes/pan-yema.jpg"  width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= losPanes.get(3).getPrecio() %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= losPanes.get(3).getStock() %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="text" name="cantidad" value="1"
                     id="cantidad"  style="WIDTH: 50px; HEIGHT: 20px" />
            
            </td></tr>
            
            <input type="hidden" name="nombre" value="Yema" >
            <input type="hidden" name="precio" value="<%= losPanes.get(3).getPrecio() %>" >
            
            <input type="hidden" name="laSesion" value="crea"> 
            <input type="hidden" name="seccion" value="panes"> 
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