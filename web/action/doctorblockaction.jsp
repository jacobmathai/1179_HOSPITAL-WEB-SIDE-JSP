<%-- 
    Document   : blockaction
    Created on : 24 Apr, 2014, 10:49:52 AM
    Author     : sumesh
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id="";

id= request.getParameter("k");
//JOptionPane.showMessageDialog(null, id);
            String st="";
            String d="";
            String pdate="";
            String ptime="";
            Date date = new Date();
         // rdate=date.toString();
            SimpleDateFormat dt = new SimpleDateFormat ("dd.MM.yyyy");
            SimpleDateFormat tm = new SimpleDateFormat ("hh:mm:ss");
            pdate=dt.format(date);
            ptime=tm.format(date);
            DB.DBConnection dbc=new DBConnection();
            ResultSet rs=null;
            
            rs=dbc.getData("select status from doc_details where id='"+id+"'");
       while(rs.next())
       {
        st=rs.getString("status");
       }
       if(st.equals("0"))
       {
        ResultSet r=null;
        r=dbc.getData("select * from patient_details where doc_id='"+id+"'");
       // JOptionPane.showMessageDialog(null, r);
        if(r.next())
        {
         JOptionPane.showMessageDialog(null, "Doctor can't Blocked!"+"\nDoctor have patients"+"\nPlease reallocate all patients of the doctor and try again");
         response.sendRedirect("../reallocatepatient.jsp?q="+id);
         }
        else
        {
         dbc.putData("update doc_details set status=1,retdate='"+pdate+"',rettime='"+ptime+"' where id='"+id+"'");
         JOptionPane.showMessageDialog(null,"Doctor Blocked");
         response.sendRedirect("../view_doctor.jsp");
        }
       }
       else
       {
           
       }
        
        
            
            
            
            
        %>
    </body>
</html>
