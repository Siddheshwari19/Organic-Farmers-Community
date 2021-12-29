<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      
      
      <% 
      String Username=request.getParameter("Username");
      try
      {
     Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("delete from profiletable where Username='"+Username+"'");
    response.sendRedirect("editdeletelist.jsp?msg=deleted");
      }
      catch(Exception e)
      {
     response.sendRedirect("editdeletelist.jsp?msg=invalid");
      }
      %>

