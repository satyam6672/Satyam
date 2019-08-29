<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="Attendance.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.session{
	margin-left:80%;
	margin-top:20px;
	margin-right:2px;
	border-radius:5px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	}
	h2{
 color:skyblue;
  text-shadow: 1px 1px 2px black, 0 0 5px grey, 0 0 5px darkblue;
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
</center></body></html>
<% 
    Connection c=null;
    c=DBconnection.getConnection();
    String fromdate=request.getParameter("fdate");
    int fday = Integer.parseInt(fromdate.substring(8, 10));
    int fmonth = Integer.parseInt(fromdate.substring(5, 7));
    String todate=request.getParameter("tdate");
	int tday = Integer.parseInt(todate.substring(8, 10));
	int tmonth = Integer.parseInt(todate.substring(5, 7));
    String leavereason=request.getParameter("reason");
    if(fmonth==tmonth)
    {
    	if((fday<tday) && ((tday-fday)<=10))
    	{
    PreparedStatement pst=c.prepareStatement("insert into leaveemployee values(?,?,?,?,?)");
    pst.setInt(1,Integer.parseInt(st));
    pst.setString(2,fromdate);
    pst.setString(3,todate); 
    pst.setString(4,leavereason);
    pst.setString(5,"NO");
    pst.execute();
    out.println("<center><h1><i><font color=Green>Your Leave Request Will Process Soon</font></i></h1></center>");
    	}
    	else
    	{
    		out.println("End Date must not be before Start Date.");
    		out.println("Or you have applied for More than ten days leave.");
    	}
    }
    else if(fmonth<tmonth)
    {
    	if(tmonth-fmonth==1)
    	{
    	if((30-(fday-tday))<=10)
    	{
    		 PreparedStatement pst=c.prepareStatement("insert into leaveemployee values(?,?,?,?,?)");
    		    pst.setInt(1,Integer.parseInt(st));
    		    pst.setString(2,fromdate);
    		    pst.setString(3,todate); 
    		    pst.setString(4,leavereason);
    		    pst.setString(5,"NO");
    		    pst.execute();
    		    out.println("<center><h1><i><font color=Green>Your Leave Request Will Process Soon</font></i></h1></center>");
    	}
    	else
    	{
    		out.println("You exceed the leave limit,You cannot take leave of more than ten days");
    	}
    	}
    	else
    	{
    		out.println("You exceed the leave limit,You cannot take leave of more than ten days");
    	}
    		
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>