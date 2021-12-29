<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup / Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');

        body{
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            background-image: url('bg1.jpg');
             background-size:cover ;
        }
        .head img{
            float: left;
            width: 200px;
            height: 200px;
            background-size: cover;
            text-align: center;
        }
        .head h1{
            /*position: relative;
            top: 60px;
            left: 100px;
            font-size: 35px;
            font-family: 'Abril Fatface', cursive;
            letter-spacing: 9px;*/
            position: relative;
            top: 60px;
            /*left: 5px;*/
            font-size: 40px;
            font-family: 'Abril Fatface', cursive;
            letter-spacing: 9px;
            text-align: center;
        }
        .title{
            font-family: 'Abril Fatface', cursive;
            font-size:400%;
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
	        padding: 10px;
	        float: center;
	        font-size: 20px;
	        color: white;
	        letter-spacing: 10px;
	        font-size: 30px;
	        background-size: cover;
	        font-family: 'Abril Fatface', cursive;
        }
        h2{
            text-align: center;
            padding-top: 10px;
            letter-spacing: 2px;
            font-size:30px;
        }
        p{
            text-align: center;
            font-size: 30px;
        }
        .buttons{
            display: flex;
            justify-content: center;
            letter-spacing: 2px;
            font-family: 'Yeseva One', cursive;
        }
         .signupbtn {
            margin-right: 20px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%)
         }
         .loginbtn {
            text-transform: uppercase;
            background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%)
            }
         .signupbtn, .loginbtn{
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
          .signupbtn:hover, .loginbtn:hover {
            	background-position: right center; 
            	text-decoration: none;
          }
           
    </style>
</head>
<body>
    <div class="head"><img src="FinalLogo.png" > 
        <h1>ORGANIC FARMER'S COMMUNITY <br>of Pune District </h1>
    </div>
<br><br><br><br><br><br>

    <div class="bar">
        
        <p class="img">
            OFC
        </p>
       
    </div>

    <div class="choose">
    <h2>SIGNUP OR LOGIN</h2>
    
    <p>Please Signup or Login </p>
    <br>
    <div class="buttons">
        <a href="signup.jsp" class="signupbtn">Sign up</a>
        <a href="login.jsp" class="loginbtn">Login</a>
    </div>
    </div>

</body>
</html>