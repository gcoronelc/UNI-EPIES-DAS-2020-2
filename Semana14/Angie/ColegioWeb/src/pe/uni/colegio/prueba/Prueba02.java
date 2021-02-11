package pe.uni.colegio.prueba;

import java.sql.Connection;

import pe.uni.colegio.db.AccesoDB;
import pe.uni.colegio.model.Usuario;
import pe.uni.colegio.service.LogonUsuario;

public class Prueba02 {
	
	public static void main(String[] args) {
		try {
			LogonUsuario service = new LogonUsuario();
			service.validarUsuario("jimena", "12345");
			System.out.println("Todo bien.");
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}

}