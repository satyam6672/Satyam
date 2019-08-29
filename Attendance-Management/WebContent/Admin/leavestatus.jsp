<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session1.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="Attendance.*" %>
<%
try{
	Connection c=null;
	c=DBconnection.getConnection();
	String R=request.getParameter("id");
	String choice=request.getParameter("r");
	PreparedStatement pst=c.prepareStatement("select * from leaveemployee");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		if(choice.equals("A"))
		{
		if(rs.getString(1).equals(R))
		{
			PreparedStatement pst1=c.prepareStatement("update leaveemployee set status=? where empid=?");
			pst1.setString(1,"APPROVED");
			pst1.setInt(2,Integer.parseInt(R));
			pst1.execute();
			out.println("<center><b><i><font color=slate grey>Leave Approved</font></i></b></center>");
		}
		}
		else
		{
			PreparedStatement pst2=c.prepareStatement("update leaveemployee set status=? where empid=?");
			pst2.setString(1,"REJECTED");
			pst2.setInt(2,Integer.parseInt(R));
			pst2.execute();
			out.println("<center><b><i><font color=slate grey>Leave Rejected</font></i></b></center>");
		}
		
		}
	}
catch(Exception e)
{
	out.println(e);
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