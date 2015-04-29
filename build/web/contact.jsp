<%-- 
    Document   : index
    Created on : 7 Oct, 2013, 12:19:23 PM
    Author     : prasanth
--%>

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
    function val(){
                if(document.getElementById('name').value===""){
          
            document.getElementById("nam").style.display="block";
            document.getElementById("i").style.display="none";
            return false;
        }
        
        else if(document.getElementById('id').value===""){
          document.getElementById("nam").style.display="none";
          document.getElementById("i").style.display="block";
            return false;
        }
        else{
            return true;
        }
    }
</script>
</head>
<body>
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
          <li><a href="blog.jsp"><span>Doctors</span></a></li>
          <li class="active"><a href="contact.jsp"><span>Contact Us</span></a></li>
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
         </div>
        <div class="article">
            <div style="font-size: 15px;color:#1e94b2; background: white; height:500px; width:700px; position: relative; left:-200px; top:-10px;border-radius: .5em;border-top:25px bisque solid;border-right: 3px bisque solid;border-left:  3px bisque solid; border-bottom:  3px bisque solid; padding: 40px; ">
                <a href="index.jsp" ><img src="images/cancel.png" style=" position: relative;  top:-60px;left:720px;"></img></a>
                <h2 style="color:#1e94b2;"><span>Contact</span></h2>
          <div class="clr"></div>
          <p style="color:#1e94b2;">We'd love to hear from you on how we can improve ourselves to serve you better.</p>
        
                <h2 style="color:#1e94b2;"><span>Send us</span> mail</h2>
          <div class="clr"></div>
          <form action="action/getmessage.jsp" method="post" id="sendemail" >
            <ol>
              <li>
                <label for="name" style="color:#1e94b2;">Name (required)</label>
                <input id="name" name="name" class="text" required pattern="^([A-Za-z\s\.]*)$"/><span id="nam" style="color: red;font-size:12px; display: none;">Enter your name</span>
              </li>
<!--              <li>
                <label for="email">Email Address (required)</label>
                <input id="email" name="email" class="text" /><span id="mail" style="color: red;font-size:12px; display: none;">Enter your email</span>
              </li>-->
              <li>
                <label for="id">Patient's Id (required)</label>
                <input id="id" name="id" class="text" /><span id="i" style="color: red;font-size:12px; display: none;">Invalid Id</span>
              </li>
              <li>
                <label for="message">Your Message</label>
                <textarea id="message" name="message" rows="8" cols="50"></textarea>
              </li>
              <li>
                  <input type="image" name="imageField" id="imageField" src="images/submit.png" style="height:40px; width: 120px;" onclick="return val()" class="send" />
                <div class="clr"></div>
              </li>
            </ol>
          </form>
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
