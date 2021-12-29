<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OFC | Crops</title>
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
        .slider{
            width: 50%;
            height: 50%;
            position: absolute;
            top : 40%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-size: cover;
            animation:slider 9s infinite linear;
            text-align: center;
            font-family: 'Antic Slab', serif;
            
        }
        @keyframes slider{
            0%{background-image: url(Wheat.jpg);
            background-size:cover ;
            }
            35%{background-image: url(Sugarcane.jpg);
            background-size:cover ;
            }
            75%{background-image: url(cotton.jpg);
            background-size:cover ;
            }
            100%{background-image: url(Jowar.jpg);
            background-size:cover ;
            } 
        }
         .bg{
            font-family: 'Antic Slab', serif;
            font-size:25px;
            background-color: lightgrey;
            border: none;
            padding: 70px;
            margin: 10px;
        } 
        .left{
            float:left;
        }
        .right{
            float: right;
        }
        .crops{
            overflow: auto;
            font-family: 'Antic Slab', serif;
            font-size:22px;
            padding : 70px; 
            border: none;
            margin: 5px;
            line-height: 190%;
            color: white;
            background: #1f4037;  
            background: -webkit-linear-gradient(to right, #99f2c8, #1f4037);  
            background: linear-gradient(to right, #99f2c8, #1f4037); 
        }
        .sec{
            height: 30%;
            width: 30%;
            float:right;
        }
       .pics{
           width: 550px;
           height:300px;
       }
        .btns1{
            text-decoration: none;
            color: black;
            font-size: 40px;
            background-color: white;
            border-radius: 0.8em;
            padding: 15px;
       }
       .btns1:hover{
            color: white;
            background:transparent;
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
            text-align:center;
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

 
     <br>

<div class="slider">
    
</div>
<br>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<div class="crops">
    <a href="sugarcane.jsp" class="btns1">Sugarcane</a>
    <img src="Sugarcane.jpg" class="sec" alt="Image cannot be displayed" >
    <p>Sugarcane belongs to the family Gramineae, is a widely grown crop in India.Sugarcane is one of the most important agro-industrial also cash crops of India. Organic farming is a holistic management system that improves and promotes the health of agro-ecosystem related to nutrient cycles, biodiversity, soil microbial, and biochemical activities. It emphasizes management practices involving substantial use of green manuring, organic manures, and management of diseases and pests through the use of non-synthetic pesticides and practices. h</p>
</div>
<br>
<div class="crops">
    <a href="wheat.jsp" class="btns1">Wheat</a>
    <img src="Wheat.jpg" class="sec" alt="Image cannot be displayed" >
    <p>Wheat is the second most important cereal crop of India and plays a dynamic role in the food and
        nutritional security of the country. Wheat has played a very important role in stabilizing food grain
        production in the country over the past few years. With the increasing population, the food
        requirement of the world is also increasing rapidly. And Wheat is an important food crop that plays a
        key role in meeting the world food requirement.</p>
</div>
<br>
<div class="crops">
    <a href="jowar.jsp" class="btns1">Jowar</a>
    <img src="Jowar.jpg" class="sec" alt="Image cannot be displayed" >
    <p>Jowar is one of the top cereal crops in the world, along with oats, wheat, corn, rice, and barley. Jowar is one of the cereal crops that can be used for food and feed. It has wide adaptability and tolerance to environmental stress. An annual grass that is very drought tolerant, Jowar is an excellent choice for arid and dry areas. It has special adaptations to climate extremes and is a very stable source of nutrition as a result. It is most commonly red and hard when ripe and is usually dried after harvesting for longevity, as the grains are stored whole. Jowar can be harvested mechanically, although higher crop losses will result if the Jowar is too moist.</p>
</div>
<br>
<div class="crops">
    <a href="cotton.jsp" class="btns1">Cotton</a>
    <img src="cotton.jpg" class="sec" alt="Image cannot be displayed" >
    <p>Cotton, the most important fibre crop of India plays a dominant role in its agrarian and industrial economy. It is the backbone of our textile industry, accounting for 70% of total fibre consumption in textile sector, and 38% of the country's export, fetching over Rs. 42,000 crores. Area under cotton cultivation in India (8.9 million ha) is the highest in the world, i.e., 25% of the world area and employs seven million people for their living.</p>
</div>
<br>
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