package Attendance;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WrongIdServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
RequestDispatcher rd=null;
	out.println("<center><h1>Please enter correct employee id</h1></center>");
	//out.println("<center><h1>Please Try Again</h1></center>");
	rd=request.getRequestDispatcher("Admin/resignationupdate.jsp");
	rd.include(request, response);

}
}
