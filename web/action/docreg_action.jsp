<%-- 
    Document   : docreg_action
    Created on : 15 Oct, 2013, 4:13:00 PM
    Author     : prasanth
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DB.DBConnection"%>
<%@page import="PRS.Sendmail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String depart=request.getParameter("Department");
            String qual=request.getParameter("Qualification");
            String exper=request.getParameter("Experience");
            String mobile=request.getParameter("mobilenumber");
            String email=request.getParameter("email");
            String dob=request.getParameter("dob");
            String age=request.getParameter("age");
            String house=request.getParameter("house");
            String place=request.getParameter("place");
            String pin=request.getParameter("pin");
            String dist=request.getParameter("dist");
            String status=new String("0");
            String regdate="";
            String regtime="";
          Date date = new Date();
         // rdate=date.toString();
           SimpleDateFormat dt = new SimpleDateFormat ("dd.MM.yyyy");
           SimpleDateFormat tm = new SimpleDateFormat ("hh:mm:ss");
           regdate=dt.format(date);
           regtime=tm.format(date);
          // JOptionPane.showMessageDialog(null,regdate);
           //JOptionPane.showMessageDialog(null,regtime);
           ResultSet rs=new DB.DBConnection().getData("select * from doc_details where email='"+email+"' or mobile='"+mobile+"'");
           if (rs.next()){
               JOptionPane.showMessageDialog(null, "Doctor Already Exist");
               response.sendRedirect("../doctor_reg.jsp");
           }
           else{
               
           //JOptionPane.showMessageDialog(null, name+" "+depart+" "+qual+" "+exper+" "+mobile+" "+email);
            int i=DB.DBProcess.doc_reg(name, dob, age, house, place, pin, dist, depart, qual, exper, mobile, email, status,regdate,regtime);
             if(i==1){
                 int id=DB.DBProcess.get_doc_id();
                 String uname=name+id;
                 String pass=name+id;
                 String sql="insert into login values ('"+id+"','"+uname+"','"+pass+"','doctor')";
                 DB.DBConnection db=new DBConnection();
                 db.putData(sql);
                Sendmail sn=new Sendmail();
                String content="Your Username is "+uname+"\n Your Password is"+pass+""; 
                sn.sendMail(email, "Login Details", content);
             }
            response.sendRedirect("../doctor_reg.jsp");
            
           }
        %>
    </body>
</html>
