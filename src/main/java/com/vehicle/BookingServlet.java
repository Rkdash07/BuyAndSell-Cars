package com.vehicle;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/BookingServlet")
/**
 * Servlet implementation class BookingServlet
 */
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	        
	        // Get session
	        HttpSession session = request.getSession();
	        
	        // Check if user is logged in
	        if (session.getAttribute("user_id") == null) {
	            response.sendRedirect("login.jsp");
	            return;
	        }

	        // Retrieve form data
	        String vehicleId = request.getParameter("v_id");
	        String ownerId = request.getParameter("owner_id");
	        String userId = (String) session.getAttribute("user_id");

	        // Here you would typically call a service to handle the booking logic
	        // For example:
	        // BookingService bookingService = new BookingService();
	        // boolean isBooked = bookingService.bookVehicle(userId, vehicleId, ownerId);

	        boolean isBooked = true; // Simulating successful booking for demonstration

	        // Prepare confirmation message
	        String message;
	        if (isBooked) {
	            message = "Booking confirmed for vehicle ID: " + vehicleId;
	        } else {
	            message = "Booking failed. Please try again.";
	        }

	        // Set message as a request attribute
	        request.setAttribute("message", message);
	        request.getRequestDispatcher("Order.jsp").forward(request, response);
	    }
	}
	        
