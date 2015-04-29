<%-- 
    Document   : table
    Created on : 18 Nov, 2013, 11:42:01 AM
    Author     : prasanth
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            String dep=request.getParameter("q");
        %>
        <table >
            <tr>
                <th rowspan="2">No</th>
                <th rowspan="2">Doctor Name</th>
                <th rowspan="2">Qualification</th>
                 <th rowspan="2">Experience</th>
                <th colspan="2">Duty Time</th>
            </tr>
            <tr><th>Time In</th><th>Time Out</th></tr>
           
            <%
            String name="",qua="",exp="",timein="",timeout="";
            int id=0;
            ResultSet rs1=null;
            String sql="select * from doc_details where department='"+dep+"'";
           // JOptionPane.showMessageDialog(null, sql);
            DBConnection dbc=new DBConnection();
            DBConnection dbc1=new DBConnection();
            ResultSet rs=dbc.getData(sql);
            int no=0;
            while(rs.next()){
                no++;
                id=rs.getInt("id");
                name=rs.getString("name");
                qua=rs.getString("qualification");
                exp=rs.getString("experience");
               // JOptionPane.showMessageDialog(null, name+"  "+qua+"  "+exp+"  "+id);
                String sql1="select * from duty_time where id='"+id+"'";
                rs1=dbc1.getData(sql1);
                while(rs1.next()){
                    timein=rs1.getTime("timein").toString();
                     timeout=rs1.getTime("timeout").toString();
                 //    JOptionPane.showMessageDialog(null, name+"  "+timein+"  "+timeout);
                
                }
            %>
             <tr>
                 <td><%=no%></td>
            <td><%=name%></td>
            <td><%=qua%></td>
            <td><%=exp%></td>
            <td><%=timein%></td>
            <td><%=timeout%></td></tr>
            
            <% }%>
        </table>