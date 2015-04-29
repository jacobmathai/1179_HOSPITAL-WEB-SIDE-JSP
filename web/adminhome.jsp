<%-- 
    Document   : adminhome
    Created on : 12 Oct, 2013, 9:37:10 AM
    Author     : prasanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
       <style type="text/css">
        body {background: #362f2d;height: 100%;padding: 0;margin: 0;}.ad{text-align: center;position: absolute;top:20px;margin:0 auto;width:100%;}.container {margin: 0 auto;width: 410px;text-align: center;}.container h1 {font-family: Arial;font-size: 48px;text-align: center;text-transform: uppercase;color: #282321;margin: 220px 0 100px 0;text-shadow: 0 1px 0 #6c5e5b, 0 -1px 0 rgba(0,0,0,0.6);filter: dropshadow(color=#6c5e5b, offx=0, offy=1);}

/*------------------------------------------*/
/*--------- Dark Menu Styles Begin ---------*/
/*------------------------------------------*/

        /* Main Dark Menu Unordered List First Level Style */
        ul.dark_menu {
            list-style: none;
            padding: 0;
            font-family: Arial;
            font-size: 14px;
            line-height: 14px;
        }

        /* Clears all floated List Items */
        ul.dark_menu:after {
            content: "";
            clear: both;
            display: block;
            overflow: hidden;
            visibility: hidden;
            width: 0;
            height: 0;
        }

            /* First Level List Items Style */
            ul.dark_menu li {
                float: left;
                margin: 0 0 0 10px;
                position: relative;
            }

            /* First List Item in First Level Style */
            ul.dark_menu li:first-child {
                margin: 0;
            }

                /* List Items Links Style */
                ul.dark_menu li a, ul.dark_menu li a:link {
                    color: white;
                    text-decoration: none;
                    display: block;
                    padding: 10px 26px;
                    
                    /* Text Shadow */
                    text-shadow: 0 1px 0 #4b433e;
                    
                    /* Gradient Background */
                    background: #362f2c; /* Old browsers */
                    background: -moz-linear-gradient(top, #362f2c 0%, #282321 100%); /* FF3.6+ */
                    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#362f2c), color-stop(100%,#282321)); /* Chrome,Safari4+ */
                    background: -webkit-linear-gradient(top, #362f2c 0%,#282321 100%); /* Chrome10+,Safari5.1+ */
                    background: -o-linear-gradient(top, #362f2c 0%,#282321 100%); /* Opera11.10+ */
                    background: -ms-linear-gradient(top, #362f2c 0%,#282321 100%); /* IE10+ */
                    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#362f2c', endColorstr='#282321',GradientType=0 ); /* IE6-9 */
                    background: linear-gradient(top, #362f2c 0%,#282321 100%); /* W3C */

                    /* Border Radius */
                    -webkit-border-radius: 4px;
                    -moz-border-radius: 4px;
                    border-radius: 4px;

                    /* Box Shadows */
                    -webkit-box-shadow: inset 0 1px 0 #564b46,
                                       0 1px 1px #181514;
                    -moz-box-shadow: inset 0 1px 0 #564b46,
                                     0 1px 1px #181514;
                    box-shadow: inset 0 1px 0 #564b46,
                                0 1px 1px #181514;

                    /* Transition Effect */
                    -webkit-transition: all 1s ease;
	                -moz-transition: all 1s ease;
	                -o-transition: all 1s ease;
	                -ms-transition: all 1s ease;
	                transition: all 1s ease;
                }

                    /* List Items Links Hover State Style */
                    ul.dark_menu li a:hover {
                        color: #73635e;

                        /* Text Shadow */
                        text-shadow: 0 1px 1px #000;

                        /* Gradient Background */
                        background: highlighttext; /* Old browsers */
                        background: -moz-linear-gradient(top, #282321 0%, #362f2c 99%, #362f2c 100%); /* FF3.6+ */
                        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#282321), color-stop(99%,#362f2c), color-stop(100%,#362f2c)); /* Chrome,Safari4+ */
                        background: -webkit-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Chrome10+,Safari5.1+ */
                        background: -o-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Opera11.10+ */
                        background: -ms-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* IE10+ */
                        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#282321', endColorstr='#362f2c',GradientType=0 ); /* IE6-9 */
                        background: linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* W3C */

                        /* Transition Effect */
                        -webkit-transition: all 1s ease;
	                    -moz-transition: all 1s ease;
	                    -o-transition: all 1s ease;
	                    -ms-transition: all 1s ease;
	                    transition: all 1s ease;
                    }

                    /* List Items Links Active and Selected State Style */
                    ul.dark_menu li a.selected, ul.dark_menu li a:active {
                        color: white;
                        background: darkcyan;

                        /* Text Shadow */
                        text-shadow: 0 1px 1px #000;

                        /* Box Shadows */
                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                           0 1px 0 #5e524f;
                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                         0 1px 0 #5e524f;
                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                    0 1px 0 #5e524f;
                        
                        /* Transition Effect */
                        -webkit-transition: all 1s ease;
	                    -moz-transition: all 1s ease;
	                    -o-transition: all 1s ease;
	                    -ms-transition: all 1s ease;
	                    transition: all 1s ease;
                    }

                    /* Sub Menu Unordered List Second Level Style */
                    ul.dark_menu li ul {
                        display: none;
                    }

                    /* Before Second Level Unordered List Style */
                    ul.dark_menu li ul:before {
                        content: " ";
                        position: absolute;
                        display: block;
                        z-index: 1500;
                        left: 0;
                        top: -10px;
                        height: 10px;
                        width: 100%;
                    }

                    /* Sub Menu Unordered List Second Level Style
                        When Parent List Item is Hovered */
                    ul.dark_menu li:hover ul {
                        position: absolute;
                        display: block;
                        z-index: 1000;
                        left: 0;
                        top: 44px;
                        padding: 5px 0;
                        list-style: none;
                        background: #282321;

                        /* Box Shadows */
                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                           0 1px 0 #5e524f;
                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                         0 1px 0 #5e524f;
                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                    0 1px 0 #5e524f;

                        /* Border Radius */
                        -webkit-border-radius: 4px;
                        -moz-border-radius: 4px;
                        border-radius: 4px;
                    }

                        /* Second Level Menu List Items Style */
                        ul.dark_menu li ul li {
                            float: none;
                            margin: 0 10px;                            
                            border-bottom: 1px solid #191614;
                            border-top: 1px solid #3a3230;
                        }

                        /* First List Item in Second Level Menu Style */
                        ul.dark_menu li ul li:first-child {
                            margin: 0 10px;
                            border-top: 0 none;
                        }

                        /* Last List Item in Second Level Menu Style */
                        ul.dark_menu li ul li:last-child {
                            border-bottom: 0 none;
                        }

                        /* Second Level List Items Links Style */
                        ul.dark_menu li ul li a, ul.dark_menu li ul li a:link {
                            color: yellowgreen;
                            display: block;
                            background: transparent none;
                            padding: 10px 20px 10px 5px;
                            white-space: nowrap;

                            /* Text Shadow */
                            text-shadow: 0 1px 2px #000;
                                                        
                            /* Box Shadows */
                            -webkit-box-shadow: 0 0 0 rgba(0,0,0,0);
                            -moz-box-shadow: 0 0 0 rgba(0,0,0,0);
                            box-shadow: 0 0 0 rgba(0,0,0,0);

                            /* Border Radius */
                            -webkit-border-radius: 0px;
                            -moz-border-radius: 0px;
                            border-radius: 0px;
                        }

                        /* Second Level List Items Links Hover State Style */
                        ul.dark_menu li ul li a:hover {
                            text-decoration: none;
                            background: lightpink;
                            color: darkblue;
                            text-shadow: 1px 2px  #121214;
                        }

/*----------------------------------------*/
/*--------- Dark Menu Styles End ---------*/
/*----------------------------------------*/
    </style>
<title>Hospital</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#">Apollo<span> Hospitals</span> <small>Touching Lives</small></a></h1>
      </div>
        <div class="container" style="top:75px; left: 400px; width:600px; position:absolute;">
 

        <!-- Dark Menu Begin -->
        <ul class="dark_menu">
            <li><a href="#" class="selected">Admin Home</a></li>
        
            <li>
                <a href="#">Register</a>
                <!-- Sub Menu Begin -->
                <ul>
                    <li><a href="doctor_reg.jsp">New Doctor</a></li>
                    <li><a href="patient_reg.jsp">New Patient</a></li>
                    <li><a href="adddepartment.jsp">New Department</a></li>
                    <li><a href="addqualification.jsp">New Qualification</a></li>
                </ul>
                <!-- Sub Menu End -->
            </li>
            <li>
                <a href="#">View</a>
                <!-- Sub Menu Begin -->
                <ul>
                    
                    <li><a href="view_doctor.jsp">Doctor Details</a></li>
                    <li><a href="view_patient.jsp">Patient Details</a></li>
                    <li><a href="view_feedback.jsp">Patient Feedbacks</a></li>
                </ul>
                <!-- Sub Menu End -->
            </li>
            <li><a href="#">Duty Time</a>
                <ul>
                    <li><a href="enter_dutytime.jsp">Assign Duty Time</a></li>
                    <li><a href="view_dutytime.jsp">View Duty Time</a></li>
                    
                </ul>            
            </li>
            
            <li>
                <a href="#">Other</a>
                <!-- Sub Menu Begin -->
            <ul>
                <li><a href="changepass.jsp">Change Password</a></li>
                <li><a href="index.jsp">Logout</a></li>
            </ul>
         </li>
               <!-- Sub Menu End -->
            
        </ul>
        <!-- Dark Menu End -->
    </div>
        
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="320" alt="" /> </a> <a href="#"><img src="images/slide4.jpg" width="940" height="320" alt="" /> </a> <a href="#"><img src="images/slide5.jpg" width="940" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>We're all about better health,</span><br>better Service</h2>
<!--          <p class="infopost"><span class="date"></span><a href="#"></a> <a href="#"></a><a href="#"></a> <a href="#" class="com"><span></span></a></p>-->
          <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="171" height="218" alt="" class="fl" /></div>
          <div class="post_content">
            <p>Apollo Hospitals Chennai, was established in 1983.
                Today it is one of the most respected hospitals in the world, and is also amongst the most 
                preferred destinations for both patients from several parts of India, as well as for medical 
                tourism and medical value travel. The hospital specializes in cutting-edge medical procedures. 
             </p>
              <h3 style="color: cyan;" >Apollo Hospitals Chennai – Milestones</h3>
              <p><ul><li>First donor incompatible kidney transplant performed at Apollo Hospitals Chennai using technique of Column adsorption of blood group antibodies.</li>
                      <li>Endovascular Aneurysm repair for 2 large aneurysms simultaneously performed at Apollo Hospitals Chennai.
                          First hospital in India to perform Total Knee Replacement and the Illizarov Procedure.</li> 
                      <li>Pioneers of Birmingham Hip Resurfacing Procedure in India.</li>
                      <li>Pioneers of multi-organ and cord blood transplants in India.</li>
                      <li>1,30,000 heart surgeries with a success rate of 99.6%, on par with global standards.</li></u</p>
            <p class="spec"><a href="#" class="rm">&bull; Read more &bull;</a></p>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
<!--          <h2><span>We'll Make Sure Template</span> Works For You</h2>-->
<!--          <p class="infopost">Posted on <span class="date">29 aug 2016</span> by <a href="#">Admin</a> &nbsp;&nbsp;|&nbsp;&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a> <a href="#" class="com"><span>7</span></a></p>-->
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="171" height="207" alt="" class="fl" /></div>
          <div class="post_content">
              <h3 style="color: cyan;" >Apollo Emergency Care</h3>
              <p>Apollo Emergency Care is a scientifically developed protocol-driven emergency system. The system has several unique and innovative features.<br><ul><li>An easy to remember emergency access number - 1066</li>
                              <li>Ambulances that are well equipped and manned by trained personnel –indeed a veritable 'Hospital on Wheels'</li> 
                              <li>Air Ambulance Services for remote areas and life-threatening emergencies</li>
                              <li>Effective communication system between the central control room, ambulances and the emergency facilities in the hospitals</li>
                              <li>Standardised emergency rooms in the hospitals that are a part of the network</li>
                              <li>Common functional and medical protocols across the system</li>
                              <li>Training of doctors and other personnel required for pre-hospital and in-hospital care</li></ul>
                              </p>
            <p class="spec"><a href="#" class="rm">&bull; Read more &bull;</a></p>
          </div>
          <div class="clr"></div>
        </div>
<!--        <p class="pages"><small></small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>-->
      </div>
      <div class="sidebar">
        <div class="clr"></div>

      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
     <div class="col c2">
        <h2><span>Services</span> Overview</h2>
        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
        <ul class="fbg_ul">
          <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
          <li><a href="#">Excepteur officia deserunt.</a></li>
          <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
        </ul>
      </div>
        <div class="col c3">
        <h2><span>Contact</span> Us</h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
        <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
          <span>Telephone:</span> +123-1234-5678<br />
          <span>FAX:</span> +458-4578<br />
          <span>Others:</span> +301 - 0125 - 01258<br />
          <span>E-mail:</span> <a href="#">ApploHospitals@USA.com</a> </p>
      </div>
      <div class="clr"></div>
    </div>
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