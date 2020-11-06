package ordenes;

import java.io.IOException;



import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CrearSesion
 */
@WebServlet("/CrearSesion")
public class CrearSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	 Pedidos panFrances=new Pedidos(null,0,0);
	 Pedidos panChavata=new Pedidos(null,0,0);
	 
	 Pedidos tortaSelvaNegra=new Pedidos(null,0,0);
	 
	 ArrayList<Pedidos> datosProductos=new ArrayList<>();
	
	  int posicion=0;		
		boolean existe=false;
	  int posInsertar=0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearSesion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(datosProductos.isEmpty()) {
    		
			HttpSession sessionT= request.getSession(true);
			
			sessionT.setAttribute("listaProductos",datosProductos);
			
			
		}
		
		String seccion=request.getParameter("seccion");
    	//ya tengo el arraylist de cada seccion
    	//ArrayList<Productos> losDatosProductos=elUsuario.obtenerDatosSeccion(seccion);
    	
    	//request.setAttribute("objetosProductos", losDatosProductos);
        String tipoPan=request.getParameter("tipoPan");
        
        int cantidad=0;
        if(request.getParameter("cantidad")!="0") {
        cantidad=Integer.parseInt(request.getParameter("cantidad"));
        }
        double precio=Double.parseDouble(request.getParameter("precio"));
        
        double precioPagar=0;
       
        
        
       
        
        int totalCantidad=0;
        
        
    	
      
    	
    	switch(seccion) {
    	
    	
    	
    	
    	case "panes":
    	
    		existe=false;
    		
    		if(tipoPan!=null) {
    			
    			switch(tipoPan) {
    			
    			case "Frances":
    		    	
    				
    				/*HttpSession misession= request.getSession(true);
    				
    				misession.setAttribute("producto",panFrances);
    				*/
    				
    				
    	    		if(panFrances.getNombrePedido()==null) {
	
    	    			
    	    			//misession.setAttribute("objetoFrances", panFrances);
    	    			
    	    		}
    	    		if( cantidad>0){ 
    	    				
    	    					
    	    			tipoPan=request.getParameter("tipoPan");
    	    					
    	    			totalCantidad=panFrances.getCantidadPedido()+ cantidad;
    	    					
    	    					
    	    			precioPagar=( totalCantidad* precio);
    	    					
    	    					
    	    					
    	    				

    	    					panFrances.setNombrePedido(tipoPan);
    	    					panFrances.setCantidadPedido(totalCantidad);
    	    					panFrances.setPrecioPedido(precioPagar);

    	    					//int tamLista=datosProductos.size();
    	    					
    	    					if(datosProductos.size()>0) {
	    	    					for(int i=0;i<datosProductos.size();i++) {
	    	    						
	    	    						if(datosProductos.get(i).getNombrePedido().equalsIgnoreCase("Frances")) {
	    	    							
	    	    							posInsertar=i;
	    	    							existe=true;
	    	    						}
	    	    						
	    	    					}
    	    					}	
    	    					
    	    					if(existe) {
    	    						
    	    						datosProductos.add(posInsertar, panFrances);
    	    						datosProductos.remove(posInsertar+1);
    	    					
    	    						
    	    					}else {
    	    						datosProductos.add(panFrances);
    	    					}
    	    					//*******************************************************


    	    				}
    	    		
    	    		
    	    	
    	    		
    		    	
    				break;
    			
    			case "Chavata":
    				
    				existe=false;
    				/*
    				HttpSession lasession= request.getSession(true);
    				
    				lasession.setAttribute("producto",panChavata);
    		    	*/
    				
    				
    	    		if(panChavata.getNombrePedido()==null) {
    	    			
    	    			
    	    			
    	    			//lasession.setAttribute("objetoChavata", panChavata);
    	    			
    	    		}
    	    		if( cantidad>0){ 
	    				
    					
    	    			tipoPan=request.getParameter("tipoPan");
    	    					
    	    			totalCantidad=panChavata.getCantidadPedido()+ cantidad;
    	    					
    	    					
    	    			precioPagar=( totalCantidad* precio);
    	    					
    	    					
    	    					
    	    				

    	    			panChavata.setNombrePedido(tipoPan);
    	    			panChavata.setCantidadPedido(totalCantidad);
    	    			panChavata.setPrecioPedido(precioPagar);

    	    					//int tamLista=datosProductos.size();
    	    					
    	    					if(datosProductos.size()>0) {
	    	    					for(int i=0;i<datosProductos.size();i++) {
	    	    						
	    	    						if(datosProductos.get(i).getNombrePedido().equalsIgnoreCase("Chavata")) {
	    	    							
	    	    							posInsertar=i;
	    	    							existe=true;
	    	    						}
	    	    						
	    	    					}
    	    					}	
    	    					
    	    					if(existe) {
    	    						
    	    						datosProductos.add(posInsertar, panChavata);
    	    						datosProductos.remove(posInsertar+1);
    	    					
    	    						
    	    					}else {
    	    						datosProductos.add(panChavata);
    	    					}
    	    					//*******************************************************


    	    				}
    	    		
    	    		
    		    	
    				break;
    			}
    			
    			
    			//aqui acaba el super if
    		}
    		
    		/*
    		request.setAttribute("objetosProductos", losDatosProductos);
    		
			RequestDispatcher miDispat=request.getRequestDispatcher("/panes.jsp");
	    	
			miDispat.forward(request, response);
	    	*/
    		
    		
    		//break del caso PANES
			break;
		
    	case "tortas":
        	
    		switch(tipoPan) {
    		
    		case "Selva Negra":
    			
    			existe=false;
				/*
				HttpSession lasession= request.getSession(true);
				
				lasession.setAttribute("producto",panChavata);
		    	*/
				
				
	    		if(panChavata.getNombrePedido()==null) {
	    			
	    			
	    			
	    			//lasession.setAttribute("objetoChavata", panChavata);
	    			
	    		}
	    		if( cantidad>0){ 
    				
					
	    			tipoPan=request.getParameter("tipoPan");
	    					
	    			totalCantidad=tortaSelvaNegra.getCantidadPedido()+ cantidad;
	    					
	    					
	    			precioPagar=( totalCantidad* precio);
	    					
	    					
	    					
	    				

	    			tortaSelvaNegra.setNombrePedido(tipoPan);
	    			tortaSelvaNegra.setCantidadPedido(totalCantidad);
	    			tortaSelvaNegra.setPrecioPedido(precioPagar);

	    					//int tamLista=datosProductos.size();
	    					
	    					if(datosProductos.size()>0) {
    	    					for(int i=0;i<datosProductos.size();i++) {
    	    						
    	    						if(datosProductos.get(i).getNombrePedido().equalsIgnoreCase("Selva Negra")) {
    	    							
    	    							posInsertar=i;
    	    							existe=true;
    	    						}
    	    						
    	    					}
	    					}	
	    					
	    					if(existe) {
	    						
	    						datosProductos.add(posInsertar, tortaSelvaNegra);
	    						datosProductos.remove(posInsertar+1);
	    					
	    						
	    					}else {
	    						datosProductos.add(tortaSelvaNegra);
	    					}
	    					//*******************************************************


	    				}
	    		
	    		
	
    			
    			break;
    			
    			
    		
    		}
    		
    		
    		
    		
    	
    	
    	
    	}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
