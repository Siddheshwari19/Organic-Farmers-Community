<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy / Sell</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

@import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');

body{
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        background-image: url('32.png');
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
   padding: 5px 5px;
   float: left;
   font-size: 20px;
   color: black;
   background-size: cover;
   font-family: 'Abril Fatface', cursive;
}
h2{
    text-align: center;
    padding-top: 50px;
    letter-spacing: 2px;
    font-size:50px;
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
 .buy {
    margin-right: 20px;
    text-transform: uppercase;
    background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%)
 }
 .sell {
    text-transform: uppercase;
    background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%)
    }
 .buy, .sell{
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
  .buy:hover, .sell:hover {
    background-position: right center; 
    text-decoration: none;
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
        padding: 10px 400px;
        position: fixed;
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
        <a href="profile1.jsp" class="topbar">Profile <span class="material-icons">person</span></a>
        <a href="community.jsp" class="topbar">Community <span class="material-icons">groups</span></a>
        <a href="Crops.jsp" class="topbar">Crops <span class="material-icons">eco</span></a>
        <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a> 

    </div><br><br><br><br><br>
    <div class="choose">
    <h2>BUY OR SELL</h2>
    
    <div class="buttons">
        <a href="buy.jsp" class="buy"><span class="material-icons">shopping_bag</span> Buy</a>
        <a href="sell.jsp" class="sell"><span class="material-icons">sell</span> Sell</a>
    </div>
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
</body>
</html>