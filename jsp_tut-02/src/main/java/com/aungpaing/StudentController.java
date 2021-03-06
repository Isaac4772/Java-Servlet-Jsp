package com.aungpaing;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.aungpaing.entity.Batch;
import com.aungpaing.entity.Student;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/index", "/students", "/studentAdd", "/addStudent", "/batch" })
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static List<Batch> batchList;
	private static ServletContext context;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		context = config.getServletContext();

		batchList = (ArrayList<Batch>) context.getAttribute("batches");

		if (batchList == null)
			batchList = new ArrayList<Batch>();

		batchList.add(new Batch("Batch 1", LocalDate.parse("2022-02-12")));
		batchList.add(new Batch("Batch 2", LocalDate.parse("2022-08-23")));

		context.setAttribute("batches", batchList);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String action = req.getServletPath();
		System.out.println("action name: " + action);
		String title_value = "";
		String page = "";

		if (action.equals("/students")) {
			title_value = "Students";
			page = "/students.jsp";
		} else if (action.equals("/studentAdd")) {
			title_value = "Student|Add";
			page = "/studentAdd.jsp";
		} else if (action.equals("/index")) {
			page = "/";
		} else if (action.equals("/batch")) {
			title_value = "Batch";
			page = "/batch.jsp";
		}
		
		req.setAttribute("title", title_value);
		getServletContext().getRequestDispatcher(page).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String action = req.getServletPath();
		if (action.equals("/batch")) {
			String name = req.getParameter("name");
			String startDate = req.getParameter("startDate");
			if(name!=null && startDate !=null)
				batchList.add(new Batch(name, LocalDate.parse(startDate)));
			resp.sendRedirect(req.getContextPath() + "/batch");
		}

		else {
			// get data from parameter
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String batchName = req.getParameter("batch");
			String oldStudent = req.getParameter("oldStd");
			// create student object
			Student student = new Student();
			student.setName(name);
			student.setEmail(email);
			student.setPhone(phone);
			student.setBatch(batchName);
			student.setRegisterDate(LocalDate.now());
			student.setOldStudent(oldStudent == null ? false : true);

			// get session object
			HttpSession session = req.getSession(true);

			// get or create student list from session object
			List<Student> studentList = (ArrayList<Student>) session.getAttribute("students");
			if (studentList == null)
				studentList = new ArrayList<Student>();
			// add student obj to list
			studentList.add(student);

			// add list to session
			session.setAttribute("students", studentList);
			// invoke
			resp.sendRedirect(req.getContextPath() + "/students");
		}
	}

}
