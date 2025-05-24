<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Unlock Your CAR</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>

<style>
	body {
	    background-image: linear-gradient(rgba(0, 50, 50, 0.8),rgba(0, 38, 50, 0.8)),url(images.jpeg);
	}
	.card-body{
	    
	background: linear-gradient(to right, #2d3ee9, #09f5e7);
	}
	.card {
	    margin-top: 9rem;
	    width: 500rem;
	    height: 35rem;
	    padding: 1.5rem;
	    margin-left: 35rem;
	    font-family: 'Poppins', sans-serif;
	}
	
	.card-title {
	    font-weight: 700;
	    font-size: 2.5rem;
	    font-family: system-ui;
	}
	
	#emaillabel {
	    margin-top: 0.5rem;
	    font-weight: 500;
	    font-size: 2rem;
	    font-family: system-ui;
	}
	
	#exampleInputEmail1 {
	    margin-top: 4px;
	    font-weight: 500;
	    font-size: 1.5rem;
	    font-family: system-ui;
	}
	
	#exampleInputPassword1 {
	    margin-top: 5px;
	}
	
	#plabel {
	    margin-top: 1rem;
	    font-weight: 500;
	    font-size: 2rem;
	    font-family: system-ui;
	}
	a {
  color: red;
  text-decoration: none;
  margin-height:10rem;
  font-size: 20px;
     }

    a:focus {
     color: red;
     }

    :link {
     color: red;
      }
	.btn-dark {
	    font-weight: 800;
	    margin-top: 2rem;
	    margin-bottom: 10px;
	} 
	
	.btn-success {
	    font-weight: 500;
	    margin-top: 40px;
	    margin-left:100px;
	    font-size:1.5rem;
	} 
</style>
<body>

<div class="card" style="width: 23rem;">
        <div class="card-body">
          <h5 class="card-title">Login</h5>

          <form action="LoginServlet" method="POST">
            <div class="form-group">
              <label id="emaillabel" for="exampleInputEmail1">Email</label>
              <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
              <small id="emailHelp">*One Time Registration email*</small>
            </div>
            <div class="form-group">
              <label id="plabel" for="exampleInputPassword1">Password</label>
              <input name="password" type="password" class="form-control" id="exampleInputPassword1" required>
              <a href="forgotPassword.jsp">Forgot Password?</a>
            </div>
            <button id="signup" type="submit" class="btn btn-success">Sign In</button>
          </form>
        </div>
    </div>

</body>
</html>