<%-- 
    Document   : patreg_action
    Created on : 16 Oct, 2013, 11:48:58 AM
    Author     : prasanth
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="PRS.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%      
           // DB.DBConnection d=new DBConnection(); 
            String dept=request.getParameter("dept");
            
           // String sql="select id from dep_details where department='"+dept+"'";
            ResultSet rs=new DB.DBConnection().getData("select id from dep_details where department='"+dept+"'");
            if(rs.next())
            {
                JOptionPane.showMessageDialog(null, "Department Exist");
                response.sendRedirect("adddepartment.jsp"); 
            }   
            else
            {
               int i=new DB.DBConnection().putData("insert into dep_details(department)value('"+dept+"')");
               if(i>0)
                 {
                   JOptionPane.showMessageDialog(null, "Department   " +dept+ "   Successfully Added");
                   response.sendRedirect("adddepartment.jsp");
                 }
                 else
                 {
                    JOptionPane.showMessageDialog(null, "Department Insertion Failed"); 
                    response.sendRedirect("adddepartment.jsp");
                   
                 }
             }
        %>
    </body>
</html>
