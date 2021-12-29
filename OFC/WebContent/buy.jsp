<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Buy</title>
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
h2{
    text-align: center;
    font-family: 'Slabo 27px', serif;
    font-size: 40px;
}
.addtocart{
       color: black;
       }
    .addtocart:hover{
       color: darkcyan;
       }
.statements{
        text-align: center;
        font-family: 'Slabo 27px', serif;
        color: navy;
        font-size: 20px;
    }
    .username{
        font-size: 25px;
        font-family: 'Slabo 27px', serif;
        font-weight: bold;
        background-color:  rgb(117, 113, 113);
        padding: 10px;

    }
table{
    text-align: center;
    font-family: 'Slabo 27px', serif;
    font-size: 150%;
    width: 100%;
    height: 100px;
    border-collapse: collapse;
    border-collapse: separate;
    border-spacing: 0 15px;
}
thead{
    background: rgb(117, 113, 113);
    border: 1px solid black;
    padding: 10px;
    padding-top: 20px;
    padding-bottom: 20px;
    text-align: center;
    line-height: 50px;
}
tbody{
    background:lightgrey;
    line-height: 50px;
}
td a{
    text-decoration: none;
    color: navy;
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
   padding: 10px 575px;
   position: fixed;
   bottom: 0;
   }

    </style>
</head>
<body>
<div class="bar">
        <img src="FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">
            OFC
        </p>
        <a href="mycart.jsp" class="topbar">My Cart <i class="material-icons">shopping_cart</i></a>
        <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a> 
    </div>

<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
 <p class="statements">Product Added Successfully!</p>
<%} %>
<%
if("exist".equals(msg))
{
%>
<p class="statements">Product already exists , Quantity Increased!</p>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<p class="statements">Something went wrong, Try again!</p>
<%} %>
<% 
String Username=session.getAttribute("Username").toString();
%>
<br><br>
<span class="username">Hello , <%out.println(Username); %></span>

<h2> Available Crops <span class="material-icons">eco</span></h2>

<!--  <center><div class="buttons">
        <a href="mycart.jsp" class="mycart">My Cart</a>      
    </div></center>-->
    
    <table>
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name of the seller</th>
                <th scope="col">Product</th>
                <th scope="col">Price (&#8377;)</th>
                <th scope="col">Add to cart <i class="material-icons">add_shopping_cart</i></th>
            </tr>
        </thead>
        <tbody>
<%
try{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from product where active='Yes'");
while(rs.next())
{
%>
<tr>
                 <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(3)%></td>
                 <td>&#8377;<%=rs.getString(6)%></td>
                 <td><a href="addtocartaction.jsp?id=<%=rs.getString(1) %>" class="addtocart">Add to cart <i class="material-icons">add_shopping_cart</i></a></td>
                 
             </tr>
       
<%

}
}
catch(Exception e)
{
System.out.println(e);
}
%>


</tbody>
    </table>
<tr>
        <td>
          <center>
                <a class="btns" href="home.jsp">Home |</a>
                    <a class="btns" href="community.jsp">About Us | </a>
                    <a class="btns" href="community.jsp">Contact Us |</a>
                    <a class="btns" href="community.jsp">References </a>
            </center>
        </td>
    </tr>
</body>
</html>