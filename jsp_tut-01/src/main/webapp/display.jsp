<%@page import="com.aungpaing.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" />

<script type="text/javascript"
	src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>

<!-- Jquery -->
<script type="text/javascript" src="webjars/jquery/3.6.0/jquery.min.js"></script>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="webjars/font-awesome/6.1.0/css/fontawesome.min.css" />

<script type="text/javascript"
	src="webjars/font-awesome/6.1.0/js/fontawesome.min.js"></script>

</head>
<body>
	<div class="container">
		<h3>Profile</h3>
		<%
		Student student = (Student) request.getAttribute("student");
		if (student == null)
			student = new Student();
		%>

		<table class="table">
			<tr>
				<td>Name</td>
				<td><%=student.getName()%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><%=student.getEmail()%></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><%=student.getAge()%></td>
			</tr>
			<tr>
				<td>Date Of Birth</td>
				<td><%=student.getDateOfBirth()%></td>
			</tr>
			<tr>
				<td>Region</td>
				<td><%=student.getRegion()%></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><%=student.getGender()%></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><%=student.getAddress()%></td>
			</tr>
			<tr>
				<td>Old Student</td>
				<td><%=student.isOldStudent()%></td>
			</tr>
		</table>
	</div>
</body>
</html>