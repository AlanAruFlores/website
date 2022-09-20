package dato;
import java.sql.*;

public class Conexion {
	private static final String JDBC_URL="jdbc:mysql://localhost:3306/dbGame";
	private static final String JDBC_USER="root";
	private static final String JDBC_PASSWORD="pachan242";
	
	public static Connection getConexion() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
	}
	public static void cerrarConexiones(ResultSet rs, PreparedStatement stmt, Connection conn) throws SQLException{
		rs.close();
		stmt.close();
		conn.close();
	}
	public static void cerrarConexiones(PreparedStatement stmt, Connection conn) throws SQLException{
		stmt.close();
		conn.close();
	}
}
