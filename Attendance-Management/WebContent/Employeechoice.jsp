
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@page import="HttpServletResponse.*" %>
<% 
SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss");
Date date=new Date();
String dt=simpleDateFormat.format(date);
//response.setIntHeader("Refresh",1);
%>
<html>
<head>
<style>
body{
	margin: 0 auto;
	background-repeat: no-repeat;
	background-size: 100%;
	object-fit:cover;

	
	background-image:linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)),url(login2.png);
	
}
.btn-submit{
        margin-top:-100px;
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
	margin-left:80%;
	margin-top:20px;
	margin-right:2px;
	border-radius:5px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	
	}
.button h2
{
text-color: yellogreen;
}
 input[type=radio] {
    border: auto;
    width: 50%;
    height: 2em;
    cursor:pointer;
}
.back
{

   width:930px;
	height:380px;
	text-align:center;
	margin: 0 auto;
	margin-left:188px;
	margin-top:44px;

	border-radius:8px;
	background-color:rgba(0, 0, 0,0.5);
	border: 1px solid gold;
	 
}
h2 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 5px grey, 0 0 5px darkblue;
 border-radius:2px;
}
.button input:hover{
	 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	background-color:rgba(128, 255, 255,0.8);
	border:2px solid gold;
}
.button4 input:hover{
	 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	background-color:rgba(128, 255, 255,0.8);
	border:2px solid gold;
}

h1 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 5px grey, 0 0 5px darkblue;
  background-color:rgba(179, 179, 255,0.5);
  border-radius:2px;
    border: 2px solid white; 
}
.btn-submit4{
	margin-left:9px;
	font-size:30px;
	border-radius:10px;
	width:200%;
	 background-color:rgba(179, 179, 255,0.5);
  color: black;
  border: 2px solid gold;
   box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.btn-submit5{
   margin-left:38%;
	font-size:25px;
	border-radius:10px;
	width:25%;
	 background-color: rgba(128, 255, 255,0.6);
  color: black;
  border: 2px solid gold;
   
}
.button input:hover{
 
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.first{
float:left;
margin-left:62px;
}
.second{
float:left;
margin-left:270px;
}
.button4{
margin-top:300px;
margin-left:400px;
margin-right:478px;
}
</style>
</head>
<body>
<% 
out.println("<input type=submit value="+dt+" class=btn-submit5 />");
%>

<div class="session">
 <%
    out.println("<h2>LoginUser:"+username+"<h2>");
   %>
 </div>
<div class="button">
  <form method="get" action="Attendance.jsp">
	<input type="submit" value="PreviousPage" class="btn-submit"/>
	</form>
	<form method="get" action="logout1.jsp">
	<input type="submit" value="SignOut" class="btn-submit1"/>
	</form>
	</div>
	<div class="back">
	<div class="first">
<form method="get" action="empradiooption.jsp">

<input type="radio" name="choice" value="ma" required /><b><h1>Mark Attendance</h1></b><br>
<input type="radio" name="choice"  value="lr" required /><b><h1>Leave Request</h1></b><br>
</div>
<div class="second">
<input type="radio" name="choice" value="rr" required /><b><h1>Resignation Request</h1></b><br>
<input type="radio" name="choice" value="ls" required /><b><h1>Leave Status</h1></b><br>
</div>
<div class="button4">
<input type="submit" value="Select"  class="btn-submit4" />
</div>
</div>
</form>
</div>
</body>
</html>

