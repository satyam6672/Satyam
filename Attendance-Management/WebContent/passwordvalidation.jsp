<%@ page import="java.util.*"%>
<%@ page import="Attendance.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="session1.jsp"%>
<% 
  try {
		Connection c = DBconnection.getConnection();
  String s3 = request.getParameter("p");
	String s4 = request.getParameter("c");
	int Empid=Integer.parseInt(st);
	if(s3.equals(s4))
	{
		PreparedStatement pst2=c.prepareStatement("update employee set password=? where Empid=?");
		pst2.setString(1,s3);
		pst2.setInt(2,Empid);
		pst2.execute();
		%>
			
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
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
	background-color:skyblue;
	padding-top:75px;
	padding-left:50px;
	padding-right:50px;
    border:1px solid black;
	}
		</style>
	</head>
	<body bgcolor=grey ">
	<center><div class="heading"><h1>Password changed successfully<h1></center>
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
	background-color:skyblue;
	padding-top:75px;
	padding-left:50px;
	padding-right:50px;
	padding-bottom:25px;
    border:1px solid black;
	}
		</style>
	</head>
	<body bgcolor=grey ">
	<center><div class="heading"><h1>Password and confirmpassword should be same<h1></center>
	</div>
	</body>  
	</center>
	</html>

	
	
	<% 	
	}
  }
catch(Exception e)
{
	out.println(e);
}
	%>
<html>
