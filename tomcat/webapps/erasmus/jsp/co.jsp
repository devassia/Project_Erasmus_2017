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

			String mail = request.getParameter("mail");
			String password = request.getParameter("password");

			Statement stmt = con.createStatement();

			String query = "select passwd from client where email='"+mail+"';";
			ResultSet rs = stmt.executeQuery(query);

				while (rs.next()) 
				{
					 String mdp = rs.getString(1); // mdp
					if(password.equals(mdp)){
					response.sendRedirect("../erasmus?mail="+mail);
					}
					else {
					out.println("<h3>Bad password</h3>");
					}
				}
		con.close();

		}
		catch(Exception e){
			//out.println(e.getMessage());
		}
%>
<a href="connection.jsp">Back to login</a>

