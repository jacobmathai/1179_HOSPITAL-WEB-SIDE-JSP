<%-- 
    Document   : changepass_action
    Created on : 24 Mar, 2014, 11:44:36 AM
    Author     : prasanth
--%>
<%@page import="DB.DBConnection"%>
<%
    String pass=request.getParameter("p");
    String newp=request.getParameter("np");
    DB.DBConnection db=new DBConnection();
    String sql="update login set password='"+newp+"' where password='"+pass+"' and usertype='admin'";
    int i=db.putData(sql);
    if(i>0){
        response.sendRedirect("../changepass.jsp?q=1");
    }else{
        response.sendRedirect("../changepass.jsp?q=2");
    }
%>