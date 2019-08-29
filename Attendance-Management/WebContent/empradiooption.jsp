<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="session.jsp"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="Attendance.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.session {
	margin-left: 80%;
	margin-top: 20px;
	margin-right: 2px;
	border-radius: 5px;
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

h2 {
	color: skyblue;
	text-shadow: 1px 1px 2px black, 0 0 5px grey, 0 0 5px darkblue;
}

.btn-submit {
	padding: 5px 150px 8px 8px;
	margin-left: -86%;
	font-size: 22px;
	margin-top: -100px;
	border-radius: 10px;
	width: 30px;
	background-color: #e5ffff;
	color: black;
	border: 2px solid black;
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.btn-submit1 {
	margin-left: 92%;
	padding: 5px 90px 8px 8px;
	font-size: 22px;
	border-radius: 10px;
	width: 30px;
	background-color: #e5ffff;
	color: black;
	border: 2px solid black;
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
	<center>
		<div class="session">
			<%
				out.println("<h2>LoginUser:" + username + "<h2>");
			%>
		</div>
		<div class="button">
			<form method="get" action="Employeechoice.jsp">
				<input type="submit" value="PreviousPage" class="btn-submit" />
			</form>
			<form method="get" action="logout1.jsp">
				<input type="submit" value="SignOut" class="btn-submit1" />
			</form>
		</div>
	</center>
</body>
</html>
<%
	Connection c = DBconnection.getConnection();
	int x = Integer.parseInt(st);

	SimpleDateFormat DateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Date dat = new Date();
	String today = DateFormat.format(dat);
	int day = Integer.parseInt(today.substring(8, 10));
	int month = Integer.parseInt(today.substring(5, 7));
	int year = Integer.parseInt(today.substring(0, 4));
	String op1 = request.getParameter("choice");
	PreparedStatement pst = c.prepareStatement("select * from leaveemployee where Empid=?");
	pst.setInt(1, x);
	ResultSet rs = pst.executeQuery();

	if (op1.equals("ma")) {
	/*	if (rs.next()) {

			String status = rs.getString(5);
			String fdate = rs.getString(2);
			String tdate = rs.getString(3);
			int fday = Integer.parseInt(fdate.substring(8, 10));
			int fmonth = Integer.parseInt(fdate.substring(5, 7));
			int fyear = Integer.parseInt(fdate.substring(0, 4));
			int tday = Integer.parseInt(tdate.substring(8, 10));
			int tmonth = Integer.parseInt(tdate.substring(5, 7));
			int tyear = Integer.parseInt(tdate.substring(0, 4));
			if (status.equals("APPROVED") && (fday <=day && day >= tday)
					&& (fmonth <= month && month >= tmonth) && (fyear <= year && year > =tyear)) {
			
				out.println(
						"<center><h1><i><font color=blue green>You cannot mark your attendance as you are on leave</font></i></h1></center>");

			}

			else {
				response.sendRedirect("http://localhost:8080/Attendance-Management/Signinout.jsp");
			}
	     }*/
           response.sendRedirect("http://localhost:8080/Attendance-Management/Signinout.jsp");
	} 
	else if (op1.equals("lr")) {
		if ((rs.next()) == false) {

			response.sendRedirect("http://localhost:8080/Attendance-Management/leave.jsp");
		}

		else {
			String status = rs.getString(5);
			String fdate = rs.getString(2);
			String tdate = rs.getString(3);
			int fday = Integer.parseInt(fdate.substring(8, 10));
			int fmonth = Integer.parseInt(fdate.substring(5, 7));
			int fyear = Integer.parseInt(fdate.substring(0, 4));
			int tday = Integer.parseInt(tdate.substring(8, 10));
			int tmonth = Integer.parseInt(tdate.substring(5, 7));
			int tyear = Integer.parseInt(tdate.substring(0, 4));
			if ((status.equals("APPROVED")) && ((fmonth == month) && (month == tmonth))) {
				if ((fday <= day && day <= tday) && ((tday - fday) <= 10)) {
					out.println(
							"<center><h1><i><font color=army brown>You are already on Leave</font></i></h1></center>");
				} else {
					out.println("tarun");
				}
			} else if (status.equals("APPROVED") && (fmonth <= month && month <= tmonth)) {
				if (((fday <= day || fday >= day) && (day <= tday || day >= tday))
						&& ((30 - (fday - tday)) <= 10)) {

					out.println(
							"<center><h1><i><font color=army brown>You are already on Leave</font></i></h1></center>");
				} else {
					out.println("ashish");
				}
			} else {
				out.println("Your Leave Request Is Not Approved Yet");
			}
		}
	}

	else if (op1.equals("rr")) {
		PreparedStatement pst1 = c.prepareStatement("select * from resignation where Empid=?");
		pst1.setInt(1, x);
		ResultSet rs1 = pst1.executeQuery();
		if (rs1.next()) {
			int id = rs1.getInt(1);
			if (id == x) {
				out.println(
						"<center><h1><font color=slate grey>You have already applied for Resignation.</font></h1></center>");
				out.println(
						"<center><h1><font color=slate grey>Your Resignation Request Will Be Process Soon.</font></h1></center>");

			} else {
				response.sendRedirect("http://localhost:8080/Attendance-Management/resignation.jsp");
			}
		} else {
			response.sendRedirect("http://localhost:8080/Attendance-Management/resignation.jsp");
		}

	} else if (op1.equals("ls")) {
		PreparedStatement pst1 = c.prepareStatement("select * from leaveemployee where Empid=?");
		pst1.setInt(1, x);
		ResultSet rs1 = pst.executeQuery();

		while (rs1.next()) {
			int emp = rs1.getInt(1);
			if (x == emp) {

				response.sendRedirect("http://localhost:8080/Attendance-Management/Leavestatus.jsp");
			} 
			

				out.println("Please choose valid option");
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