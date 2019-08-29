package Attendance;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class  ChooseAnyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
RequestDispatcher rd=null;
out.println("<center><h1><font color=darkvslate grey>Please Choose Any Option</font></h1></center>");
rd=request.getRequestDispatcher("Employeechoice.jsp");
rd.include(request, response);

}
}
