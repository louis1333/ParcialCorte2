package co.edu.unbosque.model;

import java.io.File;

import jakarta.servlet.http.Part;

public class AspiranteDTO {

	private String nombre, fecha, edad, colegio, carrera, homologado;
	private int estrato;
	private Part foto;
	
	public AspiranteDTO() {
		
	}

	public AspiranteDTO(String nombre, String fecha, String edad, String colegio, String carrera, String homologado, int estrato, Part foto) {
		this.nombre = nombre;
		this.fecha = fecha;
		this.edad = edad;
		this.colegio = colegio;
		this.carrera = carrera;
		this.homologado = homologado;
		this.estrato = estrato;
		this.foto = foto;
	}

	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getEdad() {
		return edad;
	}

	public void setEdad(String edad) {
		this.edad = edad;
	}

	public String getColegio() {
		return colegio;
	}

	public void setColegio(String colegio) {
		this.colegio = colegio;
	}

	public String getCarrera() {
		return carrera;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public String getHomologado() {
		return homologado;
	}

	public void setHomologado(String homologado) {
		this.homologado = homologado;
	}

	public int getEstrato() {
		return estrato;
	}

	public void setEstrato(int estrato) {
		this.estrato = estrato;
	}

	public Part getFoto() {
		return foto;
	}

	public void setFoto(Part foto) {
		this.foto = foto;
	}

	@Override
	public String toString() {
		return "Aspirante " + nombre + ", fecha de nacimiento: " + fecha + ", edad: " + edad +", estrato: " + estrato + ", colegio del que se graduo: " + colegio + ", carrera a la que aspira: " + carrera
				+ ", homologara: " + homologado + ", foto: " + foto + "<br>" ;
	}

	public String csv() {
		
		return nombre + ";" + fecha + ";" + edad + ";" + colegio + ";" + carrera + ";" + homologado + ";" + estrato
				+ "\n";
	}
	
	
	
	
}
