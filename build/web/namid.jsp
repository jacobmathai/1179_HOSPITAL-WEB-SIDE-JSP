<%-- 
    Document   : namid
    Created on : 14 Nov, 2013, 3:07:39 PM
    Author     : prasanth
--%>

<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
     <option></option>
           <%
      String des="";                                                          
    String dep=request.getParameter("q");
    //JOptionPane.showMessageDialog(null, dep);
   String sql="Select name from doc_details where department='"+dep+"' and status='0'";
   DBConnection db=new DBConnection();
    ResultSet rs=null;
   rs=db.getData(sql);
   while(rs.next()){
   des=rs.getString("name");
 //  JOptionPane.showMessageDialog(null, des);
   %>
  <option><%=des%></option>
   <%}%> 
     </body>
</html>
