<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Change Password</title>
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
        
        .btns{
            font-family: 'Yeseva One', cursive;
            color: grey;
            font-size: 25px;
            text-decoration: none;  
            }
        .btns:hover{
            color: black;
            }
             #btn{
            background-color:lightskyblue;
            font-size: larger;
            font-family: Georgia, 'Times New Roman', Times, serif;
            padding: 5px 140px;
            cursor: pointer;
            border:none;
        }
        h2{
            text-align: center;
            font-size: 30px;
            font-family: Georgia, 'Times New Roman', Times, serif;
            letter-spacing: 2px;

        }
        form{
            text-align: center;
            font-size: 20px;
        }
        label{
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
        .buttons{
            display: flex;
            justify-content: center;
            letter-spacing: 2px;
            font-family: 'Yeseva One', cursive;
        }
         .btn {
            margin-right: 20px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%)
         }
         .btn{
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
          .btn:hover{
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
        .links{
            
             position:fixed;
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
        
        <a href="logout.jsp" class="topbar">Logout <span class="material-icons">logout</span></a>
        <a href="community.jsp" class="topbar">Community <span class="material-icons">groups</span></a>
        <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a> 
    </div>
   
    <br><br>
    <h2>Change Password</h2>
<br>
<form action="changeaction.jsp" method="post">

    <label for="password" >Current Password: </label>
    <div>  <input type="password" name="CurrentPassword" size="50" class="tab" placeholder="Enter your current password" minlength="8" maxlength="15" required>  </div>
    <br>

    <label for="password" >New Password: </label>
    <div>  <input type="password" name="newPassword" size="50" class="tab" placeholder="Enter new password" minlength="8" maxlength="15" required>  </div>
    <br>

    <div class="buttons">
        <input type="submit" class="btn" value=save></input>
    </div>

</form>

<center>
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
    </center>
</body>
</html>