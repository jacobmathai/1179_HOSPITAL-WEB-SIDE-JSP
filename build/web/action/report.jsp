<%-- 
    Document   : report.jsp
    Created on : 2 Aug, 2013, 9:51:03 AM
    Author     : prasanth
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String data=session.getAttribute("report").toString();
            //JOptionPane.showMessageDialog(null,data);
            String patname=session.getAttribute("patName").toString();
           // JOptionPane.showMessageDialog(null,patname);
//            String doc=session.getAttribute("redoc").toString();
//            JOptionPane.showMessageDialog(null,doc);
          //  String typ=session.getAttribute("ReType").toString();
          //  JOptionPane.showMessageDialog(null,typ);
            //JOptionPane.showMessageDialog(null,data+"   "+patname+" "+doc);

        %>
        <a href="DocHome.jsp">Home</a>&ensp;<a href="CreateReport.jsp">Submit New Report</a>&ensp;<a href="logout.jsp">Log Out</a>
        <center><font color="red"><b><u><h2><%=patname%>'s Medical Report</h2></u></b></font><br>
            <font color="black"><%=data%></font><br><br>
            <a href="next.jsp">Next</a>

        </center>
    </body>
</html>
