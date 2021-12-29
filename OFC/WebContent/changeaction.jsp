<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="Project.ConnectionProvider" %>
<%
String currentPassword=request.getParameter("CurrentPassword");
String Newpass=request.getParameter("newPassword");
String conpass=request.getParameter("confirm");

String pass="";
String id="";
try{
	Connection con=ConnectionProvider.getCon();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from registertable where Password='"+currentPassword+"'");
while(rs.next()){
id=rs.getString(3);
pass=rs.getString(4);
} System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update registertable set Password='"+Newpass+"' where Username='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
  
