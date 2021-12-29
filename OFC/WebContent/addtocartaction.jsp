<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%
String Username=session.getAttribute("Username").toString();
String product_id=request.getParameter("id");
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;

int z=0;
try{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from product where id='"+product_id+"' ");
	
while(rs.next())
	{
		product_price=rs.getInt(6);
		product_total=product_price;

	}

	ResultSet rs1=st.executeQuery("select * from cart where product_id='"+product_id+"'and Username='"+Username+"' and address is NULL");
while(rs1.next())
	{
	cart_total=rs1.getInt(5);
	cart_total=cart_total + product_total;
	quantity=rs1.getInt(3);
	quantity=quantity+1;
	z=1;

	}
if(z==1)
{
st.executeUpdate("update cart set total='"+cart_total+"', quantity='"+quantity+"' where product_id='"+product_id+"' and Username='"+Username+"' and address is NULL");
response.sendRedirect("buy.jsp?msg=exist");
}
if(z==0)
{
PreparedStatement ps=con.prepareStatement("insert into cart(Username,product_id,quantity,price,total) values(?,?,?,?,?) ");
ps.setString(1, Username);
ps.setString(2, product_id);
ps.setInt(3, quantity);
ps.setInt(4, product_price);
ps.setInt(5, product_total);
ps.executeUpdate();
response.sendRedirect("buy.jsp?msg=added");
}

}
catch(Exception e)
{
System.out.println(e);
response.sendRedirect("buy.jsp?msg=invalid");
}
%>

