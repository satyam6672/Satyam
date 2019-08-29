<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="Attendance.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session1.jsp" %>
<%
SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
Date date=new Date();
String dt=simpleDateFormat.format(date);	
out.println("<html><body bgcolor=thistle><form>");
out.println("<center><h1>Your Attendance is marked and will process soon</h1></center>");
out.println("<center><h1>Your Leaving Date and Time is this:"+dt+"</h1></center>");
out.println("</form></body></html>");
Connection con=DBconnection.getConnection();
String str=(String)(session.getAttribute("USERID"));
String MODIFYQUERY="select * from employeeattendance where Empid=?";
PreparedStatement pst=con.prepareStatement(MODIFYQUERY);
pst.setInt(1,Integer.parseInt(str));
ResultSet rs=pst.executeQuery();
while(rs.next())	
{
	String intime=rs.getString(2);
	String outtime=rs.getString(3);
	String SELECT="select timediff(?,?)";
	PreparedStatement pst1=con.prepareStatement(SELECT);
	pst1.setString(1,outtime);
	pst1.setString(2,intime);
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		String diff=rs1.getString(1);
	String INSERT="update employeeattendance set timedif=? where Empid=?";
	PreparedStatement pst2=con.prepareStatement(INSERT);
	pst2.setString(1, diff);
	pst2.setInt(2,Integer.parseInt(str));
	pst2.execute();
	}
	
}
PreparedStatement pst3=con.prepareStatement("select * from employee where Empid=?");
pst3.setInt(1,Integer.parseInt(str));
ResultSet rs3=pst3.executeQuery();
while(rs3.next())
{
	String dpt=rs3.getString(10);
String INSERT="update employeeattendance set department=? where Empid=?";
PreparedStatement pst4=con.prepareStatement(INSERT);
pst4.setString(1, dpt);
pst4.setInt(2,Integer.parseInt(str));
pst4.execute();
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