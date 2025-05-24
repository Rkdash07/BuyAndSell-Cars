package com.vehicle;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ConfirmationServlet")
public class ConfirmationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get booking details from session or request attributes
        HttpSession session = request.getSession();
        Integer user_id = (Integer) session.getAttribute("user_id");
        String vehicleId = request.getParameter("v_id");
        String ownerId = request.getParameter("owner_id");
        String bookingDate = request.getParameter("date");

        // Check if user is logged in
        if (user_id == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Set attributes to be displayed on the confirmation page
        request.setAttribute("vehicleId", vehicleId);
        request.setAttribute("ownerId", ownerId);
        request.setAttribute("bookingDate", bookingDate);

        // Forward to confirmation JSP
        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}
