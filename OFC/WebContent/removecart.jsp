<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      <%
      
      String Username=session.getAttribute("Username").toString();
	  String id=request.getParameter("id");
      try
      {
    	  
     Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        st.executeUpdate("delete from cart where Username= '"+Username+"' and product_id='"+id+"' and address is NULL");
        response.sendRedirect("mycart.jsp?msg=removed");
      }
      catch(Exception e)
      {
     System.out.println(e);
      }
      %>