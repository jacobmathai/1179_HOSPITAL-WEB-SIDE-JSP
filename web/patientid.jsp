<%-- 
    Document   : patientid
    Created on : 18 Apr, 2014, 3:47:31 PM
    Author     : sumesh
--%>

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
   String sql="Select department from doc_details where name='"+dep+"'";
   DBConnection db=new DBConnection();
    ResultSet rs=null;
   rs=db.getData(sql);
   while(rs.next()){
   des=rs.getString("department");
 //  JOptionPane.showMessageDialog(null, des);
   %>
  <option><%=des%></option>
   <%}%> 
     </body>
</html>
