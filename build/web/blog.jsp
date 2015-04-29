<%-- 
    Document   : index
    Created on : 7 Oct, 2013, 12:49:46 PM
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
<style type="text/css">
    #reg
        {
            height: 400px;
	width: 600px;

      visibility: visible; position: relative;  left: -150px; display: block; padding:50px;
        background-color:#FFF;
	border: 1px solid #cecece;
        z-index: 15;
	padding: 20px;
	color: #000;
        -webkit-box-shadow: 0px 0px 4px #000 inset;
	-moz-box-shadow: 0px 0px 4px #000 inset;
	box-shadow: 0px 0px 4px #000 inset;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-o-border-radius: 10px;
	-ms-border-radius: 10px;
	-khtml-border-radius: 10px;
	border-radius: 10px;

}
form {
	font-family:'Century Gothic', arial, serif;
	width: 350px;
	margin-left: 25px;
}
input, textarea, select {
	font-family:"Myriad Pro", "Trebuchet MS", sans-serif;
	background-color: #fff;
	border: 1px solid #ccc;
	width: 300px;
	min-height: 30px;
	display: block;
	margin-bottom: 16px;
	margin-top: 8px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	-ms-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	color: #000;
}
textarea {
	min-height: 200px;
	resize:none;
}
input:focus, textarea:focus, select:focus{
	-webkit-box-shadow: 0 0 25px #ccc;
	-moz-box-shadow: 0 0 25px #ccc;
	box-shadow: 0 0 25px #ccc;
}
/* The interesting bit */
input:not(:focus), textarea:not(:focus), select:not(:focus){
	opacity: 0.5;
}
input:required, textarea:required, select:required{
 background: url("images/asterisk_orange.png") no-repeat 280px 7px;
}
input:valid, textarea:valid, select:valid{
background: url("images/") no-repeat 280px 5px;
}
input:focus:invalid, textarea:focus:invalid, select:focus:invalid{
 background: url("images/") no-repeat 280px 7px;
}
input[type=submit] {
	font-size: 24px;
	padding: 10px;
	background: none;
	opacity: 1.0;
}
</style>

<script>
function loadXMLDoc()
{
      var str=document.getElementById("dep").value;
    
  // alert(str);
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  
      xmlhttp.open("POST","table.jsp?q="+str,true);
  

xmlhttp.send();
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    //    alert(xmlhttp.responseText);
     document.getElementById("tab").innerHTML=xmlhttp.responseText;
 
    }
  }
}
</script>

</head>
    <body onload="loadXMLDoc();">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#">Apollo<span> Hospitals</span> <small>Touching Lives</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="support.jsp"><span>Cancer Care</span></a></li>
          <li><a href="about.jsp"><span>About Us</span></a></li>
          <li  class="active"><a href="blog.jsp"><span>Doctors</span></a></li>
          <li><a href="contact.jsp"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a>  <a href="#"><img src="images/slide4.jpg" width="940" height="320" alt="" /> </a> <a href="#"><img src="images/slide5.jpg" width="940" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
            <h2><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AVAILABLE</span> DOCTORS</h2>
           </div>
        <div class="article">
            <div id="reg" style="padding-top:50px; padding-left: 80px;">
           
                SELECT DEPARTMENT<select style="height: 35px;" name="dep" id="dep" onchange="loadXMLDoc();">
                    <%
                        String sql="select distinct department from dep_details";
                        String dep="";
                        DBConnection dbc=new DBConnection();
                        ResultSet rs=dbc.getData(sql);
                        while(rs.next()){
                         dep=rs.getString("department");
                       
                    %>
                    <option><%=dep%></option>
                    <% }%>
                </select>
                <table border="5" id="tab" style="width: 550px; color: black;"></table>
                </div>
        </div>
      </div>
      <div class="sidebar">
       
        <div class="clr"></div>
        <div class="gadget">
          
        </div>
        <div class="gadget">
        
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
 
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">Sachin.K.V</a>.</p>
      <p class="rf">Design by Dream <a href="#">Web Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='#'>free website templates</a></div></body>
</html>
