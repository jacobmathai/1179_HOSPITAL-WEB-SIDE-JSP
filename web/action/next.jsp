<%-- 
    Document   : next.jsp
    Created on : 5 Aug, 2013, 11:56:44 AM
    Author     : presanth
--%>
<%@page import="org.json.JSONObject"%>
<%@page import="DB.DBConnection"%>
<%@page import="Encr.Decr.SssFunctions"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.swing.JOptionPane"%>
<%
            JSONObject obj = new JSONObject();
            String data = null;
            int num = DB.CommonData.num;
            String patname = DB.CommonData.patname;
            String doc = DB.CommonData.doc;
            num++;
            DB.CommonData.num = num;
            String cod = DB.CommonData.cod;
            int id = DB.CommonData.patid;
             String patage=DB.CommonData.age;
             String disease=DB.CommonData.dise;
            DBConnection db = new DBConnection();
            String ssqq = "select * from data_enkey where pat_id=" + id + " and number=" + num + "";
            ResultSet re = db.getData(ssqq);
            if (re.next()) {
                data = re.getString("data");
                String cdate=re.getString("cdate");
                String ctime=re.getString("ctime");
                String details = SssFunctions.decrypt(data, cod);
                //JOptionPane.showMessageDialog(null, details);
                obj.accumulate("result", details);
                obj.accumulate("pat_name", patname);
                obj.accumulate("doc_name", doc);
                obj.accumulate("pat_age", patage);
                obj.accumulate("disease", disease);
                 obj.accumulate("cdate", cdate);
                 obj.accumulate("ctime", ctime);
                out.println(obj);
            } else {
                obj.accumulate("result", "2");
                out.println(obj);
            }
        %>