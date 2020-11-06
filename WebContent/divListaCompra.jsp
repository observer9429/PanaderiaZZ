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
HttpSession sessionP= (HttpSession) request.getSession();
//tambien funciona sin el de arriba
	
//ArrayList<Pedidos> objetosPedidos=(ArrayList<Pedidos>)sessionP.getAttribute("listaPedidosProductos");
ArrayList<Pedidos> objetosPedidos=(ArrayList<Pedidos>)sessionP.getAttribute("listaProductos");
%>

<div id="listaCompras">

<h2>Productos en espera de compra</h2>



<%if(objetosPedidos==null){ %>
No hay productos en espera de compra
			

			
<%}else{ %>
<table>
<tr><td>Producto</td><td>Cantidad</td><td>Precio a pagar</td></tr>
		<% for(Pedidos e:objetosPedidos){ %>
		<tr><td><%=e.getNombrePedido() %></td>
		<td><%=e.getCantidadPedido() %></td>
		<td><%=e.getPrecioPedido() %></td></tr>
		<%} %>
</table>		
<%} %>



<br/><br/><br/><br/><br/><br/><br/>
<P>aca termina la inofrmacion del arraylist</P>
<P>aca termina la inofrmacion del arraylist</P>
<P>aca termina la inofrmacion del arraylist</P>
<P>aca termina la inofrmacion del arraylist</P>
<br/><br/><br/><br/><br/><br/><br/>


</div>



</body>
</html>