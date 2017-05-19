<h3>You have successfully created your account</h3> 
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

			String lastname = request.getParameter("lastname");
			String firstname = request.getParameter("firstname");
			String country = request.getParameter("country");
			String mail = request.getParameter("mail");
			String password = request.getParameter("password");

			Statement stmt = con.createStatement();
			String query = "insert into client values('"+lastname+"','"+firstname+"','"+country+"','"+mail+"','"+password+"');";
	
			System.out.println("creation d'un nouvel utilisateur:");
		    ResultSet rs = stmt.executeQuery(query);
			con.close();
		}
		catch(Exception e){
			//out.println(e.getMessage());
		}
%>
<a href="connection.jsp">Back to login</a>
