package com.sevlet.lmsdb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login-user")
public class LoginUserServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("user");
		int password = Integer.parseInt(req.getParameter("password"));

	
			
//			if (password == 1234&& userName.equals("aman")) {
				if (password == 1234) {
				
				HttpSession session=req.getSession();
				session.setAttribute("userName", userName);
				
				req.setAttribute("userName", userName);
				req.getRequestDispatcher("admin.jsp").forward(req, resp);

//				resp.sendRedirect("admin.jsp");
			} else if (password == 4567 && userName.equals("Prashanth")) {
				resp.sendRedirect("user.jsp");
			}

	

	}
}
