package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.sql.DriverManager;
import java.sql.*;
import java.io.*;

public final class LoginProcess_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    response.setContentType("text/html");

//PrintWriter out = response.getWriter();

      out.write(' ');
      out.write('\n');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user_id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    try {
        request.getSession();

        String userid = (String) 
            session.getAttribute("user_id");

        System.out.println(userid);
        Class.forName("com.mysql.jdbc.Driver");
//String s=request.getParameter("username");
        String sql = 
"select * from users_master where user_id = ?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = 
                con.prepareStatement(sql);
        ps.setString(1, userid);
        ResultSet rs = ps.executeQuery();
      out.write("\n");
      out.write("<table border='1'col width=\"300\" col height=\"50\" >\n");
      out.write("    <tr bgcolor='gray'>\n");
      out.write("\n");
      out.write("        <th>Title</th>\n");
      out.write("        <th>User Id</th>\n");
      out.write("        <th>Gender</th>\n");
      out.write("        <th>NO</th>\n");
      out.write("        <th>URL</th>\n");
      out.write("\n");
      out.write("        ");

            while (rs.next()) {
        
      out.write("\n");
      out.write("    <tr><td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("</tr>\n");

    Path p = Paths.get(rs.getString("url_img"));
    String filepath = p.getFileName().toString();
    session.setAttribute("url_img", filepath);

      out.write('\n');
      out.write('\n');

    String user_id = rs.getString(2);
    session.setAttribute("user_name", user_id);

    String mble = rs.getString(5);
    session.setAttribute("mble", mble);


      out.write("\n");
      out.write("<h1>");
      out.print(session.getAttribute("user_name"));
      out.write("</h1>\n");
      out.write("<img src=\"./images/");
      out.print(filepath);
      out.write("\" width=\"500\" height=\"500\"/>\n");
      out.write("<img src=\"./images/");
      out.print(session.getAttribute("url_img"));
      out.write("\" alt=\"\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


    }
    con.close();

      out.write("\n");
      out.write("</table>\n");
      if (true) {
        _jspx_page_context.forward("1_HomePage.jsp");
        return;
      }
      out.write('\n');

    } catch (Exception e) {
        System.out.println(e);
    }

      out.write("\n");
      out.write("\n");
      out.write(" ");
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
