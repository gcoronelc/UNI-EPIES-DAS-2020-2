package pe.uni.taas.prueba;

import pe.uni.taas.service.LogonService;

public class Prueba02 {
	public static void main(String[] args) {
		try {
			LogonService service = new LogonService();
			service.validarUsuario("1010", "abc");
			System.out.println("Todo bien");

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}
}