<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create profile</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');

        body{
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            /* background-image: url(31.jpg); */
            background-size: cover;
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
       
        .buttons{
            display: flex;
            justify-content: center;
            letter-spacing: 2px;
            font-family: 'Yeseva One', cursive;
            padding-top: 50px;
        }
         .btn1 {
            margin-right: 20px;
            text-transform: uppercase;
            background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD  51%, #4CB8C4  100%)
         }
         .btn2 {
            text-transform: uppercase;
            background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%)
            }
         .btn1, .btn2{
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
          .btn1:hover, .btn2:hover {
            background-position: right center; 
            text-decoration: none;
          }

    </style>
</head>
<body>
    <div class="bar">
        <img src="Final Logo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">
            OFC
        </p>
        <a href="Community.html" class="topbar">Community</a>
        <a href="Crops.html" class="topbar">Crops</a>
        <a href="User List.html" class="topbar">User List</a>
        <a href="Homepage1.html" class="topbar">Home</a>
    </div>

<br><br><br><br><br><br><br><br><br><br><br><br><br>

    <br><br>
    <div class="buttons">
    <a href="Profile.jsp" class="btn1">Create New Profile</a>
        <a href="editdeletelist.jsp" class="btn2">Existing Profile</a>
    </div>

        <tr>
            <td >
                <div class="links">
                    <a class="btns" href="Homepage1.html">Home |</a> 
                    <a class="btns" href="About us.html">About us | </a> 
                    <a class="btns" href="Contact us.html">Contact us |</a> 
                    <a class="btns" href="References.html">References </a>  
                </div>
            </td>
        </tr>
</body>
</html>