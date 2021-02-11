package pe.uni.colegio.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import pe.uni.colegio.service.RegistroService;

@WebServlet({ "/Registrar alumno", "/ghhh" })
public class RegistroController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getServletPath();
		switch (path) {
		case "/Registrar alumno":
			registroalumno(request, response);
			break;
		}

	}

	private void registroalumno(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String destino;
		try {
			// Datos
			String idalumno = request.getParameter("idalumno");
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String dni = request.getParameter("dni");
			String fecnac = request.getParameter("fecnac");
			String paisOrigen = request.getParameter("paisOrigen");
			String ciudad = request.getParameter("ciudad");
			String provincia = request.getParameter("provincia");
			String celular = request.getParameter("celular");
			String direccion = request.getParameter("direccion");
			String institucionprevia = request.getParameter("institucionprevia");
			String sexo = request.getParameter("sexo");
			String estado = request.getParameter("estado");
			String emergencia = request.getParameter("emergencia");
			// Proceso
			RegistroService service = new RegistroService();
			service.registroalumno(idalumno, nombre, apellido, dni, fecnac, paisOrigen, ciudad, provincia, celular, direccion, institucionprevia, sexo, estado, emergencia);
			destino = "registroalumno.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "registoalumno.jsp";
		}
		// Forward
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

}

