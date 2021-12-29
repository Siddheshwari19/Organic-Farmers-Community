<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

      <script>
          if(window.history.forward(1) !=null)
          window.history.forward(1);
      </script>

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
    .form{
        margin: 40px;
        font-family: Georgia, 'Times New Roman', Times, serif;
        font-size: 25px;
        opacity: 0.8;
    }
    .tab{
        padding: 20px 100px;
        border:black;
        margin: 5px;
        background-color:lightgrey;
        text-align: left;
        font-size: medium;
    }
    .paylink{
        color: green;
        cursor:pointer;
    }
    .button{
        text-transform: uppercase;
        background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%);
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
        padding: 15px 50px;
        line-height: 20px;
        letter-spacing: 1px;
        text-decoration: none;
    } 
    .button:hover {
        background-position: right center;
        text-decoration: none;
    }
     /* #drop{
        background-color: lightgray;
        color: black;
    } 
    #drop:hover{
      background-color: black;
    }  */
    .total{
        color: white;
        background-color: black;
    }
    #back{
            color:black;
            text-decoration: none;
        }
    #back:hover{
        color: white;
        }
    .msg{
        color: rgb(36, 114, 167);
        font-size: 20px;
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
        /* padding: 10px 575px; */
        bottom: 0;
        text-align: center;
    }
</style>
</head>
<script>
if(window.history.forward(1) !=null)
window.history.forward(1);
</script>
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


try
{
	String Username=session.getAttribute("Username").toString();	
	int total=0;
	int sno=0;
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs1=st.executeQuery("select sum(total) from cart where Username= '"+Username+"' and address is NULL");
System.out.println ("print1");
while(rs1.next())
{
total=rs1.getInt(1);
}

%>
<table>
        <thead>
            <tr>
                <th scope="col" ><a href="mycart.jsp"><i class="material-icons" id="back">keyboard_backspace</i> </a></th>
                <th scope="col" class="total">Total : &#8377; <%out.println(total); %></th>
            </tr>
        </thead>
        <thead>
            <tr>
                <th scope="col">S.no</th>
                <th scope="col">Name of the seller</th>
                <th scope="col">Crop</th>
                <th scope="col">&#8377; Price </th>
                <th scope="col">Quantity</th>
                <th scope="col">&#8377; Sub Total</th>
            </tr>
        </thead>
<%
ResultSet rs=st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.Username='"+Username+"' and cart.address is NULL ");
System.out.println ("print2");
while(rs.next())
{

%>
<tbody>
            <tr>
                 <%sno=sno+1;%>
                <td><%out.println(sno);%> </td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td>&#8377; <%=rs.getString(6)%></td>
                <td><%=rs.getString(9)%></td>
                <td>&#8377; <%=rs.getString(11)%></td>
            </tr>
            <%
}
System.out.println ("print3");
ResultSet rs2=st.executeQuery("select * from cart where Username='"+Username+"'");
while(rs2.next())
{

%>
        </tbody>
    </table>
 
<!--<hr>-->

<div class="form">
    <center>
        <form action="addresspaymentaction.jsp" method="post">
            <label for="address">Address: </label>
                <div>  <input type="text" name="address" value="<%=rs2.getString(6) %>" size="50" class="tab" placeholder="Enter Address" required>  </div>
                <br>
                <span class="msg">*If there is no Address that means you did not set your Address</span>
                <br><br>

            <label for="city">City: </label>
                <div>  <input type="text" name="city" value="<%=rs2.getString(7) %>" size="50" class="tab" placeholder="Enter City" required>  </div>
                <br>

            <label for="state">State: </label>
                <div>  <input type="text" name="state" value="<%=rs2.getString(8) %>" size="50" class="tab" placeholder="Enter State" required>  </div>
                <br>

            <label for="country">Country: </label>
                <div>  <input type="text" name="country" value="<%=rs2.getString(9) %>" size="50" class="tab" placeholder="Enter Country" required>  </div>
                <br>

            <label for="country">Payment method: </label>
            <div><select name="paymentMethod" class="tab"  >
                <option value="Cash on Delivery(COD)" id="drop">Cash on Delivery (COD)</option>
                <option value="Online Payment" id="drop">Online Payment</option>
                </select>
            </div>
            <br>

            <label for="transactionID">Pay online on <span class="paylink" >organicfarmerscommunity@pay.com</span></label>
                <div>  <input type="text" name="transactionID"  size="50" class="tab" placeholder="Enter Transaction ID" required>  </div>
                <br>
                <span class="msg">*If you select online payment then enter your transaction ID otherwise skip</span>
                <br><br>

            <label for="phno" >Phone Number:</label><br>
                <input type="text" name="phno" value="<%=rs2.getString(10)%>" size="50" class="tab" placeholder="Enter your Phone number" required>  
                <br><br>
                <span class="msg">*This Phone number will be updated to your profile</span>
                <br><br>

                <span class="msg">*If you enter wrong transaction ID your order will get cancelled</span><br><br><br>
                <!--  <button class="button">Proceed to generate bill and save</button>-->
                <a class="button" href="bill.jsp">Proceed to generate bill and save</a>
                <br>
                
                <span class="msg">*Fill form correctly</span>
        </form>
    </center>
</div>

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

<%
}
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

