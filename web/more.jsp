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
            <div style="width: 800px; height:800px; background: white; padding: 50px; border-radius: 1em; position:absolute;left: 50px;border-top:25px wheat solid; border-bottom: 5px wheat solid; border-left:5px wheat solid;border-right: 5px wheat solid; ">
                <a href="support.jsp" ><img src="images/cancel.png" style=" position: relative;  top: -70px; left:825px;"></img></a>
                <img src="images/heart.png" style="position: absolute;left:490px; top:40px; height:300px;"></img>  
                     <div style="width:430px;">
                         <img src="images/Institute-of-Neurosciences.png"></img>
                        
                        <h2 style="color: #1e94b2;">Apollo Expertise</h2>

<p style="color: #1e94b2;">The Apollo Institutes of Neurosciences are equipped to treat the entire range of neurological diseases. Transsphenoidal surgery for pituitary tumors, spinal fusions, X-Knife for fractioned treatment of benign and malignant tumours (stereo tactic radiotherapy), and many more cutting edge treatments make Apollo Hospitals a leader in neurosurgical care. Ably supported by modern neuro-radiology services, neuro-intensive care facilities as well as medical and radiation oncology services, neurological specialists at Apollo Hospitals achieve outcomes matching those of the leading institutions across the globe.
</p></div>         
       
     <h2 style="position:absolute;top:100px; left:600px; color: #1e94b2;">Find a doctor</h2>
            <div style="width:270px; height:60px; background: silver;padding:40px; border: 1px #1e94b2 solid; position: absolute;left:520px; top:150px;">
           
            <form name="myform" method="post" action="action/find_doc.jsp">
                <input type="radio" name="doc" id="rd1" value="nam" onclick="lod();"/>By Name. &ensp;&ensp;&ensp;&ensp;<input type="text" name="name" id="name" style="display: none;position: absolute;top:40px; left: 140px;"/><input type="image" id="namebtn" src="images/search.gif" style="display: none; height: 24px;width: 24px; position: absolute;top:40px; left: 320px;"/><br>
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
                      <img src="images/Critical-Care.png"/>
                      <h2 style="color: #1e94b2;">Apollo Expertise</h2>
                      <p style="color: #1e94b2;">The Critical Care units at Apollo Hospitals, India integrate many specialties and diverse technologies, offering the possibility of survival to patients who are acutely and critically ill. They are designed and managed based on the fact that methodical organisation of Critical Care services influences important overall outcome measures such as mortality, length of stay and infection rates. A lot of emphasis is also placed on areas like nurses' training, standardizing care through clinical pathways and the identification of ethical and economic issues pertaining to Critical Care.
                          
                      </p><br>
                      <hr style="border:1px #1e94b2 solid;">
                          <img src="images/Preventive-Medicine.png"/>
                      <h2 style="color: #1e94b2;">Apollo Expertise</h2>
                      <p style="color: #1e94b2;">Apollo Hospitals has been a pioneer in the area of preventive health care and preventive checks in India, through the Apollo Preventive Health Check programmes. With vast experience in the area of preventive health care, a range of tailor-made packages have been developed to cater to the needs of a wide cross section of individuals. One of the most comprehensive Preventive Health Care and Screening Programmes in the country, the Apollo Preventive Health Checks, India offers the convenience of all the tests under one roof, expert specialist consultations and immediate treatment, if called for.   
                      </p><br>
                      <hr style="border:1px #1e94b2 solid;">
        </div>
<!--        </div>
      </div>-->

<div style="width: 300px; height: 10px; position: absolute; top:1100px;"></div>
    
    </div>
  </div>
 
</div>
</body>
</html>
