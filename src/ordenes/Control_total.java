package ordenes;

import java.io.IOException;


import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;



import java.sql.*;
import java.util.ArrayList;
/**
 * Servlet implementation class Control_total
 */
@WebServlet("/Control_total")
public class Control_total extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ModeloZZ elUsuario;
	
	@Resource(name="jdbc/panChaval")
	private DataSource losDatos;
       
	//ArrayList<Pedidos> pedidosProductos=new ArrayList<>();
	HttpSession session=null;
	HttpSession session2=null;
	
	ArrayList<Pedidos> pedidosProductos=new ArrayList<Pedidos>();
	Pedidos productoTemporal=new Pedidos(null,0,0);
	
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public Control_total() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			
			elUsuario=new ModeloZZ(losDatos);
			
		} catch (Exception e) {
			
			throw new ServletException(e);
						
		}
		
		
		
	}
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter salida=response.getWriter();
		
		String laOpcion=request.getParameter("opcionSeccion");
		
		//***********************************************************11111
		
				
		boolean existe=false;
	  int posicInsertar=0;
		
	  
	  
	  if(request.getParameter("laSesion")!=null) {
		
							if(pedidosProductos.isEmpty()) {
					    		
								HttpSession sessionT= request.getSession(true);
								
								sessionT.setAttribute("listaProductos",pedidosProductos);
								
								
							}
							
							String seccion=request.getParameter("seccion");
					    	//ya tengo el arraylist de cada seccion
					    	//ArrayList<Productos> losDatosProductos=elUsuario.obtenerDatosSeccion(seccion);
					    	
					    	//request.setAttribute("objetosProductos", losDatosProductos);
					        String nombreDelProducto=request.getParameter("nombre");
					        
					        int cantidad=0;
					        if(request.getParameter("cantidad")!="0") {
					        cantidad=Integer.parseInt(request.getParameter("cantidad"));
					        }
					        double precio=Double.parseDouble(request.getParameter("precio"));
					        
					        
					        
					        if(pedidosProductos.size()>0) {
					        	
					        	for(Pedidos e:pedidosProductos) {
					        		
					        		if(e.getNombrePedido().equalsIgnoreCase(nombreDelProducto)) {
					        			existe=true;
					        		}
					        	}
					        	
					        	
					        }
					       
					       if(existe) {
					    	   
					    	   for(int i=0;i<pedidosProductos.size();i++) {
					    		   
					    		   if(pedidosProductos.get(i).getNombrePedido().equalsIgnoreCase(nombreDelProducto)) {
					    			   posicInsertar=i;
					    		   }
					    		   
					    	   }
					    	   
					    	   String nombreFinal=nombreDelProducto;
					    	   int cantidadFinal=cantidad+pedidosProductos.get(posicInsertar).getCantidadPedido();
					    	   double precioFinal=cantidadFinal*precio;
					    	   
					    	   Pedidos edita=new Pedidos(nombreFinal,cantidadFinal,precioFinal);
					    	   
					    	   pedidosProductos.add(posicInsertar, edita);
					    	   pedidosProductos.remove(posicInsertar+1);
					    	   
					       }else {
					    	   
					    	   Pedidos nuevo=new Pedidos(nombreDelProducto,cantidad,precio*cantidad);
					    	   pedidosProductos.add(nuevo);
					       }
        
       
	  }
       
	if(laOpcion!=null) {
		
    		listarProductos(request,response);
	}
    		
    		
 	
		
	}
	
	

	//****************************************************************************
	
    private void listarProductos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String seccion=request.getParameter("seccion");
    	//ya tengo el arraylist de cada seccion
    	ArrayList<Productos> losDatosProductos=elUsuario.obtenerDatosSeccion(seccion);
    	
    	//request.setAttribute("objetosProductos", losDatosProductos);
    	//********************************************************
    
    	switch(seccion) {
    	
    	
    	
    	
    	case "panes":
    	
    		
    		//abajao enviamos el aaraylist de precios ya con su seccion
    		request.setAttribute("objetosProductos", losDatosProductos);
    		
			RequestDispatcher miDispat=request.getRequestDispatcher("/panes.jsp");
	    	
			miDispat.forward(request, response);
	    	
			break;
		
    	case "tortas":
        	
    		request.setAttribute("objetosProductos", losDatosProductos);
    		
    		RequestDispatcher miDispat2=request.getRequestDispatcher("/tortas.jsp");
        	
    		miDispat2.forward(request, response);
        	
    		break;
    		
    	case "bocaditos":
        	
    		
    		
    		request.setAttribute("objetosProductos", losDatosProductos);
    		
    		RequestDispatcher miDispat3=request.getRequestDispatcher("/bocaditos.jsp");
        	
    		miDispat3.forward(request, response);
        	
    		break;
    		
    	case "bebidas":
        	
    		request.setAttribute("objetosProductos", losDatosProductos);
    		
    		RequestDispatcher miDispat4=request.getRequestDispatcher("/bebidas.jsp");
        	
    		miDispat4.forward(request, response);
        	
    		break;
    	
    	
    	}
    	
	}
//****************************************************************************************************************
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String opcEscogida=request.getParameter("opcion");
    	
    	PrintWriter salida=response.getWriter();
		//response.setContentType("text.html");
    	
    	switch(opcEscogida) {
    	
    	case "registrar":
    		
    		try {
				registrarUsuario(request,response);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
    		
    		break;
    	
    	case "cerrarSesion":
    		
    		try {
				cerrarSesion(request,response);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
    	
    		break;
    		
    	case "loginUsuario":
    		
    		
    		try {
				verificarLogin(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
    		break;
    		
    	
    	
    	}
    	
    	
    	
    	
    	
	
	}

	private void verificarLogin(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		LosUsuarios varUsuario;
		
		varUsuario=elUsuario.devuelveUsuario(request.getParameter("usuario"),request.getParameter("clave"));
		
		//lugo de loguearse e no existe, se metera en el if
		if(varUsuario==null) {
			
			//usaremos el metodo anterior request paraenviar un dato y asi
			//que ponga un anuncio de usuario registrado  ono, usuario o clave incorrecta
			
			//response.sendRedirect("ingresar.jsp");
			
			String nn="desconocido";
			
			request.setAttribute("usuarioNull", nn);
			
			RequestDispatcher miDispat=request.getRequestDispatcher("/ingresar.jsp");
			
			miDispat.forward(request, response);
			
		}else {
			
			session= request.getSession(true);
			
			session.setAttribute("elusuario",varUsuario);;
			
			RequestDispatcher miDispat=request.getRequestDispatcher("/inicio.jsp");
			
			miDispat.forward(request, response);
			
		}
		
		
		
	}

	private void cerrarSesion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		
		
		
		session.setAttribute("elusuario", null);;
		
		RequestDispatcher miDispat=request.getRequestDispatcher("/inicio.jsp");
		
		miDispat.forward(request, response);
		
	}

	private void registrarUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/*
		PrintWriter salida= response.getWriter();;
		
		
		response.setContentType("text.html");
		*/
		
		String nombres=request.getParameter("nombre");
		String apellidos=request.getParameter("apellido");
		int edad=Integer.parseInt(request.getParameter("edad"));
		String usuario=request.getParameter("usuario");
		String clave=request.getParameter("clave");
		String email=request.getParameter("email");
		String direccion=request.getParameter("direccion");
		String distrito=request.getParameter("distrito");
		String departamento=request.getParameter("departamento");
		
		LosUsuarios nuevoUsuario=new LosUsuarios(nombres,apellidos,edad,usuario,clave,
				email,direccion,distrito,departamento);
		
		session= request.getSession(true);
		
		elUsuario.registraUsuario(nuevoUsuario);
		
		//salida.print("exito al registrar");
		
		
		
		session.setAttribute("elusuario", nuevoUsuario);;
		
		RequestDispatcher miDispat=request.getRequestDispatcher("/inicio.jsp");
		
		miDispat.forward(request, response);
		
		/*
		
		
		
		Connection conex=null;
		PreparedStatement estate=null;
		
		
		try {
			conex=losDatos.getConnection();
			
			String regis="INSERT INTO USUARIOS(nombres,apellidos,edad,usuario,clave,email,direccion,"
					+"distrito,departamento) VALUES(?,?,?,?,?,?,?,?,?)";
			
			estate=conex.prepareStatement(regis);
			
			
			
			estate.setString(1,request.getParameter("nombre") );
			estate.setString(2,request.getParameter("apellido") );
			
			estate.setInt(3,Integer.parseInt(request.getParameter("edad")));
			estate.setString(4,request.getParameter("usuario") );
			estate.setString(5,request.getParameter("clave") );
			estate.setString(6, request.getParameter("email"));
			estate.setString(7,request.getParameter("direccion") );
			estate.setString(8,request.getParameter("distrito"));
			estate.setString(9,request.getParameter("departamento"));
			
			estate.execute();
			
			salida.print("exito al registrar");
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
			
		}
		
		*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
