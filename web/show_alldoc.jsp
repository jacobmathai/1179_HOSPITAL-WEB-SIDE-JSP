<%-- 
    Document   : show_alldoc
    Created on : 16 Nov, 2013, 11:20:34 AM
    Author     : prasanth
--%>

<%-- 
    Document   : show_doc
    Created on : 16 Nov, 2013, 10:05:08 AM
    Author     : prasanth
--%>

<%@page import="javax.swing.JOptionPane"%>
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
          <li class="active"><a href="support.jsp"><span>Find Doctor</span></a></li>
          <li><a href="about.jsp"><span>About Us</span></a></li>
          <li><a href="blog.jsp"><span>Doctors</span></a></li>
          <li><a href="contact.jsp"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
          <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="900" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="900" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="900" height="320" alt="" /> </a>  <a href="#"><img src="images/slide4.jpg" width="900" height="320" alt="" /> </a> <a href="#"><img src="images/slide5.jpg" width="900" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
            <div style="border-radius: .5em;border-top:25px bisque solid;border-right: 3px bisque solid;border-left:  3px bisque solid; border-bottom:  3px bisque solid; width:450px; height: 400px; background-color: white; position: relative; left:-70px; padding: 25px; ">
        
        
          <a href="support.jsp" ><img src="images/cancel.png" style=" position: relative;  top: -45px; left:451px;"></img></a>
          <br>
                <%
              String name=request.getParameter("na");
              //JOptionPane.showMessageDialog(null, name);
              
              for(String obj:name.split("-",0)){
                 obj=obj.toUpperCase();
             
          %>
          <span style="color: black; font-size:20px; ">Dr.<%=obj%></span><span style="position: absolute; left:362px; padding: 5px; background: wheat; height:20px; width:105px; border-radius: .5em;"><a style="text-decoration: none;font-size: 18px;" href="show_doc.jsp?na=<%=obj%>">View Profile</a></span>
          <hr style="border:1px #0c1c22 dotted;"></hr> <br>
          <% 
              }
          %>
          
          </div>
        </div>
      </div>
      <div class="sidebar">
      
        <div class="clr"></div>
         
        <div class="gadget">
         
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
           
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span></span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
                       
          </ul>
        </div>
          <br><br><br><br><br><br>
          <br><br><br><br><br><br>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">

  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">Sachin.K.V</a></p>
      <p class="rf">Design by Dream <a href="#">Web Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='#'>free website templates</a></div></body>
</html>


