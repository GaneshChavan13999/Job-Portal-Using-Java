<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	   <link rel="stylesheet" href="assets/css/register.css">
       <!-- <link rel="stylesheet" href="../assets/css/main.css"> -->
       <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
       <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700&display=swap" rel="stylesheet">
       <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
</head>
<body>
	<h2 id="id1">Help Others, Post Jobs for Free</h2> 
    <div class="bd-example">
        <form method="post" action="post">
        <div>
            <label for="exampleFormControlInput1">Company Name</label>
            <input type="text" name="comName" class="form-control" id="exampleFormControlInput1" placeholder="enter the name"  aria-invalid="true" aria-required="true" maxlength="100" min="1" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur">
        </div>         
           <div>
            <label for="exampleFormControlInput1">Position</label>
            <input type="text" name="pos" class="form-control" id="exampleFormControlInput1" placeholder="e.g. HR, Sales etc." aria-invalid="true" aria-required="true" required="required" maxlength="100" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur"/>
          </div>
          <div>
            <label for="exampleInputPassword1">Experience</label>
            <input type="text" name="exp" class="form-control" id="exampleInputPassword1" required="required">
          </div>
          <div>
          	<label for="JobType">Job Type</label>
                <input type="text" class="form-control" id="JobType"  name="job" required="required">
          </div>
          <div>
            <label for="contacts">Salary</label>
            <input class="form-control" id="contacts"  aria-invalid="true" name="salary" aria-required="true" type="tel" maxlength="10" autocomplete="nope" data-v-13b9f01f="" data-vv-validate-on="blur"/>
          </div>
            <label>Job Description</label>
          <div>
              <textarea cols="97" rows="5" name="job_desc" ></textarea>	
	      </div>        
          <br>
          <input class="btn btn-primary" type="submit" value="Post">
    </form> 
    </div> 
</body>
</html>