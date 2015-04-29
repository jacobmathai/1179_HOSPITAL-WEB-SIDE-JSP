<%-- 
    Document   : doc_login_action
    Created on : 9 Feb, 2014, 12:36:17 PM
    Author     : prasanth
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
    <%
         //int status=0;
        JOptionPane.showMessageDialog(null, "login success");
        String un=request.getParameter("user");
        String pass=request.getParameter("pass");
       //JOptionPane.showMessageDialog(null,un);
       //JOptionPane.showMessageDialog(null,pass);
        DB.DBConnection dbc=new DBConnection();
        String sql="select * from login where username='"+un+"' and password='"+pass+"'";
        ResultSet rs=dbc.getData(sql);
        if(rs.next())
        {
       //JOptionPane.showMessageDialog(null,"dsfds");
            int id=rs.getInt("id");
            ResultSet r=new DB.DBConnection().getData("select status from doc_details where id='"+id+"'");
            if(r.next())
            {
            int status=r.getInt("status");
             if(status==1)
              {
               out.print("Blocked");//sending message to android
              }
             else
             {          
              out.print(id);//sending id to android
             }
           }
        }
       else
        {
          out.print("fail");
        }
        
    %>