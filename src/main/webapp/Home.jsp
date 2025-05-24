<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>CAR WALE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
<style>
	body {
	    background-image: linear-gradient(rgba(0, 50, 50, 0.8),rgba(0, 38, 50, 0.8)),url(images.jpeg);
	    
	}
	
	*, *:after, *:before {
	    box-sizing: border-box;
	    margin: 0;
	    padding: 0;
	  }
	
	.img {
	    width: 100%;
	    height: 100vh;
	    color:#02f4ff;
	    position: absolute;
	    z-index: -1;
	    margin-top: 0px;
	}
	
	
	
	.card {
	    width: 50rem;
	    margin-top: 6rem;
	    margin-left: 22rem;
	    border-radius: 20px;
	    padding: 6rem;
	    margin-bottom:6rem;
	    color:#00adb5;
	}
	
	.card-img {
	    width: 30rem;
	    height: 30rem;
	    border-radius:50%;
	    margin-bottom: 1rem;
	    margin-left: 3rem;
	    box-shadow: 5px 5px 10px 10px blue;
	}
	
	
	nav{
	    background: linear-gradient(to right, #00b562, #00adb5) !important;
	    font-family: 'Roboto', sans-serif;
	    
	}
	
	.navbar-brand {
	    font-size: 4rem;
	    margin-left: 6rem;
	    color: #00adb5 !important;
	    padding-top: 15px !important;
	}
	
	.mov-head {
	     font-family: system-ui;
	    text-align: center;
	    font-weight: 1500;
	    font-size:100px;
	    color:#0053b5;
	}
	
	.head2 {
	    font-family: 'Poppins', sans-serif;
	    text-align: center;
	    color:red;
	    font-weight: 500;
	    
	}
	
	.head3 {
	    font-family: 'Poppins', sans-serif;
	    text-align: center;
	    font-weight: 400;
	    color:blue;
	    font-size:15px;
	    margin-top: 2rem;
	    margin-bottom: 20px;
	}
	
	.btn {
	    font-family: 'Poppins', sans-serif;
	    font-size: 25px;
	    font-width:20px;
	    margin-left:5px;
	     border-radius: 5%;
	     margin-top:1rem;
	     background-color: #ff0e02;
	     padding:30px;
	  
	}
	
	.btn-dark {
	    padding-left: 0.8rem;
	    padding-right: 0.8rem;
	    margin-left: 10rem;
	    padding: 10px 24px;
	    
	}
	
	.btn-success {
	    padding-left: 1.6rem;
	    padding-right: 1.6rem;
	    margin-left: 2rem;
	    padding: 10px 24px;
	    
	}
	
	.fab {
	    padding-right: 20px;
	    font-size: 30px;
	}
	
	.btn-danger {
	    margin-left: 16.1rem;
	}
</style>

<body>
	<div class="card">
        <div class="card-body">
            <img src="https://plus.unsplash.com/premium_photo-1664304598312-6de674eb1b79?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHNwb3J0cyUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D" class="card-img" alt="...">
            <h1 class="mov-head"><font color:blue>CAR WALE</font></h1>
            <h2 class="head2"> Buy and Sell<br> Your Desire CAR</h2>
            <h3 class="head3">Click below to experience the car</h3>
            <a href="RegisterServlet"><button type="button" class="btn btn-dark">Register</button></a>
            <a href="LoginServlet"><button type="button" class="btn btn-success">Login</button></a><br><br>
        </div>
      </div>

</body>
</html>