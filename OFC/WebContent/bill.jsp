<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');
        body{
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
        .summary{
           /* padding:10px 620px ;*/
            margin: 20px;
            width: 600px;
            padding-left: 23em;
            letter-spacing: 1.5px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size: 20px;
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
        h3,h2,h1{
            text-align: center;
        }
        .btns{
            display: flex;
            justify-content: center;
            letter-spacing: 2px;
        }
        .button1,.button2{
            cursor: pointer;
            margin: auto;
            text-align: center;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;          
            border-radius: 10px;
            border:none;
            display: block;
            font-size: 1em;
            line-height: 20px;
            letter-spacing: 1px;
        }
        .button1{
            margin-right: 30px;
            padding: 15px 40px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%);
        }
        .button2{
            padding: 15px 110px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%)
        }
        .button1:hover , .button2:hover {
            background-position: right center;
            text-decoration: none;
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
		    /* position: fixed; */
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
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a>
        <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="Buy.jsp" class="topbar">Buy <span class="material-icons">shopping_bag</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
    </div>
<%

try
{
	String Username=session.getAttribute("Username").toString();
int total=0;
int sno=0;

Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select sum(total) from cart where Username='"+Username+"' ");
while(rs.next())
{
total=rs.getInt(1);

}
ResultSet rs2=st.executeQuery("select * from registertable inner join cart where cart.Username='"+Username+"'");
while(rs.next())
{

%>
    <h1>Online Purchase Bill</h1>
    <hr>
<div class="summary">
   
    <p><strong>Username :</strong> <%out.println(Username); %></p>
    <p><strong>Phone Number :</strong> <%=rs2.getString(19) %></p>
    <p><strong>Address :</strong> <%=rs2.getString(15) %></p>
    <p><strong>City :</strong> <%=rs2.getString(16) %></p>
   
    <p><strong>Country :</strong> <%=rs2.getString(18) %></p>
    
    <p><strong>Payment Method :</strong><%=rs.getString(22)%> </p>
    <p><strong>Transaction ID :</strong> <%=rs2.getString(23) %> </p>
    <p><strong>Expected Delivery :</strong>=rs2.getString(21)%> </p>
    <p><strong>Order Date :</strong><%=rs.getString(20)%>  </p>
</div>
<hr>
<%
break;
}
%>
<table>
    <h2>Order Details</h2>
    
    <br>
    <thead>
    <tr>
        <th>S.no</th>
        <th>Name of the seller</th>
        <th>Crop</th>
        <th>&#8377; Price</th>
        <th>Quantity</th>
        <th>&#8377; Sub Total</th>
    </tr>
    </thead>
    <%
    ResultSet rs1=st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.Username='"+Username+"' ");
    while(rs1.next())
    {
    sno=sno+1;
    %>
    <tbody>  
    <tr>
        <th><%out.println(sno); %></th>
        <th><%=rs1.getString(17) %></th>
        <th><%=rs1.getString(18) %></th>
        <th><%=rs1.getString(21) %></th>
        <th><%=rs1.getString(3) %></th>
        <th><%=rs1.getString(5) %></th>
    </tbody>
    <% } %>
    
</table>
<!--  <h3>Total : </h3>-->
<span class="total"><strong>Total : </strong>&#8377; <%out.println(total); %></span>
<div class="btns">
<a style="text-decoration:none" href="continue.jsp"><button class="button1">Continue Purchase</button></a> <br>
<a onclick="window.print()"><button class="button2">Print</button></a>
</div>
<br><br>
<%

}
catch(Exception e)
{
System.out.println(e);
}
%>
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

