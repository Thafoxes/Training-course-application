package com.servlet;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dmanager.SessionDBMS;
import com.entity.SessionClass;
import com.entity.UserAccount;
import com.mail.YahooMailSender;

/**
 * Servlet implementation class Summary
 */
@WebServlet(name = "summary", urlPatterns = { "/summary" })
public class Summary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Summary() {
        super();
        // TODO Auto-generated constructor stub
    }

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//			String page = getHTMLString(request.getServletContext().getRealPath("register.jsp"), htmlResponse);
//			
//			
//			response.getWriter().write(page);
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int courseID, userID;
		String sessionID = request.getParameter("sessionid");
		SessionDBMS sessionMgr = new SessionDBMS();
		List<SessionClass> sessionClass = sessionMgr.fetchOneSession(sessionID);
		
		HttpSession session = request.getSession();
		
		List<UserAccount> user = (List<UserAccount>) session.getAttribute("user");
		SessionDBMS sessionDBMS = new SessionDBMS();
		//String name = request.getParameter("fullName");
		//String email = request.getParameter("email");
		
		for(SessionClass cs : sessionClass) {
			courseID = cs.getSessionID();
			request.setAttribute("subject", cs.getCourseName());
			request.setAttribute("date", cs.getSessionDate());
			request.setAttribute("startTime", cs.getStartTime());
			request.setAttribute("endTime", cs.getEndTime());
			request.setAttribute("teacher", cs.getTeacher());
			for(UserAccount acc : user) {
				
				userID = acc.getUserID();
				request.setAttribute("name", acc.getfName() +" "+ acc.getlName());
				request.setAttribute("email", acc.getEmail());
				YahooMailSender yahooMail = new YahooMailSender();
				yahooMail.YahooMail(acc.getEmail(), cs);
				
				
				int insertDB = sessionDBMS.registerSession(userID, courseID);
				if(insertDB > 0) {
					request.setAttribute("account_saved", "Session saved in your account successfully!");
				}else {
					request.setAttribute("account_saved", "Session failed save in your account!");
				}
				request.getRequestDispatcher("summary.jsp").forward(request, response);
			}
		}
		
		
		
		
    	
	}

}
