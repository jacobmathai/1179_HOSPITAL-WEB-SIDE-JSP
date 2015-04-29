<%-- 
    Document   : pat_id_request
    Created on : 11 Feb, 2014, 9:58:42 AM
    Author     : prasanth
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="org.json.JSONObject"%>
<%
    //JOptionPane.showMessageDialog(null, "jj");
    String department="";
    String id=request.getParameter("doc_id");
     //JOptionPane.showMessageDialog(null, id);
    ResultSet rs1=new DB.DBConnection().getData("select department from  doc_details where id='"+id+"'");
    if(rs1.next())
    {
        department=rs1.getString(1);
    }
    JSONObject obj = new JSONObject();
    String sql="select id,name from patient_details where department='"+department+"'";
    DB.DBConnection db=new DBConnection();
    ResultSet rs=db.getData(sql);
    //String id="";
    ArrayList al=new ArrayList();
    ArrayList a=new ArrayList();
    while(rs.next()){
        //id=id+","+rs.getInt(1);
        al.add(rs.getString(2)+" ("+rs.getInt(1)+")");
       
    }
   obj.accumulate("result",al);
  
    out.println(obj);
%>