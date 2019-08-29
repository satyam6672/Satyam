
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%@ page import="Attendance.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="session.jsp"%>
<%
	try {
		Connection c = DBconnection.getConnection();
		String s1 = request.getParameter("td");
		int x = Integer.parseInt(st);

		SimpleDateFormat DateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date dat = new Date();
		String today = DateFormat.format(dat);
		int day = Integer.parseInt(today.substring(8, 10));
		int month = Integer.parseInt(today.substring(5, 7));
		int year = Integer.parseInt(today.substring(0, 4));
		String str = (String) (session.getAttribute("USERNAME"));
		out.println("<div align=right>LOGINUSER:" + username + "</div>");
		out.println(
				"<div align=right><a href=http://localhost:8080/Attendance-Management/attendance.html>SignOut</a></div>");
		PreparedStatement pst = c.prepareStatement("select * from leaveemployee where Empid=?");
		pst.setInt(1, x);
		ResultSet rs = pst.executeQuery();
		if (s1.equals("timedate")) {

			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			Date date = new Date();
			String dt = simpleDateFormat.format(date);
			Attendancepojo obj = new Attendancepojo();
			AttendanceDAO dao = new AttendanceDAO();
			obj.setEmpid(x);
			obj.setIntime(dt);
			dao.insertAttendance(obj);
			out.println("<html><body bgcolor:grey>");
			out.println("<center><h1>Your Request will process soon</h1></center>");
			out.println("</body></html>");

		}
	}

	catch (NullPointerException e) {
		out.println("<html><body bgcolor:grey>");
		out.println("<center><h1><u>Please select any option<u></h1></center>");
		out.println("</body></html>");
	}
%>
