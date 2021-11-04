package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	 protected static Connection initializeDatabase()throws SQLException, ClassNotFoundException
	    {
	        // Database Connection
	        String dbDriver = "com.mysql.jdbc.Driver";
	        String dbURL = "jdbc:mysql:// localhost:3306/";
	        String dbName = "company";
	        String dbUsername = "root";
	        String dbPassword = "16110152";
	  
	        Class.forName(dbDriver);
	        Connection con = DriverManager.getConnection(dbURL + dbName,
	                                                     dbUsername, 
	                                                     dbPassword);
	        return con;
	    }
}
