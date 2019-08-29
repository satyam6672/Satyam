<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ include file="session.jsp"%>
<%
try
{
	int EmprID=Integer.parseInt(st);
%>
<html>
<head>
<style>
.box
{
width: 380px;
padding:40px;
position:absolute;
top:70px;
left:33%;
background-color: rgba(173, 173, 133,0.5);
text-align:center;
box-shadow: 0 12px 16px 0 rgba(0, 0, 0,0.3), 0 17px 50px 0 rgba(0, 0, 0,0.3);
}
.box h1{
color:blue;
text-transform: uppercase;
font-weight: 500;
}
.box input[type="text"],.box input[type="password"],.box select{
border:0;
background:white;
display:block;
margin:20px auto;
text-align:center;
border:2px solid black;
padding:14px 10px;
width:200px;
outline:none;
color:black;
border-radius: 24px;
transition: 0.25s;
}
.box input[type="text"]:focus,.box input[type="password"]:focus{
width:280px;
border-color:blue;
}
.box input[type="submit"]{
border:0;
background:skyblue;
display:blcok;
margin:20px auto;
text-align:center;
border:2px solid black;
padding:14px 40px;
outline:none;
color:black;
border-radius: 24px;
cursor: pointer;
}
.box input[type="submit"]:hover{
background:blue;
}
</style>
</head>
<body bgcolor="powderblue">
<form method="get" action=newpassword.jsp>

<div class="box">
<h1>Select your Secret Question:</h1>
<select name="question" required>
<option value="null">select</option>
<option value="What is your first school?">What is your first school?</option>
<option value="What is your first pet?">What is your first pet?</option>
<option value="What is my last name?">What is my last name?</option>
</select><br>
<h1>Answer:</h1><input type="text" name="answer" required/>
<div id="sub" class="button">
<input type="submit" value="submit" />
</div>
</form>
</body>
</html>
<%	
}
catch(NumberFormatException e)
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
		<center><div class="heading"><h1>Something went wrong .Please login atleast one time<h1></center>
		</div>
		</body>  
		</center>
		</html>
<% 
}
 %>