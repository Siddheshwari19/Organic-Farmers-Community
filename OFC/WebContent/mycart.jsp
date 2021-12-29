<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cart</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');
       
        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');
       body{
           font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
       }
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
       .username{
        font-size: 25px;
        font-family: 'Slabo 27px', serif;
        font-weight: bold;
        background-color:  rgb(117, 113, 113);
        padding: 10px;

    }
    .statements{
        text-align: center;
        font-family: 'Slabo 27px', serif;
        color: navy;
        font-size: 20px;
    }
       h2{
            text-align: center;
            font-family: 'Slabo 27px', serif;
            font-size: 40px;
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
        .total{
            color: white;
            background-color: black;
        }
        tbody{
            background:lightgrey;
            line-height: 50px;
        }
        /*td a{
            text-decoration: none;
            color: navy;
        }
        th a{
            text-decoration: none;
            color: black;
        }
        .material-icons{
            color:black;
           
        }*/
        .proceed{
            color:black;
            text-decoration: none;
        }
        .proceed:hover{
            color: white;
        }
        .remove, .plusminus{
            color: black;
            text-decoration: none;
        }
        .remove:hover, .plusminus:hover{
            color: darkcyan;
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
           /*padding: 10px 575px;*/
           position: fixed;
           bottom: 0;
           left:450px;
           }
    </style>
</head>
<body>
<div class="bar">
        <img src="FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">
            OFC
        </p>
        <!-- <a href="logout.jsp" class="topbar">Logout</a>
   <a href="profile1.jsp" class="topbar">Profile</a>
        <a href="community.jsp" class="topbar">Community</a>
        <a href="Crops.jsp" class="topbar">Crops</a> -->
       
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a>
         <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="buy.jsp" class="topbar">Buy <span class="material-icons">shopping_bag</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
   
    </div>
    
<h2> My Cart <i class="material-icons">shopping_cart</i></h2>
<%


String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<p class="statements"> There is only one quantity so click on remove.</p>
<%} %>
<%
if("inc".equals(msg))
{
%>
<p class="statements"> Quantity increased successfully </p>
<%} %>
<%
if("dec".equals(msg))
{
%>
<p class="statements">Quantity decreased successfully </p>
<%} %>
<%
if("removed".equals(msg))
{
%>
<p class="statements"> Product removed successfully</p>

<%} %>


<table>
    <thead>
<%
int total=0;
int sno=0;
try{
String Username=session.getAttribute("Username").toString();
%>
<!--  <center><p><strong>Username :</strong> </p></center>-->
<span class="username">Hello , <%out.println(Username); %></span> <br>
<%
String product_id =request.getParameter("product_id");
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("select sum(total) from cart where Username='"+Username+"' and address is NULL");
while(rs1.next())
{
total=rs1.getInt(1);
}

 %>

<tr>
        <th scope="col" class="total">Total : &#8377;  <%out.println(total); %> </th>
        <%if(total>0){ %><th scope="col"><a href="addresspayment.jsp" class="proceed"> Proceed to order</a></th>
        <%} %>
        </tr>
    </thead>
    <thead>
        <tr>
        <th scope="col">S.no</th>
        <th scope="col">Product Id</th>
        <th scope="col">Name of the seller</th>
        <th scope="col">Crop</th>
        <th scope="col">&#8377; Price </th>
        <th scope="col">Quantity</th>
        <th scope="col">&#8377; Sub Total</th>
        <th scope="col"> Remove <i class="material-icons">delete</i> </th>
        </tr>
    </thead>
    <tbody>
    <%
  ResultSet rs=st.executeQuery("select a.id id,a.name name,a.crop crop,a.price price,b.quantity quantity,b.total total from product a inner join cart b on a.id=b.product_id and b.Username='"+Username+"' and b.address is NULL");
   /*if (!rs.next()) {
  System.out.println("Username = '"+Username+"'");
  else
   }*/
   
 
   while(rs.next())
   {
    %>
   
       <tr>
         <%sno=sno+1;%>
         <td> <%out.println(sno); %></td>
         <td> <%=rs.getString("id")%></td>
        <td> <%=rs.getString("name")%></td>
        <td> <%=rs.getString("crop")%></td>
        <td> <%=rs.getString("price")%></td>
        <td><a href="incdecquantityaction.jsp?id=<%=rs.getString(1)%>&quantity=inc" class="plusminus"><i class="material-icons">add_circle_outline</i></a><%=rs.getString(5)%><a href="incdecquantityaction.jsp?id=<%=rs.getString(1)%>&quantity=dec" class="plusminus"><i class="material-icons">remove_circle_outline</i></a></td>
        <td>&#8377; <%=rs.getString(6)%></td>
        <td><a href="removecart.jsp?id=<%=rs.getString(1)%>" class="remove">Remove<i class="material-icons">delete</i></a></td>
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
    <td >
        <div class="links">
           <a class="btns" href="home.jsp">Home |</a>
                    <a class="btns" href="community.jsp">About Us | </a>
                    <a class="btns" href="community.jsp">Contact Us |</a>
                    <a class="btns" href="community.jsp">References </a>  
        </div>
    </td>
 </tr>  
</body>
</html>