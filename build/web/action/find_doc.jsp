<%-- 
    Document   : find_doc
    Created on : 16 Nov, 2013, 9:29:30 AM
    Author     : prasanth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="javax.swing.JOptionPane"%>
<%
    String nam=request.getParameter("doc");
     String name="";
     int i=0;
     DBConnection dbc=new DBConnection();
     ResultSet rs=null;
  //  JOptionPane.showMessageDialog(null, nam);
    if(nam.equals("nam")){
        name=request.getParameter("name");
        
        String sql="select count(*) from doc_details where name='"+name+"'";
        rs=dbc.getData(sql);
        while(rs.next()){
            i=rs.getInt(1);
           // JOptionPane.showMessageDialog(null, i);
        }
        if(i==1){
            response.sendRedirect("../show_doc.jsp?na="+name);
        }else if(i>1){
            response.sendRedirect("../showalldocnam.jsp?na="+name+"&c="+i);
        }else{
            response.sendRedirect("../support.jsp");
        }
        
    }else{
        name=request.getParameter("name1");
        String doct="";
        String sql="select name from doc_details where department='"+name+"'";
        rs=dbc.getData(sql);
        while(rs.next()){
            doct=doct+rs.getString("name")+"-";
        }
        if(doct.length()>1){
            response.sendRedirect("../show_alldoc.jsp?na="+doct);
        }else{
            JOptionPane.showMessageDialog(null, "No doctors available");
             response.sendRedirect("../support.jsp");
        }
         
    }
    //JOptionPane.showMessageDialog(null, name);
   %>
