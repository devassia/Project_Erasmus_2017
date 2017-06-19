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

<h4><i>You can Comment a place here.</i></h4>
<br><br>
   <form class="form-horizontal" action=create_comment.jsp>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="email" >Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email"  style="height: 50px; width: 400px" name="mail" placeholder="Enter your email">
    </div>
  </div>

  <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >Comment:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="comment"  name="comment" placeholder="Enter your comment.">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >Rating :</label>
    <div class="col-sm-10">
      <input type="number" value="0" min="0" max="5" class="form-control" style="height: 50px; width: 400px" id="rating"  name="rating" placeholder="between 0 and 5">
    </div>
  </div>



   <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >place :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="place"  name="place" placeholder="where ?">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" style="float: left;" >Comment</button>
    </div>
  </div>
</form> 


</body>
</html>