<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="Attendance.*" %>
<%@ include file="session.jsp" %>
<%
try{	
Connection con= DBconnection.getConnection();
int id=Integer.parseInt(st);
PreparedStatement pst1=con.prepareStatement("select * from leaveemployee where Empid=?");
pst1.setInt(1,id);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
if(rs.getString(5).equals("APPROVED"))
{
	%>
    <html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
	body{
	margin: 0 auto;
	background-image: url(pic1.png);
	background-repeat: no-repeat;
	background-size: 100%;
	object-fit:cover;
	}
		.heading h1{
	
		font-size:35px;
		
		border-radius:10px;
		background-color: #ffffcc;
	    color: black;
	  
	}
	.heading 
	{
	margin-top:160px;
	height:180px;
	width:500px;
	border-radius:20px;
	background-color:rgba(179, 179, 255,0.4);
	padding-top:75px;
	padding-left:50px;
	padding-right:50px;
	padding-bottom:26px;
    border:1px solid black;
	}
		</style>
	</head>
	<body bgcolor=grey ">
	<center><div class="heading"><h1>Request is Accepted<h1></center>
	</div>
	</body>  
	</center>
	</html>
	<% 
}
else 
{
	%>
    <html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
	body{
	margin: 0 auto;
	background-image: url(pic1.png);
	background-repeat: no-repeat;
	background-size: 100%;
	object-fit:cover;
	}
		.heading h1{
	
		font-size:35px;
		
		border-radius:10px;
		background-color: #ffffcc;
	    color: black;
	  
	}
	.heading 
	{
	margin-top:160px;
	height:180px;
	width:500px;
	border-radius:20px;
	background-color:rgba(179, 179, 255,0.4);
	padding-top:75px;
	padding-left:50px;
	padding-right:50px;
	padding-bottom:26px;
    border:1px solid black;
	}
		</style>
	</head>
	<body bgcolor=grey ">
	<center><div class="heading"><h1>Request is Accepted<h1></center>
	</div>
	</body>  
	</center>
	</html>
	<% 
}
}
}
catch(Exception e)
{
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