package com.aungpaing;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/register" })
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		retrieve data form parameter
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String age = req.getParameter("age");
		String dateOfBirth = req.getParameter("dateofbirth");
		String region = req.getParameter("region");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String oldStudent = req.getParameter("oldstudent");

//		create student object and assign data

		Student student = new Student();
		student.setName(name);
		student.setEmail(email);
		student.setAge(Integer.parseInt(age));
		student.setDateOfBirth(LocalDate.parse(dateOfBirth));
		student.setGender(gender);
		student.setRegion(region);
		student.setOldStudent(oldStudent == null ? false : true);
		student.setAddress(address);

//		add student to scope
		req.setAttribute("student", student);

//		invoke
		getServletContext().getRequestDispatcher("/display.jsp").forward(req, resp);
	}

}
