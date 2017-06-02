 <!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="../css/cities.css"/>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/ui.css"/>
  <script src="../js/connection.js"></script>

  <div class="navbar">
    <ul>
      <li><a class="active"  href="../index.html">EraStud</a></li>
      <li><a href="">Cities</a></li>
      <li><a href="#">Universities</a> </li>
      <li><a href="#">Accomodation</a></li>
      <li><a href="#">Student/Blog</a></li>
      <li><a href="#">Jobs</a></li>
      <li><a href="#">About EraStud</a></li>
      <li><a href="#">Sign In/Up</a></li>

    </ul>
  </div>

  
</head>

<body>

<div class="cotn_principal">

<div class="cont_centrar">
<div class="cont_login">
<div class="cont_info_log_sign_up">
<div class="col_md_login">
<div class="cont_ba_opcitiy">
        
        <h2>LOGIN</h2>  
  <p>You can login into your account here.</p> 

  <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
  </div>
  </div>


<div class="col_md_sign_up">
<div class="cont_ba_opcitiy">

        <h2>SIGN UP</h2>

  <p>you can create your account here.</p>

  <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
</div>
</div>
  </div>
    

<div class="cont_forms" >
<div class="cont_form_login">
<a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
  
   <h2>LOGIN</h2>

<br>
   <form class="form-horizontal"  action="co.jsp">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email"  name="mail" placeholder="Enter your email">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Pass:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter your password">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Login</button>
    </div>
  </div>
</form> 
</div>
  
  <div class="cont_form_sign_up">

  <h2>SIGN UP</h2>
<br>
 
<form class="form-horizontal" action="create.jsp">

<div class="form-group">
    <label class="control-label col-sm-2" for="text">LastN:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="LName"  name="lastname" placeholder="Enter your Last Name">
    </div>
  </div>

<div class="form-group">
    <label class="control-label col-sm-2" for="text">FirstN:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="FName"  name="firstname" placeholder="Enter your First Name">
    </div>
  </div>

<div class="form-group">
    <label class="control-label col-sm-2" for="text">Country:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="Country"  name="country" placeholder="Enter your Country">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email"  name="mail" placeholder="Enter your email">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Pass:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control"  id="pwd" name="password" placeholder="password (3>characteres)">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign up</button>
    </div>
  </div>

</form> 

  </div>
  </div>
  </div>
 </div>
</div>


  </body>
</html>
