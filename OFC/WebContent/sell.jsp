<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Sell</title>
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
        }
       /* Form */
        .form{
            margin: 40px;
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 1em;
            opacity: 0.8;
        }
        .buttons{
            display: flex;
            justify-content: center;
        }
         .submitbtn {
            margin-right: 20px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%)
         }
         .submitbtn{
            cursor: pointer;
            padding: 15px 80px;
            text-align: center;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;          
            border-radius: 10px;
            border:none;
            display: block;
            font-size: 0.8em;
          }
          .submitbtn:hover{
            background-position: right center;
            text-decoration: none;
            }
       
          .tab {
            padding: 20px 100px;
            border:black;
            margin: 5px;
            background-color:lightgrey;
            text-align: left;
            font-size: medium;
        }
        .last{
            color:navy
            text-align : left;
        }  
   		.statements{
	        text-align: center;
	        font-family: 'Slabo 27px', serif;
	        color: navy;
	        font-size: 20px;
        }
        .profile{
            /* background-color:gray;
             width: 400px;
             border: none;
             padding: 90px ; */
             margin: 40px;
             font-family: Georgia, 'Times New Roman', Times, serif;
             font-size: 1.5em;
             opacity: 0.8;
        }
        .btn2 {
            text-transform: uppercase;
            background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%)
            }
         .btn2{
            cursor: pointer;
            padding: 15px 80px;
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
       .btn2:hover {
            background-position: right center; 
            text-decoration: none;
          }
        .links{
           position: fixed;
            bottom: 0;
            }
            
    </style>
</head>
<body>
<div class="bar">
        <img src="FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">OFC</p>
        <a href="logout.jsp" class="topbar">Logout <span class="material-icons">logout</span></a>
        <a href="profile1.jsp" class="topbar">Profile <span class="material-icons">person</span></a>
        <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a>  
    </div>
<br>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<p class="statements">Product added</p>
<% } %>
<%
if("wrong".equals(msg))
{
%>
<p class="statements">Something went wrong, Try again!</p>
<% } %>

<%  
int id=1;
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from product");
while(rs.next())

{
id=rs.getInt(1);
id=id+1;
}
%>
<h3 style="color:grey">Profile ID: <% out.println(id); %> </h3>
<%
}
catch(Exception e)
{ }
%>
 <center>
        <div class="profile">
            <form action="sellaction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id);%>">
               <center>
                <h2>Seller Details</h2>
                Please update your details
                <hr><br>

                <label for="name"  >Name of Seller : </label><br>
                  <input type="text" name="name" id="name" size="50" class="tab" placeholder="Enter your Name" required>  
                <br><br>

                <label for="crop" >Product :</label><br>
                <input type="text" name="crop" id="crop" placeholder="Enter the crop"  class="tab" size="50" required>
                <br><br>
               
				<label for="active" >Active:</label><br>
				<select class="tab" name="active">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select>
				<br><br>
                
                <label for="number" >Phone No. :</label><br>
                  <input type="tel" name="phno" id="phno" size="50" class="tab" placeholder="Enter your Phone number" required>  
                <br><br>
       
       			<label for="price" >&#8377; Price :</label><br>
                <input type="currency" name="price" id="price" placeholder="Enter the price of crop"  class="tab" size="50" min="2019-01-01" max="2021-01-31" required>
                <br>
                <br>
                       
                <button type="submit" class="btn2" >Save</button><br><br>
         
            </form>
        </div>
          </center>
 
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

