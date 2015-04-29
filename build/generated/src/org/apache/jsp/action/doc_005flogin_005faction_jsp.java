package org.apache.jsp.action;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.sql.ResultSet;
import DB.DBConnection;

public final class doc_005flogin_005faction_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");

         int status=0;
        //JOptionPane.showMessageDialog(null, "hai");
        String un=request.getParameter("sumesh521");
        String pass=request.getParameter("sumesh521");
     //   JOptionPane.showMessageDialog(null,un);
        DB.DBConnection dbc=new DBConnection();
        String sql="select * from login where username='"+un+"' and password='"+pass+"'";
        ResultSet rs=dbc.getData(sql);
        if(rs.next())
        {
            int id=rs.getInt("id");
            ResultSet r=new DB.DBConnection().getData("select status from doc_details where id='"+id+"'");
            if(r.next())
            {
             status=r.getInt("status");
             if(status==1)
              {
               out.print("Blocked");//sending message to android
              }
             else
             {
                  JOptionPane.showMessageDialog(null,un);
              out.print(id);//sending id to android
             }
           }
        }
       else
        {
          out.print("failed");
        }
        
    
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
