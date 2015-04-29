<%-- 
    Document   : receive_report
    Created on : 16 Nov, 2013, 2:50:02 PM
    Author     : prasanth
--%>
<%@page import="org.json.JSONObject"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
          JSONObject obj = new JSONObject();
          DBConnection dbc = new DBConnection();
          String dep = "", enkey = "";
          int id = 0;
          String pat=request.getParameter("pat_id").trim();
          // JOptionPane.showMessageDialog(null, pat);
           String p[]=pat.split(" ");
               //JOptionPane.showMessageDialog(null, p[1]);
                int patid = Integer.parseInt(p[1].substring(1,p[1].length()-1).trim());
         
         
          String patname = "";
          String docid = request.getParameter("doc_id");
          String report = request.getParameter("report");
          String sql = "select * from doc_details where id='" + docid + "'";
          ResultSet rs = dbc.getData(sql);
          while (rs.next()) {
              dep = rs.getString("department");
          }
          String s = "select * from patient_details where id='" + patid + "'";
          ResultSet r = dbc.getData(s);
          while (r.next()) {
              patname = r.getString("name");
              id = r.getInt("doc_id");
          }
          String sq = "select * from data_enkey where pat_id=" + patid + "";
          ResultSet rs1 = dbc.getData(sq);
          if (rs1.next()) {
              enkey = rs1.getString("enc_key");
              Encr.Decr.SssFunctions.RsaEN3(report, enkey, patid, id, dep, docid, patname);
          } else {
              Encr.Decr.SssFunctions.RsaEN(report, patid, id, dep, patname, docid);
          }
          obj.accumulate("result", "success");
          out.println(obj);
%>
