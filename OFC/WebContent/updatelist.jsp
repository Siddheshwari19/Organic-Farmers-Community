<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.* " %>
      <%@page import="Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OFC | Update</title>
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
           
            bottom: 0;
            left:450px;
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
   
        .profile{
             /*background-color:gray;
             width: 400px;
             border: none;
             padding: 90px ; */
             margin: 40px;
             font-family: Georgia, 'Times New Roman', Times, serif;
             font-size: 1.5em;
             opacity: 0.8;
             text-align:center;
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
            bottom: 0;
            left:450px;
            text-align:center;
            }
.statements{
        text-align: center;
        font-family: 'Slabo 27px', serif;
        color: navy;
        font-size: 20px;
    }
    </style>
</head>
<body>
<div class="bar">
        <img src="FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">OFC</p>
       
         <a href="logout.jsp" class="topbar">Logout <span class="material-icons">logout</span></a>
       <a href="User_list.jsp" class="topbar">User List <span class="material-icons">people</span></a>
        <a href="community.jsp" class="topbar">Community <span class="material-icons">groups</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a> 
    </div>
    <%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<p class="statements"> Successfully Updated</p>
<% } %>
<%
if("invalid".equals(msg))
{
%>
<p class="statements"> Something went wrong,  Try again!</p>
<% } %>
<%
String Username=request.getParameter("Username");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from profiletable where Username='"+Username+"'");
while(rs.next())
{
%>
<div class="profile">
            <form action="updateaction.jsp" method="post">

               
                <h2>Profile</h2>
                Please Edit your Profile
                <hr><br>


                <label for="name"  >Name : </label><br>
                  <input type="text" value="<%=rs.getString(1)%>" name="name" id="name" size="50" class="tab" placeholder="Enter your Name" required>  
               
               
              <!--    <label for="Username" >User name :</label><br>-->
                  <input type="hidden" value="<%=rs.getString(2)%>" name="Username" id="Username" size="50" class="tab" placeholder="Insert your existing username" required>  
                <br><br>

                <label for="number" >Phone No. :</label><br>
                  <input type="text" value="<%=rs.getString(3)%>"  name="phno" id="phno" size="50" class="tab" placeholder="Enter your Phone number" required>  
                <br><br>

                <label for="landarea" >Land Area :</label><br>
                <input type="text" value="<%=rs.getString(4)%>"  name="Landarea" id="landarea" placeholder="Enter Land area in acres"  class="tab" size="50" required>
                <br><br>
               
                <label for="currcrop" >Current Crop :</label><br>
                <input type="text" value="<%=rs.getString(5)%>"  name="currcrop" id="currcrop" placeholder="Enter the current crop planted"  class="tab" size="50" required>
                <br><br>
               
                <label for="currcropdate" >Date when crop was sown :</label><br>
                <input type="date" value="<%=rs.getString(6)%>"  name="currcropdate" id="currcropdate" placeholder="Enter the date when current crop was sown"  class="tab" size="50" min="2019-01-01" max="2021-05-31" required>
                <br>
                <br>
       
                <center><button type="submit" class="btn2" >Save</button><br><br></center>
           
            </form>
        </div>
        <%
        }
}
catch(Exception e)
{
System.out.println(e);
}

%>
    <tr>
        <td>
          <center>
          <div class="links">
               <a class="btns" href="home.jsp">Home |</a>
                <a class="btns" href="community.jsp">About us | </a>
                <a class="btns" href="community.jsp">Contact us |</a>
                <a class="btns" href="community.jsp">References </a>
                    </div>
            </center>
        </td>
    </tr>
 
</body>
</html>