<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Home</title>

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Slabo+27px&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');

        body{
            font-family: 'Slabo 27px', serif;
        }
        .head img{
            float: left;
            width: 200px;
            height: 200px;
            background-size: cover;
            text-align: center;
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
            bottom: 0;
            left:450px;
        }
        .head h2{
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
        .loc{
            left: 100px;
            font-size: 200%;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        .bar{
            overflow: hidden;
            background: #1f4037;
            background: -webkit-linear-gradient(to right, #99f2c8, #1f4037);  
            background: linear-gradient(to right, #99f2c8, #1f4037);
            font-family: 'Slabo 27px', serif;
            opacity: 90%;
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
        h1 a{
            display: block;
            text-align: left;
            text-decoration: none;
            padding: 1rem 3rem;
            font-size: x-large;
            border: none;
            letter-spacing: 3px;
            line-height: 50px;
            background: #1f4037;
            background: -webkit-linear-gradient(to right, #99f2c8, #1f4037);
            background: linear-gradient(to right, #99f2c8, #1f4037);
            /*font-family: 'Slabo 27px', serif;*/
            color: white;
            cursor: pointer;
            border-radius: 50px;
            margin-bottom: 1rem;
        }
        h3{
        	font-size: 20px;
            font-family: 'Abril Fatface', cursive;
            letter-spacing: 5px;
            text-align: center;
        }
        .bar a:hover,h1 a:hover{
            background-color: white;
            color: black;
        }
        p{
            text-align: right;
            font-family: 'Slabo 27px', serif;
            font-size: 30px;
        }
		.username{
        font-size: 25px;
        font-family: 'Slabo 27px', serif;
        /*font-weight: bold;*/
        background-color:  rgb(117, 113, 113);
       	padding: 10px;
        float:right;

    }
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /*font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
            'Lucida Sans', Arial, sans-serif;*/
        }
        section {
            height: 100vh;
            position: sticky;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .one {
            background-size: cover;
            background-image: url(16.jpg);
        }
        .two {
            background-size: cover;
            background-image: url(11.jpeg);
        }
        .three {
            background-size: cover;
            background-image: url(22.jpg);
        }
        .four {
            background-size: cover;
            background-image: url(23.jpg);
        }
        .container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            height: 95vh;
        }
        .column-left {
            display: flex;
            flex-direction: column;
            /*justify-content: center;*/
            align-items: flex-start;
            color: #000;
            padding:10px 100px;
            margin-bottom: 1rem;
            opacity: 80%;
        }
        .column-left p {
            margin-bottom: 2rem;
            text-align:left;
            font-size:2.5rem;
            font-weight:550;
            line-height: 1;
            letter-spacing: 1px;
        }
        .column-right {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 1rem 1rem;
        }
        .text{
        	font-size:5px;
        }
        .image {
            width: 100%;
            height: 100%;
            max-width: 500px;
            max-height: 700px;
        }
        @media screen and (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

<!-- Heading part -->
    <div class="head"><img src="FinalLogo.png" >
        <h2>ORGANIC FARMER'S COMMUNITY</h2>
    </div>
    <br><center><h3>of Pune District</h3></center><br>
    <center>
    <%
        String Username=(String)session.getAttribute("Username");
       
        //redirect user to login page if not logged in
        if(Username==null){
        response.sendRedirect("login.jsp");
        }
        %>
   </center> 
        <span class="username">Welcome , <%=Username%> !</span>    
        <br><br><br>
        

<!-- Menu bar -->
    <div class="bar">
        <a href="logout.jsp" class="topbar">Logout <span class="material-icons">logout</span></a>
        <a href="changepassword.jsp" class="topbar">Change Password <span class="material-icons">vpn_key</span></a>
        <a href="profile1.jsp" class="topbar">Profile <span class="material-icons">person</span></a>
        <a href="info.jsp" class="topbar">Information <span class="material-icons">feed</span></a>
        <!--<a href="Crops.jsp" class="topbar">Crops <span class="material-icons">eco</span></a>-->
        <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
       
    </div>

<!-- Section 1 -->
    <section class="section one">
        <div class="container">
            <div class="column-left">
                <h1><a href="community.jsp">Community <span class="material-icons">groups</span></a></h1>
                <p class="text">
                Join the "Organic Farmer's Community" and communicate with other farmers.
            </div>
        </div>
    </section>

<!-- Section 2 -->
    <section class="section two">
        <div class="container">
            <div class="column-left">
                <h1><a href="User_list.jsp">User List <span class="material-icons">people</span></a></h1>
                <p class="text">
                 Shows the List of all the Organic Farmers and their information.
                </p>
            </div>
        </div>
    </section>

<!-- Section 3 -->
    <section class="section three">
        <div class="container">
            <div class="column-left">
                <h1><a href="Crops.jsp">Organic crops <span class="material-icons">eco</span></a></h1>
                <p class="text">
                Processes for cultivation of Sugarcane, Wheat, Jowar & Cotton.
                </p>
            </div>
        </div>
    </section>

<!-- Section 4 -->
    <section class="section four">
        <div class="container">
            <div class="column-left">
                <h1><a href="market.jsp">Market <span class="material-icons">storefront</span></a></h1>
                <p class="text">
                Buy and Sell crops.
                </p>
            </div>
        </div>
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/TextPlugin.min.js"></script>
    <script src="app.js"></script>
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