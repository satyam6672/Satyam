<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="Attendance.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="session1.jsp" %>
    <%
    try{
    Connection con=DBconnection.getConnection();
    String id=request.getParameter("id");
    int empid=Integer.parseInt(id);
    session.setAttribute("EMPID", empid);
    int totalsec=0;
    PreparedStatement pst=con.prepareStatement("select * from employeeattendance where Empid=?");
    pst.setInt(1,empid);
    ResultSet rs=pst.executeQuery();
    while(rs.next())
    {
    	PreparedStatement pst1=con.prepareStatement("update employeeattendance set day=? where Empid=?");
    	String timedif=rs.getString(7);
    	String nu=timedif.substring(0,2);
    	if(nu.equals("NU"))
    	{
    		pst1.setDouble(1,0);
    		pst1.setInt(2,empid);
    		pst1.execute();
    	}
    	else
    	{
    	int hr=Integer.parseInt(nu);
    	int min=Integer.parseInt(timedif.substring(3,5));
    	int sec=Integer.parseInt(timedif.substring(6,8));
    	 totalsec=(hr*3600)+(min*60)+(sec);
    	
        
    	if(totalsec>=32400)
    	{
    		pst1.setDouble(1,1.0);
    		pst1.setInt(2, empid);
    		pst1.execute();
    	}
    	else if(totalsec>=18000 && totalsec<32400)
    	{
    		pst1.setDouble(1,0.5);
    		pst1.setInt(2,empid);
    		pst1.execute();
    	}
    	else
    	{
    		pst1.setDouble(1,0);
    		pst1.setInt(2,empid);
    		pst1.execute();
    	}
    	}
    	pst1.close();
    }
    response.sendRedirect("http://localhost:8080/Attendance-Management/Admin/Dayupdation.jsp");
    }
    catch(NumberFormatException e)
    {
    	out.println("Please enter a id ");
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