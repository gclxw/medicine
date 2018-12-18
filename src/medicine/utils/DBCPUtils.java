package medicine.utils;


import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;

public class DBCPUtils {
	// 驱动类名
	private static String classname = 
			"com.mysql.jdbc.Driver";
	// 数据库地址
	private static String url = "jdbc:mysql://139.199.62.246:3306/test?useSSL=true";
	private static String user = "root";
	private static String password = "root";
	//数据库连接池对象
	private static BasicDataSource dataSource = new BasicDataSource();
	
	static {
		try {
			Class.forName(classname);
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		// 配置连接池对象的信息
		dataSource.setUrl(url);
		dataSource.setUsername(user);
		dataSource.setPassword(password);
	}
	// 获取数据库连接池对象  
	public static DataSource getdataSoure() {
		return dataSource;
	}
		
	
}
