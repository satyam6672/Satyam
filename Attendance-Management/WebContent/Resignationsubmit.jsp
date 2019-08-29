<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="session.jsp"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="Attendance.*"%>
<%
try{
	Connection c = null;
	c = DBconnection.getConnection();
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	Date date = new Date();
	String dt = simpleDateFormat.format(date);
	String empid = request.getParameter("id");
	int emp = Integer.parseInt(empid);
	String empname = request.getParameter("name");
	String reason = request.getParameter("Reason");
			PreparedStatement pst1 = c.prepareStatement("insert into resignation values(?,?,?,?,?)");
			pst1.setInt(1, emp);
			pst1.setString(2, empname);
			pst1.setString(3, reason);
			pst1.setString(4, dt);
			pst1.setString(5, "NOT UPDATED");
			pst1.execute();
	}
catch(Exception e){
	out.println(e);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>