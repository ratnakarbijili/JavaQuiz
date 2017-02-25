package com.manager;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddTask")
public class AddTask extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String priority = request.getParameter("priority");
		String urgency = request.getParameter("urgency");
		
		HttpSession session = request.getSession(true);
		
		
		int x = 0;
		
		if(priority.equals("important") && urgency.equals("urgent"))
		{
			x = 1;
		}
		else if(priority.equals("important") && urgency.equals("noturgent"))
		{
			x = 2;
		}
		else if(priority.equals("notimportant") && urgency.equals("urgent"))
		{
			x = 3;
		}
		else if(priority.equals("notimportant") && urgency.equals("noturgent"))
		{
			x = 4;
		}
		
		session.setAttribute("id", x);
		
		request.getRequestDispatcher("time-manager.jsp").forward(request, response);
	}

}
