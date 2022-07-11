package com.aungpaing;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/servlet03"})
public class Servlet03 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		var username = req.getParameter("username");
		var password = req.getParameter("password");
		out.write("<html>");
		out.write("<body>");
		out.print("<h3>Servlet 2</h3>");
		out.print("<h5>Username: " + req.getParameter("username") + "</h5>");
		out.print("<h5>Password: " + req.getParameter("password") + "</h5>");
		out.print("</hr>");
		
		getServletContext().getRequestDispatcher("/servlet04").include(req, resp);
		out.print("</body></html>");
	}
}
