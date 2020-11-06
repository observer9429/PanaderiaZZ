package ordenes;

public class LosUsuarios {
	
	

	
	
	public LosUsuarios(String nombres, String apellidos, int edad, String usuario, String clave, String email,
			String direccion, String distrito, String departamento) {
		
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.edad = edad;
		this.usuario = usuario;
		this.clave = clave;
		this.email = email;
		this.direccion = direccion;
		this.distrito = distrito;
		this.departamento = departamento;
	}
	
	
	
	
	
	
	
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getDistrito() {
		return distrito;
	}
	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}







	private String nombres;
	private String apellidos;
	private int edad;
	private String usuario;
	private String clave;
	private String email;
	private String direccion;
	private String distrito;
	private String departamento;
}

