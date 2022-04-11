package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.Year;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dmanager.CourseDBMS;
import com.dmanager.SessionDBMS;
import com.entity.ClassCourse;
import com.entity.SessionClass;
import com.entity.UserAccount;

/**
 * Servlet implementation class Month
 */
@WebServlet(name = "month", urlPatterns = { "/month" })
public class Month extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Month() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<UserAccount> userAcc = (List<UserAccount>) session.getAttribute("user");
		
		int subjectID = Integer.parseInt(request.getParameter("course"));
		
		String subjectName = request.getParameter("subject");
		if(subjectID != 0 || subjectName != null) {
			
			//test subject
			//response.getWriter().write(year +"  " +  subject);
			SessionDBMS sessionMgr = new SessionDBMS();
			
				List<SessionClass> sessionC = sessionMgr.fetchSession(subjectID, userAcc.get(0).getUserID());
				
				//setup the attribute to show on website
				
				request.setAttribute("session_time", sessionC);
				request.setAttribute("subjectID", subjectID);
				request.setAttribute("subject", subjectName);
				
				request.getRequestDispatcher("timesession.jsp").forward(request, response);
		}else {
			response.sendRedirect("course?error=101");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
