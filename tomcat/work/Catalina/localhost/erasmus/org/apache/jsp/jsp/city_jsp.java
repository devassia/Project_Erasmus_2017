/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.77
 * Generated at: 2017-06-01 16:03:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

public final class city_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<link rel=\"stylesheet\" href=\"../css/cities.css\"/>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"navbar\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li><a class=\"active\"  href=\"../index.html\">EraStud</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"\">Cities</a>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"city.jsp\">Find your City</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">City Ranking</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">Experience Sharing</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Universities</a>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">Find your University</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">University Ranking</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Accomodation</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Student/Blog</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Jobs</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">About EraStud</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Sign In/Up</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<input type=\"text\" id=\"myInput\" onkeyup=\"myFunction()\" placeholder=\"Search your City..\">\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t");

	try{
		Class.forName("org.postgresql.Driver");  
		String url = "jdbc:postgresql://localhost/postgres";
		Connection con=DriverManager.getConnection(url,"postgres","root");

		Statement stmt = con.createStatement();

		// list of cities
		String query ="select idcity from city order by idcity asc;";
		ResultSet rs = stmt.executeQuery(query);

		
      out.write(" \r\n");
      out.write("\t\t<ul id=\"filter-links\" class=\"filter-links\">\r\n");
      out.write("\t\t");

		while(rs.next()){
		String idcity = rs.getString(1);
			
      out.write(" <li><a href=\"#\">");
out.print(idcity);
      out.write("</a></li> ");

		}

		// list and cities with description
		query = "select idcity, description from city order by idcity asc;";
		rs = stmt.executeQuery(query);
		
      out.write(" \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</ul> \r\n");
      out.write("\t\t<div class=\"filter-sections\">\r\n");
      out.write("\t\t");
 
		while(rs.next()){
		String idcity = rs.getString(1);
		String description = rs.getString(2);
		
		
      out.write(" <div class=");
out.print(idcity);
      out.write(' ');
      out.write('>');
      out.write(' ');
out.print(description);
      out.write(" </div> ");

		}
		
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<script src=\"../js/cities.js\"></script>\r\n");
      out.write("\t\t");


		con.close();
	}
	catch(Exception e){
    	//out.println(e.getMessage());
  	}
  	
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
