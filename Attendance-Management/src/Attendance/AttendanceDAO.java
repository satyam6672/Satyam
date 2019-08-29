package Attendance;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;


public class AttendanceDAO {
		Connection con=null;
		PreparedStatement stmt;
		public AttendanceDAO() throws ClassNotFoundException, SQLException
		{
			con=DBconnection.getConnection();
		}
	public void insertAttendance(Attendancepojo obj) throws SQLException
	{
		String INSERTQUERY="insert into EmployeeAttendance values(?,?,?,?,?,?,?)";
		stmt=con.prepareStatement(INSERTQUERY);
				stmt.setInt(1,obj.getEmpid());
				stmt.setString(2,obj.getIntime());
			    stmt.setString(3,"null");
			    stmt.setString(4,"NO");
			    stmt.setDouble(5,0.0);
			    stmt.setString(6, "NULL");
			    stmt.setString(7, "NULL");
				stmt.execute();
				stmt.close();
	}
	public void updateAttendance(Attendancepojo obj1) throws SQLException
	{
		String UPDATEQUERY="update EmployeeAttendance set Outtime=? where Empid=?";
		stmt=con.prepareStatement(UPDATEQUERY);
		stmt.setString(1,obj1.getOuttime());
		stmt.setInt(2,obj1.getEmpid());
		stmt.execute();
	}


}
