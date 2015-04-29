<%-- 
    Document   : getdoc
    Created on : 24 Mar, 2014, 4:58:16 PM
    Author     : prasanth
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
    String id=request.getParameter("q");
    String sql="select * from doc_details where id='"+id+"'";
    DB.DBConnection d=new DBConnection();
   // JOptionPane.showMessageDialog(null, sql);
    ResultSet rs=d.getData(sql);
    if(rs.next()){
        String dep=rs.getString("department");
     //   JOptionPane.showMessageDialog(null, dep);
        %>
       <td><input type="text" name="dep" readonly required value="<%=dep%>"/></td>
 <%
        session.setAttribute("sdep", dep);
    }else{
        session.setAttribute("sdep","");
    }
%>                           