<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Job Portal</title>
        <link rel="stylesheet" href="assets/css/register.css">
        <!-- <link rel="stylesheet" href="../assets/css/main.css"> -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
      </head>
    <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container">
				  <a class="navbar-brand" href="#"><i class="fa fa-handshake-o" aria-hidden="true"></i> GET A JOB</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				  </button>
				
				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
					  <li class="nav-item active">
						<a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
					  </li> 
					</ul>  
					<ul class="navbar-nav">
							<li class="nav-item dropdown">
								<button class="nav-link dropdown-toggle btn btn-outline-success mr-3" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="fa fa-sign-in" aria-hidden="true"></i> Login
								</button>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
								  <a class="dropdown-item" href="login.jsp">As Job Seeker</a>
								  <a class="dropdown-item" href="loginProvider.jsp">As Job Provider</a>
								</div>
							</li>																									
					  	 
					</ul>
				  </div>
				</div>
			</nav>
    <h2 id="id1">Help Others, Post Jobs for Free</h2> 
    <div class="bd-example">
        <form action="registerProvider" method="post">
        <div>
            <label for="exampleFormControlInput1">Company Name</label>
            <input type="text" class="form-control" name="ComName" id="exampleFormControlInput1" placeholder="enter the name"  aria-invalid="true" aria-required="true" maxlength="100" min="1" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur">
        </div>         
           <div>
            <label for="exampleFormControlInput1">Email address</label>
            <input type="email" class="form-control" name="ComEmail" id="exampleFormControlInput1" placeholder="name@example.com" aria-invalid="true" aria-required="true" required="required" maxlength="100" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur"/>
          </div>
          <div>
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="ComPass" id="exampleInputPassword1" required="required">
          </div>
          <label for="address" id="addressLabel">Company Address</label>
          <div>
            <textarea name="ComAddress" id="address" cols="97" rows="5"></textarea>
          </div>
          <div>
            <label for="contacts">Contact number</label>
            <input class="form-control" id="contacts" name="ComContact" aria-invalid="true" aria-required="true" type="tel" maxlength="10" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur"/>
          </div>
          <br>
          <input class="btn btn-primary" type="submit" value="Submit">
    </form> 
    </div> 
    <!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
   </body>      
</html>