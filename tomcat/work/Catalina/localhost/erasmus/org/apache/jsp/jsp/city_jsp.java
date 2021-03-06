/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.77
 * Generated at: 2017-06-18 04:26:47 UTC
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
      out.write("\t<title> Cities </title>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../css/cities.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"navbar\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li><a class=\"active\"  href=\"../index.html\">EraStud</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"city.jsp\">Cities</a>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"city.jsp\">Find your City</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"citiesrc.jsp?search=all\">City Ranking</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li><a href=\"university.jsp\">Universities</a>\r\n");
      out.write("            <li><a href=\"https://www.booking.com/\">Accomodation</a></li>\r\n");
      out.write("            <li><a href=\"studentblog.jsp\">Student/Blog</a></li>\r\n");
      out.write("           \t<li><a href=\"job.jsp\">Jobs</a></li>\r\n");
      out.write("            <li><a href=\"about.html\">About EraStud</a></li>\r\n");
      out.write("            <li><a href=\"connection.jsp\">Sign In/Up</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<br>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<form>\r\n");
      out.write("\t\t<input type=\"text\" name=\"search\" id=\"myInput\" onkeyup=\"myFunction()\" placeholder=\"Search your City..\">\r\n");
      out.write("\t</form>\r\n");
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

		Connection con2 =DriverManager.getConnection(url,"postgres","root");
		Statement stmt2 = con.createStatement();

		// list of cities
		/*String query ="select idcity from city order by idcity asc;";
		ResultSet rs = stmt.executeQuery(query);*/

		
      out.write("\r\n");
      out.write("\t\t<ul id=\"filter-links\" class=\"filter-links\">\r\n");
      out.write("\t\t");

		String query = "select distinct country from city order by country asc;";
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			String country = rs.getString(1);
			
      out.write("<li><a href=\"#\" class=\"header\">");
out.print(country);
      out.write("</a></li> ");


			String query2 ="select idcity from city where country='" + country + "'  order by idcity asc;";
			ResultSet rs2 = stmt2.executeQuery(query2);
			while(rs2.next()){
				String idcity = rs2.getString(1);
				
      out.write(" <li><a href=\"\">");
out.print(idcity);
      out.write(" <span style=\"color: #f0f0f0\" ");
out.print(country);
      out.write("</p></a></li> ");

			}

		}

			// list and cities with description
			query = "select idcity, description, img, country from city order by idcity asc;";
			rs = stmt.executeQuery(query);
			/*
			String query2 = "select name from university order by name asc;";
			ResultSet rs2 = stmt2.executeQuery(query2);
			*/

			
      out.write(" \r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"filter-sections\">\r\n");
      out.write("\t\t\t");

			while(rs.next()){
				String idcity = rs.getString(1);
				String description = rs.getString(2);
				String img = rs.getString(3);
				String country = rs.getString(4);
		
				
      out.write(" <div class=");
out.print(idcity);
      out.write("> <h1> ");
out.print(idcity);
      out.write(" </h1> <br> <img style=\"width: 500px; height: 300px\" src=");
out.print(img);
      out.write("/> <br><br> ");
out.print(description);
      out.write(" <br> \r\n");
      out.write("\t\t\t\t<p><a href=\"https://en.wikipedia.org/wiki/");
out.print(idcity);
      out.write("\" class=\"w3-button w3-teal\">More information about ");
out.print(idcity);
      out.write("</a>\r\n");
      out.write("\t\t\t\t<a href=\"citiesrc.jsp?search=");
out.print(idcity);
      out.write("\" class=\"w3-button w3-teal\">The opinions of our users</a></p>\r\n");
      out.write("\t\t\t\t<h3> List of University </h3>\r\n");
      out.write("\t\t\t\t");

				String query2 = "select name from university where city='" + idcity + "'  order by name asc;";
				ResultSet rs2 = stmt2.executeQuery(query2);
				while(rs2.next()){
					String name = rs2.getString(1);

					
      out.write("\r\n");
      out.write("\t\t\t\t\t<p> - ");
out.print(name);
      out.write(" </p>\r\n");
      out.write("\t\t\t\t\t");


				}
				
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t</div> ");

			}

			
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<script src=\"../js/cities.js\"></script>\r\n");
      out.write("\t");


		con.close();
		con2.close();
	}
	
	catch(Exception e){
    	out.println(e.getMessage());
    }
    
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
