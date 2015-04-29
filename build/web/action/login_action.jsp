<%-- 
    Document   : login_action
    Created on : 26 Mar, 2014, 9:35:00 AM
    Author     : prasanth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="javax.swing.JOptionPane"%>
        <%
            String name=request.getParameter("uname");
            String pass=request.getParameter("upass");
            DB.DBConnection db=new DBConnection();
            String sql="select * from login where username='"+name+"' and password='"+pass+"' and usertype='admin'";
            ResultSet rs=db.getData(sql);
//            JOptionPane.showMessageDialog(null, pass);
            if(rs.next()){
                JOptionPane.showMessageDialog(null, "Login Successfull!" + "" + "\n Welcome Administrator!");
                response.sendRedirect("../adminhome.jsp");
            }else{
                JOptionPane.showMessageDialog(null, "Login Failed");
                response.sendRedirect("../index.jsp");
            }
        %>