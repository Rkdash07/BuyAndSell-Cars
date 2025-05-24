package com.vehicle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeletevehicleServlet")
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int v_id =  Integer.parseInt(request.getParameter("v_id"));
		int owner_id =  Integer.parseInt(request.getParameter("owner_id"));
		
		out.println("Vehicle_id:\t" + v_id);
		out.println("Owner id:\t" + owner_id);
		
		try {
			DataConnection db = new DataConnection();
			Connection con = db.makeConnection();
			if(con != null) {
				System.out.print("Connection Successfull");
				
				// Execute SQL query for Deleting Vehicle
				String sqlVehicle = "DELETE FROM vehicle WHERE v_id=" + v_id;
				PreparedStatement stVehicle = con.prepareStatement(sqlVehicle);
				stVehicle.executeUpdate();
					
				// Execute SQL query for deleting owner
				String sql;
				sql = "DELETE FROM owner WHERE owner_id=" + owner_id;
				PreparedStatement st = con.prepareStatement(sql);
				st.executeUpdate();
				
				System.out.println("All DELETE Queries executed!!");
				response.sendRedirect("Sell.jsp");
			}
		} catch(Exception e){};
		
	}

}
