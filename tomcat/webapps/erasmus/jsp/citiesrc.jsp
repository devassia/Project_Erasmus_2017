<!DOCTYPE html>
<html>

<head>
	<title> Cities Ranking and Comments</title>
	<link rel="stylesheet" href="../css/cities.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
	<div class="navbar">
		<ul>
			<li><a class="active"  href="../index.html">EraStud</a></li>
			<li><a href="city.jsp">Cities</a>
				<ul>
					<li><a href="city.jsp">Find your City</a></li>
					<li><a href="#">City Ranking</a></li>
				</ul>
			</li>
			<li><a href="university.jsp">Universities</a></li>
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
		String query ="select city, round(avg(rating),2) from commentplace group by city order by avg(rating) desc;";
		ResultSet rs = stmt.executeQuery(query);

		%>
		<ul id="filter-links" class="filter-links">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				String rating = rs.getString(2);
				%> <li><a href="#"><%out.print(idcity);%></a></li><%
			}

			// list and cities with description
			query = "select city, comment, rating from commentplace group by city,comment, rating order by avg(rating) desc;";
			rs = stmt.executeQuery(query);
			%> 
		</ul>

		<div class="filter-sections">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				String description = rs.getString(2);
				String rating = rs.getString(3);
		
				%> <div class=<%out.print(idcity);%> ><p class="toto"> <h1> <%out.print(idcity);%> </h1> Rating :  <%out.print(rating);%> <br> <%out.print(description);%> <br> 
				<p><a href="https://en.wikipedia.org/wiki/<%out.print(idcity);%>" class="w3-button w3-teal">More information about <%out.print(idcity);%></a>
				<a href="#" class="w3-button w3-teal">The opinions of our users</a></p>
				</p>
				</div> <%
			}
			%>
		</div>

		<script src="../js/citiesrc.js"></script>
	<%

		con.close();
	}
	
	catch(Exception e){
    	out.println(e.getMessage());
    }
    %>
</body>
</html>