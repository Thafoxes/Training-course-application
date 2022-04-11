package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dmanager.SessionDBMS;
import com.entity.SessionClass;
import com.entity.UserAccount;

/**
 * Servlet implementation class SessionHistory
 */
@WebServlet(name = "SessionHistory", urlPatterns = { "/SessionHistory" })
public class SessionHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		@SuppressWarnings("unchecked")
		List<UserAccount> userAcc = (List<UserAccount>) request.getSession(false).getAttribute("user");
		
		List<SessionClass> sessionHistory = new ArrayList<>();
		SessionDBMS sessionMgr = new SessionDBMS();
		sessionHistory = sessionMgr.fetchSessionRecord(userAcc.get(0).getUserID());
		
		
		request.setAttribute("history", sessionHistory);
		
		request.getRequestDispatcher("sessionhistory.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
