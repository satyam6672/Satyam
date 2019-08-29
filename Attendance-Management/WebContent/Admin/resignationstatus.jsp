<%@ include file="Adminsession.jsp" %>
<%@page import="java.io.*" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="Attendance.*" %>
<%
try{	
Connection con= DBconnection.getConnection();
int id=Integer.parseInt(request.getParameter("id"));
String choice=request.getParameter("choice");
PreparedStatement pst1=con.prepareStatement("select * from resignation where Empid=?");
pst1.setInt(1,id);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
if(id==(rs.getInt(1)))
{
if(choice.equals("approve")){
PreparedStatement pst=con.prepareStatement("update resignation set Status=? where Empid=?" );
	pst.setString(1,"Approved");
	pst.setInt(2,id);
	pst.execute();
	out.println("Employee Approved");	
}
else 
{
	PreparedStatement pst3=con.prepareStatement("update resignation set Status=? where Empid=?" );
	pst3.setString(1,"Rejected");
	pst3.setInt(2,id);
	pst3.execute();
	out.println("Employee Rejected");	
}
}
else
{
	response.sendRedirect("http://localhost:8080/Attendance-Management/WrongIdServlet");
}
}
}
catch(Exception e)
{
	out.println(e);
}
%> 

