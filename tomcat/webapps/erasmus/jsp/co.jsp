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
			Statement stmt = con.createStatement();
			String query = "select * from users;";
			ResultSet rs = stmt.executeQuery(query);
			
			out.println("<!doctype html>");
			out.println("<head><title>Table utilisateurs </title></head><body>");
			System.out.println("Liste des utilisateurs:");
			
			while(rs.next()){
				String n = rs.getString(1); // nom
				String p = rs.getString(2); // prenom
				
				System.out.println(n + " " + p);
			
			}
			con.close();
			out.println("testons l'ami");
			out.println("</body></html> ");
		}
		catch(Exception e){
			out.println(e.getMessage());
		}
%>
<h1>restest</h1>
