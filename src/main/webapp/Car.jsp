<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.vehicle.Vehicle" %>
<%@page import="com.vehicle.Area" %>
<%@page import="com.vehicle.City" %>
<%@page import="com.vehicle.State" %>
<%@page import="com.vehicle.Zip" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Cars</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
<body>
	 <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    	if(session.getAttribute("user_id") == null)
	    		response.sendRedirect("login.jsp");
	  
	    	session = request.getSession();
	    	String name = (String)session.getAttribute("name");
	%>

	<style>
    	body {
            background-color: #04fbe4;
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
        	color: #D6E4F0!important;
        	border-bottom: 4px solid white !important;
        }
       
       .nav-item {
       		font-family: 'Poppins', sans-serif !important;
       		font-size: 1.2rem;
       		margin-left: 1rem;
       }
       
       .nav-link {
       		/*color: white !important;*/
       }
       
       /* Styles for filers */
	   .form-range {
		   width: 80%;
	   } 
       
	   .filters-div {
		   margin-left: 20px;
	   }
	   
	   .nav-name {
			color: #F8F3D4 !important;
		}
		
		.vehicle-card {
			width: 65.5rem;
			margin-top: 2rem;
			border-radius: 10px;
			box-shadow: 10px 10px 10px 10px blue;
		}
		
		.veh-img {
			width: 1000px;
			height: 500px;
			border-radius: 10px;
			margin-left: 0.5rem;
			box-shadow: 5px 5px 5px black;
		}
		
		.card-head {
			margin-top: 20px;
		}
		
		.book-btn {
			margin-left: 30rem;
		}
		
		.table {
			margin-top: 20px;
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
		    margin-left: 550px;
		}
		
		.social-icon {
		    color: #000;
		    margin-left: 50px;
		    font-size: 30px;
		    padding-bottom: 20px;
		}
		
		#copyright {
		    font-family: 'Ubuntu', sans-serif;
		    font-size: 16px;
		    margin-left: 80px;
		}
		
		.nav-name {
			color: #F8F3D4 !important;
		}
		
		
    </style>
	
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">CAR WALE</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    <a class="nav-link active" href="DashboardServlet">Dashboard</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active act-cust" href="CarServlet">Buy a Car</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="SellServlet">Sell your CAR</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="OrdersServlet">My Orders</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active nav-name"><%= name %></a>
                    </li>
                </ul>
                <a href="LogoutServlet"><Button class="btn btn-danger logout">Logout</Button></a><br /><br />
            </div>
        </div>
     </nav>
     
    
    <div class="container-fluid">
	  <div class="row">
	    <div class="col-md-3">
	      <div class="filters-div">
	      
	      <h3 style="margin-top: 5rem;"><strong>Scroll</strong></h3>
	      <p>Select Price</p>
		    <form action="FilterPriceCarServlet" method="POST">
			    <label for="customRange2" class="form-label">Select Price Range</label>
				<input name="price_range" type="range" class="form-range" min="100000" max="10000000" step="5000" value="5000000" id="customRange2" onChange="this.form.submit()">
				<p>Rs 10L<span style="margin-left: 10rem;">Rs 1 Crore</</span></p>
		    </form>
		    
		    <form action="FilterAreaCarServlet" method="POST">
		    	<p style="margin-top: 30px;">Select Area</p>
		    	<% ArrayList<Area> areaList = (ArrayList)request.getAttribute("areaList"); %>
		    	<% if(!areaList.isEmpty()){ %>
		    		<% for(int i=0; i<areaList.size(); i++){ %>
		    			<% Area area = (Area)areaList.get(i); %>
		    			<div class="form-check">
							<input name="area" class="form-check-input" type="checkbox" value="<%= area.getArea() %>" id="flexCheckDefault" onChange="this.form.submit()">
							<label class="form-check-label" for="flexCheckDefault">
							    <% out.println(area.getArea()); %>
							</label>
						</div>
		    		<% } %>
		    	<% } %>
		    </form>
		    
		    <form action="FilterCityCarServlet" method="POST">
		    	<p style="margin-top: 30px;">Select City</p>
		    	<% ArrayList<City> cityList = (ArrayList)request.getAttribute("cityList"); %>
		    	<% if(!cityList.isEmpty()){ %>
		    		<% for(int i=0; i<cityList.size(); i++){ %>
		    			<% City city = (City)cityList.get(i); %>
		    			<div class="form-check">
							<input name="city" class="form-check-input" type="checkbox" value="<%= city.getCity() %>" id="flexCheckDefault" onChange="this.form.submit()">
							<label class="form-check-label" for="flexCheckDefault">
							    <% out.println(city.getCity()); %>
							</label>
						</div>
		    		<% } %>
		    	<% } %>
		    </form>
		    
		    <form action="FilterStateCarServlet" method="POST">
		    	<p style="margin-top: 30px;">Select State</p>
		    	<% ArrayList<State> stateList = (ArrayList)request.getAttribute("stateList"); %>
		    	<% if(!stateList.isEmpty()){ %>
		    		<% for(int i=0; i<stateList.size(); i++){ %>
		    			<% State state = (State)stateList.get(i); %>
		    			<div class="form-check">
							<input name="state" class="form-check-input" type="checkbox" value="<%= state.getState() %>" id="flexCheckDefault" onChange="this.form.submit()">
							<label class="form-check-label" for="flexCheckDefault">
							    <% out.println(state.getState()); %>
							</label>
						</div>
		    		<% } %>
		    	<% } %>
		    </form>
		    
		    <form action="FilterZipCarServlet" method="POST">
		    	<p style="margin-top: 30px;">Select Zip</p>
		    	<% ArrayList<Zip> zipList = (ArrayList)request.getAttribute("zipList"); %>
		    	<% if(!zipList.isEmpty()){ %>
		    		<% for(int i=0; i<zipList.size(); i++){ %>
		    			<% Zip zip = (Zip)zipList.get(i); %>
		    			<div class="form-check">
							<input name="zip" class="form-check-input" type="checkbox" value="<%= zip.getZip() %>" id="flexCheckDefault" onChange="this.form.submit()">
							<label class="form-check-label" for="flexCheckDefault">
							    <% out.println(zip.getZip()); %>
							</label>
						</div>
		    		<% } %>
		    	<% } %>
		    </form>
	      </div>
	    </div>
	    
	    
	    <div class="col-md-9">
			<% ArrayList<Vehicle> carList = (ArrayList)request.getAttribute("carList"); %>
			<h2 class="card-head">Car <%=carList.size()%></h2>
    
   			<% if(!carList.isEmpty()) { %>
				<% for(int i=0; i<carList.size(); i++){ %>
					<% Vehicle car = (Vehicle)carList.get(i); %>
					<div class="card vehicle-card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<img class="veh-img" src="<% out.println(car.getImage()); %>">
								</div>
								
							</div>
							
							<table class="table table-hover table-borderless">
								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Vehicle_id</th>
												<th scope="col">Type</th>
												<th scope="col">Model</th>
												<th scope="col">Color</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(car.getV_id()); %></td>
												<td><% out.println(car.getType()); %></td>
												<td><% out.println(car.getModel()); %></td>
												<td><% out.println(car.getColor()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Reg. Date</th>
												<th scope="col">Price</th>
												<th scope="col">Area</th>
												<th scope="col">City</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(car.getReg_date()); %></td>
												<td><% out.println(car.getPrice()); %></td>
												<td><% out.println(car.getArea()); %></td>
												<td><% out.println(car.getCity()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>


								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">State</th>
												<th scope="col">Zip</th>
												<th scope="col">Owner_id</th>
												<th scope="col">Fuel_type</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(car.getState()); %></td>
												<td><% out.println(car.getZip()); %></td>
												<td><% out.println(car.getOwner_id()); %></td>
												<td><% out.println(car.getFuel_type()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Gear</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(car.getGear()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>
							</table>
							<div class="row">
								<div class="col-md-12">
								<form action="BookServlet" method="POST">
										<input type="hidden" name="owner_id" value="<%= car.getOwner_id() %>">
										<button type="submit" class="btn btn-dark book-btn" name="v_id" value="<%= car.getV_id() %>">Book Vehicle</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				<% } %>
			<% } %>
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