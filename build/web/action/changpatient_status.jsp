<%-- 
    Document   : changpatient_status
    Created on : 15 Nov, 2013, 9:25:21 AM
    Author     : prasanth
--%>

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
    String sql="select status from patient_details where id='"+id+"'";
    ResultSet rs=null;
    DB.DBConnection dbc=new DBConnection();
    rs=dbc.getData(sql);
    while(rs.next()){
        st=rs.getString("status");
    }
    if(st.equals("admit")){
        sql="update patient_details set status='discharged',retdate='"+pdate+"',rettime='"+ptime+"' where id='"+id+"'";
    }
    else{
        sql="update patient_details set status='admit',regdate='"+pdate+"',regtime='"+ptime+"' where id='"+id+"'";
    }
   int i=dbc.putData(sql);
   response.sendRedirect("../view_patient.jsp");
%>
