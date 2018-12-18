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
	//	��������
	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	//�õ���ģʽ�������ݿ����
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

	//�ر�Connection����
	public static void closeConnection(Connection conn) throws SQLException {
		
			try {
				if(conn != null)
					conn.close();
			} catch (SQLException e) {
				throw new SQLException("�ر�Connection����ʧ��");
			}
	}
	
	//�ر�Statement����
	public static void closeStatement(Statement stmt) throws SQLException {

		try {
			if(stmt != null) 
				stmt.close();
		} catch (SQLException e) {
			throw new SQLException("�ر�Statement����ʧ��");
		}

	}
	
	//�ر�Statement����
	public static void closeRestSet(ResultSet rs) throws SQLException {
		
			try {
				if(rs != null)
				rs.close();
			} catch (SQLException e) {
				throw new SQLException("�ر�ResultSet����ʧ��");
			}
	}
}
