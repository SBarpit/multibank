<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/multibank","root","root");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into 