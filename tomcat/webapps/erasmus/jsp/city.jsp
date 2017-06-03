<!DOCTYPE html>
<html>

<head>
	<title> Cities </title>
	<link rel="stylesheet" href="../css/cities.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
	<div class="navbar">
		<ul>
			<li><a class="active"  href="../index.html">EraStud</a></li>
			<li><a href="">Cities</a>
				<ul>
					<li><a href="city.jsp">Find your City</a></li>
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
	<br>
</head>

<body>
<form>
	<input type="text" name="search" id="myInput" onkeyup="myFunction()" placeholder="Search your City..">
	</form>
	
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

		// list of cities
		String query ="select idcity from city order by idcity asc;";
		ResultSet rs = stmt.executeQuery(query);

		%>
		<ul id="filter-links" class="filter-links">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				%> <li><a href="#"><%out.print(idcity);%></a></li> <%
			}

			// list and cities with description
			query = "select idcity, description, img from city order by idcity asc;";
			rs = stmt.executeQuery(query);
			%> 
		</ul>

		<div class="filter-sections">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				String description = rs.getString(2);
				String img = rs.getString(3);
		
				%> <div class=<%out.print(idcity);%> > <h2> <%out.print(idcity);%> </h2> <br> <img style="width: 400px; height: 200px" src=<%out.print(img);%>/> <br> <%out.print(description);%> <br> 
				<p><button class="w3-button w3-teal">More information about <%out.print(idcity);%></button></p> </div> <%
			}
			%>
		</div>

		<script src="../js/cities.js"></script>
	<%

		con.close();
	}
	
	catch(Exception e){
    	out.println(e.getMessage());
    }
    %>
</body>
</html>