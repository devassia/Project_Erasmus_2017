 <!DOCTYPE html>
<html lang="fr" xml:lang="fr" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--Content-type-->
    <meta name='Content-Type' content='text/html'/>
    <meta charset='utf-8'/>
      
    <!--css style-->
    <link rel="stylesheet" href="../css/ui.css"/>
    <link rel="stylesheet" href="../css/bootstrap.css"/>


        <title>Erasmus </title>
 
</head>
<body>

<h3 align="center"><i><u>Log In</u></i></h3>

     <form class="form-horizontal"  action="co.jsp">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter your email">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pwd" placeholder="Enter your password">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>

</form> 



<h3 align="center"><i><u>Create an account</u></i></h3>

     <form class="form-horizontal" action="create.jsp">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter your email">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pwd" name="test" placeholder="Enter your password">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>

</form> 

  </body>
</html>