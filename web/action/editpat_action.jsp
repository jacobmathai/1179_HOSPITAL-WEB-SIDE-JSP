<%-- 
    Document   : editpat_action
    Created on : 25 Mar, 2014, 9:47:57 AM
    Author     : prasanth
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="DB.DBConnection"%>
<%
    String id="";
    try{
    id=request.getParameter("id");
    String name=request.getParameter("name");
    String house=request.getParameter("hou");
    String plac=request.getParameter("pla");
    String pin=request.getParameter("pin");
    String dist=request.getParameter("dis");
    String mob=request.getParameter("mob");
    String ema=request.getParameter("ema");
    DB.DBConnection D=new DBConnection();
    String sql="update patient_details set name='"+name+"',house='"+house+"',place='"+plac+"',pin='"+pin+"',district='"+dist+"',mobile='"+mob+"',email='"+ema+"' where id='"+id+"'";
    int i=D.putData(sql);
    if(i>0)
    {
     JOptionPane.showMessageDialog(null, "Patient Details Updated Successfully");
     response.sendRedirect("../view_patient.jsp");   
    }
    else
    {
     JOptionPane.showMessageDialog(null, "Updation Failed");
     response.sendRedirect("../view_patient.jsp");
    }
}catch(Exception e){
    JOptionPane.showMessageDialog(null, e);
     response.sendRedirect("../editpat.jsp?d="+id+"&q=1");
}
%>