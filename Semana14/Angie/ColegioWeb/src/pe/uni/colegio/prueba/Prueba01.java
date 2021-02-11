package pe.uni.colegio.prueba;

import java.sql.Connection;

import pe.uni.colegio.db.AccesoDB;

public class Prueba01 {
	
	public static void main(String[] args) {
		try {
			Connection cn = AccesoDB.getConnection();
			System.out.println("Todo ok.");
			cn.close();
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}

}
