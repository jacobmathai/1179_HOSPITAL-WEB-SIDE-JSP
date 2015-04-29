<%-- 
    Document   : deletedoc
    Created on : 24 Mar, 2014, 3:10:13 PM
    Author     : prasanth
--%>
<%@page import="DB.DBConnection"%>
<%
    String id=request.getParameter("d");
    DB.DBConnection d=new DBConnection();
    String sql="delete from doc_details where id='"+id+"'";
    int i=d.putData(sql);
    response.sendRedirect("view_doctor.jsp");
%>