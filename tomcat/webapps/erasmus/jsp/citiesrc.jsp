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
		String search = request.getParameter("search");


		// list of cities
		String query ="select city, round(avg(rating),2) from commentplace group by city order by avg(rating) desc;";
		ResultSet rs = stmt.executeQuery(query);

		%>
		<ul id="filter-links" class="filter-links">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				String rating = rs.getString(2);
				int x = 1;
				// The value of my x is always 1, I want to do a ranking
				%> <li><a href="citiesrc.jsp?search=<%out.print(idcity);%>"><%out.print(idcity);%></a></li><%
				x++;

			}

			// list and cities with description
			if(search.equals("all")){
          query="select city, comment, rating, email from commentplace group by city,comment, rating, email order by avg(rating) desc;";
        }
        else {
       		query = "select city, comment, rating, email from commentplace where city ='"+search+"' group by city,comment, rating, email order by avg(rating) desc;";
      	}
			
			rs = stmt.executeQuery(query);
			%> 
		</ul>

		<div class="filter-sections">
			<%
			while(rs.next()){
				String idcity = rs.getString(1);
				String description = rs.getString(2);
				String rating = rs.getString(3);
				String client = rs.getString(4);
				int x = 1;
				%> <div class=<%out.print(idcity);%> > <h1> <%out.print(idcity);%> </h1> Rating :  <%out.print(rating);%> <br> <%out.print(description);%> <br> <i> Share by <%out.print(client);%></i> <br> 
				<p><a href="city.jsp" class="w3-button w3-teal">More information about <%out.print(idcity);%></a>
				</p>

				</div> <%
				x++;
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