
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Job Portal</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="./assets/css/main.css" />
		<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="./assets/css/font-awesome.min.css" type="text/css">
                    <link rel="stylesheet" href="./assets/css/style5.css">

	</head>
	<body id="top">
            <div class="wrapper">
            <%if(session.getAttribute("username")==null &&session.getAttribute("type")==null){%>
                 <div id="content">

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
                     <section id="banner" data-video="./images/banner">
                        <div class="inner">

                        <div class="SearchHeader">
                                        <label class="SearchHeaderLabel">100,000+ jobs find better. find faster.</label>
                                        <div class="SearchBox">
                                                <div class="clearfix">
                                                <div class="scroll-content-x">
                                                        <ul class="anchor-tabs fs-14">
                                                        <li>
                                                                <a href="#">All Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Fresher Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Govt Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Contract Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Walk-in-Jobs</a>
                                                        </li>
                                                        </ul>
                                                </div> 
                                                <div class="SearchBoxForm">
                                                        <form action="#">
                                                        <input type="text" placeholder="Search Jobs">
                                                        <button class="btn btn-largr btn-success"><i class="fa fa-search" aria-hidden="true"></i> Search Jobs</button>
                                                        </form>
                                                </div>

                                        </div>
                                        </div>

                        </div>

                                <a href="#main" class="more">Learn More</a>
                        </div>
                </section>

        <!-- Main -->
                <div id="main">
                        <div class="inner">

                        <!-- Boxes -->
                                <div class="thumbnails">
                                          <%String url= "jdbc:mysql://localhost:3306/job_portal_db";
                                String user = "root";
                                String pass = "";
                                 try {
                                Class.forName("com.mysql.jdbc.Driver");
                                    try {
                                        Connection con = DriverManager.getConnection(url, user, pass);
                                            Statement stmt3 = con.createStatement();
                                            ResultSet res3 = stmt3.executeQuery("Select * from  posts");
                                            while(res3.next()){
                        %>
                        <div class="box">
                                                <div class="inner">
                                                    <h3 class="CompanyName"><% out.print(res3.getString(2));%></h3>
                                                        <p><i class="fa fa-map-marker" aria-hidden="true"></i>
                                                                <% out.print(res3.getString(8));%></p>
                                                        <p><% out.print(res3.getString(4));%></p>
                                                        <p>Experience:<% out.print(res3.getString(5));%>Years</p>
                                                        <p>Job Type:<% out.print(res3.getString(6));%></p> 
                                                        <p>Salary:<% out.print(res3.getString(7));%>/month</p>
                                                        <p align="center"><a href="login.jsp" class="btn btn-success" style="background-color: #70c7be; color: white;">APPLY</a></p>
                                                </div>
                                        </div>
                                          <%
                    
                                            }
                                                    } catch (SQLException ex) {
                                                        out.print(ex);
                                                    }
                                            } catch (ClassNotFoundException ex) {
                                                out.print(ex);
                                            }
                                          %>
        
        <%}else if(session.getAttribute("type")=="seeker"){%>
                 <nav id="sidebar" style="text-align: center;">
            <div class="sidebar-header">
                      <div><img src="images/6.jpg" alt="user-img" class="img-circle" style="width: 200px;height: 200px;"></div>
					  <h3 style="font-size: 35px; ">Welcome..<br> ABC</h3>

                    </div>
                <nav class="sidebar-nav">
                    <div id="sidebarnav">
                        
                        <a class="waves-effect waves-dark" href="#" aria-expanded="false"><span class="hide-menu">My Profile</span></a><br>
    
                        <a href="#" aria-expanded="false">My Applications </a><br>
                        <a class="waves-effect waves-dark" href="#" aria-expanded="false"><span class="hide-menu">   Inbox </span></a><br>
                        <a class="waves-effect waves-dark" href="#" aria-expanded="false"><span class="hide-menu">     Account Setting</span></a><br>
                        <a class="waves-effect waves-dark" href="#" aria-expanded="false" coords=""><span class="hide-menu"> Logout          </span></a><br>
                     
                    </div>
                </nav>
            
        </nav>
                 <div id="content">
                   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				
                                    <button type="button" id="sidebarCollapse" class="btn btn-dark navbar-btn ">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </button><div class="container">
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
                                          <li class="nav-item" style="color: white;">                                                                                                                                
                                                   Logged in as ${username}
                                            </li>																									
                                        </ul>
                                            <ul class="navbar-nav">
                                                    <li class="nav-item">
                                                        <form  action="Logout" method="get" class="p-0 m-0">
                                                            <input type="submit" value="Logout" class="btn btn-success">
                                                      </form>                                                            
                                                    </li>
                                            </ul>
				  </div>
				</div>
			</nav>
                    <section id="banner" data-video="./images/banner">
                        <div class="inner">

                        <div class="SearchHeader">
                                        <label class="SearchHeaderLabel">100,000+ jobs find better. find faster.</label>
                                        <div class="SearchBox">
                                                <div class="clearfix">
                                                <div class="scroll-content-x">
                                                        <ul class="anchor-tabs fs-14">
                                                        <li>
                                                                <a href="#">All Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Fresher Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Govt Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Contract Jobs</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">Walk-in-Jobs</a>
                                                        </li>
                                                        </ul>
                                                </div> 
                                                <div class="SearchBoxForm">
                                                        <form action="#">
                                                        <input type="text" placeholder="Search Jobs">
                                                        <button class="btn btn-largr btn-success"><i class="fa fa-search" aria-hidden="true"></i> Search Jobs</button>
                                                        </form>
                                                </div>

                                        </div>
                                        </div>

                        </div>

                                <a href="#main" class="more">Learn More</a>
                        </div>
                </section>

        <!-- Main -->
                <div id="main">
                        <div class="inner">

                        <!-- Boxes -->
                                <div class="thumbnails">
                                          <%String url= "jdbc:mysql://localhost:3306/job_portal_db";
                                String user = "root";
                                String pass = "";
                    //            HttpSession session1 = request.getSession();
                                 try {
                                Class.forName("com.mysql.jdbc.Driver");
                                    try {
                                        int s;
                                        Connection con = DriverManager.getConnection(url, user, pass);
                                     
                                            Statement stmt2 = con.createStatement();
                    //                        out.print("hello");
                                            ResultSet res2 = stmt2.executeQuery("Select * from  posts");
                                            while(res2.next()){
                        %>
                        <div class="box">
                                                <div class="inner">
                                                    <h3 class="CompanyName"><% out.print(res2.getString(2));%></h3>
                                                        <p><i class="fa fa-map-marker" aria-hidden="true"></i>
                                                                <% out.print(res2.getString(8));%></p>
                                                        <p><% out.print(res2.getString(4));%></p>
                                                        <p>Experience:<% out.print(res2.getString(5));%>Years</p>
                                                        <p>Job Type:<% out.print(res2.getString(6));%></p> 
                                                        <p>Salary:<% out.print(res2.getString(7));%>/month</p>
                                                        <p align="center"><a href="done.jsp" class="btn btn-success" style="background-color: #70c7be; color: white;">APPLY</a></p> 
                                                </div>
                                        </div>
                                          <%
                    
                                            }
                } catch (SQLException ex) {
                    out.print(ex);
                }
        } catch (ClassNotFoundException ex) {
            out.print(ex);
        }
                                          %>
                                        
        <%}else{%>                  
                 <nav id="sidebar" style="text-align: center;">
            <div class="sidebar-header">
                      <div><img src="images/1.jpg" class="img-circle" width="200px" height="200px" alt="user-img" "></div>
					  <h3 style="font-size: 35px; ">Welcome..<br> ABC</h3>

                    </div>
                <nav class="sidebar-nav">
                    <div id="sidebarnav">
                        
                        <a class="waves-effect waves-dark" href="#" aria-expanded="false"><span class="hide-menu">My Profile</span></a><br>
    
                        <a href="event_categories.php" aria-expanded="false">My Posts </a><br>
                        <a class="waves-effect waves-dark" href="advertisement.php" aria-expanded="false"><span class="hide-menu">   Inbox </span></a><br>
                        <a class="waves-effect waves-dark" href="app2-contact.php" aria-expanded="false"><span class="hide-menu">     Account Setting</span></a><br>
						<a class="waves-effect waves-dark" href="create_visitors.php" aria-expanded="false"><span class="hide-menu"> Logout          </span></a><br>
                     
                    </div>
                </nav>
            
        </nav>
                 <div id="content">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				
                                    <button type="button" id="sidebarCollapse" class="btn btn-dark navbar-btn ">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </button><div class="container">
				  <a class="navbar-brand" href="#"><i class="fa fa-handshake-o" aria-hidden="true"></i> GET A JOB</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				  </button>
				
				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
					  <li class="nav-item active">
						<a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
					  </li>  
                                           <li class="nav-item active">
						<a class="nav-link" href="postJob.jsp">Post Jobs <span class="sr-only">(current)</span></a>
					  </li>  
					</ul>
                                      
                                      <ul class="navbar-nav">
                                          <li class="nav-item" style="color: white; ">                                                                                                                                
                                                   Logged in as ${username}
                                            </li>																									
                                        </ul>
                                            <ul class="navbar-nav">
                                                    <li class="nav-item">
                                                        <form  action="Logout" method="get" class="p-0 m-0">
                                                            <input type="submit" value="Logout" class="btn btn-success">
                                                      </form>                                                            
                                                    </li>
                                            </ul>
				  </div>
				</div>
			</nav>
        
               
        <!-- Main -->
                <div id="main">
                        <div class="inner">

                        <!-- Boxes -->
                                <div class="thumbnails">
                                          <%String url= "jdbc:mysql://localhost:3306/job_portal_db";
            String user = "root";
            String pass = "";
//            HttpSession session1 = request.getSession();
             try {
            Class.forName("com.mysql.jdbc.Driver");
                try {
                    int s;
                    Connection con = DriverManager.getConnection(url, user, pass);
                    //registerprovider
//                    PreparedStatement pst1 = con.prepareStatement("Select providerId from  registerprovider where email='"+session.getAttribute("username")+"'");
//                    pst1.execute();
                    Statement stmt = con.createStatement();
//                        out.print("hello");
                        ResultSet res = stmt.executeQuery("Select providerId from  registerprovider where email='"+request.getSession(false).getAttribute("username")+"'");
                    if(res.next()){
                        s=res.getInt(1);
                        Statement stmt1 = con.createStatement();
//                        out.print("hello");
                        ResultSet res1 = stmt1.executeQuery("Select * from  posts where Comp_id="+s);
                        while(res1.next()){
                        %>
                        <div class="box">
                                                <div class="inner">
                                                    <h3 class="CompanyName"><% out.print(res1.getString(2));%></h3>
                                                        <p><i class="fa fa-map-marker" aria-hidden="true"></i>
                                                                <% out.print(res1.getString(8));%></p>
                                                        <p><% out.print(res1.getString(4));%></p>
                                                        <p>Experience:<% out.print(res1.getString(5));%>Years</p>
                                                        <p>Job Type:<% out.print(res1.getString(6));%></p> 
                                                        <p>Salary:<% out.print(res1.getString(7));%>/month</p>
                                                        <p align="center"><a href="#" class="btn btn-success" style="background-color: #70c7be; color: white;">VIEW  </a></p> 
                                                </div>
                                        </div>
                                          <%
                        }}
                } catch (SQLException ex) {
                    out.print(ex);
                }
        } catch (ClassNotFoundException ex) {
            out.print(ex);
        }
                                          %>
          <%}%>                              

                                </div>

                        </div>
                </div>

        <!-- Footer -->
                <footer id="footer">
                        <div class="inner">
                                <h2>Etiam veroeros lorem</h2>
                                <p class="footerpara">Pellentesque eleifend malesuada efficitur. Curabitur volutpat dui mi, ac imperdiet dolor tincidunt nec. Ut erat lectus, dictum sit amet lectus a, aliquet rutrum mauris. Etiam nec lectus hendrerit, consectetur risus viverra, iaculis orci. Phasellus eu nibh ut mi luctus auctor. Donec sit amet dolor in diam feugiat venenatis. </p>

                                <ul class="icons">
                                        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                                        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                                        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                                        <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
                                </ul>
                                <p class="copyright">&copy; Untitled. Design: Job Portal. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>.</p>
                        </div>
                </footer>
            </div>
		<!-- Scripts -->
			<script src="./assets/js/jquery.min.js"></script>
			<script src="./assets/js/jquery.scrolly.min.js"></script>
			<script src="./assets/js/jquery.poptrox.min.js"></script>
			<script src="./assets/js/skel.min.js"></script>
			<script src="./assets/js/util.js"></script>
			<script src="./assets/js/main.js"></script>
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                        <script type="text/javascript">
                        $(document).ready(function () {
                            $('#sidebarCollapse').on('click', function () {
                                $('#sidebar').toggleClass('active');
                                $(this).toggleClass('active');
                            });
                        });
    </script>
	</body>
       
</html>