/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.77
 * Generated at: 2017-06-04 15:28:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class propose_005fjob_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/cities.css\"/>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/ui.css\"/>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"navbar\">\r\n");
      out.write("    <ul>\r\n");
      out.write("      <li><a class=\"active\"  href=\"../index.html\">EraStud</a></li>\r\n");
      out.write("      <li><a href=\"\">Cities</a>\r\n");
      out.write("        <ul>\r\n");
      out.write("          <li><a href=\"#\">Find your City</a></li>\r\n");
      out.write("          <li><a href=\"#\">City Ranking</a></li>\r\n");
      out.write("          <li><a href=\"#\">Experience Sharing</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"#\">Universities</a>\r\n");
      out.write("        <ul>\r\n");
      out.write("          <li><a href=\"#\">Find your University</a></li>\r\n");
      out.write("          <li><a href=\"#\">University Ranking</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"https://www.booking.com/index.fr.html?aid=376366;label=fr-51aYADzKCvHZ21Orv3nXsAS193330406601%3Apl%3Ata%3Ap1%3Ap21.279.000%3Aac%3Aap1t1%3Aneg%3Afi%3Atikwd-65526620%3Alp9062284%3Ali%3Adec%3Adm;sid=f852e761b1b63eceb745402b76efadce;keep_landing=1;redirected=1;source=country&gclid=CLOB5qyxnNQCFZQy0wodqosCIQ&\">Accomodation</a></li>\r\n");
      out.write("      <li><a href=\"#\">Student/Blog</a></li>\r\n");
      out.write("      <li><a href=\"#\">Jobs</a></li>\r\n");
      out.write("      <li><a href=\"#\">About EraStud</a></li>\r\n");
      out.write("      <li><a href=\"connection.jsp\">Sign In/Up</a></li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h4><i>You can Propose a student job but you need to add some informations about it.</i></h4>\r\n");
      out.write("<br><br>\r\n");
      out.write("   <form class=\"form-horizontal\" action=create_job.jsp>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"text\" >Title :</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" style=\"height: 50px; width: 400px\" id=\"title\"  name=\"title\" placeholder=\"Enter the title of the job\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\" >Email:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"email\" class=\"form-control\" id=\"email\"  style=\"height: 50px; width: 400px\" name=\"mail\" placeholder=\"Enter your email\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"text\" >Company:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" style=\"height: 50px; width: 400px\" id=\"text\"  name=\"company\" placeholder=\"Enter the job's company\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"text\" >City:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" style=\"height:50px; width: 400px\" id=\"city\"  name=\"city\" placeholder=\"Enter the job's city\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\" >Salary(<0)</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"salary\" class=\"form-control\" id=\"salary\"  style=\"height:50px; width: 400px\" name=\"salary\" placeholder=\"Enter the job's salary\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\" >Description:</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" style=\"height: 50px; width: 400px\" id=\"description\"  name=\"description\" placeholder=\"Enter the job's description\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("   <div class=\"form-group\" >\r\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\" >URL's pic :</label>\r\n");
      out.write("    <div class=\"col-sm-10\">\r\n");
      out.write("      <input type=\"text\" class=\"form-control\" style=\"height: 50px; width: 400px\" id=\"img\"  name=\"img\" placeholder=\"URL of your pic's company\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"form-group\">\r\n");
      out.write("    <div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("      <button type=\"submit\" class=\"btn btn-default\" style=\"float: left;\" >Propose a job</button>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</form> \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
