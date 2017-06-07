<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="../css/cities.css"/>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/ui.css"/>

  <div class="navbar">
    <ul>
      <li><a class="active"  href="../index.html">EraStud</a></li>
      <li><a href="city.jsp">Cities</a>
        <ul>
          <li><a href="city.jsp">Find your City</a></li>
          <li><a href="citiesrc.jsp">City Ranking</a></li>
        </ul>
      </li>
      <li><a href="university.jsp">Universities</a>
      </li>
      <li><a href="https://www.booking.com/index.fr.html?aid=376366;label=fr-51aYADzKCvHZ21Orv3nXsAS193330406601%3Apl%3Ata%3Ap1%3Ap21.279.000%3Aac%3Aap1t1%3Aneg%3Afi%3Atikwd-65526620%3Alp9062284%3Ali%3Adec%3Adm;sid=f852e761b1b63eceb745402b76efadce;keep_landing=1;redirected=1;source=country&gclid=CLOB5qyxnNQCFZQy0wodqosCIQ&">Accomodation</a></li>
      <li><a href="studentblog.jsp">Student/Blog</a></li>
      <li><a href="job.jsp">Jobs</a></li>
      <li><a href="../about.html">About EraStud</a></li>
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

%>

<form class="form-horizontal" action="change2.jsp?email=<%out.print(mail);%>">


  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Email adress:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control"  id="email" name="email" style="height: 50px;width: 400px" placeholder="Enter your email adress">
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
      <button type="submit" class="btn btn-default">Change</button>
    </div>
  </div>

</form> 


<%

       
}
      con.close();
    }
    catch(Exception e){
      //out.println(e.getMessage());
    }
%>



</body>
</html>