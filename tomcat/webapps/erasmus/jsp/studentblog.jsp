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
      <li><a href="https://www.booking.com/index.fr.html?aid=376366;label=fr-51aYADzKCvHZ21Orv3nXsAS193330406601%3Apl%3Ata%3Ap1%3Ap21.279.000%3Aac%3Aap1t1%3Aneg%3Afi%3Atikwd-65526620%3Alp9062284%3Ali%3Adec%3Adm;sid=f852e761b1b63eceb745402b76efadce;keep_landing=1;redirected=1;source=country&gclid=CLOB5qyxnNQCFZQy0wodqosCIQ&">Accomodation</a></li>
      <li><a href="#">Student/Blog</a></li>
      <li><a href="#">Jobs</a></li>
      <li><a href="#">About EraStud</a></li>
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

%>

<!--CADRE PRINCIPAL-->
<div id="global">
    <!--PREMIER CADRE-->
    <div id="cadre1">

<h4><i> You can see all the subjects that the students have done </i></h4>
   <br>

    <%

      Connection con1=DriverManager.getConnection(url,"postgres","root");
     
      Statement stmt1 = con1.createStatement();
      String query1="select * from subject;";
      ResultSet rs1 = stmt1.executeQuery(query1);
      
       while(rs1.next()){  
          
      String title = rs1.getString(1);
      String email = rs1.getString(2);
      String university = rs1.getString(3);
      String years = rs1.getString(4);
      String description = rs1.getString(5);
       
%>
<div style="width:450px;height:100px;border:1px solid #000;">  <%out.print(title);%><br><% out.print(university+" - ");out.print(years);%><br><%out.print(description);%></div>
<%
     }
    %>
    


    </div>
    <!--SECOND CADRE-->
    <div id="cadre2" style="text-align: center;">

   <h4><i> You can see all the student who have an account on this website.</i></h4>
   <br>
    <%

      Connection con=DriverManager.getConnection(url,"postgres","root");
     
      Statement stmt = con.createStatement();
      String query="select * from client;";
      ResultSet rs = stmt.executeQuery(query);
      
       while(rs.next()){  
          
      String lastname = rs.getString(1);
      String firstname = rs.getString(2);
      String country = rs.getString(3);
      String email = rs.getString(4);
      String img = rs.getString(6);
       
%>
<div style="width:450px;height:100px;border:1px solid #000;"> <img src= <% out.print(img); %> style="width:80px;height:100px;float:left;"> <%out.print(lastname+" "); out.print(firstname);%><br><%out.print(country);%><br><%out.print(email);%></div>
<%
     }
    %>
       

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