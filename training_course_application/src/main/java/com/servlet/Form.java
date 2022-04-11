package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dmanager.SessionDBMS;
import com.entity.SessionClass;

/**
 * Servlet implementation class Form
 */
@WebServlet(name = "form", urlPatterns = { "/form" })
public class Form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Form() {
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
		
		String sessionID = request.getParameter("sessionid");
		SessionDBMS sessionMgr = new SessionDBMS();
		List<SessionClass> sessionClass = sessionMgr.fetchOneSession(sessionID);
		
		
		request.setAttribute("session", sessionClass);
		request.getRequestDispatcher("form.jsp").forward(request, response);
		
		//testing only
//		String htmlResponse ="<h1>dasdasd  "+ sessionID+"</h1>";
//		PrintWriter writer = response.getWriter();
//		writer.write(htmlResponse);
		
	}

}
