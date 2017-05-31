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

			String email = request.getParameter("email");
			String pic = request.getParameter("img");

			Statement stmt = con.createStatement();

			String query ="update client set img='"+pic+"'where email='"+email+"';";
			ResultSet rs = stmt.executeQuery(query);

  
		con.close();

		}
		catch(Exception e){
			//out.println(e.getMessage());
		}
%>
you have sucess change your pic's profil.
</body>
</html>
