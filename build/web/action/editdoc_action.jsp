<%-- 
    Document   : editdoc_action
    Created on : 24 Mar, 2014, 2:00:09 PM
    Author     : prasanth
--%>
<%@page import="DB.DBConnection"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String qua=request.getParameter("qua");
    String exp=request.getParameter("exp");
    String mob=request.getParameter("mob");
    String ema=request.getParameter("ema");
    DB.DBConnection D=new DBConnection();
    String sql="update doc_details set qualification='"+qua+"', experience='"+exp+"',mobile='"+mob+"',email='"+ema+"' where id='"+id+"'";
    int i=D.putData(sql);
    response.sendRedirect("../view_doctor.jsp");
%>