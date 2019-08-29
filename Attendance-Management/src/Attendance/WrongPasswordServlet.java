package Attendance;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WrongPasswordServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
RequestDispatcher rd=null;
out.println("<html>");
out.println("<head>");
out.println("<style type=text/css>");
out.println("body{");
out.println("margin: 0 auto");
out.println("background-image: url(pic1.png)");
out.println("background-repeat: no-repeat;");
out.println("background-size: 100%;");
out.println("object-fit:cover;");
out.println("}");
out.println(".heading h1{");
out.println("font-size:35px;");
out.println("border-radius:10px;");
out.println("background-color: #ffffcc;");
out.println(" color: black;");
out.println("}");
out.println(".heading ");
out.println("{");
out.println("margin-top:160px;");
out.println("height:180px;");
out.println("width:500px;");
out.println("border-radius:20px;");
out.println("background-color:rgba(179, 179, 255,0.4);");
out.println("padding-top:75px;");
out.println("padding-left:50px;");
out.println("padding-right:50px;");
out.println("padding-bottom:26px;");
out.println("border:1px solid black;");
out.println("</style>");
out.println("</head>");
out.println("<body bgcolor=grey>");
out.println("<center><div class=heading><h1>This Page is under construction.We update you soon<h1></center>");
out.println("</div>");
out.println("</body> ");
out.println("</center>");
out.println("</html>");
rd=request.getRequestDispatcher("attendance.html");
rd.include(request, response);

}
}s
