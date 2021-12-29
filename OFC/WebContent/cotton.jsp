<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cotton</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <style>
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
       /* CSS for information */
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
       h4,h5,h6{
        font-family: 'Yeseva One', cursive;
        letter-spacing: 1px;
        font-size: 100%;
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
    <img src="cotton.jpg" alt="Image not displayed" class="pic">
    <br><br>
        <div class="info">
            <br>
            <!-- Information on Cotton  -->
        <h1>COTTON</h1>
        
        Cotton, the most important fibre crop of India plays a dominant role in its agrarian and industrial economy. It is the backbone of our textile industry, accounting for 70% of total fibre consumption in textile sector, and 38% of the country's export, fetching over Rs. 42,000 crores. Area under cotton cultivation in India (8.9 million ha) is the highest in the world, i.e., 25% of the world area and employs seven million people for their living.

        <h4>Merits of Organic Cotton Cultivation :</h4>

        <h5>(A) Environmentally Friendly Technology :</h5>
        <ul>
        <li> Due to excessive use of fertilisers and insecticides, all the elements of the agro-eco system gets polluted by the conventional method. Organic cotton production relies on non-chemical inputs and will decrease pollution hazards. </li><br>
        <li>Pesticides residues in fibre may cause carcinogenic damage to users. The use of bio-rational products and biocontrol agents for pest management in organic farming will cause no such effects. </li><br>
        <li>Large scale discharge of untreated and unprocessed effluents by textile industry and dyeing units has not only caused health problems to man, cattle and fish in the rivers and canals, but yields of cotton are reported to be affected due to polluted water that is used for irrigation. </li><br>
        <li>Destruction of beneficial soil organisms may cause damage to soil health creating imbalance in the natural population of predators/parasitoids of cotton pests. Organic farming helps to restore or preserve the natural equilibrium between different components of the ecosystem.</li>
</ul>

<h5>(B) Reduction in Cost of Cultivation :</h5>
Modern production technology has lowered the cost-benefit ratio of cotton production. Farmers in Andhra Pradesh, Punjab, Maharashtra etc. are reported to have committed suicide due to escalation of production cost without occurring commensurate profit from cotton cultivation. On the other hand, organic farming creates rural employments and uses of on-farm resources to make it more cost-effective.

<h5>(C) Management of Insecticide Resistance :</h5>

Due to indiscriminate use of hazardous insecticides for controlling cotton pests, the resistance of insects against the insecticide hiked up and in turn compelled the use of more number of sprays, and thus a vicious cycle is created, escalating cost of cultivation. Organic farming will help in reversing this trend. Evidences on poorer choice of multiplication rate of pests on organically grown cotton are encouraging factors to pursue this protocol.

<h4>Approaches for Farming of Organic Cotton :</h4>

Since organic cotton production warrants the cultivation in the absence of agro-chemicals, it involves a careful selection of components of farming system keeping the local resources, agro-climatic features and socio-economic structure for the formation of a suitable package as follows:
<ol>
<li><h5>Selection of site :</h5>

Fields with high degree of soil erosion and heavily infested with perennial weeds should not be put under organic farming. Organic farming is not a farming by neglect or arm-chair cultivation and so, fertility levels of less fertile soils should be improved through organic means before opting for this type of cultivation.</li>

<li><h5>Varietal selection :</h5>

High yielding varieties, which respond well to chemical inputs, may not always be suitable for organic farming. Instead, varieties which are hardy and capable of giving acceptable farming especially in the early phase of conversion are ideal. Varieties, which are jassid-tolerant, can be preferred over susceptible ones. Early maturing varieties are less exhaustive and will also help the crop to escape heavy bollworm damage.</li>

<li><h5>Seed rate and sowing :</h5>

Acid delinted seeds cannot be used according to international norms (e.g. IFOAM) for organic cultivation for the purpose of certification of the fibre. However, those farmers who pursue organic farming for reducing the cost of cultivation and to increase the profitability could use acid-delinted seeds in order to avoid seed borne pathogenic infections and achieve optimum plant stand. If fuzzy seeds are used, however, higher seed rate is to be used in order to achieve the same goal. About 25 kg/ha of seeds at 75x15 cm spacing ensures a final plant population of 85-90 thousand plants/ha. One row of fodder cowpea (Vigna unguiculata) should be drilled between two rows of cotton. This crop could be ploughed down and buried in soil just before its flowering.</li>

<li><h5>Manuring :</h5>

To realise economical production, soil fertility has to be maintained and gradually improved. Improvement and maintenance of organic matter of the soil is important in organic cotton production, as this would increase physical parameters of soil, improve soil structure and enhance nutrient supply. Since huge amounts of FYM to meet nutrient requirement of the cotton crop is not generally available, a combination of sources with different biological properties should be preferably used. Organic manures (FYM, compost, Vermicompost), in situ green manuring, cowpea and Biofertilizers along with fertility restoring crop rotations form the components for maintaining soil fertility.</li>

<h6>a] Farm yard manuring (FYM) :</h6>

FYM @ 15 t/ha must be added before preparatory tillage and mixed thoroughly. FYM should be well decomposed and should be preferably treated with composting organisms such as Trichoderma viride. The rate may gradually be brought down 5-10 t/ha, once the farm yield stabilises over a few years.

<h6>b] Fodder cowpea :</h6>

In situ green manuring with fodder cowpea and its burying at 40 days after sowing [DAS] will ensure a steady N supply during the grand-growth phase and flowering period, when the N demand peaks up in the crop. It hastens microbial activity in soil, reduces weed growth and enhances natural enemy build up. This provides around 400-500 kg dry matter per hectare with 2.5% N and contributes 10-12 kg N/ha during squaring. Its additional benefits include smothering of weeds, controlling seasonal soil erosion and nurturing natural enemies of cotton pests.

<h6>c] Dhaincha (Sesbania aculeata) :</h6>

Dense stand of this legume can be raised around cotton field at a width of 2 m; its lopping cut and spread between cotton rows at 65-70 DAS. Its fast decomposing leaves provide N during early boll development period and stalks act as temporary mulch, preventing soil moisture evaporation.

<h6>d] Vermicompost :</h6>

Vermicompost @ 1-2 t/ha should be added supplementing FYM on the furrow lines on which sowing is done. Its nutrient composition varies with substrate that is verrmicomposted, but generally contains several diverse microflora that aid in good plant growth. It offers good scope for recycling of farm waste.

<h6>e] Biofertilisers :</h6>

Seed inoculation of Azatobactor or Azospirillum @ 200 g/seed required for sowing one acre is recommended.

<li><h5>Technology for Composting :</h5>

<h6>(i) Vermicompost :</h6>

Reliance on green biomass and farmyard manure is a sure method of increasing soil organic content. However, under the existing conditions, these requirements are not fully met with. Enormous quantity of farm wastes and organic residues are simply burnt. In order to utilise farm wastes and organic residue for being recycled into compost, the modern thoughts are for utilising earthworms and fungus that are habituated to such conversion. Promising Indian species, Eisenia foetida can convert organic wastes into vermicompost in about one month's time and convert anything except plastic into compost.

Since preparation of vermicompost utilising any of the above species can be a very promising endeavour in rural areas, in addition to meeting the compost requirement of one's own farm, it is desirable to take this up as part of organic farming. The brief details regarding vermicomposting techniques is as follows.

Vermicompost can be made in raised beds of 15-25 cm height. The length and width can vary according to the quantum of wastes available for composing. Beds of 6x2 m are ideal. These beds should be made slightly raised at the centre and sloping towards the sides (to facilitate effective drainage), preferably under shade. As earthworms do not relish light, it is advisable to keep the pits covered. Darkness also reduces the composting time.

A soft bedding material with wheat/soybean straw is added as the first layer. This should be followed by a thin layer of cow dung slurry. Earthworm culture @ 1 kg/10m length of bed (2m wide) is then added. Earthworm cocoons or starter inoculant worms from vermi compost can also be used. Weeds, leaves chopping, farm wastes, household wastes and other degradable materials can be continuously added on the top. Water should be sprinkled periodically to keep the beds slightly moist, but never wet. Under ideal moist and temperature conditions (27-33° C) the composting time would be 40-50 days. Earthworm castings contain approximately 2.0-2.5% N, 2.5-2.9 per cent P2O5 and 1.2- 1.4% K2O, the exact composition varies according to the substrate and composting conditions. The excreta of organisms contain more N content over their level of consumption of N as in vermi castings too.

<h6>(ii) Composting of cotton stalks through Trichoderma viride :</h6>

Cotton stalks are burnt as fuel after picking of seed cotton is over. This residue together with farm wastes from other crops and weeds can effectively be utilised for preparing compost, through the use of beneficial fungi like Trichoderma viride. The technique, as developed at CICR, Nagpur is briefly described.

In a pit of 10 x 2 x 1m in size, dried cotton stalks from 2 hectare area are filled in four layers interspersed with other soft farm waste, such as sorghum stubble, linseed straw and soybean pod-haulms (to fill the gaps in between cotton stalks) and 50 kg of cow dung (to provide a soft substrate for initial multiplication of the fungus). Each layer was sprinkle inoculated with 2.5 kg T.viride wettable powder in 60 litre water mixed with half-kilogram jaggery and 15 g yeast. The pit is finally covered with one foot layer of sunhemp stalks for checking water loss. Periodic watering is made to maintain sufficient moisture in the pit and turning of the top layer at least once during the decomposition process.

In the span of four months, most of the cotton stalks are converted into compost, the rest (20%) being black, brittle, semi-decomposed stalks. This compost is comparable to well-decomposed vermicompost. It could be used for nutrient recycling, antagonistic fungus against certain soil-borne pathogens, viz., Fusarium spp., Rhizoctonia spp. etc.</li>

<li><h5>Weed Management :</h5>

Fields not infested with perennial weeds such as Cyperus sp. (Motha), Cyanodon dactylon (Doob) and Sachharum sp. (Kans) are preferred for organic farming as these are difficult to control. However, if such weeds occur in patches, their underground propagatory structures (stolons, rhizomes etc.) must be exposed by summer cultivation and manually removed. Mechanical/manual weeding as per existing practice may be adopted. Composting can recycle the weeds removed. It must be ensured that the FYM, compost added is completely decomposed, otherwise many seeds of annual weeds, introduced through FYM, will germinate and aggravate the weed problem. Growing a crop of cowpea between 2 rows of cotton will also suppress the early emerging weeds.</li>

<li><h5>Selection of rotations :</h5>

Crop rotations play a very important role in restoring soil fertility and minimizing damage due to insect pests and weeds. High nutrient-exhaustive rotations must be avoided and instead rotations with a legume that is recommended for the locality may be adopted.</li>

<li><h5> IPM strategies for crop protection :</h5>

The crop protection to reduce the damage due to insect pests to organically cultivated cotton revolves around the use of bioagents such as predators such as Chrysoperla sp. or Apertochrysa spp., egg parasitoids such as Trichogramma, larval parasitoids such as Habrobracon spp. or insect pathogens such as Helicoverpa armigera Nuclear Polyhydrosis Virus [NPV] and a bacterium, Bacillus thuringuiensis var. kurstaki (B.t.k.) formulations along with utilisation of bird perches and botanical insecticides like neem products.

Avoidance of pesticide application by introducing biocontrol agents, either by natural augmentation processes or by artificial releases increased the stability of cotton cultivation. The basic concept of conserving natural mortality agents of pests can be achieved in organic cotton cultivation, primarily by reducing insecticide application. These toxicants destroy both, pests and their natural enemies, and so, are not desirable for common use. To sum up, the following pest suppression strategies are recommended for organic cotton cultivation.</li> <br>

<ul>
    <li>Select a reasonably jassid tolerant cultivator.</li> <br>
<li>Release of Chrysoperla spp. @ 500-1000/ha according to the intensity of jassid damage between 20-25 days of crop growth once. For jassid susceptible cultivator, this may be released after 35 days.</li><br>
<li>Release Trichocards @ 5/ha once at 45-50 days and then after 10-12 days, twice more in order to kill bollworm eggs.</li><br>
<li> Spray H-NPV @ 250 larval equivalent (LE) [1LE= 200 crore (109 ) Poly Inclusion Bodies [PIBs] or Poly Occlusion Bodies [POBs] when very young larvae of American bollworm are spotted. This could be repeated after every 15 days for retaining good inoculum of the pathogen. This could be alternated with any commercial B.t. formulation @ 1.5 l/ha.</li><br>
<li>Release of Habrobracon hebator is also useful for controlling growing bollworm larvae and other caterpillars damaging leaves and flowers.</li><br>
<li>Placement of bird perches @ 5-6/ha would help in increasing the predatory bird visit in cotton fields.</li><br>
<li>The need-based botanical insecticides, seed kernel extract is used at 5% v/v or 1-% oil are very useful to deter pest activity in the crop.</li><br>
<li>Monitoring of bollworm using the respective pheromone traps would give a clue regarding their first occurrence in a season in order to initiate adequate and suitable crop protection measures.</li><br>
<li> One of the important cultural practices that is desirable is to depot the crop that has grown beyond 80 days. This would reduce the egg laying of H.armigera.
</li><br>
</ul>
</ol>
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
</body>
</html>