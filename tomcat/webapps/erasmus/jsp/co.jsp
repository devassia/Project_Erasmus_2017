<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="../css/cities.css"/>
  <link rel="stylesheet" href="../css/bootstrap.min.css">

	<div class="navbar">
		<ul>
			<li><a class="active"  href="index.html">EraStud</a></li>
			<li><a href="">Cities</a>
				<ul>
					<li><a href="#">Find your City</a></li>
					<li><a href="#">City Ranking</a></li>
					<li><a href="#">Experience Sharing</a></li>
				</ul>
			</li>
			<li><a href="#">Universities</a>
				<ul>
					<li><a href="#">Find your University</a></li>
					<li><a href="#">University Ranking</a></li>
				</ul>
			</li>
			<li><a href="#">Accomodation</a></li>
			<li><a href="#">Student/Blog</a></li>
			<li><a href="#">Jobs</a></li>
			<li><a href="#">About EraStud</a></li>
			<li><a href="#">Sign In/Up</a></li>



		</ul>
	</div>
</head>

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

			String mail = request.getParameter("mail");
			String password = request.getParameter("password");

			Statement stmt = con.createStatement();

			String query = "select passwd from client where email='"+mail+"';";
			ResultSet rs = stmt.executeQuery(query);

				while (rs.next()) 
				{
					 String mdp = rs.getString(1); // mdp
					if(password.equals(mdp)){
					response.sendRedirect("../jsp/ok.jsp?mail="+mail);
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
</body>
</html>
