package pe.uni.colegio.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import pe.uni.colegio.db.AccesoDB;

public class RegistroService {

	public void registroalumno(String idalumno,String nombre,String apellido,String dni, String fecnac, String paisOrigen, String ciudad, String provincia, String celular,String direccion,String institucionprevia, String sexo, String estado,String emergencia) {
		Connection cn = null;
		String sql = "{call usp_registro_alumno(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		try {
			cn = AccesoDB.getConnection();
			CallableStatement cstm = cn.prepareCall(sql);
			cstm.setString(1, idalumno);
			cstm.setString(2, nombre);
			cstm.setString(3, apellido);
			cstm.setString(4, dni);
			cstm.setString(5, fecnac);
			cstm.setString(6, paisOrigen);
			cstm.setString(7, ciudad);
			cstm.setString(8, provincia);
			cstm.setString(9, celular);
			cstm.setString(10, direccion);
			cstm.setString(11, institucionprevia);
			cstm.setString(12, sexo);
			cstm.setString(13, estado);
			cstm.setString(14, emergencia);
			cstm.registerOutParameter(15, Types.INTEGER );
			cstm.registerOutParameter(16, Types.VARCHAR, 2000);
			cstm.execute();
			int codigo = cstm.getInt(15);
			String mensaje = cstm.getString(16);
			if (codigo == -1) {
				cstm.close();
				throw new SQLException(mensaje);
			}
			cstm.close();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} catch (Exception e) {
			throw new RuntimeException("Ya existe este usuario");
		} finally {
			try {
				cn.close();
			} catch (Exception e2) {
			}
		}
	}
}
