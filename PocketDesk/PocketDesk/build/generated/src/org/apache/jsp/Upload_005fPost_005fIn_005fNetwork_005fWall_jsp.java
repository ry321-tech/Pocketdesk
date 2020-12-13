package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class Upload_005fPost_005fIn_005fNetwork_005fWall_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

 // String timeStamp= new SimpleDateFormate("yyy-MM-dd hh:mm:ss").formate(Calanedar.getInstance().getTime());
    //String date= new java.util.Date().toString();
    long date =  System.currentTimeMillis();
    //Date d = new Date(date);
    Timestamp ts = new Timestamp(date);
String user_id=(String) session.getAttribute("user_id");
String network_name= (String) session.getAttribute("network_name");
    try {
        
        
        String url_img = 
                  request.getParameter("url_img");
        String post_content = 
                  request.getParameter("post_content");
        
        Class.forName("com.mysql.jdbc.Driver");
                    Connection con= (Connection) 
DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root");
                    
		    PreparedStatement ps= 
con.prepareStatement("insert into posts_master(user_id,post_date,post_content, network_name) values (?,?,?,?)");
                    ps.setString(1,user_id);
                    //ps.setString(2,date);
                    ps.setTimestamp(2,ts);
                    ps.setString(3,post_content);
                     ps.setString(4,network_name);
		    int count = ps.executeUpdate();
		    if(count>0)
		    {
		    	 response.sendRedirect("AlertPost_Uploaded.jsp");
		    }
		    con.close();
      } catch(Exception ex) {
         System.out.println(ex);
         ex.printStackTrace();
      }
   

      out.write("\n");
      out.write("    ");
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
