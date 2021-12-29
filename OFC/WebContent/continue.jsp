<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<%
String Username=session.getAttribute("Username").toString();
String status="processing";
try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("update cart set status=? where Username=? and status='bill' ");
ps.setString(1,status);
ps.setString(2,Username);
ps.executeUpdate();
response.sendRedirect("home.jsp");
}
catch(Exception e)
{
System.out.println(e);

}
%>


