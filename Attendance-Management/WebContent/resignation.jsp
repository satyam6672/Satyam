<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="session.jsp" %>
    <%@ page import="Attendance.*" %>
    <%@ page import="java.sql.*" %>

    <%
    try {
    	Connection con= DBconnection.getConnection();
		PreparedStatement pst=con.prepareStatement("select * from employee where Empid=?");
		pst.setInt(1,Integer.parseInt(st));
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave request</title>
  <!--  <script type="text/javascript">
function validation(){
	var accept1=document.forms["RegForm"]["id"];
	var accept2=document.forms["RegForm"]["name"];
	if(accept1.value!=accept2.value || psw.value=""){
		window.alert("Please enter correct password");
		return false;	
	}

	
}
</script>-->
<head>
<style type="text/css">
.container{

	width:500px;
	height:525px;
	text-align:center;
	margin: 0 auto;
	
	margin-top:-8%;
	box-shadow: 0 0 20px 0 Gray;
	border-radius:8px;
	background-color:rgba(0, 0, 0,0.5);
	 }
	 .btn-submit{
		padding: 5px 150px 8px 8px;
		 margin-left:-86%;
		font-size:22px;
		margin-top:-100px;
		border-radius:10px;
		width:30px;
		background-color: #e5ffff;
	    color: black;
	    border: 2px solid black;
	    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
input[type="text"]{
	margin-top:5px;
	width:300px;
	height:30px;
	font-size:18px;
	margin-bottom:5px;
	background-color:rgba(179, 179, 255,0.2);
	padding-left:40px;
	border-radius:13px;
	border: 2px solid #D1D0CE;
	box-shadow: 0 0 20px 0 #34282C;
	color:white;
}
input hover[type="text"]{
	color:black;
	background-color: white;
	}
 select{
	margin-top:5px;
	width:350px;
	height:30px;
	font-size:18px;
	margin-bottom:5px;
	background-color:rgba(179, 179, 255,0.2);
	padding-left:40px;
	border-radius:13px;
	border: 2px solid #D1D0CE;
	box-shadow: 0 0 20px 0 #34282C;
	color:black;
}
  select hover{
	color:black;
	background-color: white;
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
.button input:hover{
	 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	background-color:rgba(128, 255, 255,0.8);
	border:2px solid gold;
	}
	
	 .session{
	margin-left:80%;
	margin-top:20px;
	margin-right:2px;
	border-radius:5px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	}
	body{
	margin: 0 auto;
	background-image: url(satyam2.png);
	background-repeat: no-repeat;
	background-size: cover;
	object-fit:cover;
	
}
	h1 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 5px grey, 0 0 5px darkblue;
  background-color:rgba(128, 255, 255,0.6);
  border-radius:8px;

}
h2{
 color:skyblue;
  text-shadow: 1px 1px 2px black, 0 0 5px grey, 0 0 5px darkblue;
 }
 .bt-login{
	padding: 10px 25px;
	border: 1px solid gold;
	background-color:rgba(179, 179, 255,0.7);
	color:black;
	border-radius:70px;
	width:150px;
	font-size:20px;
	
}
</style>
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
<form method="get" action="Resignationsubmit.jsp" name="RegForm" onsubmit="return validation()">
<h1>Employee Resignation Form</h1><br>
<h2>Employee Id</h2>
<input type="text" name="id" value="<%=rs.getInt(1)%>" disabled />
<input name="id" value="<%=rs.getInt(1)%>" type="hidden" /><br>
<h2>Employee Name</h2>
<input type="text" name="name" value="<%=rs.getString(2)%>" readonly="readonly" /><br>

<h2>Reason for Leave</h2>
<select name="Reason">
<option value="No Reason">Choose Reason</option>
<option value="Looking for a new challenge">Looking for a new challenge</option>
<option value="Looking for part time time job">Looking for part time time job</option>
<option value="Working environment is not comfortable">Working environment is not comfortable</option>

<option value="Moving to new city">Moving to new city</option>
<option value="Other Reason">Other Reason</option>
</select><br><br><br>
<div class="button">
<input type="submit" value="SUBMIT" class=bt-login /><br>
<input name="name" value="<%=rs.getInt(2)%>" type="hidden" /><br>
</div>
</form>
</div>
</center>
</body>
</html>
<%}
}
catch(Exception e){
out.println(e);
}
%>