<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
      <%
      String Username=session.getAttribute("Username").toString();
      String id=request.getParameter("id");
     
      String incdec=request.getParameter("quantity");
      int price=0;
     
      int total=0;
      int quantity=0;
      int final_total=0;
     
      int sno=0;
      System.out.println(total);
      try{
      Connection con=ConnectionProvider.getCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from cart where Username='"+Username+"' and product_id='"+id+"'and address is NULL");
     /*if (!rs.next()) {
      System.out.println("Username = '"+Username+"'");
    System.out.println("product_id='"+id+"'");
      }*/
     
      while(rs.next())
      {
      price=rs.getInt(4);
     
      total=rs.getInt(5);
      System.out.println("total = '"+total+"'");
      quantity=rs.getInt(3);
      System.out.println("quantity = '"+quantity+"'");
      }
     
      if(quantity==1 && incdec.equals("dec"))
      {
      response.sendRedirect("mycart.jsp?msg=notPossible");
      }
     
      else if(quantity !=1 && incdec.equals("dec"))
      {
      total=total-price;
      quantity=quantity-1;
      st.executeUpdate("update cart set total='"+total+"' , quantity ='"+quantity+"' where Username= '"+Username+"' and product_id='"+id+"' and address is NULL");
      response.sendRedirect("mycart.jsp?msg=dec");
      }
     
      else if(incdec.equals("inc"))
      {
     total=total+price;
          quantity=quantity+1;
      st.executeUpdate("update cart set total='"+total+"' , quantity ='"+quantity+"' where Username= '"+Username+"' and product_id='"+id+"' and address is NULL");
     
     
      response.sendRedirect("mycart.jsp?msg=inc");
      }
     
      else
      {
     response.sendRedirect("mycart.jsp?msg=notPossible");
      }
      }
      catch(Exception e)
      {
      System.out.println(e);
      }
      %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>