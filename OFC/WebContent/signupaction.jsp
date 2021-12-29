<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <body>
    <%
 
    
    try
    {
    	Connection con=ConnectionProvider.getCon();
    	Statement st= con.createStatement(); 
    	   String name=request.getParameter("name");
    	    String email=request.getParameter("email");
    	    String Username=request.getParameter("Username");
    	    String Password=request.getParameter("Password");
    	String strQuery = "SELECT COUNT(*) FROM registertable where Username='"+Username+"'";
    	ResultSet rs = st.executeQuery(strQuery);
    	rs.next();
    	String Countrow = rs.getString(1);
    	out.println(Countrow);
    	if(Countrow.equals("0")){
    	int i=st.executeUpdate("insert into registertable(name,email,Username,Password)values('"+name+"','"+email+"','"+Username+"','"+Password+"')");
    	response.sendRedirect("login.jsp?msg=valid");
    	}
    	else{
    	out.println("User Username already exists !");
    	%>
    	<center>
    <td><a href="signup.jsp"><h3>TRY AGAIN</h3></a></td>
    </center> 
    	<% 
    	}
    	
    }
    catch(Exception e)
    {
    	System.out.println(e);
    	response.sendRedirect("signup.jsp?msg=invalid"); 
    }
    %>
   
</body>
</html>