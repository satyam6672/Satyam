<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session1.jsp" %>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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
	Connection c=null;
	c=DBconnection.getConnection();
	PreparedStatement pst=c.prepareStatement("select * from leaveemployee where Status=?");
	pst.setString(1,"NO");
	ResultSet rs=pst.executeQuery();
	%>
	<!DOCTYPE html>
	<html>
	<head>
	<style>
	.head
	{
	width:50%;
	
	margin-left:25%;
	border-radius:4px;
	
	}
	</style>
	</head>
	<body>
	<div class="head">
	<center>
     <h2>Employee Leave Table<h2>
     </center>
     </div>
	</body>
	</html>
	<% 
	out.println("<html><head><style>#customers tr:nth-child(even){background-color: #ddd;} #customers tr:hover {background-color: #f2f2f2;}</style></head>");
	out.println("<body><center><table id=customers cellpadding=10px border=1 cellspacing=0 ><thead bgcolor=#726E6D>");
	out.println("<tr><th>EmployeeId</th><th>FromDate</th><th>ToDate</th><th>Reason For leave</th><th>Status</th></tr></thead>");
	out.println("<tbody border-radius=10px>");
	while(rs.next())
	{
	out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
	}		
	out.println("</tbody></table></center></body></html>");
	pst.close();
%>
<html>
<head>
<style>
.head 
{

width:50%;
background-color: rgba(179, 179, 255,0.4);
margin-left:25%;
border-radius:4px;

}
.btn-submit3{
   margin-left:20px;
	padding: 5px 79px 8px 8px;
	font-size:22px;
	border-radius:10px;
	width:30px;
	background-color: orange;
   color: black;
   border: 2px solid black;
}
	input[type=radio] {
    border: auto;
    width: 25%;
    height: 1em;
    cursor:pointer;
}
</style>
</head>
<body>
<div class="head">
<center>
<h2>Enter Employee Id<h2>
<% 
out.println("<form method=get action=leavestatus.jsp>");
%>
<input type=text name=id style=font-size:14pt pattern=[0-9]{3}  /><br><br>
<input type=radio name=r value=A required />Approve
<input type=radio name=r value=R required />Reject
<input type="submit" value="Submit" class="btn-submit3"/>
<% 
	out.println("</form></div></center></body></html>");
		}
catch(Exception e)
{
	out.println(e);
}
%>
