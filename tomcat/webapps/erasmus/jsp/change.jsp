<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="../css/cities.css"/>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/ui.css"/>

  <div class="navbar">
    <ul>
      <li><a class="active"  href="../index.html">EraStud</a></li>
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
      <li><a href="connection.jsp">Sign In/Up</a></li>



    </ul>
  </div>
</head>

<body>
<h2>You can change your profil here !</h2>


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
      

      Statement stmt = con.createStatement();
      String query = "select * from client where email='"+mail+"';";
  
      ResultSet rs = stmt.executeQuery(query);

        while (rs.next()) 
        {
           String lastname = rs.getString(1); // lastname
           String firstname = rs.getString(2); // firstname
           String country = rs.getString(3); // country
           String email = rs.getString(4); // email
           String passwd = rs.getString(5); // passwd
           String img = rs.getString(6); // image
       
}
      con.close();
    }
    catch(Exception e){
      //out.println(e.getMessage());
    }
%>

<form class="form-horizontal" action="change2.jsp">

  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Email:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  id="email" name="email" style="height: 50px;width: 400px" placeholder="Enter your email">
    </div>
  </div>


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">pic's URL:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  id="img" name="img" style="height: 50px;width: 400px" placeholder="Enter the URL of your profil's pic">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign up</button>
    </div>
  </div>

</form> 


</body>
</html>