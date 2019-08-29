package Attendance;
import java.sql.*;
public class DBconnection {
	public static Connection getConnection() throws SQLException, ClassNotFoundException//Connection return an instance of Connection interface
	
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Attendance","root","root");
		return c;
	}

}
