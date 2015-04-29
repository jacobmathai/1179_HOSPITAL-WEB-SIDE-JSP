/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Encr.Decr;


import DB.DBConnection;
import DB.DBProcess;
import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
import javax.swing.JOptionPane;


/**
 *
 * @author prasanth
 */
public class SssFunctions {
//    public static void main(String[] args) {
//
//    }
    public static String RsaEN(String data,int pId,int CunDtr,String Dep,String nam,String repdoc){
       // JOptionPane.showMessageDialog(null, data);
        int Asc[] = new int[1000];
         int dd=0,i;
         BigInteger N;//rsa
        BigInteger e;
        BigInteger d;
        BigInteger phi;
        int bitLength=10;
        Random r=new Random();
        BigInteger bg=BigInteger.probablePrime(bitLength,r);
        BigInteger bg2=BigInteger.probablePrime(bitLength,r);
         N = bg.multiply(bg2);
         // System.out.println(p+","+q+","+N);

        phi = bg.subtract(BigInteger.ONE).multiply(bg2.subtract(BigInteger.ONE));
          e = BigInteger.probablePrime(bitLength/2, r);

        while (phi.gcd(e).compareTo(BigInteger.ONE) > 0 && e.compareTo(phi) < 0 ) {
            e.add(BigInteger.ONE);
                    }
        d = e.modInverse(phi);
        System.out.println(r+","+bg+","+bg2+","+N+","+phi+","+e+","+d);
        int n=data.length();
        JOptionPane.showMessageDialog(null, e+"  "+N);
       JOptionPane.showMessageDialog(null, d+" "+N);
        for(i=0;i<n;i++){
            Asc[dd]=data.charAt(i);
            BigInteger g=new BigInteger(Long.toString(Asc[dd]));

            BigInteger bb=g.modPow(e,N);//rsa encryption
            Asc[dd]=(int) bb.longValue();
            dd++;
        }
        String Str="";
        for(i=0;i<n-1;i++){
            Str=Str+Asc[i]+"-";
        }
        Str=Str+Asc[i];
        String en=e.toString()+","+N.toString();
        String cdate=PRS.DateTime.getCurrentDate();
        String ctime=PRS.DateTime.getCurrentTime();
        DBConnection db=new DBConnection();
        String sql="insert into data_enkey (pat_id,pat_name,enc_key,data,cun_doctor,report_subdoctor,cdate,ctime) values("+pId+",'"+nam+"','"+en+"','"+Str+"','"+CunDtr+"','"+repdoc+"','"+cdate+"','"+ctime+"')";
        int ij=db.putData(sql);
        String KeyShare=EnterText(6,3, d, N,pId,CunDtr,Dep);
        //JOptionPane.showMessageDialog(null, KeyShare);
   
        return Str;
    }
    public static  String EnterText(int Share,int Thre,BigInteger dd,BigInteger NN,int pId,int CunDctr,String Dep){
        Long coo[][]=new Long[100][10000];
        int co[] = new int[100];
        Long fn[] = new Long[100];
        int fun = 0,hh=0;
        int p,ddd=0;
        long Sec;
        int Asc[] = new int[1000];
        char Ch[]=new char[1000];
        String keyText ="";
        BigInteger d=dd;
        BigInteger N=NN;
       
        String TestString =dd+","+NN;
        int n = TestString.length();        
        for(int i=0;i<n;i++){
            Asc[ddd]=TestString.charAt(i);
            ddd++;
        }         
        //System.out.println("Enter Share: ");
        int Shr = Share;
        //System.out.println("Enter Threshold Value: ");
        int Thr=Thre;
         Long x[]=new Long[Thr];
        for(p=0;p<Thr-1;p++){
            int gg = (int) (Math.random() * 10);
            if (gg == 0) {
                gg = (gg + 1) * 10;
            } else{
                gg=gg*10;
                }
                co[p]=gg;
                System.out.println(co[p]);

        }
        //System.out.println(Shr+" Keys are: ");
       for(hh=0;hh<n;hh++){
            Sec=Asc[hh];

            for(int q=1;q<=Shr;q++){
                for(int h=p;h>0;h--){
                    fun=(fun+co[h-1])*q;
                }
                fn[q]=Sec+fun;
                fun=0;
                //System.out.println(q+","+fn[q]);
                coo[q][hh+1]=fn[q];
            }
        }
         int z=0;
         String Sarray[]=new String[Shr];
         System.out.println(Shr+" Keys are:");
        for(int y=1;y<=Shr;y++){
            String KeeTxt="";
            System.out.print(y);
            keyText=keyText+y;
            KeeTxt=KeeTxt+y;
            for(int xy=1;xy<=n;xy++){
                System.out.print("-");
                System.out.print(coo[y][xy]);
                keyText=keyText+"-"+coo[y][xy];
                KeeTxt=KeeTxt+"-"+coo[y][xy];
            }System.out.println();
            Sarray[z]=KeeTxt;
            z++;
            keyText=keyText+"\n";
        }
        DBProcess.InKey(pId,Sarray,CunDctr,Dep);
        return keyText;
       // KeyGen();
    }
    public static String combine(String[] xx, int jj){
          int Thr=3;
   //    JOptionPane.showMessageDialog(null, xx+"  daaa  "+jj);
        String xo;
        double val=1;
        char ch[]=new char[jj];
        Double sd[]=new Double[jj];
        int sdl[]=new int[jj];
        Long x[]=new Long[Thr];
        Double ss[][]=new Double[Thr][jj];
        Long KeyPart[][]=new Long[Thr][jj];
        int jk=0;
        for(int i=0;i<3;i++){
            jk=0;
            xo=xx[i];
            x[i]=Long.parseLong(xo.substring(0,1));
          //  JOptionPane.showMessageDialog(null, x);
            for(String spl:xo.split("-",0)){
               //JOptionPane.showMessageDialog(null, spl);
               KeyPart[i][jk]=Long.parseLong(spl);
               jk++;
            }
           // JOptionPane.showMessageDialog(null,KeyPart);
        }
    
        for(int j=0;j<Thr;j++){
            for(int i=0;i<Thr;i++){
                if(j!=i){

                    val=(double)val*((double)(-x[i])/(double)(x[j]-x[i]));

                }
            }

            for(int k=1;k<jj;k++){
    
                ss[j][k]=val*KeyPart[j][k];
 
            }//System.out.println();
            val=1;
          //  JOptionPane.showMessageDialog(null, ss);
        }
        for(int j=0;j<jj-1;j++){
            sd[j]=0.0;
            for(int k=0;k<Thr;k++){
                sd[j]=sd[j]+ss[k][j+1];

            }
            //JOptionPane.showMessageDialog(null, sd);
            //System.out.print(sd[j]+" ");
        }//System.out.println();
      //  JOptionPane.showMessageDialog(null,sd+"hhhh");
        String Strr="";
        for(int k=0;k<jj-1;k++){
                double st=sd[k];

                sdl[k]=(int)Math.round(st);
     
                ch[k]=(char)sdl[k];
           //    JOptionPane.showMessageDialog(null,ch[k]);
               Strr=Strr+ch[k];

        }//System.out.print("Decrypted Text: ");
//         System.out.println(new String(ch));
    //   JOptionPane.showMessageDialog(null,"dec kee: "+Strr);
         return Strr;
    }
     public static String decrypt(String endata, String decrKey){
         String asd[]=new String[2];
         String data[]=new String[2000];
         int i=0,j=0;
        for(String kk:decrKey.split(",",0)){
            asd[i]=kk;
         //   JOptionPane.showMessageDialog(null,asd[i]);
            i++;
        }
         
        for(String dd:endata.split("-",0)){
                data[j]=dd;
               // JOptionPane.showMessageDialog(null,data[j]);
                j++;
               
               // JOptionPane.showMessageDialog(null,j);
        }
        BigInteger d=new BigInteger(asd[0]);
        BigInteger N=new BigInteger(asd[1]);
  //       JOptionPane.showMessageDialog(null,"kkkk");
        char c[]=new char[j];
       
        String orgData="";
        for(int k=0;k<j;k++){
            BigInteger g=new BigInteger(data[k]);
            BigInteger bb=g.modPow(d,N);//rsa decreption
            //JOptionPane.showMessageDialog(null,bb);
            c[k]=(char)bb.longValue();
           // JOptionPane.showMessageDialog(null,c[k]);
            orgData=orgData+c[k];
        }
       // JOptionPane.showMessageDialog(null,orgData);
         return orgData;
     }
     public static String RsaEN2(String data,String Enkey,int pId,String CunDtr,String Dep,String nam,String typ){
       // JOptionPane.showMessageDialog(null, data);
        int Asc[] = new int[1000];
         int dd=0,i,j=0;
         String asd[]=new String[2];
         for(String kk:Enkey.split(",",0)){
            asd[j]=kk;
         //   JOptionPane.showMessageDialog(null,asd[i]);
            j++;
        }
         BigInteger N=new BigInteger(asd[1]);//rsa
        BigInteger e=new BigInteger(asd[0]);
//        BigInteger d;
//        BigInteger phi;
//        int bitLength=10;
//        Random r=new Random();
//        BigInteger bg=BigInteger.probablePrime(bitLength,r);
//        BigInteger bg2=BigInteger.probablePrime(bitLength,r);
//         N = bg.multiply(bg2);
//         // System.out.println(p+","+q+","+N);
//
//        phi = bg.subtract(BigInteger.ONE).multiply(bg2.subtract(BigInteger.ONE));
//          e = BigInteger.probablePrime(bitLength/2, r);
//
//        while (phi.gcd(e).compareTo(BigInteger.ONE) > 0 && e.compareTo(phi) < 0 ) {
//            e.add(BigInteger.ONE);
//                    }
//        d = e.modInverse(phi);
        //System.out.println(r+","+bg+","+bg2+","+N+","+phi+","+e+","+d);
        int n=data.length();
       // JOptionPane.showMessageDialog(null, e+"  "+N);
       // JOptionPane.showMessageDialog(null, d+" "+N);
        for(i=0;i<n;i++){
            Asc[dd]=data.charAt(i);
            BigInteger g=new BigInteger(Long.toString(Asc[dd]));

            BigInteger bb=g.modPow(e,N);//rsa encryption
            Asc[dd]=(int) bb.longValue();
            dd++;
        }
        String Str="";
        for(i=0;i<n-1;i++){
            Str=Str+Asc[i]+"-";
        }
        Str=Str+Asc[i];
        String en=e.toString()+","+N.toString();
        DBConnection db=new DBConnection();
        String sql="insert into DataEnkey (PatId,PatientName,Enkey,Data,CunDctr,ReportType) values("+pId+",'"+nam+"','"+en+"','"+Str+"','"+CunDtr+"','"+typ+"')";
        int ij=db.putData(sql);
        //String KeyShare=EnterText(6,3, d, N,pId,CunDtr,Dep);
        //JOptionPane.showMessageDialog(null, KeyShare);

        return Str;
    }
     public static String RsaEN3(String data,String Enkey,int pId,int CunDtr,String Dep,String RepDctr,String nam) throws SQLException{
       // JOptionPane.showMessageDialog(null, data);
        int Asc[] = new int[1000];
         int dd=0,i,j=0;
         String asd[]=new String[2];
         for(String kk:Enkey.split(",",0)){
            asd[j]=kk;
         //  JOptionPane.showMessageDialog(null,asd[i]);
            j++;
        }
         BigInteger N=new BigInteger(asd[1]);//rsa
        BigInteger e=new BigInteger(asd[0]);
//        BigInteger d;
//        BigInteger phi;
//        int bitLength=10;
//        Random r=new Random();
//        BigInteger bg=BigInteger.probablePrime(bitLength,r);
//        BigInteger bg2=BigInteger.probablePrime(bitLength,r);
//         N = bg.multiply(bg2);
//         // System.out.println(p+","+q+","+N);
//
//        phi = bg.subtract(BigInteger.ONE).multiply(bg2.subtract(BigInteger.ONE));
//          e = BigInteger.probablePrime(bitLength/2, r);
//
//        while (phi.gcd(e).compareTo(BigInteger.ONE) > 0 && e.compareTo(phi) < 0 ) {
//            e.add(BigInteger.ONE);
//                    }
//        d = e.modInverse(phi);
        //System.out.println(r+","+bg+","+bg2+","+N+","+phi+","+e+","+d);
        int n=data.length();
       // JOptionPane.showMessageDialog(null, e+"  "+N);
       // JOptionPane.showMessageDialog(null, d+" "+N);
        for(i=0;i<n;i++){
            Asc[dd]=data.charAt(i);
            BigInteger g=new BigInteger(Long.toString(Asc[dd]));

            BigInteger bb=g.modPow(e,N);//rsa encryption
            Asc[dd]=(int) bb.longValue();
            dd++;
        }
        String Str="";
        for(i=0;i<n-1;i++){
            Str=Str+Asc[i]+"-";
        }
        Str=Str+Asc[i];
        String en=e.toString()+","+N.toString();
        int Num=0;
        DBConnection db=new DBConnection();
         String sql1="select number from data_enkey where pat_id="+pId+" order by id desc limit 1";
         ResultSet rs=(ResultSet) db.getData(sql1);
         while(rs.next()){
            Num=rs.getInt("number");
            JOptionPane.showMessageDialog(null,Num);
         }
         Num=Num+1;
         String cdate=PRS.DateTime.getCurrentDate();
         String ctime=PRS.DateTime.getCurrentTime();
        // JOptionPane.showMessageDialog(null,Num);
        String sql="insert into data_enkey (pat_id,pat_name,enc_key,data,cun_doctor,report_subdoctor,number,cdate,ctime) values('"+pId+"','"+nam+"','"+en+"','"+Str+"','"+CunDtr+"','"+RepDctr+"','"+Num+"','"+cdate+"','"+ctime+"')";
        //JOptionPane.showMessageDialog(null,sql);
        int ij=db.putData(sql);

        //String KeyShare=EnterText(6,3, d, N,pId,CunDtr,Dep);
        //JOptionPane.showMessageDialog(null, KeyShare);

        return Str;
    }
}
