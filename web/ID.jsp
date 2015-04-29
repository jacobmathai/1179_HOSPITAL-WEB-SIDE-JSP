<%-- 
    Document   : ID
    Created on : 11 Feb, 2014, 10:38:31 AM
    Author     : prasanth
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<option></option>
<%
      String des="";                                                          
    String dep=request.getParameter("q");
    //JOptionPane.showMessageDialog(null, dep);
   String sql="Select name from doc_details where department='"+dep+"' and status='0'";
   DBConnection db=new DBConnection();
    ResultSet rs=null;
   rs=db.getData(sql);
   while(rs.next())
    {
   des=rs.getString("name");
 // JOptionPane.showMessageDialog(null, des);
   // JOptionPane.showMessageDialog(null, "No Doctors Available");
   %>
  <option><%=des%></option>
  <%}%>
       
