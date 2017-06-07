<!DOCTYPE html>
<html>

<head>
	<title> Universities </title>
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
			<li><a href="jsp/university.jsp">Universities</a>
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
		<input type="text" name="search" id="myInput" onkeyup="myFunction()" placeholder="Search your University..">
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
		String query ="select name from university order by name asc;";
		ResultSet rs = stmt.executeQuery(query);

		%>
		<ul id="filter-links" class="filter-links">
			<%
			while(rs.next()){
				String name = rs.getString(1);
				%> <li><a href="#"><%out.print(name);%></a></li> <%
			}

			// list and cities with description
			query = "select * from university order by name asc;";
			rs = stmt.executeQuery(query);
			%> 
		</ul>

		<div class="filter-sections">
			<%
			while(rs.next()){
				String name = rs.getString(1);
				String city = rs.getString(2);
				String mail = rs.getString(3);
				String site = rs.getString(4);
				String description = rs.getString(5);
				String img = rs.getString(6);
		
				%> <div class=<%out.print(name);%> > <h1> <%out.print(name);%> </h1> <img style="width: 400px; height: 200px" 
				src=<%out.print(img);%>/> <br> Located in <%out.print(city);%> 
				<br> <br> <br> <%out.print(description);%> <br> 
				<p><a href="http://<%out.print(site);%>" class="w3-button w3-teal">Site of <%out.print(name);%></a></p> </div> <%
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