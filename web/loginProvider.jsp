<%@page import="com.login.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Job Portal</title>
        <link rel="stylesheet" href="assets/css/login.css" type="text/css">
        <!-- <link rel="stylesheet" href="../assets/css/main.css" type="text/css"> -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
       <!----<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
       <!----<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
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
                        <button class="nav-link dropdown-toggle btn btn-outline-success" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user-plus" aria-hidden="true"></i> Register
                        </button>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                          <a class="dropdown-item" href="registerSeeker.jsp">As Job Seeker</a>
                          <a class="dropdown-item" href="registerProvider.jsp">As Job Provider</a>
                        </div>
                    </li>
                </ul>
              </div>
            </div>
        </nav>
        <div class="a1">
            <form action="LoginProvider"  method="post">
                <div class="welcomeText mb20" >
                    <h3 class="fs-20" data-v-d0fd0660="">Hello!<br data-v-d0fd0660=""> <span class="bold" data-v-d0fd0660="">Welcome Back</span></h3> 
                    <div class="note-small fs-13" data-v-d0fd0660="">You are just a step away from your dream job.</div>

                </div>
                <br>
                <div class="form-group">
                   
                <!--<label for="exampleInputEmail1">Email address</label>-->
                 <input type="email" class="form-control" id="exampleInputEmail1" name="ComEmail" placeholder="name@example.com" aria-describedby="emailHelp"  maxlength="100" aria-invalid="true" aria-required="true" maxlength="100" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
             </div>
             <div class="form-group">
                <!----<label for="exampleInputPassword1">Password</label>-->
                 <input type="password" class="form-control" name="ComPass" id="exampleInputPassword1" placeholder="password">
             </div>
             <div class="form-group form-check">
                 <input type="checkbox" class="form-check-input" id="exampleCheck1">
                 <label class="form-check-label" for="exampleCheck1">Keep me logged in</label>
             </div>
             <div class="a3">
             	 <input type="submit" class="btn btn-primary"  value="login"> 
            </div> 
            <a href="registerProvider.jsp">Register Here</a>    
         </form>
        </div>
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