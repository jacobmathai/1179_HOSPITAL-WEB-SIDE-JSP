<%-- 
    Document   : addqualificationaction
    Created on : 21 Apr, 2014, 2:52:48 PM
    Author     : sumesh
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dept = request.getParameter("Department");
    String qual = request.getParameter("qual");
    ResultSet rs = new DBConnection().getData("select count(*) from dep_details where department='" + dept + "' and qualification='" + qual + "'");
    if (rs.next()) 
    {
     int count = rs.getInt(1);
     if (count == 0) 
     {
      int i = new DBConnection().putData("update dep_details set qualification='" + qual + "' where department='" + dept + "' and qualification='0' ");
      if (i > 0) 
      {
       JOptionPane.showMessageDialog(null, "Qualification  " + qual + "   Successfully Added");
       response.sendRedirect("addqualification.jsp");
      } 
      else 
      {
         int j = new DBConnection().putData("insert dep_details (qualification,department) values('" + qual + "','" + dept + "' )");
         if (j > 0) 
         {
          JOptionPane.showMessageDialog(null, "Qualification  " + qual + "   Successfully Added");
           response.sendRedirect("addqualification.jsp");
         }
       }
        } 
       else 
        {
          JOptionPane.showMessageDialog(null, "Qualification Exist");
          response.sendRedirect("addqualification.jsp");
        }
    }




%>
