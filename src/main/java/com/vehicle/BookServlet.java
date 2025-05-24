package com.vehicle;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        DataConnection db = new DataConnection();
        Integer user_id = (Integer) session.getAttribute("user_id");

        if (user_id == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int v_id = Integer.parseInt(request.getParameter("v_id"));
        int owner_id = Integer.parseInt(request.getParameter("owner_id"));

        try (
             Connection con = db.makeConnection()) {

            if (con != null) {
                // Update vehicle availability
                String sqlUpdt = "UPDATE vehicle SET avail=? WHERE v_id=?";
                try (PreparedStatement stUpdt = con.prepareStatement(sqlUpdt)) {
                    stUpdt.setBoolean(1, false);
                    stUpdt.setInt(2, v_id);
                    stUpdt.executeUpdate();
                }

                String sql = "INSERT INTO booking (user_id, owner_id, vehicle_id, date) VALUES (?, ?, ?, ?)";
                try (PreparedStatement st = con.prepareStatement(sql)) {
                    st.setInt(1, user_id);
                    st.setInt(2, owner_id);
                    st.setInt(3, v_id);
                    st.setDate(4, java.sql.Date.valueOf(java.time.LocalDate.now()));
                    st.executeUpdate();
                }

                request.setAttribute("message", "Successfully booked the vehicle.");
            }
        } catch (Exception e) {
            e.printStackTrace(); 
            request.setAttribute("message", "Error occurred while booking: " + e.getMessage());
        }

       
        request.getRequestDispatcher("Booking.jsp").forward(request, response);
    }
}
