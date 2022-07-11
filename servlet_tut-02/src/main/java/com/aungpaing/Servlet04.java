package com.aungpaing;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/servlet04"})
public class Servlet04 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		var username = req.getParameter("username");
		var password = req.getParameter("password");
		
		if(username.equals("John") && password.equals("123")) {
			out.print("<h4>Login success</h4>");
		}
		else {
			out.print("<h4>Authentication failed</h4>");
		}
	}
}
