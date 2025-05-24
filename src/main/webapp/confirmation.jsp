<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
    // Check if user is logged in
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String vehicleId = (String) request.getAttribute("vehicleId");
    String ownerId = (String) request.getAttribute("ownerId");
    String bookingDate = (String) request.getAttribute("bookingDate");
%>

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
                <li class="nav-item"><a class="nav-link active" href="#">Book Vehicle</a></li>
                <li class="nav-item"><a class="nav-link active" href="OrdersServlet">My Orders</a></li>
            </ul>
            <a href="LogoutServlet"><button class="btn btn-danger">Logout</button></a>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2>Booking Confirmation</h2>
    <div class="alert alert-success">
        <p>Your vehicle has been successfully booked!</p>
        <p><strong>Vehicle ID:</strong> <%= vehicleId %></p>
        <p><strong>Owner ID:</strong> <%= ownerId %></p>
        <p><strong>Booking Date:</strong> <%= bookingDate %></p>
    </div>
    <a href="DashboardServlet" class="btn btn-primary">Go to Dashboard</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
