package ordenes;

public class Productos {
	
	
	
	

	
	public Productos(String id, String seccion, String nombre, double precio, int stock) {
		
		this.id = id;
		this.seccion = seccion;
		this.nombre = nombre;
		this.precio = precio;
		this.stock = stock;
	}
	
	
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSeccion() {
		return seccion;
	}
	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	private String id;
	private String seccion;
	private String nombre;
	private double precio;
	private int stock;
}
