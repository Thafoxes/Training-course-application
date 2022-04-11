package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.SQLException;
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


/**
 * Servlet implementation class Login
 */
@WebServlet("/loginValidate")
public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginValidate() {
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
		String password = request.getParameter("password");
		
		//establish data from website to put into user account
		UserAccount userAcc = new UserAccount(username, password);
		
		
		try {
			//pull request from db
			UserManager uMgr = new UserManager();
			List<UserAccount> userAccount = uMgr.selectUser(userAcc);
			
			//if result come as 0 then show login failed
			if(userAccount.size() != 1) {
				String htmlResponse = "<h1>Wrong password or username!</h1>"
						+ "<h2>You have not login!</h2>";
				PrintWriter writer = response.getWriter();
				writer.write(htmlResponse);
				request.getRequestDispatcher("login.jsp").include(request, response);
				
	           
			}else {
			
				/**validate the password correct 
				 * 
				 * password is original string word then is checked
				 * the password hash to the 
				 * e.readhashpwd from database
				 * if the validatepwd is true then it will create session and welcome page login
				
				**/ 
				Boolean validatePwd = userAcc.validatePwd(password , userAccount.get(0).getHashPwd());
				if(validatePwd) {
					//successfully enter
					HttpSession session = request.getSession();
					session.setAttribute("user", userAccount);
					
				    request.getRequestDispatcher("index.jsp").include(request, response);
				    
				    
				}else {
					String htmlResponse = "<h1>Wrong password or username!</h1>"
							+ "<h2>You have not login!</h2>";
					PrintWriter writer = response.getWriter();
					writer.write(htmlResponse);
					request.getRequestDispatcher("login.jsp").include(request, response);
					
					
				}
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		
	}

}
