package pe.uni.taas.prueba;

import java.sql.Connection;

import pe.uni.taas.db.AccesoDB;

public class Prueba01 {

	public static void main(String[] args) {
		try {
			Connection cn = AccesoDB.getConnection();
			System.out.println("Todo Ok");
			cn.close();
			} catch (Exception e) {
			System.err.println(e.getMessage());
	
		}
	}
}