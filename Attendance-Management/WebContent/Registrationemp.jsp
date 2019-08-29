<%@ page import="empregistration.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
int empid=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String pswd=request.getParameter("password");
String cpswd=request.getParameter("c-password");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
int day=Integer.parseInt(request.getParameter("date"));
int year=Integer.parseInt(request.getParameter("year"));
String month=request.getParameter("month");
String dpt=request.getParameter("dpt");
String secques=request.getParameter("question");
String  secans=request.getParameter("answer");
String dob=day+"-"+month+"-"+year;
try{
	EmpRegistration obj=new EmpRegistration();
	EmpRegistrationDAO dao=new EmpRegistrationDAO();
	obj.setEmpid(empid);
	obj.setEmpname(name);
	obj.setPswd(pswd);
	obj.setEmail(email);
	obj.setContact(contact);
	obj.setAddress(address);
	obj.setDob(dob);
	obj.setDept(dpt);
	obj.setSecques(secques);
	obj.setSecans(secans);
	dao.insertNewEmployee(obj);
	%>
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">

	body{
	margin: 0 auto;
	background-image: url(pic3.png);
	background-repeat: no-repeat;
	background-size: 100%;
	object-fit:cover;
	}
	.heading h1{
	
		font-size:35px;
		
		border-radius:10px;
		background-color:khaki;
	    color: black;
	  
	}
	.heading 
	{
	margin-top:160px;
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
	<center><div class="heading"><h1>You are successfully registered. your id is<h1></center>
	</div>
	</body>  
	</html>
<% 	
}
catch(Exception e)
{
	out.println(e);
	
}
%>
