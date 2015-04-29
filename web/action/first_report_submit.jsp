<%-- 
    Document   : first_report_submit
    Created on : 25 Feb, 2014, 9:55:33 AM
    Author     : prasanth
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="org.json.JSONObject"%>
<%
    JSONObject obj = new JSONObject();
   String pid=request.getParameter("pat_id").trim();
               //JOptionPane.showMessageDialog(null, pid);
               String p[]=pid.split(" ");
              // JOptionPane.showMessageDialog(null, p[1]);
               int patid = Integer.parseInt(p[1].substring(1,p[1].length()-1).trim());
    int docid=Integer.parseInt(request.getParameter("doc_id"));
    String report=request.getParameter("report");
    String sql="select * from patient_details where id='"+patid+"' and doc_id='"+docid+"'";
    DB.DBConnection db=new DBConnection();
    ResultSet rs=db.getData(sql);
    if(rs.next()){
         obj.accumulate("result","success");
    out.println(obj);
    }else{
        obj.accumulate("result","fail");
    out.println(obj);
    }
%>