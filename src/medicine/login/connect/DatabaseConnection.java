package medicine.login.connect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://139.199.62.246:3306/test?useSSL=true";
	private static final String userName = "root";
	private static final String password = "root";
	private static Connection con;
	//	加载驱动
	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	//用单例模式返回数据库对象
	public static Connection getConnection() throws SQLException {
		if(con == null) {
			con = DriverManager.getConnection(url,userName,password);
			return con;
		}
		return con;
	}

	public static Boolean closeConnection() {
		if(con != null) 
			return true;
		return false;
	}

	//关闭Connection对象
	public static void closeConnection(Connection conn) throws SQLException {
		
			try {
				if(conn != null)
					conn.close();
			} catch (SQLException e) {
				throw new SQLException("关闭Connection对象失败");
			}
	}
	
	//关闭Statement对象
	public static void closeStatement(Statement stmt) throws SQLException {

		try {
			if(stmt != null) 
				stmt.close();
		} catch (SQLException e) {
			throw new SQLException("关闭Statement对象失败");
		}

	}
	
	//关闭Statement对象
	public static void closeRestSet(ResultSet rs) throws SQLException {
		
			try {
				if(rs != null)
				rs.close();
			} catch (SQLException e) {
				throw new SQLException("关闭ResultSet对象失败");
			}
	}
}
