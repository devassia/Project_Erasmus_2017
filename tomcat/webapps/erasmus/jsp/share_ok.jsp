<!DOCTYPE html>
<html>
<body>

<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="java.sql.*" %>

<%
		try{
			Class.forName("org.postgresql.Driver");  
			String url = "jdbc:postgresql://localhost/postgres";
			Connection con=DriverManager.getConnection(url,"postgres","root");

			String title = request.getParameter("title");
			String mail = request.getParameter("mail");
			String university = request.getParameter("university");
			int years = request.getParameter("years");
			String description = request.getParameter("description");

			Statement stmt = con.createStatement();

			String query ="insert into subject values ('"++"');";
			ResultSet rs = stmt.executeQuery(query);

  
		con.close();

		}
		catch(Exception e){
			//out.println(e.getMessage());
		}
%>
you have sucessful sharing your Experience.
</body>
</html>
