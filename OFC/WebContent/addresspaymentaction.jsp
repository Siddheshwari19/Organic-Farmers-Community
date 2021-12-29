<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      <%
      String Username=session.getAttribute("Username").toString();
      String address=request.getParameter("address");
      String city=request.getParameter("city");
      String state=request.getParameter("state");
      String country=request.getParameter("country");
      String mobilenumber=request.getParameter("mobilenumber");
      String paymentMethod=request.getParameter("paymentMethod");
      String transactionId= "";
      transactionId=request.getParameter("transactionId");
      String status="bill";
      /*out.println ("values ="+Username+","+address+","+city+","+state","");*/
      try
      {
     Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("update registertable set address=?, city=?,country=?,mobilenumber=? where Username=?");
    ps.setString(1,address);
    ps.setString(2,city);
    /*ps.setString(3,state);*/
    ps.setString(3,country);
    ps.setString(4,mobilenumber);
    ps.setString(5,Username);
    ps.executeUpdate();
   
    PreparedStatement ps1=con.prepareStatement("update cart set address=?, city=?,country=?,mobilenumber=?, orderDate=now(), deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY),paymentMethod=?,transactionId=?,status=?,where Username=?");
    ps1.setString(1,address);
    ps1.setString(2,city);
    /*ps1.setString(3,state);*/
    ps1.setString(3,country);
    ps1.setString(4,mobilenumber);
    ps1.setString(5,paymentMethod);
    ps1.setString(6,transactionId);
    ps1.setString(7,status);
    ps1.setString(8,Username);
    ps1.executeUpdate();
    response.sendRedirect("bill.jsp");
      }
      catch(Exception e)
      {
     System.out.println(e);
   
      }

      
