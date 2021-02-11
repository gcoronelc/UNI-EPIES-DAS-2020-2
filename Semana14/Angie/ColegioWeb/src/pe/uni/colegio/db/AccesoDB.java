package pe.uni.colegio.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AccesoDB {
	private AccesoDB() {
	}

	public static Connection getConnection() throws SQLException {
		Connection cn = null;
		try {
			// Paso 1: Cargar el driver a memoria
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			// Paso 2: Obtener el objeto Connection
			String url = "jdbc:sqlserver://localhost:1433;databaseName=COLEGIO";
			cn = DriverManager.getConnection(url, "sa", "sql");
		} catch (SQLException e) {
			throw e;
		} catch (ClassNotFoundException e) {
			throw new SQLException("No se encontr� el driver de la base de datos.");
		} catch (Exception e) {
			throw new SQLException("No se puede establecer la conexi�n con la BD.");
		}
		return cn;
	}

}

