<!DOCTYPE html>
<html lang="fr" xml:lang="fr" xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <!--Content-type-->
      <meta name='Content-Type' content='text/html'/>
       <meta charset='utf-8'/>
         
          <!--css style-->
          <!-- pour les mettre l'un a cote de l'autre-->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/ui.css"/>

        <title>Erasmus </title>
 
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
		   
%>


<img src="../img/man.png" style="width:100px;height:100px;border: 1px solid #8293B2; margin-left: 80%">


<div style="width:400px;height:350px;border:1px solid #8293B2;margin-left: 70%"> <a href="../"><img src="../img/para.jpg" style="width:30px;height:30px;margin-top: 0%; margin-left: 90%"></a> <b>LastName:</b><br> <% out.println(lastname); %> <br> <br><b> FirstName:</b>  <br><% out.println(firstname); %><br><br> <b> Country:</b><br><% out.println(country); %><br><br> <b>Email:</b> <br><% out.println(email); %><br><br> <b>PassWord:</b> <br>******* </div>

<%
}
			con.close();
		}
		catch(Exception e){
			//out.println(e.getMessage());
		}
%>



<div style="margin-top: -27%;border:1px solid #8293B2;width:942px; ">

<div style="border:1px solid #8293B2;width:220px;" >
<h3>You can find a student </h3>
     <form class="form-horizontal" action="../test">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Search a Student:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="search"  name="search" placeholder="search a student">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form> 
</div>


<div style="border:1px solid #8293B2;width:220px;" >
<h3>You can find an University</h3>
     <form class="form-horizontal"  action="../test">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Search a University:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="university"  name="university" placeholder="search a University">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form> 
</div>

<div style="border:1px solid #8293B2;width:220px;" >
<h3>You can find a Job</h3>
     <form class="form-horizontal"  action="../test">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Search a Job:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="job"  name="job" placeholder="search a Job">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form> 
</div>



</div>


</body>
</html>