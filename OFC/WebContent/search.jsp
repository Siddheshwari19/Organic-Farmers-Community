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
<%
int z=0;
try{
	String search=request.getParameter("search");
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' active='Yes'");
while(rs.next())
{
z=1;

%>
<%

}
}
catch(Exception e)
{
System.out.println(e);
}
%>
<% if (z==0){ %>
<%} %>
</body>
</html>

