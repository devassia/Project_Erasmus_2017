/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.77
 * Generated at: 2017-05-31 16:09:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class connection_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write(" <!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/cities.css\"/>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/ui.css\"/>\r\n");
      out.write("  <script src=\"../js/connection.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"navbar\">\r\n");
      out.write("    <ul>\r\n");
      out.write("      <li><a class=\"active\"  href=\"../index.html\">EraStud</a></li>\r\n");
      out.write("      <li><a href=\"\">Cities</a></li>\r\n");
      out.write("      <li><a href=\"#\">Universities</a> </li>\r\n");
      out.write("      <li><a href=\"#\">Accomodation</a></li>\r\n");
      out.write("      <li><a href=\"#\">Student/Blog</a></li>\r\n");
      out.write("      <li><a href=\"#\">Jobs</a></li>\r\n");
      out.write("      <li><a href=\"#\">About EraStud</a></li>\r\n");
      out.write("      <li><a href=\"#\">Sign In/Up</a></li>\r\n");
      out.write("\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"cotn_principal\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"cont_centrar\">\r\n");
      out.write("<div class=\"cont_login\">\r\n");
      out.write("<div class=\"cont_info_log_sign_up\">\r\n");
      out.write("<div class=\"col_md_login\">\r\n");
      out.write("<div class=\"cont_ba_opcitiy\">\r\n");
      out.write("        \r\n");
      out.write("        <h2>LOGIN</h2>  \r\n");
      out.write("  <p>You can login into your account here.</p> \r\n");
      out.write("\r\n");
      out.write("  <button class=\"btn_login\" onclick=\"cambiar_login()\">LOGIN</button>\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"col_md_sign_up\">\r\n");
      out.write("<div class=\"cont_ba_opcitiy\">\r\n");
      out.write("\r\n");
      out.write("        <h2>SIGN UP</h2>\r\n");
      out.write("\r\n");
      out.write("  <p>you can create your account here.</p>\r\n");
      out.write("\r\n");
      out.write("  <button class=\"btn_sign_up\" onclick=\"cambiar_sign_up()\">SIGN UP</button>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("  </div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<div class=\"cont_forms\" >\r\n");
      out.write("<div class=\"cont_form_login\">\r\n");
      out.write("<a href=\"#\" onclick=\"ocultar_login_sign_up()\" ><i class=\"material-icons\">&#xE5C4;</i></a>\r\n");
      out.write("  \r\n");
      out.write("   <h2>LOGIN</h2>\r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("   <form class=\"form-horizontal\"  action=\"co.jsp\">\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\">Email:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"email\" class=\"form-control\" id=\"email\"  name=\"mail\" placeholder=\"Enter your email\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"pwd\">Pass:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"password\" class=\"form-control\" id=\"pwd\" name=\"password\" placeholder=\"Enter your password\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("      <button type=\"submit\" class=\"btn btn-default\">Login</button>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</form> \r\n");
      out.write("</div>\r\n");
      out.write("  \r\n");
      out.write("  <div class=\"cont_form_sign_up\">\r\n");
      out.write("\r\n");
      out.write("  <h2>SIGN UP</h2>\r\n");
      out.write("<br>\r\n");
      out.write(" \r\n");
      out.write("<form class=\"form-horizontal\" action=\"create.jsp\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"text\">LastN:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"LName\"  name=\"lastname\" placeholder=\"Enter your Last Name\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"text\">FirstN:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"FName\"  name=\"firstname\" placeholder=\"Enter your First Name\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"text\">Country:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" id=\"Country\"  name=\"country\" placeholder=\"Enter your Country\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\">Email:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"email\" class=\"form-control\" id=\"email\"  name=\"mail\" placeholder=\"Enter your email\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"pwd\">Pass:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"password\" class=\"form-control\"  id=\"pwd\" name=\"password\" placeholder=\"Enter your password\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("      <button type=\"submit\" class=\"btn btn-default\">Sign up</button>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("</form> \r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write(" </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
