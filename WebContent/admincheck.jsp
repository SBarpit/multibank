
<%@ page import="java.sql.*" %>
<%

String name=request.getParameter("name");
String pwd=(String)request.getParameter("pwd");
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/multibank","root","root");
	int ind=0;
    
if((name.equals("admin"))&&(pwd.equals("admin"))){
 response.sendRedirect("adminhome.jsp");
}else{response.sendRedirect("adminfailure.jsp");}


	%>