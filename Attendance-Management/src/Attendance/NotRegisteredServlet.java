package Attendance;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NotRegisteredServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
RequestDispatcher rd=null;
out.println("<center><h1>You are not Registered</h1></center>");
out.println("<center><h1>Access Denied by Admin</h1></center>");
rd=request.getRequestDispatcher("attendance.html");
rd.include(request, response);

}
}
