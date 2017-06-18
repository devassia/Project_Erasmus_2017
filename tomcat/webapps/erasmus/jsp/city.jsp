<!DOCTYPE html>
<html>

<head>
	<title> Cities </title>
	<link rel="stylesheet" href="../css/cities.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
	<div class="navbar">
		<ul>
			<li><a class="active"  href="../index.html">EraStud</a></li>
			<li><a href="city.jsp">Cities</a>
				<ul>
					<li><a href="city.jsp">Find your City</a></li>
					<li><a href="citiesrc.jsp?search=all">City Ranking</a></li>
				</ul>
			</li>
			<li><a href="university.jsp">Universities</a>
            <li><a href="https://www.booking.com/">Accomodation</a></li>
            <li><a href="studentblog.jsp">Student/Blog</a></li>
           	<li><a href="job.jsp">Jobs</a></li>
            <li><a href="about.html">About EraStud</a></li>
            <li><a href="connection.jsp">Sign In/Up</a></li>
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

		Connection con2 =DriverManager.getConnection(url,"postgres","root");
		Statement stmt2 = con.createStatement();

		// list of cities
		/*String query ="select idcity from city order by idcity asc;";
		ResultSet rs = stmt.executeQuery(query);*/

		%>
		<ul id="filter-links" class="filter-links">
		<%
		String query = "select distinct country from city order by country asc;";
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			String country = rs.getString(1);
			%><li><a href="#" class="header"><%out.print(country);%></a></li> <%

			String query2 ="select idcity from city where country='" + country + "'  order by idcity asc;";
			ResultSet rs2 = stmt2.executeQuery(query2);
			while(rs2.next()){
				String idcity = rs2.getString(1);
				%> <li><a href=""><%out.print(idcity);%> <span style="color: #f0f0f0" <%out.print(country);%></p></a></li> <%
			}

		}

			// list and cities with description
			query = "select idcity, description, img, country from city order by idcity asc;";
			rs = stmt.executeQuery(query);
			/*
			String query2 = "select name from university order by name asc;";
			ResultSet rs2 = stmt2.executeQuery(query2);
			*/

			%> 
		</ul>

		<div class="filter-sections">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				String description = rs.getString(2);
				String img = rs.getString(3);
				String country = rs.getString(4);
		
				%> <div class=<%out.print(idcity);%>> <h1> <%out.print(idcity);%> </h1> <br> <img style="width: 500px; height: 300px" src=<%out.print(img);%>/> <br><br> <%out.print(description);%> <br> 
				<p><a href="https://en.wikipedia.org/wiki/<%out.print(idcity);%>" class="w3-button w3-teal">More information about <%out.print(idcity);%></a>
				<a href="citiesrc.jsp?search=<%out.print(idcity);%>" class="w3-button w3-teal">The opinions of our users</a></p>
				<h3> List of University </h3>
				<%
				String query2 = "select name from university where city='" + idcity + "'  order by name asc;";
				ResultSet rs2 = stmt2.executeQuery(query2);
				while(rs2.next()){
					String name = rs2.getString(1);

					%>
					<p> - <%out.print(name);%> </p>
					<%

				}
				%>
				
				</div> <%
			}

			%>
		</div>

		<script src="../js/cities.js"></script>
	<%

		con.close();
		con2.close();
	}
	
	catch(Exception e){
    	out.println(e.getMessage());
    }
    %>
</body>
</html>