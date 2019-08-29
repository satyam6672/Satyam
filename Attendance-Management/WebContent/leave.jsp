<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ include file="session.jsp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="Attendance.*" %>
<% 
SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss");
Date date=new Date();
String dt=simpleDateFormat.format(date);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave request</title>
<link rel="stylesheet" href="http://localhost:8080/Attendance-Management/leave.css" />
</head>
<body>
<center>
<div class="session">
 <%
    out.println("<h2>LoginUser:"+username+"<h2>");
   %>
 </div>
<div class="button">
  <form method="get" action="Employeechoice.jsp">
	<input type="submit" value="PreviousPage" class="btn-submit"/>
	</form>
	<form method="get" action="logout1.jsp">
	<input type="submit" value="SignOut" class="btn-submit1"/>
	</form>
</div>
<div class="container">
<form method="get" action="leavestore.jsp" name="RegForm" onsubmit="return validation()">
<h1>Employee Leave Form</h1>
<h2>From Date</h2>
<input type="text" name="fdate" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" placeholder="yyyy-mm-dd" style="font-size:14pt" required /><br>
<h2>To Date</h2>
<input type="text" name="tdate" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" placeholder="yyyy-mm-dd" style="font-size:14pt" required /><br>
<h2>Reason For Taking Leave</h2>
<textarea rows="5" cols="50" name="reason" style="overflow:hidden"></textarea><br><br>
<div class="login">
<input type="submit" value="SUBMIT"  class="bt-login" />
</div>
</form>
</div>
</center>
</body>
</html>