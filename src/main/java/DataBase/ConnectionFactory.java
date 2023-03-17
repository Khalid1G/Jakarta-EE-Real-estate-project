package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionFactory {
	
	 public static final String URL = "jdbc:mysql://localhost:3306";
	 public static final String DB = "immobilier";
	 public static final String USER = "root";
	 public static final String PASSWORD = "";
	 public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver"; 

	private ConnectionFactory() throws SQLException {
	}

	private static Connection conn = null;

	public static Connection getInstance() {

		if (conn == null)
			try {
				Class.forName(DRIVER_CLASS);
				return DriverManager.getConnection(URL+"/"+DB,USER,PASSWORD);
	
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		return conn;
	}
	public static void closeConnexion(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	public static ResultSet read(String query) throws SQLException {
	        Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        try {
	        	conn = getInstance();
	            stmt = conn.createStatement();
	            rs = stmt.executeQuery(query);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (rs != null) {
	                    rs.close();
	                }
	                if (stmt != null) {
	                    stmt.close();
	                }
	                if (conn != null) {
	                    conn.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return rs;
	    }
	 
	 
}

