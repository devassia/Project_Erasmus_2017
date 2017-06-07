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
      
      String ville = request.getParameter("ville");

      Statement stmt = con.createStatement();
     
      String query; 
      ResultSet rs;
      

      if(ville.equals("all")){
      out.print("tout");
      query ="select * from job;";
       rs = stmt.executeQuery(query);
      }
      else {
      out.print("seulement");
      query ="select * from job where city='"+ville+"';";
      rs = stmt.executeQuery(query);
      }

      
%>

<!--CADRE PRINCIPAL-->
<div id="global">
    <!--PREMIER CADRE-->
    <div id="cadre1">
    <%
       while(rs.next()){  
          
      String title = rs.getString(1);
      String email = rs.getString(2);
      String company = rs.getString(3);
      String city = rs.getString(4);
      int salary = rs.getInt(5);
      String description = rs.getString(6);
      String img = rs.getString(7);
       
%>
<div style="width:500px;height:100px;border:1px solid #000;"> <img src= <% out.print(img); %> style="width:100px;height:100px;float:left;">
 <%out.print(title+" - ");out.print(company+" - ");out.print(city+" - ");out.print(salary+" Euros/month");%>
 <br>
 <%out.print(description);%>
 <br>
 <%out.print(email);%>
</div>

<%
     }
    %>
       
    </div>
    <!--SECOND CADRE-->
    <div id="cadre2" style="text-align: center;">
<h4><i>You can search a job in a city</i></h4>

 <form class="form-inline">
  <div class="form-group">
    <label class="sr-only" for="text"></label>
    <input type="text" style="height: 40px" class="form-control" id="ville" name="ville" style="width: 250px;height: 50px;" placeholder="Enter a city">
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form> 


    </div>
</div>


<%

      con.close();
    }
    catch(Exception e){
      //out.println(e.getMessage());
    }
%>

</body>
</html>