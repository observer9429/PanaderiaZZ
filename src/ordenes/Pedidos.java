package ordenes;

public class Pedidos {

	




	public Pedidos(String nombrePedido, int cantidadPedido, double precioPedido) {
		super();
		this.nombrePedido = nombrePedido;
		this.cantidadPedido = cantidadPedido;
		this.precioPedido = precioPedido;
	}
	
	
	
	
	
	
	
	
	public String getNombrePedido() {
		return nombrePedido;
	}
	public void setNombrePedido(String nombrePedido) {
		this.nombrePedido = nombrePedido;
	}
	public int getCantidadPedido() {
		return cantidadPedido;
	}
	public void setCantidadPedido(int cantidadPedido) {
		this.cantidadPedido = cantidadPedido;
	}
	public double getPrecioPedido() {
		return precioPedido;
	}
	public void setPrecioPedido(double precioPedido) {
		this.precioPedido = precioPedido;
	}




	
	




	@Override
	public String toString() {
		return "Pedidos [nombrePedido=" + nombrePedido + ", cantidadPedido=" + cantidadPedido + ", precioPedido="
				+ precioPedido + "]";
	}








	
	
	
	
	
	


	private String nombrePedido;
	private  int cantidadPedido;
	private  double precioPedido;
}
