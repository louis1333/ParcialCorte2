package co.edu.unbosque.model;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import co.edu.unbosque.model.persistence.FileHandler;
import jakarta.servlet.http.Part;

public class AspiranteDAO {

	private ArrayList<AspiranteDTO> asp;
	private FileHandler fh;
	private static final String archivo = "aspirantes.csv";

	public AspiranteDAO() {

		fh = new FileHandler();
		asp = new ArrayList<>();
		cargarCSV();

	}

	public void agregar(String nombre, String fecha, String edad, String colegio, String carrera, String homologado, int estrato, Part foto) {
		AspiranteDTO nuevo = new AspiranteDTO(nombre, fecha, edad, colegio, carrera, homologado, estrato, foto);
		asp.add(nuevo);
		 String contenido = "";
			for (AspiranteDTO v : asp) {
				 contenido += v.getNombre() + ";" + v.getFecha() + ";" + v.getEdad() + ";" + v.getColegio() + ";" + v.getCarrera() + ";"  + v.getHomologado() + ";" + v.getEstrato() + ";"  + v.getFoto() + "\n";
				 
			}
			fh.writeFile(archivo, contenido);
	}

	public String calcularEdad(String fecha) {
		String rta = "";

		DateTimeFormatter formato = DateTimeFormatter.ofPattern(fecha);
		LocalDate date = LocalDate.parse(fecha);
		LocalDate date1 = LocalDate.now();
		Period cal = Period.between(date, date1);

		int anios = cal.getYears();
		int meses = cal.getMonths();
		int dias = cal.getDays();

		rta = anios + " anios " + meses + " meses " + dias + " dias";

		return rta;
	}

	public String mostrar() {
		String rta = "";

		for (int i = 0; i < asp.size(); i++) {

			rta += asp.get(i).toString();
		}

		return rta;
	}

	public String mostrarCarrera(String carrera) {
		String rta = "";

		for (int i = 0; i < asp.size(); i++) {

			if (asp.get(i).getCarrera().equals(carrera)) {
				rta += asp.get(i).toString();
			}
		}

		return rta;
	}

	public AspiranteDTO buscar(String nombre) {

		AspiranteDTO bus = null;
		for (int i = 0; i < asp.size(); i++) {
			if (asp.get(i).getNombre().equals(nombre)) {
				bus = asp.get(i);
			}
		}

		return bus;
	}

	public String eliminar(String nombre) {
		  AspiranteDTO eliminado = null;
		    for (AspiranteDTO aspirante : asp) {
		        if (aspirante.getNombre().equals(nombre)) {
		            eliminado = aspirante;
		            break;
		        }
		    }
		    if (eliminado != null) {
		        asp.remove(eliminado);
		        String contenido = "";
		        for (AspiranteDTO v : asp) {
		            contenido += v.getNombre() + ";" + v.getFecha() + ";" + v.getEdad() + ";" + v.getColegio() + ";" + v.getCarrera() + ";" + v.getHomologado() + ";" + v.getEstrato() + ";" + v.getFoto() + "\n";
		        }
		        fh.writeFile(archivo, contenido);
		        return "Aspirante eliminado exitosamente.";
		    } else {
		        return "El aspirante que intenta eliminar no se encuentra en la lista.";
		    }
	}

	public String actualizarCarrera(String nombre, String carrera, String homologar) {
		  AspiranteDTO actualizado = null;
		    for (AspiranteDTO aspirante : asp) {
		        if (aspirante.getNombre().equals(nombre)) {
		            actualizado = aspirante;
		            break;
		        }
		    }
		    if (actualizado != null) {
		        actualizado.setCarrera(carrera);
		        actualizado.setHomologado(homologar);
		        String contenido = "";
		        for (AspiranteDTO v : asp) {
		            contenido += v.getNombre() + ";" + v.getFecha() + ";" + v.getEdad() + ";" + v.getColegio() + ";" + v.getCarrera() + ";" + v.getHomologado() + ";" + v.getEstrato() + ";" + v.getFoto() + "\n";
		        }
		        fh.writeFile(archivo, contenido);
		        return "Aspirante actualizado exitosamente.";
		    } else {
		        return "El aspirante que intenta actualizar no se encuentra en la lista.";
		    }
}
	
	public void cargarCSV() {
		ArrayList<AspiranteDTO> aux = new ArrayList<>();
	    String contenido = fh.loadFile(archivo);
	    String[] lineas = contenido.split("\\n");
	    for (String linea : lineas) {
	        String[] campos = linea.split(";");
	        AspiranteDTO aspirante = new AspiranteDTO(campos[0], campos[1], campos[2], campos[3], campos[4], campos[5], Integer.parseInt(campos[6]), null);
	        asp.add(aspirante);
	        System.out.println(contenido);
	    }
	}
}