<%-- 
    Document   : getdoc
    Created on : 24 Mar, 2014, 4:58:16 PM
    Author     : prasanth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
    String id=request.getParameter("q");
    String sql="select * from doc_details where id='"+id+"'";
    DB.DBConnection d=new DBConnection();
    ResultSet rs=d.getData(sql);
    if(rs.next()){
        String nam=rs.getString("name");
        %>
        <td><input type="text" id="nn" name="doc" readonly required value="<%=nam%>"/></td>
   <%
        session.setAttribute("snam",nam);
    }else{
        session.setAttribute("snam","");
    }
%>                           