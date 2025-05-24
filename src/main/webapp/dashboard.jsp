<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset="UTF-8">
<title>Cars Page</title><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
 <body>
<%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    	if(session.getAttribute("user_id") == null)
    		response.sendRedirect("dashboard.jsp");
  
    	session = request.getSession();
    	String name = (String)session.getAttribute("name");
    %> 
    <style>
    	body {
            background-color: #EEEEEE;
            font-family: system-ui;
        }
        
        .navbar {
            background-color: #0053b5 !important;
        }
            
		.logout {
			color: white;
			margin-right: 5rem;
			font-size: 1.1rem;
		}
        
        .navbar-brand {
        	margin-left: 5rem !important;
        	font-family: system-ui !important;
        	font-size: 2.5rem !important;
        }
        
        .act-cust {
        	color: white!important;
        	border-bottom: 4px solid white !important;
        }
       
       .nav-item {
       		font-family: system-ui !important;
       		font-size: 1.2rem;
       		margin-left: 1rem;
       }
       
       .nav-link {
       		color: white !important;
       }
       
       .namehead {
       		font-family: system-ui !important;
       		font-size: 7rem;
       		margin-top: 3rem;
       		margin-left: 10rem;
       		color:#ff0000;
       }
       
       .card {
		    margin: 10rem 20rem;
		    object-fit: scale-down;
		    overflow: hidden;
		    box-shadow: 10px 10px 10px blue;
		    transition-delay: 100ms;
		}
		
		/* Footer Section */

		#ganesh {
		    font-family: 'Ubuntu', sans-serif;
		    font-size: 20px;
		    padding-bottom: 20px;
		    margin-left: 3rem;
		}
		
		.fth {
		    margin-top: 70px;
		}
		
		.footer {
		    position: absolute;
		    margin-top: 2rem;
		}
		
		.footer-item {
		    padding-top: 10px;
		    margin-left: 350px;
		}
		
		#carwale{
		    font-family: font-family: cursive;
		    font-size:40px;
		    font-weight:300px;
		    margin-left:200px;
		    color:red;
		    }
		.social-icon {
		    color: #000;
		    margin-left: 150px;
		    font-size: 30px;
		    padding-bottom: 10px;
		}
		
		#copyright {
		    font-family: "Gill Sans", sans-serif;
		    font-size: 20px;
		    margin-left: 300px;
		}
       
       .card:hover{ 
		    transform: translateY(-10%);
		}
		
		.flight-img {
		    height: 11.5rem;
		}
		
		.go-btn {
		    background-color: #ff4d4d;
		    position:center;
		    color: black;
		}
		
		.go-btn:hover {
		    background-color: #00ff00;
		    color: white;
		}
		
		.nav-name {
			color: #F8F3D4 !important;
		}
       
    </style>
	
    <!-- Navbar -->
    <form action="DashboardServlet" method="POST">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">@CarWale</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    <a class="nav-link active act-cust" href="DashboardServlet">Dashboard</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="CarServlet">Buy a Car</a>
                    </li>
                    
                    <li class="nav-item">
                    	<a class="nav-link active" href="SellServlet">Sell your Car</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="OrdersServlet">My Orders</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active nav-name"><%= name %></a>
                    </li>
                </ul>
                <a href="logoutServlet"><Button class="btn btn-danger logout">Logout</Button></a><br /><br />
            </div>
        </div>
     </nav>
	
    <h1 class="namehead">Welcome <strong><%= name %></strong> <br> to CARs Page</h1>
    
    
    <!-- Cards -->
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="card" style="width: 18rem;">
            <img src="https://media.istockphoto.com/id/1473399467/photo/salesman-showing-cars-to-a-couple-at-the-dealership.webp?a=1&b=1&s=612x612&w=0&k=20&c=06CV5iVscIPsRWvzeUPEkQ9XsxyBAMfz0xrLIbrQ0J0=" class="card-img-top flight-img" alt="...">
            <div class="card-body">
              <h5 class="card-title">Cars</h5>
              <p class="card-text">View and Order Cars</p>
              <a href="CarServlet" class="btn go-btn">Cars</a>
            </div>
          </div>
        </div>
        <div class="col-md-2">
          <div class="card" style="width: 18rem;">
            <img src="https://plus.unsplash.com/premium_photo-1661290470322-a313098e7c2a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c2VsbCUyMGNhcnN8ZW58MHx8MHx8fDA%3D" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Sell</h5>
              <p class="card-text">Sell Your CAR</p>
              <a href="SellServlet" class="btn go-btn">Sell</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-item">
        <h1 id="carwale"><em>Associated with CarWale</em></h1>
        <a href="https://www.facebook.com/"><i class="social-icon fab fa-facebook-f"></i></a>
        <a href="https://x.com/"><i class="social-icon fab fa-twitter"></i></a>
        <a href="https://www.instagram.com/"><i class="social-icon fab fa-instagram"></i></a>
        <a href = "mailto:CarWale7@gmail.com"><i class="social-icon fas fa-envelope"></i></a>
        <p id="copyright">Copyright 2024 @CarWale</p>
        </div>
    </footer>

    <!-- jQuery and JS bundle w/ Popper.js -->
    <script src="https://kit.fontawesome.com/b6a0edf9cb.js" crossorigin="anonymous"></script>
    
    <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>