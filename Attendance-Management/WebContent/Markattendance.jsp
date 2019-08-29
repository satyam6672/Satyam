<%@ page import="java.util.*" %>
<%@ include file="session.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% 
SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MMM-dd:hh:mm:ss");
Date date=new Date();
String dt=simpleDateFormat.format(date);
out.println(dt);
out.println("<div align=right>LOGINUSER:"+username+"</div>");
out.println("<div align=right><a href=http://localhost:8080/Attendance-Management/attendance.html>SignOut</a></div>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 input[type=checkbox] {
    border: 0px;
    width: 100%;
    height: 2em;
}
h1 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px grey, 0 0 5px darkblue;
}
.btn-submit{
	padding: 10px 150px 15px 15px;
	
	
	font-size:18px;
	border-radius:10px;
	width:80px;
	 background-color: white;
  color: black;
  border: 2px solid #696969;
}
.button input:hover{
 

  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body bgcolor="lightsteelblue">
<form method="get" action="SignIn.jsp">
<center><h1>Attendance:</h1><input type="checkbox" name="td" value="timedate"/></center><br>
<div class="button">
<center><input type="submit" value="Mark Attendance" class="btn-submit"/><br></center>
</div>
</form>
</body>
</html>