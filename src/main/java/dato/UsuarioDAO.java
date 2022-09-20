package dato;
import static dato.Conexion.*;
import java.sql.*;
import clases.Usuario;
import java.util.*;
public class UsuarioDAO {
	private static final String JDBC_ORDER = "SELECT  nombre, puntos FROM usuarios ORDER BY puntos desc";
	private static final String JDBC_INSERT ="INSERT INTO usuarios (nombre) VALUES (?)";
	private static final String JDBC_UPDATEPOINTS ="UPDATE usuarios SET puntos = puntos + ? WHERE id = ?";
	private static final String JDBC_SELECT = "SELECT id FROM usuarios WHERE nombre = ? ";
	public List<Usuario> getUsuarios() throws SQLException, ClassNotFoundException{
		Connection conexion = getConexion();
		PreparedStatement stmt = conexion.prepareStatement(JDBC_ORDER);
		ResultSet rs = stmt.executeQuery();
		List<Usuario> listaUsuarios = new ArrayList<>();
		while(rs.next()) {
			listaUsuarios.add(new Usuario(rs.getString("nombre"),rs.getInt("puntos")));
		}
		cerrarConexiones(rs,stmt,conexion);
		return listaUsuarios;
	}
	public boolean insertarUsuario(Usuario usuarioNuevo)throws SQLException, ClassNotFoundException{
		Connection conexion = getConexion();
		PreparedStatement stmt = conexion.prepareStatement(JDBC_INSERT);
		stmt = conexion.prepareStatement(JDBC_INSERT);
		stmt.setString(1, usuarioNuevo.getNombre());
		int registroAfectado = stmt.executeUpdate();

		cerrarConexiones(stmt,conexion);
		return (registroAfectado != 0)? true : false;
	}
	public void establecerPuntos(int id, int puntos) throws SQLException, ClassNotFoundException
	{
		Connection conn = getConexion();
		PreparedStatement stmt = conn.prepareStatement(JDBC_UPDATEPOINTS);
		stmt.setInt(1, puntos);
		stmt.setInt(2, id);
		stmt.executeUpdate();
		cerrarConexiones(stmt, conn);
	}
	public boolean seleccionarUsuario(Usuario usuario) throws SQLException, ClassNotFoundException{
		Connection conexion = getConexion();
		PreparedStatement stmt = conexion.prepareStatement(JDBC_SELECT);
		stmt.setString(1,usuario.getNombre());
		ResultSet rs = stmt.executeQuery();
		boolean registroEncontrado = false;
		while(rs.next()) {
			Usuario.idSeleccionado = rs.getInt(1);
			registroEncontrado = true;
		}
		cerrarConexiones(rs,stmt,conexion);
		return registroEncontrado;
	}
}
