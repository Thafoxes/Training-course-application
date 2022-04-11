package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dmanager.UserManager;
import com.entity.UserAccount;

/**
 * Servlet implementation class Register
 */
@WebServlet("/RegisterValidate")
public class RegisterValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterValidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			
			//get data from them
			String username = request.getParameter("username");
			String fName = request.getParameter("fname");
			String lName = request.getParameter("lname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			UserAccount userAccount = new UserAccount(username, fName, lName, email , password);
			//insert into userAccount
			
			int result = -1;
			UserManager uMgr = new UserManager();
			try {
				result = uMgr.insert(userAccount);
			} catch (ClassNotFoundException | NoSuchAlgorithmException | InvalidKeySpecException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			if(result == 1) {
				System.out.println("record successfully!");
				String htmlResponse = "<h1>Registered successfully</h1>";
				PrintWriter writer = response.getWriter();
				writer.write(htmlResponse);
			}else {
				System.out.println("error on server or code!");
				String htmlResponse = "<h1>Register failed</h1>";
				PrintWriter writer = response.getWriter();
				writer.write(htmlResponse);
			}
			
			
			
		
	}

}
