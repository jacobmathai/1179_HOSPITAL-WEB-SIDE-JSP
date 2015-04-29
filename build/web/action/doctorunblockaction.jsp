<%-- 
    Document   : doctorunblockaction
    Created on : 24 Apr, 2014, 10:55:36 AM
    Author     : sumesh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String st="";
          String pdate="";
          String ptime="";
            Date date = new Date();
         // rdate=date.toString();
            SimpleDateFormat dt = new SimpleDateFormat ("dd.MM.yyyy");
            SimpleDateFormat tm = new SimpleDateFormat ("hh:mm:ss");
            pdate=dt.format(date);
            ptime=tm.format(date);
          String doctorid=request.getParameter("k");
          int j=new DB.DBConnection().putData("update doc_details set status=0,regdate='"+pdate+"',regtime='"+ptime+"' where id='"+doctorid+"'");
          JOptionPane.showMessageDialog(null,"Doctor Working");
          response.sendRedirect("../view_doctor.jsp");
        %>
    </body>
</html>
