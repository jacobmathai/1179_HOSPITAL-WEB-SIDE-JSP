<%-- 
    Document   : qua
    Created on : 14 Nov, 2013, 12:34:10 PM
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
       
    </head>
    <body>
 
       <%
      String des="";                                                          
    String dep=request.getParameter("q");
    //JOptionPane.showMessageDialog(null, dep);
   String sql="Select qualification from dep_details where department='"+dep+"'";
   DBConnection db=new DBConnection();
    ResultSet rs=null;
   rs=db.getData(sql);
   while(rs.next()){
   des=rs.getString("qualification");
 //  JOptionPane.showMessageDialog(null, des);
   %>
  <option><%=des%></option>
   <%}%> 
     </body>
</html>
