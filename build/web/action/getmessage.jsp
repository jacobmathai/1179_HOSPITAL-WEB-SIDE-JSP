<%-- 
    Document   : getmessage
    Created on : 8 Oct, 2013, 1:45:02 PM
    Author     : prasanth
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String name=request.getParameter("name");
            String id=request.getParameter("id");
            String msg=request.getParameter("message");
            String mail="";
           String sql="select * from patient_details where id='"+id+"' and name='"+name+"'";
           DB.DBConnection dbc=new DBConnection();
           ResultSet rs=dbc.getData(sql);
           if(rs.next()){
               mail=rs.getString("email");
               DB.DBProcess.feedback(id, name,mail,msg);
           }else{
               JOptionPane.showMessageDialog(null, "Invalid details");
           }
            response.sendRedirect("../contact.jsp");
        %>
    </body>
</html>
