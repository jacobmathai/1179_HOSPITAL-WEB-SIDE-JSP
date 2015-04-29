/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author kites
 */
public class DBProcess {
    
public static void  InKey(int PtId,String[] Keys,int Doc,String Dep)
{
    try{

        String sql="insert into share_1(patient_id,kee,cun_doctor) values("+PtId+",'"+Keys[0]+"','"+Doc+"')";
        String sql2="insert into share_2(patient_id,kee,cun_doctor,specification) values("+PtId+",'"+Keys[1]+"','"+Doc+"','"+Dep+"')";
        String sql3="insert into share_3(patient_id,kee,cun_doctor) values("+PtId+",'"+Keys[2]+"','"+Doc+"')";
        String sql4="insert into share_4(patient_id,kee,cun_doctor) values("+PtId+",'"+Keys[3]+"','"+Doc+"')";
        String sql5="insert into share_5(patient_id,kee,cun_doctor) values("+PtId+",'"+Keys[4]+"','"+Doc+"')";
        String sql6="insert into share_6(patient_id,kee,cun_doctor) values("+PtId+",'"+Keys[5]+"','"+Doc+"')";

        DBConnection db=new DBConnection();
        db.putData(sql);
        db.putData(sql2);
        db.putData(sql3);
        db.putData(sql4);
        db.putData(sql5);
        db.putData(sql6);



   //     JOptionPane.showMessageDialog(null,"hai");
        db.DBClose();
          }
    catch(Exception e)
       {
   //     JOptionPane.showMessageDialog(null,"eeeee");
          e.printStackTrace();
       }


}
public static int get_doc_id() throws SQLException{
    String sql="select * from doc_details order by id desc limit 1";
    DBConnection db=new DBConnection();
    int id=0;
    ResultSet rs=db.getData(sql);
    while(rs.next()){
        id=rs.getInt(1);
    }
   // id++;
    return id;
}
public  static int doc_reg(String name,String dob,String age,String house,String place,String pin,String dist,String dep,String qual,String exp,String mob,String email,String status,String regdate,String regtime){
    
    String sql="insert into doc_details (name,dob,age,house,place,pin,dist,department,qualification,experience,mobile,email,status,regdate,regtime) values ('"+name+"','"+dob+"','"+age+"','"+house+"','"+place+"','"+pin+"','"+dist+"','"+dep+"','"+qual+"','"+exp+"','"+mob+"','"+email+"','"+status+"','"+regdate+"','"+regtime+"')";
   // JOptionPane.showMessageDialog(null, sql);
    DBConnection db=new DBConnection();
    int i=db.putData(sql);
    if (i>0)
    {
        JOptionPane.showMessageDialog(null, "Doctor Registered");
    }
    else
    {
        JOptionPane.showMessageDialog(null, "Failed to Register Doctor");
    }  
    return i;
}
public  static int patient_reg(String name,String id,String cundctr, String dep,String house,String place,String pin,String dist,String mob,String email,String dob,String age,String disease,String regdate,String regtime){
    
    String sql="insert into patient_details (name,doc_id,cun_doc,department,dob,age,house,place,pin,district,mobile,email,disease,regdate,regtime) values ('"+name+"','"+id+"','"+cundctr+"','"+dep+"','"+dob+"','"+age+"','"+house+"','"+place+"','"+pin+"','"+dist+"','"+mob+"','"+email+"','"+disease+"','"+regdate+"','"+regtime+"')";
   // JOptionPane.showMessageDialog(null, sql);
    DBConnection db=new DBConnection();
    int i=db.putData(sql);
    if (i>0)
    {
        JOptionPane.showMessageDialog(null, "Patient Registered");
    }
    else
    {
        JOptionPane.showMessageDialog(null, "Failed to Register Patient");
    }  
    return i;
}
public  static int duty_time(String id,String name, String dep,String tin,String tout) throws SQLException{
    
    String sql="insert into duty_time (id,name,department,timein,timeout) values ('"+id+"','"+name+"','"+dep+"','"+tin+"','"+tout+"')";
   // JOptionPane.showMessageDialog(null, sql);
    String sq="select * from duty_time where id='"+id+"'";
    DBConnection db=new DBConnection();
    ResultSet rs=db.getData(sq);
    if(rs.next()){
        sql="update duty_time set timein='"+tin+"',timeout='"+tout+"' where id='"+id+"'";
      //  JOptionPane.showMessageDialog(null, sql);
    }
    int i=db.putData(sql);
    if (i>0)
    {
        JOptionPane.showMessageDialog(null, "Duty Time is Assigning to Doctor "+name+"\n\nTime In: "+tin+"   Time Out: "+tout);
    }
    else
    {
        JOptionPane.showMessageDialog(null, "Failed to Assign Duty Time");
    }
    return i;
}
   public static boolean  loginCheck(String uname,String pass)
    {
       boolean flag=false;
        String reply="";
               try {
            String sql="select * from Doctrs where name='"+uname+"' and password= '"+pass+"'";
                 
            DBConnection db=new  DBConnection();
            ResultSet rs=db.getData(sql);
            if(rs.next())
            {
                flag=true;
       //         JOptionPane.showMessageDialog(null, flag);
            }
            db.DBClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
   public static int feedback(String id,String name,String mail,String msg){
       String date=PRS.DateTime.getCurrentDate();
       String time=PRS.DateTime.getCurrentTime();
       String sql="insert into feedback(pat_id,name,email,message,date,time) values('"+id+"','"+name+"','"+mail+"','"+msg+"','"+date+"','"+time+"') ";
       DBConnection db=new DBConnection();
       int i=db.putData(sql);
       if (i>0)
    {
        JOptionPane.showMessageDialog(null, "Thank You for Your Valuable Feedback "+name);
    }
    else
    {
        JOptionPane.showMessageDialog(null, "Feedback Submission Failed!");
    }
       return i;
   }
   
//public static boolean changePass(String user,String oldpass,String newpass)
//{
//    boolean flag=false;
//    try {
//        String sql="update login set password='"+newpass+"' where uname='"+user+"' and password='"+oldpass+"'";
//        DBConnection db=new DBConnection();
//        int i=db.putData(sql);
//        if(i>0)
//        {
//            flag=true;
//        }
//        db.DBClose();
//    } catch (Exception e) {
//        e.printStackTrace();
//    }
//return flag;
//}
//public static int FindUser(String name,String mail){
//    int i=1;
//    try{
//    String sql="select * from register where user='"+name+"' and mail='"+mail+"'";
//    //JOptionPane.showMessageDialog(null,"sjdghfksdj"+sql);
//    DBConnection dbc=new DBConnection();
//    ResultSet rs=dbc.getData(sql);
//    if(rs.next()){
//        i=0;
//    }
//    }catch(Exception ee){
//        System.out.println(ee);
//    }
//    return i;
//}

public static void toggleUserStages(int id,String st)
{
    try {
        String sql="update PatientDetails set Status='"+st+"' where PatId="+id+"";
        //System.out.println("Querry>"+sql);
        DBConnection dbc=new DBConnection();
        dbc.putData(sql);

        dbc.DBClose();
    } 
    
    catch (Exception e) {
        e.printStackTrace();
    }
}
}
