<%@ include file="Adminsession.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0 auto;
	background-image: url(login1.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	object-fit:cover;
	background-color:grey;
	background-image:linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)),url(login1.jpg);
	
}
input[type=radio] {
    border: auto;
    width: 25%;
    height: 2em;
    cursor:pointer;

}

.button input:hover{

  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.button{
margin-top:-20px;
margin-left:15px;
}
h4 {
font-size:30px;
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 10px grey, 0 0 5px darkblue;
  background-color:rgba(179, 179, 255,0.5);
border-radius:5px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.btn-submit1{
		padding: 5px 150px 8px 8px;
		font-size:22px;
		border-radius:10px;
		width:30px;
		background-color: #e5ffff;
	    color: black;
	    border: 2px solid black;
	    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

	.button1{
	margin-top:10px;
	}
div{
margin-top: -7px;
}
.first{
float:left;
margin-left:70px;

}
.second{
float:left;
margin-left:170px;
}
.btn-submit{
	margin-left:20px;
	font-size:25px;
	border-radius:10px;
	margin-top:-20px;
	width:20%;
	 background-color:rgba(179, 179, 255,0.5);
  color: black;
   border: 2px solid gold;
   box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.back
{

   width:700x;
	height:420px;
	text-align:center;
	margin: 0 auto;
	margin-left:170px;
	margin-top:2px;
    margin-right:170px;
	border-radius:8px;
	background-color:rgba(0, 0, 0,0.3);
	border: 1px solid gold;
	 
}
.btn-submit2{
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
	  border: 2px solid gold;
}
.button1 input:hover{
	 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	background-color:rgba(128, 255, 255,0.8);
	  border: 2px solid gold;
}

.session{
	margin-left:85%;
	background-color: #e5ffff;
	border-radius:5px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	
	}

</style>
</head>
<body bgcolor=grey style="padding-left:20px">
<div class="session">
 <%
    out.println("<h2>LoginUser:"+st+"</h2>");
   %>
 </div>
<div class="button1">
	<form method="get" action="admin.jsp">
	<input type="submit" value="PreviousPage" class="btn-submit1"/>
	</form>
	</form>
	<form method="get" action="Adminlogout.jsp">
	<input type="submit" value="SignOut" class="btn-submit2"/>
	</form>
	</div>
<center>
<form method="get" action="Selectradio.jsp">
<div class="back">
<div class=first>
<input type="radio" name="tf1" value="newemployeeapproval" class="radioinput" required /><h4>New Employee Approval</h4><br>
<input type="radio" name="tf1" value="attendanceapproval" class="radioinput" required /><h4>Attendance Approval</h4><br>
</div>
<div class=second>
<input type="radio" name="tf1" value="Leaveapproval" class="radioinput" required /><h4>Leave Approval</h4><br>
<input type="radio" name="tf1" value="resignationapproval" class="radioinput" required /><h4>Resignation Approval</h4><br><br>
</div>

<div class="button">
<input type="submit" value="GET RECORD" class="btn-submit"/><br>
</div>
</form>
</center>
</body>
</html>