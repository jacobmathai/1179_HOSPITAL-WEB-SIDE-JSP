<%-- 
    Document   : namdep
    Created on : 14 Nov, 2013, 3:11:18 PM
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
    String des="";                                                          
    String dep=request.getParameter("q");
   // JOptionPane.showMessageDialog(null, dep);
   String sql="Select id from doc_details where name='"+dep+"'";
   DBConnection db=new DBConnection();
    ResultSet rs=null;
   rs=db.getData(sql);
   while(rs.next()){
   des=rs.getString("id");
 //  JOptionPane.showMessageDialog(null, des);
   %>
    <option></option>
  <option><%=des%></option>
   <%}%> 
    </body>
</html>
