package clases;

public class Usuario {
	public static int idSeleccionado = 0;
	private int id;
	private String nombre;
	private int puntos;
	
	public Usuario(int id, String nombre, int puntos) {
		this.id = id;
		this.nombre = nombre;
		this.puntos = puntos;
	}
	public Usuario(String nombre, int puntos) {
		this(0,nombre,puntos);
	}
	public Usuario(String nombre) {
		this(0,nombre,0);
	}
	
	public int getId() {
		return this.id;
	}
	public String getNombre() {
		return this.nombre;
	}
	public int getPuntos() {
		return this.puntos;
	}
}
