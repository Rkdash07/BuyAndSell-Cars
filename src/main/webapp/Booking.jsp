<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book Vehicle</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    
    session = request.getSession();
    String name = (String) session.getAttribute("name");
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
        color: #D6E4F0!important;
        border-bottom: 4px solid white !important;
    }
    
    .nav-item {
        font-family: 'Poppins', sans-serif !important;
        font-size: 1.2rem;
        margin-left: 1rem;
    }
    
    .nav-name {
        color: #F8F3D4 !important;
    }

</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">@CarWale</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="DashboardServlet">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link active" href="CarServlet">Buy a Car</a></li>
                <li class="nav-item"><a class="nav-link active act-cust" href="#">Book Vehicle</a></li>
                <li class="nav-item"><a class="nav-link active" href="OrdersServlet">My Orders</a></li>
                <li class="nav-item"><a class="nav-link active nav-name"><%= name %></a></li>
            </ul>
            <a href="LogoutServlet"><button class="btn btn-danger">Logout</button></a>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2>Book Your Vehicle</h2>
    <form action="BookServlet" method="POST">
        <div class="mb-3">
            <label for="v_id" class="form-label">Vehicle ID</label>
            <input type="number" class="form-control" id="v_id" name="v_id" required>
        </div>
        <div class="mb-3">
            <label for="owner_id" class="form-label">Owner ID</label>
            <input type="number" class="form-control" id="owner_id" name="owner_id" required>
        </div>
        <button type="submit" class="btn btn-primary">Book Vehicle</button>
    </form>

    <% 
        // Displaying any messages or errors
        String message = (String) request.getAttribute("message");
        if (message != null) { 
    %>
            <div class="alert alert-info mt-3">
                <%= message %>
            </div>
    <% 
        } 
    %>

</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>

</body>
</html>