<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OFC | Your Profile</title>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');

        .bar{
            overflow: hidden;
            background: #1f4037;
            background: -webkit-linear-gradient(to right, #99f2c8, #1f4037);  
            background: linear-gradient(to right, #99f2c8, #1f4037);
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        .bar a{
            float: right;
            color: white;
            padding: 15px 30px ;
            font-size: x-large;
            text-decoration: none;
            text-align: left;
            letter-spacing: 3px;
            line-height: 50px;
        }
        .bar a:hover{
            background-color: white;
            color: black;
        }
        .img{
            padding: 5px 5px;
            float: left;
            font-size: 20px;
            color: black;
            background-size: cover;
            font-family: 'Abril Fatface', cursive;
        }
        .box{
            /* width: 400px; */
            /* border:  ; */
            padding: 20px 400px;
            margin: auto;
            /* line-height: 40px; */
            font-family: 'Slabo 27px', serif;
            font-size: 25px;
            

        }
        h1{
            text-align: center;
            font-family: 'Slabo 27px', serif;
            font-size: 50px;
            letter-spacing: 3px;
        }
        
        .buttons{
            display: flex;
            justify-content: center;
            letter-spacing: 2px;
            font-family: 'Yeseva One', cursive;
            padding-top: 20px;
        }
         .btn1 {
            padding: 15px 80px;
            margin-right: 20px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%)
         }
         .btn2 {
            padding: 15px 60px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #fd746c 0%, #ff9068  51%, #fd746c  100%)
            }
         .btn1, .btn2{
            cursor: pointer;
            
            text-align: center;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;           
            border-radius: 10px;
            border:none;
            display: block;
            font-size: 1.3em;
            text-decoration: none;
          }
          .btn1:hover, .btn2:hover {
            background-position: right center; 
            text-decoration: none;
          }
          .btns{
           font-family: 'Yeseva One', cursive;
           color: grey;
            font-size: 25px;
            text-decoration: none;
        }
       .btns:hover{
           color: black;
           }
       .links{
           padding: 8px 400px;
           /* position: fixed; */
           bottom: 0;
           }
           .data{
           		padding:15px 150px;
           		background-color: lightgrey;
           }
          
    </style>

</head>
<body>
<div class="bar">
        <img src="Final Logo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">OFC</p>
            
       <a href="logout.jsp" class="topbar">Logout <span class="material-icons">logout</span></a>
       <a href="profile1.jsp" class="topbar">Profile <span class="material-icons">person</span></a>
        <a href="community.jsp" class="topbar">Community <span class="material-icons">groups</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a> 
    </div>
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>

<p class="statements"> Successfully Updated </p>
<% } %>
<%
if("invalid".equals(msg))
{
%>

<p class="statements"> Something went wrong,Try again! </p>
<% } %>
<%
if("deleted".equals(msg))
{
%>
<p class="statements"> Successfully Updated! </p>
<% } %>

<%
String Username=request.getParameter("Username");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from profiletable where Username='"+Username+"'");
while(rs.next())
{

%>
        <h1>Profile</h1>
    <div class="box">

        <label for="name">Name :</label>
         <p class="data"><%=rs.getString(1)%></p>
        
        <label for="username">Username :</label>
         <p class="data"><%=rs.getString(2)%></p>
        
        <label for="name">Phone no. : </label>
        <p class="data"><%=rs.getString(3)%></p>
       
        <label for="name">Land Area : </label>
        <p class="data"><%=rs.getString(4)%></p>
  
        <label for="name">Current Crop : </label>
        <p class="data"><%=rs.getString(5)%></p>
       
        <label for="name">Sowing Date : </label>
        <p class="data"><%=rs.getString(6)%></p>
       
    </div>

<div class="buttons">
        <a href="updatelist.jsp?Username=<%=rs.getString(2)%>" class="btn1">Edit <span class="material-icons">mode_edit</span></a>
            <a href="delete.jsp?Username=<%=rs.getString(2)%>" class="btn2">Delete <i class="material-icons">delete</i></a>
        </div>
<%
}
}
catch(Exception e)
{
System.out.println(e);
}
%>
</table>
<br>
    <tr>
        <td>
          <center>
          <div class="links">
                <a class="btns" href="home.jsp">Home |</a>
                    <a class="btns" href="community.jsp">About Us | </a>
                    <a class="btns" href="community.jsp">Contact Us |</a>
                    <a class="btns" href="community.jsp">References </a>
                    </div>
            </center>
        </td>
    </tr>  
</body>
</html>

