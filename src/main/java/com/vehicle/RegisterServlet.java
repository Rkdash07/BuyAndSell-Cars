package com.vehicle;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
/**
 * Servlet implementation class RegisterServelet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Register.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
DataConnection db = new DataConnection();
		
		String name =  request.getParameter("name");
		String mobile =  request.getParameter("mobile");
		String email =  request.getParameter("email");
		String password =  request.getParameter("password");
		
		
		System.out.println("User name:\t" + request.getParameter("name"));
		System.out.println("User mobile:\t" + request.getParameter("mobile"));
		System.out.println("User email:\t" + request.getParameter("email"));
		System.out.println("User password:\t" + request.getParameter("password"));
		
		if (!isValidPassword(password)) {
			  HttpSession session = request.getSession();
			  session.setAttribute("error.msg", "Password error");
			  response.sendRedirect("Register.jsp");
			  return;
			}
				
		if (!isValidPhone(mobile)) {
			  HttpSession session = request.getSession();
			  session.setAttribute("error.msg", "Mobile no error");
			  response.sendRedirect("Register.jsp");
			  return;
			}
		Connection con = null;
		PreparedStatement st = null;
		try {
			 con = db.makeConnection();
			if(con!= null) {
				System.out.print("Connection Successfull");
				
				// Execute SQL query
				String sql = "INSERT INTO users (name, mobile, email, password) VALUES (?, ?, ?, ?)";
        st = con.prepareStatement(sql);
        
        st.setString(1, name);
        st.setString(2, mobile);
        st.setString(3, email);
        st.setString(4, password);
        st.execute();
       // response.sendRedirect("login.jsp");
        if( true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("reg.msg", "Registration Successful!!");
			response.sendRedirect("Register.jsp");
		}
		else
		{
			HttpSession session = request.getSession();
			session.setAttribute("error.msg", "Oops!! Something went Wrong!!");
			response.sendRedirect("Register.jsp");

		}
			}
		} catch(Exception e){
			System.out.println(e);
		}
		
			
		}
	
	private boolean isValidPassword(String password) {
        if (password.length() < 11) return false; // Minimum length
        if (!password.matches(".*[A-Z].*")) return false; // At least one uppercase letter
        if (!password.matches(".*[a-z].*")) return false; // At least one lowercase letter
        if (!password.matches(".*[0-9].*")) return false; // At least one digit
        if (!password.matches(".*[!@#$%^&*(),.?\":{}|<>].*")) return false; // At least one special character
        return true; 
	}
	
	private boolean isValidPhone(String mobile) {
        if ( mobile.length()==10) return false; 
        if (!mobile.matches(".*[0-9].*")) return false; 
        return true; 
	}
//		Connection con = null;
//		PreparedStatement st = null;
//
//		try {
//		    con = db.makeConnection();
//		    if (con != null) {
//		        System.out.print("Connection Successful");
//
//		        // Use a prepared statement to prevent SQL injection
//		        String sql = "INSERT INTO users (name, mobile, email, password) VALUES (?, ?, ?, ?)";
//		        st = con.prepareStatement(sql);
//		        
//		        st.setString(1, name);
//		        st.setString(2, mobile);
//		        st.setString(3, email);
//		        st.setString(4, password);
//		        
//		        st.executeUpdate();
//		        response.sendRedirect("login.jsp");
//		        
	
        
//		    }
//		} catch (SQLException e) {
//		    e.printStackTrace(); // Log the exception
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//		    // Close resources
//		    try {
//		        if (st != null) st.close();
//		        if (con != null) con.close();
//		    } catch (SQLException e) {
//		        e.printStackTrace();
//		    }
//		}
	}

	


