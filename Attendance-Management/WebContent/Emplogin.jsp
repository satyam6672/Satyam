
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page language="java"%>
<%@ page import="Attendance.*"%>
<%@ include file="session.jsp"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
	out.println("<div align=right>LOGINID:" + st + "</div>");
	out.println(
			"<div align=right><a href=http://localhost:8080/Attendance-Management/attendance.html>SignOut</a></div>");
	try {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat DateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date dat = new Date();
		String today = DateFormat.format(dat);
		 int day = calendar.get(Calendar.DAY_OF_MONTH);
		String r1 = request.getParameter("signin");
		Connection c = DBconnection.getConnection();
		int emp = Integer.parseInt(st);
		
		PreparedStatement pst = c.prepareStatement("select * from employeeattendance where Empid=?");
		pst.setInt(1, Integer.parseInt(st));
		ResultSet rs = pst.executeQuery();
		if (r1.equals("in"))
		{
			if (rs.next()) {
				String sidate = rs.getString(2);
				
				int siday = Integer.parseInt(sidate.substring(8, 10));
				int id = rs.getInt(1);
				String status=rs.getString(4);
				if(siday==day)
				{
				if (emp == id) {
					out.println(
							"<center><h1><font color=darkvslate grey>You have already SignIn</font></h1></center>");
				}
				}
				else{
					
						response.sendRedirect("http://localhost:8080/Attendance-Management/Markattendance.jsp");
					}
				}
			else {

					response.sendRedirect("http://localhost:8080/Attendance-Management/Markattendance.jsp");
				}
			
		} else if (r1.equals("out")) {
			while(rs.next()) {
				String sodate=rs.getString(3);
				String sidate = rs.getString(2);
				if(sidate.equals("NULL"))
				{
					out.println("please first signIn");
				}
				else
				{
				int siday = Integer.parseInt(sidate.substring(8, 10));
				//int soday = Integer.parseInt(sodate.substring(8, 10));
				if(siday==day)
				{
				if ((rs.getString(3)).equals("null") ) {
					response.sendRedirect("http://localhost:8080/Attendance-Management/SignOut.jsp");
					
				}
				else{
					out.println(
							"<center><h1><font color=dark slate grey>You have already SignOut</font></h1></center>");
					out.println("tarun");
				}
				}
				else
				{
					out.println("you have not sign out previous day");
				}
				}
		}
	} 
	}catch (NullPointerException e) {
		out.println("<html><body bgcolor=grey>");
		out.println("<center><h1><u>Please select any option<u></h1></center>");
		out.println("</body></html>");
	}
%>
