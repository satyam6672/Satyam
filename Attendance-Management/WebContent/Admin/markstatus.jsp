
<%@page import="java.text.Format"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="Attendance.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="session1.jsp" %>
<%
Connection c=null;
c=DBconnection.getConnection();
String choice=request.getParameter("r");
PreparedStatement pst=c.prepareStatement("select * from employeeattendance where Empid=?");
pst.setInt(1,employeeid);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	PreparedStatement pst1=c.prepareStatement("update employeeattendance set Status=? where Empid=?");
	double day=rs.getDouble(5);
if(choice.equals("P") && (day==1.0 || day==0.5) )
{
	pst1.setString(1,"PRESENT");
	pst1.setInt(2,employeeid);
	pst1.execute();
	out.println("Present marked");
}
else
{

	pst1.setString(1,"ABSENT");
	pst1.setInt(2,employeeid);
	pst1.execute();
	out.println("Absent marked");
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