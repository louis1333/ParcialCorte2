
import java.io.IOException;
import java.io.PrintWriter;

import co.edu.unbosque.model.AspiranteDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {

	private AspiranteDAO asp;

	public FormServlet() {

		asp = new AspiranteDAO();
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String mos = req.getParameter("mos");
		if (mos.equals("Manejar Aspirantes")) {
			resp.sendRedirect("Mostrar.jsp");
			
		}else if(mos.equals("Mostrar")) {
			resp.setContentType("text/html");

			PrintWriter out = resp.getWriter();

			out.println("<html> <head> <title>Aspirante por carrera</title>");
			out.println("<link\r\n"
					+ "	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\"\r\n"
					+ "	rel=\"stylesheet\"\r\n"
					+ "	integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\"\r\n"
					+ "	crossorigin=\"anonymous\">\r\n" + "<script\r\n"
					+ "	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js\"\r\n"
					+ "	integrity=\"sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe\"\r\n"
					+ "	crossorigin=\"anonymous\"></script> </head> <body>");
			out.println("<h2 class=\"alert alert-primary\">Lista de aspirantes por carrera</h2>");
			out.println("<br>");
			out.println(asp.mostrar());
			out.println("</body> </html>");
			
		} else if (mos.equals("Mostrar por carrera")) {

			resp.setContentType("text/html");
			String carrera = req.getParameter("carreraS");
			PrintWriter out = resp.getWriter();

			out.println("<html> <head> <title>Aspirante por carrera</title>");
			out.println("<link\r\n"
					+ "	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\"\r\n"
					+ "	rel=\"stylesheet\"\r\n"
					+ "	integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\"\r\n"
					+ "	crossorigin=\"anonymous\">\r\n" + "<script\r\n"
					+ "	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js\"\r\n"
					+ "	integrity=\"sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe\"\r\n"
					+ "	crossorigin=\"anonymous\"></script> </head> <body>");
			out.println("<h2 class=\"alert alert-info\">Lista de aspirantes por carrera</h2>");
			out.println("<br>");
			out.println(asp.mostrarCarrera(carrera));
			out.println("</body> </html>");
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		
		String met = req.getParameter("send");
		if(met.equals("Enviar")) {
			
		String name = req.getParameter("nombre");
		String date = req.getParameter("fecha");
		String edad = asp.calcularEdad(date);
		String school = req.getParameter("colegio");
		String major = req.getParameter("carrera");
		String hom = req.getParameter("homologar");
		int est = Integer.parseInt(req.getParameter("estrato"));
//		Part photo = req.getPart("foto");

		PrintWriter out = resp.getWriter();

		asp.agregar(name, date, edad, school, major, hom, est, null);
		out.println("<html> <head> <title>Aspirante agregado</title>");
		out.println("<link\r\n"
				+ "	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\"\r\n"
				+ "	rel=\"stylesheet\"\r\n"
				+ "	integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\"\r\n"
				+ "	crossorigin=\"anonymous\">\r\n" + "<script\r\n"
				+ "	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js\"\r\n"
				+ "	integrity=\"sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe\"\r\n"
				+ "	crossorigin=\"anonymous\"></script> </head> <body>");
		out.println("<h2 class=\"alert alert-success\">El aspirante fue agregado exitosamente </h2>");
		out.println("</body> </html>");
		
		} else if(met.equals("Eliminar")) {
			
			String nameDelete = req.getParameter("nomEliminar");
			
			PrintWriter out = resp.getWriter();
			
			out.println("<html> <head> <title>Aspirante agregado</title>");
			out.println("<link\r\n"
					+ "	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\"\r\n"
					+ "	rel=\"stylesheet\"\r\n"
					+ "	integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\"\r\n"
					+ "	crossorigin=\"anonymous\">\r\n" + "<script\r\n"
					+ "	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js\"\r\n"
					+ "	integrity=\"sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe\"\r\n"
					+ "	crossorigin=\"anonymous\"></script> </head> <body>");
			out.println("<h2 class=\"alert alert-danger\">Aspirante eliminado</h2> <br>");
			out.println(asp.eliminar(nameDelete));
			out.println("</body> </html>");
		
		}else if(met.equals("Actualizar")) {
			
			String nameUpdate = req.getParameter("nomActualizar");
			String majorUpdate = req.getParameter("carreraUpdate");
			String homUpdate = req.getParameter("homologarAct");
			
PrintWriter out = resp.getWriter();
			
			out.println("<html> <head> <title>Aspirante agregado</title>");
			out.println("<link\r\n"
					+ "	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\"\r\n"
					+ "	rel=\"stylesheet\"\r\n"
					+ "	integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\"\r\n"
					+ "	crossorigin=\"anonymous\">\r\n" + "<script\r\n"
					+ "	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js\"\r\n"
					+ "	integrity=\"sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe\"\r\n"
					+ "	crossorigin=\"anonymous\"></script> </head> <body>");
			out.println("<h2 class=\"alert alert-warning\">Aspirante actualizado</h2> <br>");
			out.println(asp.actualizarCarrera(nameUpdate, majorUpdate, homUpdate));
			out.println("</body> </html>");
		}

	}

}
