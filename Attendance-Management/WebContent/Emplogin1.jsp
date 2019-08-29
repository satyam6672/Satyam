<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page language="java" %>
<%@ page import="Attendance.*" %>
<%@ include file="session.jsp" %>
<%
try{
	
RequestDispatcher rd=null;
Connection c=null;
c=DBconnection.getConnection();
String str=request.getParameter("user");
session.setAttribute("USERID",str);
String psw=request.getParameter("pswd");
String SELECTQUERY="select * from Employee  where Empid=?";
PreparedStatement pst=c.prepareStatement(SELECTQUERY);
pst.setInt(1,Integer.parseInt(str));
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	String usrname=rs.getString(2);
	session.setAttribute("USERNAME",usrname);
	out.println("<div align=right>LOGINUSER:"+usrname+"</div>");
	//out.println("<div align=right><a href=http://localhost:8080/Attendance-Management/attendance.html>SignOut</a></div>");
if(rs.getString(3).equals(psw))
{
	if(rs.getString(11).equals("Approved"))
	{
	response.sendRedirect("http://localhost:8080/Attendance-Management/Employeechoice.jsp");
}
	else
	{
	
		response.sendRedirect("http://localhost:8080/Attendance-Management/NotRegisteredServlet");
	}
}
else
{
	response.sendRedirect("http://localhost:8080/Attendance-Management/WrongPasswordServlet");
}
}
}
catch(Exception e){
	out.println(e);
}

%>
