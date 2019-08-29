package empregistration;

import java.sql.*;

public class EmpRegistrationDAO {
	Connection con=null;
	PreparedStatement stmt;
	String status="N";
	public EmpRegistrationDAO() throws ClassNotFoundException, SQLException
	{
		con=DBconnection.getConnection();
	}
public void insertNewEmployee(EmpRegistration obj) throws SQLException
{
	String INSERTQUERY="insert into Employee values(?,?,?,?,?,?,?,?,?,?,?)";
	stmt=con.prepareStatement(INSERTQUERY);
			stmt.setInt(1,obj.getEmpid());
			stmt.setString(2, obj.getEmpname());
			stmt.setString(3, obj.getPswd());
			stmt.setString(4, obj.getEmail());
			stmt.setString(5, obj.getContact());
			stmt.setString(6, obj.getAddress());
			stmt.setString(7, obj.getDob());
			stmt.setString(8, obj.getSecques());
			stmt.setString(9, obj.getSecans());
			stmt.setString(10, obj.getDept());
			stmt.setString(11,status);
			stmt.execute();
			stmt.close();
}

}
