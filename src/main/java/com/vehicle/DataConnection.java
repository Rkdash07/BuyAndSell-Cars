package com.vehicle;

import java.sql.*;


public class DataConnection {
public Connection makeConnection() throws ClassNotFoundException, SQLException {
		
        String dbURL = "jdbc:mysql://localhost:3306/";
        // Database name to access
        String dbName = "car";
        String dbUsername = "root";
        String dbPassword = "Rupesh@123";

        Connection con = DriverManager.getConnection(dbURL + dbName,
                                                     dbUsername, 
                                                     dbPassword);
        System.out.println("Successful");
        return con;
}
}
