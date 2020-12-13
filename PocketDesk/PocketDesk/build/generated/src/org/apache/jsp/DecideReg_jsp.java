package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import dto.User;
import dao.UserDAO;
import dao.Mailer;

public final class DecideReg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/sweetalert.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

          String email = 
                  request.getParameter("Email");
          String pass = 
                  request.getParameter("password"); 
          String name = 
                  request.getParameter("user_name");
          String mble = 
                  request.getParameter("mble");          
String Gender = 
                  request.getParameter("Gender");
String imgurl = "C:" + File.separator + "Users" + File.separator + "Siddharth" + File.separator + "Documents" + File.separator + "NetBeansProjects" + File.separator + "PocketDesk" + File.separator +"web" + File.separator + "images" + File.separator + "profile.jpg" ;
        
      out.write("    \n");
      out.write("        \n");
      out.write("        ");
      dto.User u = null;
      synchronized (_jspx_page_context) {
        u = (dto.User) _jspx_page_context.getAttribute("u", PageContext.PAGE_SCOPE);
        if (u == null){
          u = new dto.User();
          _jspx_page_context.setAttribute("u", u, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("u"), "user_id",
email);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("u"), "password",
pass);
      out.write("  \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("u"), "user_name",
name);
      out.write(" \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("u"), "contact_no",
mble);
      out.write(" \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("u"), "user_gender",
Gender);
      out.write("\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("u"), "url_img",
imgurl);
      out.write("                      \n");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("u"), "verified", "false", null, null, false);
      out.write("\n");
      out.write("                             \n");
      out.write("        ");

            UserDAO obj = new UserDAO();
            
            boolean b = obj.Register(u);
            
             if(b)
            {
              String to = email;
              String em_name = name;
              System.out.println(to);
              System.out.println(em_name);
              
              String subject = "Registered Successfully in Pocket Desk";
    String msg = "Dear " + em_name+ ", you have been successfully registered using email id " + to
            + "\n To visit our website please click the following link!!! \n";
    String url = 
"<a href=http://localhost:8084/PocketDesk/"
+ "verify_user.jsp?user_id="+to+">VERIFY</a>";
    Mailer.send(to, subject, msg + url);  

            

        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      if (true) {
        _jspx_page_context.forward("RegSuccessAlert.jsp");
        return;
      }
      out.write("\n");
      out.write("        ");

          }
          else
          {
                  
        
      out.write("\n");
      out.write("         ");
      if (true) {
        _jspx_page_context.forward("RegFailedAlert.jsp");
        return;
      }
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            }
        
      out.write("      \n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
