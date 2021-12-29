<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      <%
      String name=request.getParameter("name");
      String Username=request.getParameter("Username");
      String phno=request.getParameter("phno");
      String Landarea=request.getParameter("Landarea");
      String currcrop=request.getParameter("currcrop");
      String currcropdate=request.getParameter("currcropdate");
      try
      {
    Connection con=ConnectionProvider.getCon();
  PreparedStatement ps=con.prepareStatement("Update profiletable set name=?,phno=?,Landarea=?,currcrop=?,currcropdate=? where Username=? ");
  ps.setString(1,name);
  
  ps.setString(2,phno);
  ps.setString(3,Landarea);
  ps.setString(4,currcrop);
  ps.setString(5,currcropdate);
  ps.setString(6,Username);
  
  ps.executeUpdate();
  response.sendRedirect("updatelist.jsp?msg=valid");
      }
      catch(Exception e)
      {
    response.sendRedirect("updatelist.jsp?msg=invalid");
      }
      %>


