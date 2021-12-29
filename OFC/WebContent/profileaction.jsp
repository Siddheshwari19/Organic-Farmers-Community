<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      <%
     
      try
      {
     Connection con=ConnectionProvider.getCon();
     Statement st=con.createStatement();
     String name=request.getParameter("name");
     String Username=request.getParameter("Username");
     String phno=request.getParameter("phno");
     String Landarea=request.getParameter("Landarea");
     String currcrop=request.getParameter("currcrop");
     String currcropdate=request.getParameter("currcropdate");
     String strQuery = "SELECT COUNT(*) FROM profiletable where Username='"+Username+"'";
 	ResultSet rs = st.executeQuery(strQuery);
 	rs.next();
 	String Countrow = rs.getString(1);
 	out.println(Countrow);
 	if(Countrow.equals("0")){
 		int i=st.executeUpdate("insert into profiletable(name,Username,phno,Landarea,currcrop,currcropdate)values('"+name+"','"+Username+"','"+phno+"','"+Landarea+"','"+currcrop+"','"+currcropdate+"')");
 	 	response.sendRedirect("username.jsp?msg=valid");
 	}
 	else{
 	
 	out.println("Username already exists!");
 	%>
 	<center>
 <td><a href="profile.jsp"><h3>TRY AGAIN</h3></a></td>
 </center>
 	 
 	<% 
 	}
      }
      catch(Exception e)
      {
     response.sendRedirect("profile.jsp?msg=invalid");
      }
     
      %>

