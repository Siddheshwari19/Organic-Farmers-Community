<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.* " %>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Login</title>

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

    <!-- CSS  -->
   <style>
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');
	body{
            background-image: url('bg1.jpg');
             background-size:cover ;
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
        .links{
            position: fixed;
            bottom: 0;
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
       /* .links{
            padding: 10px 575px;
            }*/
         .login{
            margin: 40px;
            text-align: center;
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 1.5em;
            opacity: 0.8;
        }
        #btn{
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
            font-size: 0.8em;
            padding: 15px 140px;  
        }
        #btn:hover{
            background-position: right center;
            text-decoration: none;
        }
        #last{
            color: navy;
        }
        #forgot{
            color: navy;
            text-align: center;
        }
        .tab{
            padding: 20px 100px;
            border:none;
            
            margin: 5px;
            background-color:darkgrey;
            font-size:medium;
        }
        
    </style>
   

</head>

    <body>
<!--  <div class="bar">
            <img src="FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
            <p class="img">
                OFC
            </p>
           
            <a href="profile.jsp" class="topbar">Profile</a>
        <a href="community.jsp" class="topbar">Community</a>
        <a href="Crops.jsp" class="topbar">Crops</a>
        <a href="User_list.jsp" class="topbar">User List</a>
        <a href="home.jsp" class="topbar">Home</a>
        </div>-->
    <center>
       
            <div class="login">
                <form action="loginaction.jsp" method= "post">

                    <!-- Heading -->
                    <h2>LOGIN</h2><hr><br>


                    <label for="Username" ><span class="material-icons">person</span> User name: </label><br>
                    <input type="text" name="Username" id="Username" placeholder="Enter Username"  class="tab" size="25" required><br><br>

                    <label for="Password" ><span class="material-icons">vpn_key</span> Password:</label><br>
                    <input type="password" name="Password" id="Password" placeholder="Enter Password"  class="tab" size="25" required>
                   <br><br>
                   
                   <!-- <a href="changepassword.jsp" id="change" >Change password?</a><br><br><br>-->

                  <button id="btn" >Login</button><br><br>
                 
                  <small>Do not have an account? <a href="signup.jsp" id="last" >Sign up</a></small>

                </form>
                </div>
                </center>
                <div >
                <%
                String msg=request.getParameter("msg");
                if("notexist".equals(msg))
                {
                %>
             <h1><font color="red">Incorrect password or User name</font></h1>
               <% } %>
               <%if("invalid".equals(msg))
              {
              %>
                <h2><font color="black"> Something went wrong </font></h2>
                <% } %>
               </div>
       <!--     
        <tr>
            <td >
               <center>
                   <a class="btns" href="home.jsp">Home |</a> 
                <a class="btns" href="community.jsp">About us | </a> 
                <a class="btns" href="community.jsp">Contact us |</a> 
                <a class="btns" href="community.jsp">References </a> 
                </center>
            </td>
        </tr>
       --> 
       

    </body>

</html>

