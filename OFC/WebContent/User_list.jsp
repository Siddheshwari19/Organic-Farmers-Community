
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("Username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "sdl";
String userId = "root";
String password = "siddhi";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <style>
    
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');
		body{
		background-image: url('16.png');
		background-size:cover;
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
            font-family: 'Slabo 27px', serif;
            font-size: 40px;
        }
        table{
            text-align: center;
            font-family: 'Slabo 27px', serif;
            font-size: 150%;
            width: 100%;
            height: 100px;
            border-collapse: collapse;
            border-collapse: separate;
            border-spacing: 0 15px;
        }
        thead{
            background: rgb(117, 113, 113);
            border: 1px solid black;
            padding: 10px;
            padding-top: 20px;
            padding-bottom: 20px;
            text-align: center;
            line-height: 50px;
        }
        tbody{
            background:lightgrey;
            line-height: 50px;
        }
        /*#table{
            text-align: center;
            font-family: 'Slabo 27px', serif;
            font-size: 150%; 
            width: 100%; 
            height: 150px;
            border-collapse: collapse;
        }
        #table td, #table th{
            border: 1px solid black;
            padding: 10px;
        }
        #table tr:nth-child(even){
            background-color: lightgrey;
        }
        #table th{
            padding-top: 20px;
            padding-bottom: 20px;
            text-align: center;
            color: black;
        }
        #table td{
            background: rgb(5, 175, 118); 
        }
        .row1{
            background: rgb(117, 113, 113);
            border: 1px solid black;
            padding: 10px;
            padding-top: 20px;
            padding-bottom: 20px;
            text-align: center;
        }
        .rows{
            background-color: lightgrey;
            border: 1px solid black;
            padding: 10px;
            padding-top: 20px;
            padding-bottom: 20px;
            text-align: center;
        }*/
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
            
            /*position:fixed;*/
            bottom: 0;
            left:450px;
            }
            
    </style>
</head>

<body>
<div class="bar">
        <img src="FinalLogo.png" class="img" alt="Image not displayed" height="60" width="60">
        <p class="img">OFC</p>
       
        <a href="logout.jsp" class="topbar">Logout <span class="material-icons">logout</span></a>
       <a href="profile1.jsp" class="topbar">Profile <span class="material-icons">person</span></a>
        <a href="community.jsp" class="topbar">Community <span class="material-icons">groups</span></a>
        <a href="market.jsp" class="topbar">Market <span class="material-icons">storefront</span></a>
        <a href="home.jsp" class="topbar">Home <span class="material-icons">home</span></a> 
    </div>

<h2>Member List <span class="material-icons">people</span></h2>
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<p class="statements">Successfully Updated</p>
<% } %>
<%
if("invalid".equals(msg))
{
%>
<p class="statements">Something went wrong,Try again!</p>
<% } %>
<%
if("deleted".equals(msg))
{
%>
<p class="statements">Successfully Updated!</p>
<% } %>

<table>
<thead>
        <tr>
        <th scope="col">Name</th>
        <th scope="col">Phone no.</th>
        <th scope="col">Land area</th>
        <th scope="col">Current crop </th>
        <th scope="col">Crop sown date</th>
        </tr>
    </thead>

<%
String Username=request.getParameter("Username");
try
{
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdl","root","siddhi");
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery("select * from profiletable where Username='"+Username+"'");
while(rs.next())
{

%>
<tbody>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phno") %></td>
<td><%=resultSet.getString("landarea") %></td>
<td><%=resultSet.getString("currcrop") %></td>
<td><%=resultSet.getString("currcropdate") %></td> 
</tr>
</tbody>
<%
}
}
catch(Exception e)
{
System.out.println(e);
}
%>
</table>

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