<%-- 
    Document   : patreg_action
    Created on : 16 Oct, 2013, 11:48:58 AM
    Author     : prasanth
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="PRS.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DB.DBConnection d=new DBConnection(); 
            String name=request.getParameter("name");
            String id=request.getParameter("cunsultid");
            String Cun_doc=request.getParameter("cunsult");
            String deprt=request.getParameter("Department");
            String house=request.getParameter("House");
            String place=request.getParameter("Place");
            String pin=request.getParameter("Pin");
            String dist=request.getParameter("District");
            String mob=request.getParameter("mobilenumber");
            String email=request.getParameter("email");
            String dob=request.getParameter("dob");
            String age=request.getParameter("age");
            String disease=request.getParameter("disease");
            String regdate="";
            String regtime="";
            Date date = new Date();
         // rdate=date.toString();
            SimpleDateFormat dt = new SimpleDateFormat ("dd.MM.yyyy");
            SimpleDateFormat tm = new SimpleDateFormat ("hh:mm:ss");
            regdate=dt.format(date);
            regtime=tm.format(date);
            //JOptionPane.showMessageDialog(null, name+" "+Cun_doc+" "+deprt+" "+house+" "+place+" "+pin+" "+dist+" "+mob+" "+email+" "+dob+" "+age+" "+disease);
            String sql="select email from doc_details where id='"+id+"'";
            ResultSet rs=d.getData(sql);
            String mail="";
            String content="You have got a new patient\n Patient Name: "+name;
            ResultSet rs1=new DB.DBConnection().getData("select * from patient_details where email='"+email+"' or mobile='"+mob+"'");
            if (rs.next()){
               JOptionPane.showMessageDialog(null, "Patient Already Exist");
               response.sendRedirect("../doctor_reg.jsp");
           }
           else{
            if(rs.next()){
                mail=rs.getString(1);
            }
            Sendmail sn=new Sendmail();
            sn.sendMail(mail, "", content);
            
            int i=DB.DBProcess.patient_reg(name, id, Cun_doc, deprt, house, place, pin, dist, mob, email, dob, age, disease,regdate,regtime);
            
            response.sendRedirect("../patient_reg.jsp");
            }%>
    </body>
</html>
