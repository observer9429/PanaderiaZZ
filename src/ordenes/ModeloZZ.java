package ordenes;

import javax.sql.DataSource;




import java.sql.*;
import java.util.ArrayList;



public class ModeloZZ {

	public ModeloZZ(DataSource dataCon) {
		// TODO Auto-generated constructor stub
		this.dataCon=dataCon;
		
		
	}
	
	
	

	




	public void registraUsuario(LosUsuarios nuevoUsuario) {
		// TODO Auto-generated method stub
		try {
			laCon=dataCon.getConnection();
			
			String regis="INSERT INTO USUARIOS(nombres,apellidos,edad,usuario,clave,email,direccion,"
					+"distrito,departamento) VALUES(?,?,?,?,?,?,?,?,?)";
			
			estate=laCon.prepareStatement(regis);
			
			
			
			estate.setString(1,nuevoUsuario.getNombres());
			estate.setString(2, nuevoUsuario.getApellidos());
			estate.setInt(3, nuevoUsuario.getEdad());
			estate.setString(4,nuevoUsuario.getUsuario());
			estate.setString(5, nuevoUsuario.getClave());
			estate.setString(6,nuevoUsuario.getEmail());
			estate.setString(7, nuevoUsuario.getDireccion());
			estate.setString(8,nuevoUsuario.getDistrito());
			estate.setString(9, nuevoUsuario.getDepartamento());
			
			
			estate.execute();
			
			
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
			
		}
		
		
		
	}
	
	
	public  LosUsuarios devuelveUsuario(String usuario,String clave) {
		
		try {
			laCon=dataCon.getConnection();
			
			String sqluser="SELECT * FROM USUARIOS WHERE USUARIO=? AND CLAVE=?";
	
			estate=laCon.prepareStatement(sqluser);
			estate.setString(1, usuario);
			estate.setString(2, clave);
			
			result=estate.executeQuery();
			
			if(result.absolute(1)) {
				//logRs.next(); //YA NO SE USA EL NEXT, YA QUE EL METODO usado atras nos devuelve una fila de
				//la tabla
				
				usuarioLogin=new LosUsuarios(result.getString(1),result.getString(2),result.getInt(3),
						result.getString(4),result.getString(5),result.getString(6),result.getString(7),
						result.getString(8),result.getString(9));
				
				
				
				
				
			return usuarioLogin;
				
			}else {
				
				return usuarioLogin=null;
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return usuarioLogin;
		
	}
	
	
	

	public ArrayList<Productos> obtenerDatosSeccion(String seccion) {
		
		ArrayList<Productos>  objetosProductos=new ArrayList<>();
		
		try {
			laCon=dataCon.getConnection();
			
			String sqlpan="SELECT * FROM PRODUCTOSZZ WHERE SECCION=? ";
			
			estate=laCon.prepareStatement(sqlpan);
			
			estate.setString(1, seccion);
			
			
			result=estate.executeQuery();
		
			
			
			
			
			while(result.next()) {
				
				Productos prodSeccion=new Productos(result.getString(1),result.getString(2),
						result.getString(3),result.getDouble(4),result.getInt(5));
				
				objetosProductos.add(prodSeccion);
				
			}
		
		
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				laCon.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return objetosProductos;
		
	}
	
	
	
	
	
	
	private DataSource dataCon;
	private Connection laCon=null;
	private PreparedStatement estate=null;
	private ResultSet result=null;
	
	private LosUsuarios usuarioLogin;
	
}
