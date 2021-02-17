package LogonService;

public class ClienteService {

	public void Registro(Integer IDCLIENTE, String NOMBRE, String IDTIPODOC, String NRODOC, String DIRECCION, 
			String CELULAR, String CORREO) {

		Connection cn = null;
		String sql = "{call USP_INSERT_CLIENT(?,?,?,?,?,?,?)}";
		try {
			cn = AccesoDB.getConnection();
			CallableStatement cstm = cn.prepareCall(sql);
			cstm.setInteger(1, IDCLIENTE);
			cstm.setString(2, NOMBRE);
			cstm.setString(3, IDTIPODOC);
			cstm.setString(4, NRODOC);
			cstm.setString(5, DIRECCION);
			cstm.setString(6, CELULAR);
			cstm.setString(7, CORREO);
			cstm.registerOutParameter(8, Types.INTEGER);
			cstm.registerOutParameter(9, Types.VARCHAR, 2000);
			cstm.execute();
			int codigo = cstm.getInt(3);
			String mensaje = cstm.getString(5);
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

	}
}
