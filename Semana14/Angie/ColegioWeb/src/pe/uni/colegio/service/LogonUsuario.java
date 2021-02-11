package pe.uni.colegio.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import pe.uni.colegio.db.AccesoDB;
import pe.uni.colegio.model.Usuario;

public class LogonUsuario {

	public Usuario validarUsuario(String usuario, String clave) {
		Usuario empl = null;
		Connection cn = null;
		String sql = "{call usp_validar_usuario(?,?,?,?)}";
		try {
			cn = AccesoDB.getConnection();
			CallableStatement cstm = cn.prepareCall(sql);
			cstm.setString(1, usuario);
			cstm.setString(2, clave);
			cstm.registerOutParameter(3, Types.INTEGER );
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
			throw new RuntimeException("Se ha producido un error en el proceso.");
		} finally {
			try {
				cn.close();
			} catch (Exception e2) {
			}
		}
		return empl;
	}

}
