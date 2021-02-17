package pe.uni.taas.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.uni.taas.service.LogonService;

@WebServlet({ "/Ingresar", "/Salir" })
public class LogonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getServletPath();
		switch (path) {
		case "/Ingresar":
			ingresar(request, response);
			break;
		case "/Salir":
			salir(request, response);
			break;
		}
	}

	private void salir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	private void ingresar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Datos
		String usuario = request.getParameter("username");
		String clave = request.getParameter("password");
		// Proceso
		String destino;
		try {
			LogonService service = new LogonService();
			service.validarUsuario(usuario, clave);
			destino = "main.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "index.jsp";
		}
		// FORWARD
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);

	}

}
