package pe.uni.taas.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import pe.uni.taas.db.AccesoDB;

public class LogonService {

	public void validarUsuario(String usuario, String clave) {

		Connection cn = null;
		String sql = "{call usp_validar_usuario(?,?,?,?)}";
		try {
			cn = AccesoDB.getConnection();
			CallableStatement cstm = cn.prepareCall(sql);
			cstm.setString(1, usuario);
			cstm.setString(2, clave);
			cstm.registerOutParameter(3, Types.INTEGER);
			cstm.registerOutParameter(4, Types.VARCHAR, 2000);
			cstm.execute();
			int codigo = cstm.getInt(3);
			String mensaje = cstm.getString(4);
			if (codigo == -1) {
				cstm.close();
				throw new SQLException(mensaje);
			}
			cstm.close();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} catch (Exception e) {
			throw new RuntimeException("Se ha producido un error en el proceso");
		} finally {
			try {
				cn.close();
			} catch (Exception e2) {
			}
		}

	} // Del metodo validarUsuario

} // De la clase

/*
 * rs.next(); empl = new Empleado(); empl.setCodigo(rs.getString("codigo"));
 * empl.setNombre(rs.getString("nombre"));
 * empl.setApellido(rs.getString("apellido"));
 * empl.setCelular(rs.getString("celular"));
 * empl.setCorreo(rs.getString("correo"));
 * empl.setUsuario(rs.getString("usuario"));
 * empl.setClave(rs.getString("clave")); rs.close();
 */