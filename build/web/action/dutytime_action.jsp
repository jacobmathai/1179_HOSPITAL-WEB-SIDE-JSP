<%-- 
    Document   : dutytime_action
    Created on : 16 Oct, 2013, 12:36:19 PM
    Author     : prasanth
--%>

<%@page import="DB.DBConnection"%>
<%@page import="PRS.*"%>
<%@page import="java.sql.ResultSet"%>
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
            DB.DBConnection d=new DBConnection();
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String deprt=request.getParameter("Department");
            String tin=request.getParameter("timein");
            String tout=request.getParameter("timeout");
            String reglv=request.getParameter("LEAVE ON");
          //JOptionPane.showMessageDialog(null, id+" "+name+" "+deprt+" "+tin+" "+tout);
            int i=DB.DBProcess.duty_time(id, name, deprt, tin, tout);
            String content="Your duty schedule has been updated...\n Time in :"+tin+" Time out :"+tout+"\n LEAVE ON : "+reglv+" This schedule is valid till next updation";
            String sql="select email from doc_details where id='"+id+"'";
            ResultSet rs=d.getData(sql);
            String mail="";
            if(rs.next()){
               mail=rs.getString(1);
            }
            Sendmail sn=new Sendmail();
            sn.sendMail(mail, "Duty Time",content);
            JOptionPane.showMessageDialog(null, "Duty Time Assigned to" +name);
            response.sendRedirect("../enter_dutytime.jsp");
        %>
    </body>
</html>
