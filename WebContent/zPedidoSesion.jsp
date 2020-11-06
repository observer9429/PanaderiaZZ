<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@  page import="ordenes.LosUsuarios" %> 
    <%@  page import="ordenes.Productos" %>
    <%@  page import="ordenes.Pedidos" %>
    <%@  page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

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

<link rel="stylesheet" href="estilo.css"/>

</head>
<body>





<jsp:include page="ListaHorizontal.jsp"></jsp:include>

<jsp:include page="ListaVertical.jsp"></jsp:include>

<div id="listaCompras">

<h3>Productos en espera de compra</h3>


<%

Pedidos listaPedidos=(Pedidos)session.getAttribute("losPedidos");

if(listaPedidos==null ){
	
	listaPedidos=new Pedidos("",0,10);
	
	
	
	session.setAttribute("losPedidos", listaPedidos);
	
	
}
//***************************************************

   String nombre=null;
	int cantPedido=0;
	double elPrecio=0;
	
	

if(request.getParameter("nombre")!=null && request.getParameter("cantidad")!="0" 
&& request.getParameter("precio")!=null){

	
	
	
	nombre=request.getParameter("nombre");
	
	cantPedido=listaPedidos.getCantidadPedido()+ Integer.parseInt(request.getParameter("cantidad"));
	//cantPedido=Integer.parseInt(request.getParameter("cantidad"));
	
	elPrecio=( cantPedido* Double.parseDouble(request.getParameter("precio")));
	//elPrecio=Double.parseDouble(request.getParameter("precio"));
	
	
	
	listaPedidos.setNombrePedido(nombre);
	listaPedidos.setCantidadPedido(cantPedido);
	listaPedidos.setPrecioPedido(elPrecio);
	
}



%>



<%if ((listaPedidos!=null) && (listaPedidos.getCantidadPedido() > 0) ){ %>

<p><%= listaPedidos.getNombrePedido() %></p>&nbsp;
<p><%= listaPedidos.getCantidadPedido() %></p>&nbsp;
<p><%= listaPedidos.getPrecioPedido() %></p><br/>


<%} %>



	
	






</div>


<div id="secGaleria">
<section id="secGaleria">
 
 <form action="zPedidoSesion.jsp" method="get">
     <figure>  
     
     		<figcaption>
             Pan Frances   
            </figcaption>
            <img src="pan-frances.jpg"  width="200" height="200">
            
            
            
            <figcaption>
             Precio:&nbsp;<%= 10 %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= 10 %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="number" name="cantidad" value="1"
                     id="cantidad" min="0" max="<%=10 %>" style="WIDTH: 50px; HEIGHT: 20px" />
            </td></tr>
            
            <input type="hidden" name="nombre" value="Panfrances" >
            <input type="hidden" name="precio" value="10" >
            
            <tr><td>
                    <br/><br/> &nbsp;<input type="submit" value="Añadir a compras" >
            </td></tr>
            
            
            
     </figure>
        
    </form>
        <!-- /********************************************************* -->
        
        
        
        
        <figure>
        
        		<figcaption>
                Pan Chavata
                </figcaption>
                <img src="pan-chavata.jpg" alt="Mirabilis Jalapa" width="200" height="200">
                
                <figcaption>
             Precio:&nbsp;<%= 20 %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= 20 %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="number" name="edad" value="0"
                     id="edad" min="1" max="<%= 20 %>" style="WIDTH: 50px; HEIGHT: 20px">
            </td></tr>
            
            
                
        </figure>
         <!-- /********************************************************* -->
        <figure>
        
        		<figcaption>
               Pan Integral
               </figcaption>
                <img src="pan-integral.jpg" alt="Strelitzia" width="200" height="200">
                
                
               
               <figcaption>
             Precio:&nbsp;<%= 30 %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;<%= 30 %>  
            </figcaption>
            
            
            
            <tr><td>
                     Cantidad a pedir:&nbsp;</td><td><input type="number" name="edad" value="0"
                     id="edad" min="1" max="<%= 30 %>" style="WIDTH: 50px; HEIGHT: 20px">
            </td></tr>
            
           
               
               
               
        </figure>
    
         <!-- /********************************************************* -->
        <figure>
       			 <figcaption>
                Pan de Yema
                </figcaption>
                
                
                <img src="pan-yema.jpg" alt="Flor del opio" width="200" height="200">
                
                
                <figcaption>
             Precio:&nbsp;<%= 40 %>   &nbsp;soles
            </figcaption>
            
            <figcaption>
             Cantidad disponible: &nbsp;  
            </figcaption>
            
            
            
            <td>
                     Cantidad a pedir:&nbsp;</td><td><input type="number" name="edad" value="0"
                     id="edad" min="1" max="50" style="WIDTH: 50px; HEIGHT: 20px" />
            </td>
	            
	            
                
                
                
        </figure>
   
        
       
        
     </section>

</div>







</body>
</html>