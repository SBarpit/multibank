
<%@ page import="java.sql.*" %>
<%

 
 	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/multibank","root","root");
	int ind=0;
    String cid=request.getParameter("cid");
    String pwd=request.getParameter("pwd");
session.setAttribute("cid",cid);
session.setAttribute("pwd",pwd);
   PreparedStatement st=con.prepareStatement("select * from clogin where cid=? and pwd=?");
	st.setString(1,cid);
	st.setString(2,pwd);
	ResultSet rs=st.executeQuery(); 
	if(rs.next()){
 		ind=rs.getInt(4);
 	
if(ind==1){		 
	session.setAttribute("id",cid);
	response.sendRedirect("user.jsp");
}else{response.sendRedirect("process.jsp");}

}else{ response.sendRedirect("loginfailure.jsp");}
	%>