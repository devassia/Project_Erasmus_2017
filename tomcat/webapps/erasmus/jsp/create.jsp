<h1>salut toi</h1> 
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

			String test = requests.getParameter("test");

			Statement stmt = con.createStatement();
			String query = "insert into users values('"+test+"','2');";
	
			System.out.println("creation d'un nouvel utilisateur:");
		    ResultSet rs = stmt.executeQuery(query);
			con.close();
		}
		catch(Exception e){
			out.println(e.getMessage());
		}
%>
<h1>restest</h1>
