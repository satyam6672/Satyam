<%@page import="com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException"%>
<%@page import="java.text.Format"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="Attendance.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="session1.jsp" %>
<%
try{
	Connection c=null;
	c=DBconnection.getConnection();
	PreparedStatement pst=c.prepareStatement("select * from employeeattendance where Empid=?");
	pst.setInt(1,employeeid);
	ResultSet rs=pst.executeQuery();
	out.println("<center><h1>TABLE</h1></center>");
	out.println("<html><body bgcolor=Turquoise><center><table border=2 cellspacing=0><thead>");
	out.println("<tr><th>Empid</th><th>Intime</th><th>Outtime</th><th>Status</th><th>day</th><th>Department</th><th>Timedif</th></tr></thead>");
	out.println("<tbody border-radius=10px>");
	while(rs.next())
	{
	out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
	}		
	out.println("</tbody></table></center></body></html>");
	pst.close();

	out.println("<html><body><center><div style=margin:100px>");
	out.println("<form method=get action=markstatus.jsp><br><input type=radio name=r value=P required />Present<br><input type=radio name=r value=A required />Absent<br>");
	out.println("<input type=submit value=Mark />");	
	out.println("</form></div></center></body></html>");
	}
catch(ParseException e)
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