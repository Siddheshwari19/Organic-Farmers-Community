<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sugarcane</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <style>
        /* Fonts imported from google */
        @import url('https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap');

        @import url('https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap');
       
      
       /* Navigation bar CSS */
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
       .pic{
        height: 400px;
        width: 600px;
        padding: 10px 350px;
       
       }
       /* CSS for the information */
       .info{
           padding: 5%;
           font-size: 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color: black;
            background: #1f4037;  
            background: -webkit-linear-gradient(to right, #99f2c8, #1f4037);  
            background: linear-gradient(to right, #99f2c8, #1f4037); 
       } 
       h1{
           text-align: center;
           color: white;
           letter-spacing: 20px;
           font-family: 'Yeseva One', cursive;
       }
       h4{
        font-family: 'Yeseva One', cursive;
        letter-spacing: 1px;
       }
       /* Buttons and links CSS */
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

    <!-- Navigation bar -->
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
<!-- Information on Sugarcane  -->
<img src="Sugarcane.jpg" alt="Image not displayed" class="pic">
<br><br>
    <div class="info">
        <br>
    <h1>SUGARCANE</h1>
   
       <h4> Varieties :</h4>

    Recommend varieties for organic sugarcane production in Tamil Nadu are Co 8021, Co 86032, Co 86249, CoC 90063, CoG 93076, CoG 94077 and CoSi 95071.

    <h4>Land preparation :</h4>

    Deep ploughing once or twice with disc plough followed by shallow ploughing three or four times using cultivator.

    <h4>Spacing :</h4>

    Adopt minimum row spacing of 90 cm. For varieties the spacing can be increased upto150 cm. Furrows must be formed at 20-30 cm deep.

    <h4>Organic manure :</h4>

    Apply farmyard manure or compost or well-decomposed press mud at 80 t/ha either before last ploughing or in the furrows before planting. However, the quantity of organic manure could be adjusted in such a way to supply 280kgN/ha. Through one or more sources like farmyard manure, compost, press mud etc., depending upon their N content.

    <h4>Planting material :</h4>

    Collect setts from 6-8months old disease free nursery crop. Two budded setts are better than three-budded setts. It is always advisable to collect the seed Material from organically grown sugarcane crop.

    <h4>Sett rate and planting :</h4>

    By adopting 90cm spacing, 75,000 two-budded setts are required for planting one hectare.

    <h4>Green manure intercrop :</h4>

    Sow green manure crops like daincha or sunhemp on one side of the ridges on 3rd or 4th day after planting sugarcane and raise it as an intercrop with sugarcane. Harvest and insitu incorporate the intercrop around 45 days after transplanting.

    <h4>Weed management :</h4>

    Hand hoeing and weeding at 30, 60 and 90 days after planting. Follow only non-chemical weed management technologies like hand weeding and Mechanical weed control methods.

    <h4>Biofertilizers :</h4>

    Apply 5 kg each of Azospirillum and Phosphobacteria respectively on 30 and 60 days after planting of sugarcane. Mix the biofertilizers thoroughly with 500 kg/ha of farmyard manure to increase the bulkiness and apply. Give light earthing up and irrigate immediately.

    <h4>Trashing :</h4>

    Remove the dried and senescent leaves at 5th and 7th month and apply as mulch in alternate furrows.
    </p>

    <h4>Irrigation schedule :</h4>

    Germination (up to 35 days):7
    <br>
    Tillering  ( 36- 100 days):10
    <br>
    Grand growth (101-270 days):7
    <br>
    Maturity (271 days to harvest):15
    <br>
    The above schedule is for medium type of soils. Reduce the intervals for light soils and increase for heavy soils. When there is rain adjust the interval depending on the account of rainfall. Ridges and furrows method is cheap and best . Convey the irrigation water from source to the field head through pipelines to reduce conveyance loss.

    <h4>Prevention of lodging :</h4>

    At 7th month after trashing, a wet earthing up will help to reduce lodging of  canes. Tying the canes with trash-twists (trash twist propping) will also help to reduce lodging.

    <h4>Early shoot borer :</h4>

    Trash mulching, frequent irrigations and light earthing up at 35th days will result in lower incidence. Release 125 fertilized female Sturmiopsis parasite/ ha when the crops is at the age of 45 to 60 days.

    <h4>Inter node stem borer :</h4>

    Cards pasted with 0.2 cc eggs of Trichogramma chilonis parasite are available in the parasite breeding laboratories. Get these cards and tie them in the field @ 25 cards/ha equally distributed in 25 places once in 15 days when the crop is 4-11 months of old. Alternatively, set up pheromone traps in the field @ 25/ha spaced at 20 meters apart when the crop is 5 months old, trap and kill the male moths of internode borer. Replace the pheromone vials in the traps in 7th and 9th months.

    <h4>Red rot disease :</h4>

    In places prone to red rot disease grows only resistant varieties such as Co 8021, Co 85019, Co 86010, Co 86032, Co 86249, Co 93009 and Co 94008. In case susceptible varieties are grown, adopt the following practices.
    <ol>
    1.Select and use disease free setts <br>
    2.Remove and destroy affected clumps <br>
    3.Prevent the flow of irrigation/rain water from affected fields to healthy fields <br>
    4.Do not raise ratoon crop from the disease affected crop and <br>
    5.After the harvest of affected crop, grow rice crop and destroy the soil debris inoculums.
    </ol>

    <h4>Smut disease :</h4>

    To manage this disease,
    <br>
    <ol>
    1.Get setts from disease free canes <br>
    2.Remove and destroy affected clumps <br>
    3.Do not allow more than one ratoon crop and <br>
    4.Grow resistant varieties.
    </ol>

    <h4>Grassy shoot disease :</h4>
    
    Treating the setts in an aerated steam therapy (AST) unit at 50°C for one hour can destroy the disease causing organism in the setts. Use the setts from 3-tier nursery raised using AST treated setts to avoid the disease.

    <h4>Cane harvest :</h4>

    Harvest the canes when they are fully mature. The sucrose content in juice of a mature crop will be more than 16 % and the purity of the juice will be more than 85%. In general, harvesting at the age of around 12 months is advantageous. Harvest the canes 2 to 3 cm below the ground level using a hand axe. Topping should be done at the point of break.

    <h4>Cane yield :</h4>

    When all the package of practices are carried out appropriately in time, the cane yield will be around 150 t/ha. In well-drained fertile deep soils, the cane yield can go up to 250 t/ha.

    <h4>Ratoon cane yield :</h4>

    If the ratoon crop is managed well with all the appropriate package of practice, the cane yield from the ratoon crop will be almost equal or marginally lower (around 5%) compared to that of the previous plant/ ratoon crop.
    <br>
    </div>
<!-- Footer for contact us and about us     -->
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
    </div>
</body>
</html>