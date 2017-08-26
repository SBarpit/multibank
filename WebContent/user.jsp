<%@ page import ="java.sql.*" %>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{

}
</script>
<BODY bgcolor=#FFFFFF>

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2>Multi Banking System</b></h2></font>
<br>
 



<form  method=post action="usercheck.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <td>
<tr><td><h3>Select Bank</td><td><SELECT NAME="bname"> 
<% 
Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/multibank","root","root");
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
				  
<%}%>
  </SELECT></td></tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="back " onClick="window.location='login.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home " onClick="window.location='home.jsp'">

 </form>
<center><a href="otherbanknewac.jsp"><h2>New User &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create Account</h2> </a>

<br><center><BR><BR>

</center>

</BODY>
</HTML>
