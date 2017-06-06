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

<h4><i>You can share your Erasmus experience here with other users.</i></h4>
<br><br>
   <form class="form-horizontal" action=share_ok.jsp>

  <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >Title :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="title"  name="title" placeholder="Enter the title of the job">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="email" >Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email"  style="height: 50px; width: 400px" name="mail" placeholder="Enter your email">
    </div>
  </div>

  <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >University:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="university"  name="university" placeholder="Enter your erasmus university.">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >Years:</label>
    <div class="col-sm-10">
      <input type="integer" class="form-control" style="height:50px; width: 400px" id="years"  name="years" placeholder="Enter the years of your project.">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="email" >Description:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="description"  style="height:50px; width: 400px" name="description" placeholder="Description about your Erasmus Project.">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" style="float: left;" >Share your Project.</button>
    </div>
  </div>
</form> 

</body>
</html>