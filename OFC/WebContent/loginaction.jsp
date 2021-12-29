<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
         <%@page import="Project.ConnectionProvider" %>
     
<%
String Username=request.getParameter("Username");
String Password=request.getParameter("Password");
if("admin".equals(Username)&& "admin".equals(Password))
{
	session.setAttribute("Username",Username);
	response.sendRedirect("signup.jsp");
}
else{
int z=0;
try{
	Connection con= ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from registertable where Username ='"+Username+"'and Password='"+Password+"'");
	while(rs.next())
	{
		z=1;
		session.setAttribute("Username",Username);
		response.sendRedirect("home.jsp");
	}
	if(z==0)
		response.sendRedirect("login.jsp?msg=notexist");
	
}
catch(Exception e)
{
	out.println(e);
	response.sendRedirect("login.jsp?msg=invalid");
}
}
%>