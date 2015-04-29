<%-- 
    Document   : request
    Created on : 31 Jul, 2013, 4:34:00 PM
    Author     : prasanth
--%><%@page import="org.json.JSONObject"%>
<%@page import="DB.DBConnection"%>
<%@page import="PRS.DateTime"%>
<%@page import="java.io.*"%>
<%@page import="Encr.Decr.*"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.swing.JOptionPane"%>
<%
            JSONObject obj = new JSONObject();
            try {
               String pid=request.getParameter("pat_id").trim();
              // JOptionPane.showMessageDialog(null, pid);
               String p[]=pid.split(" ");
               //JOptionPane.showMessageDialog(null, p[1]);
               int id = Integer.parseInt(p[1].substring(1,p[1].length()-1).trim());
                // JOptionPane.showMessageDialog(null, id);
                String data = "";
                String doc = "";
                String num = "";
                String cdate="";
                String ctime="";
                
                DBConnection db = new DBConnection();
                ResultSet rs3=new DB.DBConnection().getData("select * from patient_details where id='"+id+"'");
                if(rs3.next())
                {
                     doc = rs3.getString("doc_id");
                }
                String ssqq = "select * from data_enkey where pat_id=" + id + " order by number desc limit 1";
                ResultSet re = db.getData(ssqq);
                if (re.next()) {
                   
                    data = re.getString("data");
                    num = re.getString("number");
                    
                    int flag = 0;
                    int pp = 0;
                    DB.CommonData.num = Integer.parseInt(num);
                    int ent1 = 0, ent2 = 0;
                    String time = DateTime.getCurrentTime();
                    if ((time.charAt(2) == ':') && (time.charAt(5) == ':')) {
                        ent1 = Integer.parseInt(time.substring(0, 2));
                        ent2 = Integer.parseInt(time.substring(3, 5));
                    }
                    if ((time.charAt(1) == ':') && (time.charAt(4) == ':')) {
                        ent1 = Integer.parseInt(time.substring(0, 1));
                        ent2 = Integer.parseInt(time.substring(2, 4));
                    }
                    if ((time.charAt(2) == ':') && (time.charAt(4) == ':')) {
                        ent1 = Integer.parseInt(time.substring(0, 2));
                        ent2 = Integer.parseInt(time.substring(3, 4));
                    }
                    if ((time.charAt(1) == ':') && (time.charAt(3) == ':')) {
                        ent1 = Integer.parseInt(time.substring(0, 1));
                        ent2 = Integer.parseInt(time.substring(2, 3));
                    }
                    String sa = "select name,age,disease from patient_details where id='" + id + "'";
                    ResultSet rqs = db.getData(sa);
                    String patname = "",patage="",disease="";
                    if (rqs.next()) {
                        patname = rqs.getString(1);
                        patage=rqs.getString(2);
                        disease=rqs.getString(3);
                    }
                    String doc_id = request.getParameter("doc_id");
                    String location = request.getParameter("locname");
                    //JOptionPane.showMessageDialog(null, location);
                    String sqo = "select * from duty_time where id='" + doc_id + "'";
                    ResultSet ree = db.getData(sqo);
                    String to = "";
                    String tn = "";
                    if (ree.next()) {
                        tn = ree.getString("timein");
                        to = ree.getString("timeout");
                    }
                    int t1 = Integer.parseInt(tn.substring(0, 2));
                    int t2 = Integer.parseInt(tn.substring(3, 5));
                    int to1 = Integer.parseInt(to.substring(0, 2));
                    int to2 = Integer.parseInt(to.substring(3, 5));
                    if ((ent1 > t1) && (ent1 < to1)) {
                        flag = 1;
                    } else if ((ent1 == t1) && (ent2 > t2)) {
                        flag = 1;
                    } else if ((ent1 == to1) && (ent2 < to2)) {
                        flag = 1;
                    }
                    String sq = "select department from doc_details where id='" + doc_id + "'";
                    String dep = null;
                    ResultSet rr = db.getData(sq);
                    if (rr.next()) {
                        dep = rr.getString("department");
                    }
                    String ke[] = new String[6];
                    String strr;
                    String sql = "select status from patient_details where id=" + id + " and name='" + patname + "'";
                    ResultSet rs = db.getData(sql);
                    if (rs.next()) {
                        String status = rs.getString("status");
                        if ((status.equals("admit")) && (flag == 1)) {
                            String sqll = "select kee from share_3 where patient_id=" + id + "";
                            ResultSet rss = db.getData(sqll);
                            if (rss.next()) {
                                ke[pp] = rss.getString("kee");
                                pp++;
                            }
                        } else {
                            String sqll = "select kee from share_3 where patient_id=" + id + " and cun_doctor='" + doc_id + "'";
                            ResultSet rss = db.getData(sqll);
                            if (rss.next()) {
                                if (pp > 0) {
                                    pp--;
                                }
                                ke[pp] = rss.getString("kee");
                                pp++;
                            }
                        }
                    }
                    String sqll1 = "select * from share_1 where patient_id=" + id + "";
                    ResultSet rsr = db.getData(sqll1);
                    while (rsr.next()) {
                        if ((rsr.getString("cun_doctor").equals(doc_id)) || (rsr.getString("location")).equals("hospital")) {
                            ke[pp] = rsr.getString("kee");
                            pp++;
                        }
                    }
                    String sqll2 = "select * from share_2 where patient_id=" + id + "";
                    ResultSet rsrs = db.getData(sqll2);
                    while (rsrs.next()) {
                        if ((rsrs.getString("cun_doctor").equals(doc_id)) || (rsrs.getString("specification")).equals(dep)) {
                            ke[pp] = rsrs.getString("kee");
                            pp++;
                        }
                    }
                    if (pp >= 3) {
                        int ii = 0;
                        String ss = null;
                        if (ke[0].length() > 2) {
                            ss = ke[0];
                            int n = ss.length();
                            for (int j = 0; j < n; j++) {
                                if (ss.charAt(j) == '-') {
                                    ii++;
                                }
                            }
                        }
                        ii++;
                        String cod = SssFunctions.combine(ke, ii);
                        DB.CommonData.patid = id;
                        DB.CommonData.patname = patname;
                        DB.CommonData.doc = doc;
                        DB.CommonData.cod = cod;
                        DB.CommonData.age =patage;
                        DB.CommonData.dise =disease;
                        String details = SssFunctions.decrypt(data, cod);
                        JOptionPane.showMessageDialog(null, "successfully recieved");
//                        JOptionPane.showMessageDialog(null, doc);
//                        JOptionPane.showMessageDialog(null, details);
//                        JOptionPane.showMessageDialog(null, patname);
//                        JOptionPane.showMessageDialog(null, disease);
//                        JOptionPane.showMessageDialog(null, patage);
//                        JOptionPane.showMessageDialog(null, ctime);
//                        JOptionPane.showMessageDialog(null, cdate);
                        obj.accumulate("result", details);
                        obj.accumulate("pat_name", patname);
                        obj.accumulate("doc_name", doc);
                        obj.accumulate("pat_age", patage);
                        obj.accumulate("disease", disease);
                        obj.accumulate("cdate", cdate);
                        obj.accumulate("ctime", ctime);
                        out.println(obj);
                     } 
                    else {
                        obj.accumulate("result", "1");//no permission
                        out.println(obj);
                    }
                } else {
                    obj.accumulate("result", "2");//no report
                    out.println(obj);
                }
            } catch (Exception e) {
                obj.accumulate("result", "1");// no permission
                out.println(obj);
            }
        %>