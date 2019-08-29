<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page language="java" %>
<%@ page import="Attendance.*" %>
<%
 String option=request.getParameter("tf1");
if(option.equals("newemployeeapproval"))
{
	response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/Employeeapproval.jsp");
}
else if(option.equals("attendanceapproval")){
	response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/Attendanceapproval.jsp");
}

else if(option.equals("Leaveapproval")){
	response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/Leaveapproval.jsp");
}
else if(option.equals("resignationapproval")){
	response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/resignationupdate.jsp");
}
else
	out.println("Please select any option");
%>