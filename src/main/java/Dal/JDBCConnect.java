package Dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnect {
	public static Connection connection;
	public JDBCConnect() {
	
	}
	
	public static synchronized Connection getConnection() {
		if(connection != null) return connection;
		else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/ttcs";
				String use = "root";
				String pass= "123456";
				connection = (Connection) DriverManager.getConnection(url, use, pass);
				return connection;
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return connection;
	}
	
	public static synchronized void closeConnection() {
		if(connection != null) {
			try {
				connection.close();
			} catch (Exception e) {
				
			}
			finally {
				connection = null;
			}
		}
	}
}
