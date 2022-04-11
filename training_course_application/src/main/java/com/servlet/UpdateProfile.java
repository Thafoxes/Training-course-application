package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dmanager.UserManager;
import com.entity.UserAccount;
import com.security.HashingPwd;

/**
 * Servlet implementation class UpdateProfile
 */
@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get user from session
		HttpSession session = request.getSession(false);
		@SuppressWarnings("unchecked")
		List<UserAccount> userOriAcc = (List<UserAccount>) session.getAttribute("user");
		
		response.setContentType("text/html");
		
		//get data from update form
		String username = request.getParameter("username");
		String fName = request.getParameter("fname");
		String lName = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//for some reason i need to use list to do cause developer use fetach all list to fetch all data
		List<UserAccount> userAccs = new ArrayList<>();
		UserAccount userAccount = new UserAccount(userOriAcc.get(0).getUserID(),username, fName, lName, email, userOriAcc.get(0).getHashPwd());
		
		userAccs.add(userAccount);
		
		//validate the password type in and database
		Boolean passwordCorrect =false;
		try {
			
			passwordCorrect = userAccount.validatePwd(password, userOriAcc.get(0).getHashPwd());
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(passwordCorrect) {
			UserManager userMgr = new UserManager();
			int result = userMgr.updateUser(userAccount);
			if(result == 1) {
				session.setAttribute("user", userAccs);
				response.setContentType("text/html"); 
				String htmlResponse = "<h2>You have updated your profile!</h2>";
				PrintWriter out = response.getWriter();
				out.print(htmlResponse);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
			}
//			debug case
//			System.out.println("yes password rifght");
		}
		
	}

}
