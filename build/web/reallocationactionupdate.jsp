<%-- 
    Document   : reallocationactionupdate
    Created on : 2 May, 2014, 4:12:39 PM
    Author     : sumesh
--%>

<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String pat_id=request.getParameter("id"); 
        String doc=request.getParameter("seldoc"); 
        String doct="";
        int count=Integer.parseInt(session.getAttribute("count").toString());
      //  JOptionPane.showMessageDialog(null, pat_id+" "+doc);
        String a=session.getAttribute("q").toString();
         DB.DBConnection dbc=new DBConnection();
        String sql="Select * from doc_details where name='"+doc+"' ";                          
        ResultSet rs3=new DBConnection().getData(sql);
            while(rs3.next())
              {
                doct=rs3.getString("id");
              }
            //JOptionPane.showMessageDialog(null, doct);
            int x=new DB.DBConnection().putData("update patient_details set doc_id='"+doct+"', cun_doc='"+doc+"' where id='"+pat_id+"'");
            if(x>0)
            {
                JOptionPane.showMessageDialog(null, "Patient Reallocated");
                if(count>1){
                    response.sendRedirect("reallocatepatient.jsp?q="+a);
                }else{
                    
                    response.sendRedirect("action/doctorblockaction.jsp?k="+a);
                }
                
            }
            else
            {
                JOptionPane.showMessageDialog(null, "Patient Reallocation Process Failed");
                response.sendRedirect("reallocatepatient.jsp?="+a);
            }
            
        %>
    </body>
</html>
