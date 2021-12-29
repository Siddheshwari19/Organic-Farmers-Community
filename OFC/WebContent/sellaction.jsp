<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      <%
     String id=request.getParameter("id");
     String name=request.getParameter("name");
     String crop=request.getParameter("crop");

     String active=request.getParameter("active");
     String phno=request.getParameter("phno");
     String price=request.getParameter("price");
   
     try
     {
     Connection con=ConnectionProvider.getCon();
     PreparedStatement ps=con.prepareStatement("insert into product values (?,?,?,?,?,?)");
     ps.setString(1, id);
     ps.setString(2, name);
     ps.setString(3, crop);
     ps.setString(4, active);
     ps.setString(5, phno);
     ps.setString(6, price);
     ps.executeUpdate();
     response.sendRedirect("sell.jsp?msg=done");
      }
      catch(Exception e)
      {
     
     response.sendRedirect("sell.jsp?msg=wrong");
     
      }
     
      %>

