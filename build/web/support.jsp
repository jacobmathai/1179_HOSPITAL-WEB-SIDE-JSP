<%-- 
    Document   : index
    Created on : 7 Oct, 2013, 12:33:28 PM
    Author     : prasanth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hospital</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<script>
    function lod(){
        var g=document.myform.doc;
        if(g[0].checked){
           
             document.getElementById("name").style.display="block";
        document.getElementById("namebtn").style.display="block";
        document.getElementById("name1").style.display="none";
        document.getElementById("namebtn1").style.display="none";
        }else if(g[1].checked){
            document.getElementById("name").style.display="none";
        document.getElementById("namebtn").style.display="none";
        document.getElementById("name1").style.display="block";
        document.getElementById("namebtn1").style.display="block";
        }
       
    }
    
</script>
</head>
    <body onload="lod();">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#">Apollo<span> Hospitals</span> <small>Touching Lives</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="support.jsp"><span>Cancer Care</span></a></li>
          <li><a href="about.jsp"><span>About Us</span></a></li>
          <li><a href="blog.jsp"><span>Doctors</span></a></li>
          <li><a href="contact.jsp"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
          <!--<div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="900" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="900" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="900" height="320" alt="" /> </a>  <a href="#"><img src="images/slide4.jpg" width="900" height="320" alt="" /> </a> <a href="#"><img src="images/slide5.jpg" width="900" height="320" alt="" /> </a> </div>-->
        <div class="clr"></div>
      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
<!--      <div class="mainbar">
        <div class="article">-->
            <div style="width: 800px; height: 550px; background: white; padding: 50px; border-radius: 1em; position:absolute;left: 50px;">
                <img src="images/heart.png" style="position: absolute;left:490px; top:40px; height:400px;"></img>  
                     <div style="width:430px;">
                        <img src="images/Cancer-Institute.png"></img>
                        
                        <h2 style="color: #1e94b2;">Apollo Expertise</h2>

<p style="color: #1e94b2;">The Apollo Cancer Institutes are some of the best cancer hospitals in India, having comprehensive state-of-the-art facilities and a coordinated multidisciplinary approach for the treatment of patients suffering from cancer. The Positron Emission Tomography (PET) scan at Hyderabad and Chennai, [ a powerful imaging technique for the diagnosis of cancer], the Cyber knife at Chennai that provides unparalleled access to tumours anywhere in the body, and now the Novalis radiosurgery platform at Hyderabad , Delhi and Kolkata provide better treatment of cancer aiming at greater precision, faster treatment delivery, more flexible treatment scheduling and a higher level of patient comfort, all of these undoubtedly making the Cancer Centres of the Apollo hospitals Group the best cancer hospitals in India. The blood and bone marrow transplantation center at Apollo Hospitals, India has performed over 500 transplantations with an excellent success rate .
</p></div>         
       
     <h2 style="position:absolute;top:100px; left:600px; color: #1e94b2;">Find a doctor</h2>
            <div style="width:270px; height:60px; background: silver;padding:40px; border: 1px #1e94b2 solid; position: absolute;left:520px; top:150px;">
           
            <form name="myform" method="post" action="action/find_doc.jsp">
                <input type="radio" name="doc" id="rd1" value="nam" onclick="lod();"/>By Name &ensp;&ensp;&ensp;&ensp;<input type="text" name="name" id="name" style="display: none;position: absolute;top:40px; left: 140px;" required pattern="^([A-Za-z]*)$"/><input type="image" id="namebtn" src="images/search.gif" style="display: none; height: 24px;width: 24px; position: absolute;top:40px; left: 320px;"/><br>
                    <input type="radio" name="doc" id="rd2" value="spec" onclick="lod();"/>By Specialty&ensp;&ensp;<select name="name1"id="name1" style="background-color: white; display: none;position: absolute;top: 63px; left: 140px; width: 185px; height: 25px;">
                     <%
                         String sql="select distinct department from dep_details";
                         String dep="";
                         DB.DBConnection dbc=new DBConnection();
                         ResultSet rs=dbc.getData(sql);
                         while(rs.next()){
                             dep=rs.getString("department");
                        
                     %>
                     <option><%=dep%></option>
                     <% }%>
                    </select><input type="image" src="images/search.gif" id="namebtn1" style="height: 24px;width: 24px; position: absolute;top:63px; left: 320px; display: none;"/>
            </form>
             </div>                  
                    <br>
                  <hr style="border:1px #1e94b2 solid;">   
                      <a href="heart.jsp"><img src="images/Heart-Institute.png"/></a>&nbsp;<a href="ortho.jsp"><img src="images/Institute-of-Orthopaedics.png"/></a>&nbsp;<a href="more.jsp"><img src="images/more.jpeg" style="width: 220px; height:47px;"/></a>
        </div>
<!--        </div>
      </div>-->

<div style="width: 300px; height: 10px; position: absolute; top: 850px;"></div>
    
    </div>
  </div>
 
</div>
</body>
</html>
