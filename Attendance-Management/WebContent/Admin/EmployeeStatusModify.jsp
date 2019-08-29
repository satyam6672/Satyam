<%@ include file="Adminsession.jsp" %>
<%@page import="java.io.*" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="Attendance.*" %>
<html>
<head>
<style>
body{
	margin: 0 auto;
	background-image: url(pic1.png);
	background-repeat: no-repeat;
	background-size: 100%;
	object-fit:cover;
	background-color:grey;
	
	
}
.btn-submit{
		padding: 5px 150px 8px 8px;
		font-size:22px;
		border-radius:10px;
		width:30px;
		background-color: #e5ffff;
	    color: black;
	    border: 2px solid black;
	    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.btn-submit1{
        margin-left:92%;
		padding: 5px 90px 8px 8px;
		font-size:22px;
		border-radius:10px;
		width:30px;
		background-color: #e5ffff;
	    color: black;
	    border: 2px solid black;
	    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

.session{
	margin-left:85%;
	background-color: #e5ffff;
	border-radius:5px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	
	}
.button h2
{
text-color: yellogreen;
}
</style>
</head>
<body>
<div class="session">
 <%
    out.println("<h2>LoginUser:"+st+"<h2>");
   %>
 </div>
<div class="button">
  <form method="get" action="Adminselect.jsp">
	<input type="submit" value="PreviousPage" class="btn-submit"/>
	</form>
	<form method="get" action="Adminlogout.jsp">
	<input type="submit" value="SignOut" class="btn-submit1"/>
	</form>
	</div>
</body>
</html>
<% 
try{	
Connection con= DBconnection.getConnection();
int id=Integer.parseInt(request.getParameter("id"));
String choice=request.getParameter("choice");
PreparedStatement pst1=con.prepareStatement("select * from employee where Status=? " );
pst1.setString(1,"N");
ResultSet rs1= pst1.executeQuery();
while(rs1.next() && (rs1.getInt(1)==id)) 
{
if(choice.equals("approve")){
	Connection con1= DBconnection.getConnection();
PreparedStatement pst2=con1.prepareStatement("update employee set Status=? where Empid=?" );
	pst2.setString(1,"Approved");
	pst2.setInt(2,id);
	pst2.execute();
	%>
	
	<html>
	<head>
	<style type="text/css">
		.heading h1{
	
		font-size:35px;
		
		border-radius:10px;
		background-color: rgba(179, 179, 255,0.4);
	    color: black;
	  
	}
	.heading 
	{
	height:180px;
	width:500px;
	border-radius:20px;
background-color:rgba(128, 255, 255,0.4);
	padding-top:75px;
	padding-left:50px;
	padding-right:50px;
	padding-bottm:25px;
    border:1px solid black;
	}
		</style>
	</head>
	<body >
	<center><div class="heading"><h1>Employee Approved<h1></center>
	</div>
	</body>  
	
	</html>

<% 

}
else 
{
	Connection con2= DBconnection.getConnection();
	PreparedStatement pst3=con2.prepareStatement("update employee set Status=? where Empid=?" );
	pst3.setString(1,"Rejected");
	pst3.setInt(2,id);
	pst3.execute();
	%>
	
	
	<html>
	<head>
	<style type="text/css">
		.heading h1{
	
		font-size:35px;
		
		border-radius:10px;
		background-color: rgba(179, 179, 255,0.4);
	    color: black;
	  
	}
	.heading 
	{
	height:180px;
	width:500px;
	border-radius:20px;
	background-color:rgba(128, 255, 255,0.4);
	padding-top:75px;
	padding-left:50px;
	padding-right:50px;
	padding-bottm:25px;
    border:1px solid black;
	}
		</style>
	</head>
	<body >
	<center><div class="heading"><h1>Employee Rejected<h1></center>
	</div>
	</body>  

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

