<%@ page import="java.io.*" %>
<%@ page language="java" %>
<%
Object o=session.getAttribute("USERID");
String st=(String)o;
Object name=session.getAttribute("USERNAME");
String username=(String)name;
Object ob=session.getAttribute("EMPID");
int employeeid=(Integer)ob;
%>