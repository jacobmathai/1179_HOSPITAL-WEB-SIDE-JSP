<%-- 
    Document   : patient_reg
    Created on : 14 Oct, 2013, 11:23:08 AM
    Author     : prasanth
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
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
                        }
   #reg
        {
            height: 540px;
	width: 540px;

      visibility: visible; position: relative;  left: -125px; display: block;
        background-color: rgba(0, 0, 0, 0.80);
	border: 1px solid #cecece;
        z-index: 15;
	padding-bottom: 10px;
        padding-left: 60px;
        padding-right: 10px;
        padding-top: 20px;
	color: #FFF;
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
	width: 670px;
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
	color:graytext;
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


<script type="text/javascript">
        function validation()
      {
          
          var b=document.getElementById('email').value;
          //alert(b);
           var l=b.length;
         // alert(l);
          var c=b.indexOf("@");
          //alert(c);
          var d=b.indexOf(".",c);
         // alert(d);
         var a=document.getElementById('mobilenumber').value;
        // alert(a);
          if(document.getElementById('name1').value=="")
              {
                 
          document.getElementById('regn').style.display='block';
      
          return false;
          

          }
          else if(document.getElementById('cunsult').value=="")
              {
                  document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='block';
      
          return false;
          

          }
           else if(document.getElementById('Department').value=="")
              {
                  document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='block';
      
          return false;
          

          }
          else if(document.getElementById('House').value=="")
              {
                document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';

          document.getElementById('regh').style.display='block';
          return false;
          }
          else if(document.getElementById('Place').value=="")
              {
                   document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';
               document.getElementById('regh').style.display='none';

          document.getElementById('regp').style.display='block';
          return false;
          }
          else if(document.getElementById('Post').value=="")
              {
                     document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';
               document.getElementById('regh').style.display='none';
               document.getElementById('regp').style.display='none';

          document.getElementById('regpo').style.display='block';
          return false;
          }
          else if(document.getElementById('District').value=="")
              {
                   document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';
               document.getElementById('regh').style.display='none';
               document.getElementById('regp').style.display='none';

               document.getElementById('regpo').style.display='none';

          document.getElementById('regdi').style.display='block';
          return false;
          }
                   
          else if(isNaN(a)||a.length!=10){
                 document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';
               document.getElementById('regh').style.display='none';
               document.getElementById('regp').style.display='none';

               document.getElementById('regpo').style.display='none';
              document.getElementById('regdi').style.display='none';
              document.getElementById('regm').style.display='block';
              return false;
          }
          else if(document.getElementById('email').value=="")
              {
                        document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';
               document.getElementById('regh').style.display='none';
               document.getElementById('regp').style.display='none';

               document.getElementById('regpo').style.display='none';
              document.getElementById('regdi').style.display='none';
                    document.getElementById('regm').style.display='none';

          document.getElementById('rege').style.display='block';
          return false;
          }
          else if((c+1>d)||(c<0)||(d>l)||d==-1){
                    document.getElementById('regn').style.display='none';
          document.getElementById('regc').style.display='none';
          document.getElementById('regd').style.display='none';
               document.getElementById('regh').style.display='none';
               document.getElementById('regp').style.display='none';
               document.getElementById('regpo').style.display='none';
              document.getElementById('regdi').style.display='none';
              document.getElementById('regm').style.display='none';
          document.getElementById('rege').style.display='block';
          return false;
          }
        else
            {
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
        <div class="container" style="top:75px; left: 400px; width:600px; position:absolute;">
 

        <!-- Dark Menu Begin -->
        <ul class="dark_menu">
            <li><a href="adminhome.jsp" >Admin Home</a></li>
            <li>
                <a href="#" class="selected">Register</a>
                <!-- Sub Menu Begin -->
                <ul>
                    <li><a href="doctor_reg.jsp">New Doctor</a></li>
                    <li><a href="#">New Patient</a></li>
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
        
            
                 <div id="reg" >
        <div >
            <h1><b>PATIENT DETAILS</b><br><a href="view_doctor.jsp"><img src="images/cancel.png"></a></h1></div>

                <p><a id="popupContactClose"></a></p>
                <%
                            int pid=0; 
                            String name="";
                            String doc="";
                            String dep="";
                            String doc_id="";
                            String pat_id="";
                 pat_id=request.getParameter("id");
               // JOptionPane.showMessageDialog(null, pat_id);
                DB.DBConnection dbc=new DBConnection();
                String sql="select * from patient_details where id='"+pat_id+"'";
                ResultSet rs=dbc.getData(sql);
                while(rs.next())
                            {
                                pid=rs.getInt("id");
                                name=rs.getString("name");
                                doc_id=rs.getString("doc_id");
                                doc=rs.getString("cun_doc");
                                dep=rs.getString("department");
//                                JOptionPane.showMessageDialog(null, pid+" "+name+" "+doc+" "+dep+" "+doc_id);
                            }
                %>
                <form action="reallocationactionupdate.jsp" name="contact"method="post">
                    
                    <table>
                    <tr><td><label>ID:</label></td>
                        <td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                        </td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                    <td><input type="text" name="id" id="id" value="<%=pid%>" readonly/><span name="regn" id="regn" style="display:none;color:red"><median>characters only</median> </span></td></tr>
                        
                        <tr><td><label>NAME:</label></td>
                        </td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                        <td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                        <td><input type="text" name="name" id="name" value="<%=name%>" readonly/></td></tr>
                                    
                        <tr><td><label>DOCTOR:</label></td>
                        </td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                        <td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                        <td><input type="text" name="doc" id="doc" value="<%=doc%>" readonly/></td></tr>
                    
                            <tr><td><label for="Department">DEPARTMENT:</label></td>
                            </td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                               <td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>   
                <td><input type="text" name="dept" id="dept" value="<%=dep%>" readonly/><span name="regh" id="regh" style="display:none;color:red"><median>invalid House Name</median> </span></tr></td>
                   
                            <tr><td><label for="Place">SELECT A DOCTOR:</label></td>
                            </td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                               <td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                    <td>
                        <select style="height: 35px;" name="seldoc" id="seldoc" required>
                          <option></option>-->
                            <%
                                  String doct="";
                                   String sql3="Select name from doc_details where department='"+dep+"' and id!='"+doc_id+"' ";
                                    
                                   ResultSet rs3=new DBConnection().getData(sql3);
                                    while(rs3.next())
                                    {
                                    doct=rs3.getString("name");
                            %>
                                <option><%=doct%></option>
                               <%}%> 
                    </select></td>
                        <span name="regp" id="regp" style="display:none;color:red"><median>invalid Place</median> </span></tr></td> 
                               
                               <tr><td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                               <td></td><td></td></td><td></td><td></td></td><td></td></td><td></td><td></td>
                               <td><input type="submit" value="UPDATE" onclick="return validation();"/></td></tr>
                    </table>
                </form>
                <br/>


    </div>     
                    <br><br>
    </div>
  </div>
    </div>
  </div>
</div>
</html>