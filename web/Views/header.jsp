<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Job Portal</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css.css" type="text/css">
	</head>
	<body id="top">

			

			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container">
				  <a class="navbar-brand" href="#"><i class="fa fa-handshake-o" aria-hidden="true"></i> GET A JOB</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				  </button>
				
				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
					  <li class="nav-item active">
						<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
					  </li>
					  <li class="nav-item">
						<a class="nav-link" href="#">Search Job</a>
					  </li>  
					</ul>  
					<ul class="navbar-nav">
							<li class="nav-item dropdown">
								<button class="nav-link dropdown-toggle btn btn-outline-success mr-3" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="fa fa-sign-in" aria-hidden="true"></i> Login
								</button>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
								  <a class="dropdown-item" href="modules/login.jsp">As Job Seeker</a>
								  <a class="dropdown-item" href="modules/login.jsp">As Job Provider</a>
								</div>
							</li>																									
					  	 
					</ul>
					<ul class="navbar-nav">
						<li class="nav-item dropdown">
							<button class="nav-link dropdown-toggle btn btn-outline-success" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-user-plus" aria-hidden="true"></i> Register
							</button>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
							  <a class="dropdown-item" href="modules/registerSeeker.jsp">As Job Seeker</a>
							  <a class="dropdown-item" href="modules/registerProvider.jsp">As Job Provider</a>
							</div>
						</li>
					</ul>
				  </div>
				</div>
			</nav>