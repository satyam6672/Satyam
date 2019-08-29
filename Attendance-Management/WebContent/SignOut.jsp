<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="Attendance.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session.jsp" %>
<% 
int x=Integer.parseInt(st);
String str=(String)(session.getAttribute("USERID"));
out.println("<div align=right>LOGINUSER:"+str+"</div>");
out.println("<div align=right><a href=http://localhost:8080/Attendance-Management/attendance.html>SignOut</a></div>");

	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	Date date=new Date();
	String dt=simpleDateFormat.format(date);	
Attendancepojo obj2= new Attendancepojo();
AttendanceDAO dao=new AttendanceDAO();
obj2.setEmpid(x);
obj2.setOuttime(dt);
dao.updateAttendance(obj2);
response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/timediff.jsp");

%>