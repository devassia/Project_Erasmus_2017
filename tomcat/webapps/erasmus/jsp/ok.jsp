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

<!--CADRE PRINCIPAL-->
<div id="global">
    <!--PREMIER CADRE-->
    <div id="cadre1">
        <table>
   <tr>
       <td><button style="background-color: #435BD4;height: 220px;width:270px " type="button" class="btn btn-lg btn-primary" onclick="self.location.href='search_student.jsp?search='" >Search a student </button></td>
       <td><button style="background-color: #E99BE0;height: 220px;width:270px" type="button" class="btn btn-lg btn-primary" onclick="self.location.href='https://www.booking.com/index.fr.html?aid=376366;label=fr-51aYADzKCvHZ21Orv3nXsAS193330406601%3Apl%3Ata%3Ap1%3Ap21.279.000%3Aac%3Aap1t1%3Aneg%3Afi%3Atikwd-65526620%3Alp9062284%3Ali%3Adec%3Adm;sid=f852e761b1b63eceb745402b76efadce;keep_landing=1;redirected=1;source=country&gclid=CI6i8NWxnNQCFUUW0wodRmoF7w&'" >Find housing</button></td>
       <td><button style="background-color: #F9F50E;height: 220px;width:270px" type="button" class="btn btn-lg btn-primary" onclick="self.location.href='search_job.jsp?ville=all'" >Search a job</button></td>
   </tr>

   <tr>
       <td><button style="background-color: #E22AEF;height: 220px;width:270px" type="button" class="btn btn-lg btn-primary" onclick="self.location.href='share.jsp'" >Share your Erasmus Project</button></td>
       <td><button style="background-color: #F80830;height: 220px;width:270px" type="button" class="btn btn-lg btn-primary" onclick="self.location.href='note_city.jsp'" >Note a City/Country</button></td>
       <td><button style="background-color: #0ED50E;height: 220px;width:270px" type="button" class="btn btn-lg btn-primary" onclick="self.location.href='propose_job.jsp'" >Propose a job</button></td>
   </tr>
</table>
<br><br><br>
<a href="https://fr-fr.facebook.com/"><img src="../img/fb.png" style="width:50px;height:50px;"></a>
<a href="https://twitter.com/?lang=fr"><img src="../img/twitter.png" style="width:50px;height:50px;"></a>

    </div>
    <!--SECOND CADRE-->
    <div id="cadre2" style="text-align: center;">

       <img src= <% out.print(img); %> style="width:100px;height:100px;">


 <a href="../"><img src="../img/para.jpg" style="width:30px;height:30px; margin-left: 90%"></a>
 <a href=change.jsp?mail=<% out.print(email); %>><img src="../img/param.jpg" style="width:30px;height:30px; margin-left: 90%"></a>

<br><br>

  <b>LastName:</b><br><% out.println(lastname); %> <br><br>
  <b>FirstName:</b><br><% out.println(firstname); %><br><br>
  <b> Country:</b><br><% out.println(country); %><br><br>
  <b>Email:</b><br><% out.println(email); %><br><br>
  <b>PassWord:</b><br>*******</div>
    
</div>


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