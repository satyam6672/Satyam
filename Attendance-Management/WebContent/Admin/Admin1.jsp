<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page language="java" %>
<%@ page import="Attendance.*" %>
<%
try{
	
RequestDispatcher rd=null;
Connection c=null;
c=DBconnection.getConnection();
String str=request.getParameter("user");
session.setAttribute("ADMINID",str);
String psw=request.getParameter("pswd");
String SELECTQUERY="select * from Admin";
PreparedStatement pst=c.prepareStatement(SELECTQUERY);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	
if(rs.getString(1).equals(str) && rs.getString(2).equals(psw))
{
	response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/Adminselect.jsp");
}
else
{
	response.sendRedirect("http://localhost:8080/Attendance-Management/AdminWrongPasswordServlet");
}
}
}
catch(Exception e){
	out.println(e);
}

%>
