package com.aungpaing;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/servlet01"})
public class Servlet01 extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//retrieve value from request
		var username = req.getParameter("username");
		var password = req.getParameter("password");
		
		//invoke other resource using forward
//		getServletContext().getRequestDispatcher("/servlet02").forward(req, resp);
		
		resp.sendRedirect(req.getContextPath() + "/servlet02");
	}
}
