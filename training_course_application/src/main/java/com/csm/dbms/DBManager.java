package com.csm.dbms;

import java.sql.Connection;
import java.sql.SQLException;

public class DBManager {
	public Connection getConn(){
		Connection conn = null;
		 
		try {
			//find the JDBC DRIVER
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl  = "jdbc:mysql://localhost:3306/tdp_model";
			String dbUser = "root";
			String dbPassword = "test123";
			
			conn = java.sql.DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return conn;
	
	}
}
