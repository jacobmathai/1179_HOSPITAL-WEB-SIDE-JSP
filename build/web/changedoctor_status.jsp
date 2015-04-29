<%-- 
    Document   : changpatient_status
    Created on : 15 Nov, 2013, 9:25:21 AM
    Author     : prasanth
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%
    String st="";
    String pdate="";
    String ptime="";
            Date date = new Date();
         // rdate=date.toString();
            SimpleDateFormat dt = new SimpleDateFormat ("dd.MM.yyyy");
            SimpleDateFormat tm = new SimpleDateFormat ("hh:mm:ss");
            pdate=dt.format(date);
            ptime=tm.format(date);
            
       int id=Integer.parseInt(request.getParameter("id"));
       DB.DBConnection dbc=new DBConnection();
       ResultSet rs=null;
       rs=dbc.getData("select status from doc_details where id='"+id+"'");
       while(rs.next())
       {
        st=rs.getString("status");
       }
       if(st.equals("working"))
       {
        ResultSet r=null;
        r=dbc.getData("select count(doc_id) from patient_details where doc_id='"+id+"'");
        if(r.next())
        {
         JOptionPane.showMessageDialog(null, "Doctor can't Quit!"+"\nDoctor have patients"+"\nPlease reallocate all patients of the doctor and try again");
         response.sendRedirect("view_doctor.jsp"); 
         }
        else
        {
         dbc.putData("update doc_details set status='quitted',retdate='"+pdate+"',rettime='"+ptime+"' where id='"+id+"'");
         JOptionPane.showMessageDialog(null,"Doctor Quitted");
         response.sendRedirect("view_doctor.jsp");
        }
       }
       else
       {
        dbc.putData("update doc_details set status='working',regdate='"+pdate+"',regtime='"+ptime+"' where id='"+id+"'");
        JOptionPane.showMessageDialog(null,"Doctor Working");
        response.sendRedirect("view_doctor.jsp");
       }

%>
