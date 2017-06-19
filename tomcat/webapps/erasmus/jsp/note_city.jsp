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

<h4><i>You can Propose a student job but you need to add some informations about it.</i></h4>
<br><br>
   <form class="form-horizontal" action=create_job.jsp>

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
    <label class="control-label col-sm-2" for="text" >Company:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="text"  name="company" placeholder="Enter the job's company">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="text" >City:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height:50px; width: 400px" id="city"  name="city" placeholder="Enter the job's city">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="email" >Salary(<0)</label>
    <div class="col-sm-10">
      <input type="salary" class="form-control" id="salary"  style="height:50px; width: 400px" name="salary" placeholder="Enter the job's salary">
    </div>
  </div>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="email" >Description:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="description"  name="description" placeholder="Enter the job's description">
    </div>
  </div>

<form method="post" action="/action_page_post.php">
  <input type="range" id="points" style="height: 50px;width: 200px" value="50" min="0" max="100">
</form>

   <div class="form-group" >
    <label class="control-label col-sm-2" for="email" >URL's pic :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" style="height: 50px; width: 400px" id="img"  name="img" placeholder="URL of your pic's company">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" style="float: left;" >Propose a job</button>
    </div>
  </div>
</form> 


</body>
</html>