
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Sign up</title>
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
             position:fixed;
            bottom: 0;
            left:450px;
            }
        body{
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size:1.5em;
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
         .resetbtn {
            text-transform: uppercase;
            background-image: linear-gradient(to right, #fd746c 0%, #ff9068  51%, #fd746c  100%)
          }
         .submitbtn, .resetbtn{
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
          .submitbtn:hover, .resetbtn:hover {
            background-position: right center;
            text-decoration: none;
          }
          .tab{
            padding: 20px 100px;
            border:black;
            margin: 5px;
            background-color:lightgrey;
            text-align: left;
            font-size: medium;
        }
        .last{
            color:navy
            text-align: left;
        }  
       
    </style>
</head>
<body>
<!--  <div class="bar">
        <img src="F:/FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">OFC</p>
     
      <a href="logout.jsp" class="topbar">Logout</a>
        <a href="profile1.jsp" class="topbar">Profile</a>
        <a href="community.jsp" class="topbar">Community</a>
        <a href="Crops.jsp" class="topbar">Crops</a>
        <a href="User_list.jsp" class="topbar">User List</a>
        <a href="home.jsp" class="topbar">Home</a>
    </div>-->

<div class="form" >
   <center>    
    <form action="signupaction.jsp" method="post">
    <h2>SIGN UP </h2>

<hr>
<label for="name"  >Name: </label>
    <div>  <input type="text" name="name" id="name" placeholder="Enter Name" size="50" class="tab" required>  </div>
    <span  id ="name"> </span>
    <br>
    <label for="email" >Email id: </label>
    <div>  <input type="email" name="email" id="email" placeholder="Enter Email" size="50" class="tab" required>  </div>
    <br>
    <label for="Username" >User name:</label>
    <div>  <input type="text" name="Username" id="Username" placeholder="Enter Username" size="50" class="tab" required>  </div>
    <br>
    <label for="Password" >Password: </label>
    <div>  <input type="password" name="Password" id="Password" placeholder="Enter Password" size="50" class="tab" minlength="8" maxlength="15" required>  </div>
    <br>
   
    <br>
   <div class="buttons">  <input type="submit" class="submitbtn" value="Sign up" > <input type="reset" class="resetbtn" value="Reset" >  </div>
    <br>
   <small>Already have an account? <a href="login.jsp" class="last">Log in here</a></small>
   
    </form>
    </center>
</div>
<!--  
    <tr>
        <td>
          <center>
              <a class="btns" href="home.jsp">Home |</a> 
                <a class="btns" href="community.jsp">About us | </a> 
                <a class="btns" href="community.jsp">Contact us |</a> 
                <a class="btns" href="community.jsp">References </a> 
            </center>
        </td>
    </tr>
-->
<div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Updated</h1>
<% } %>
<%
if("invalid".equals(msg))
{
%>
<h2>Something went wrong,Try again!</h2>
<% } %>

</div>
</body>
</html>