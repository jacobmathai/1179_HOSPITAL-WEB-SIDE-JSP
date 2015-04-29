<%-- 
    Document   : deletepat
    Created on : 24 Mar, 2014, 3:31:18 PM
    Author     : prasanth
--%>
<%@page import="DB.DBConnection"%>
<%
    String id=request.getParameter("d");
    DB.DBConnection d=new DBConnection();
    String sql="delete from patient_details where id='"+id+"'";
    int i=d.putData(sql);
    response.sendRedirect("view_patient.jsp");
%>