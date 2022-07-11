<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Scope Objects</h2>
	<h3>
		Application Scope:
		<%
	out.println(application.getAttribute("contextScope"));
	%>
	</h3>
	<h3>
		Session Scope:
		<%=session.getAttribute("sessionScope")%></h3>
	<h3>
		Request:
		<%=request.getAttribute("requestScope")%></h3>
	<h2>
		Current Date:
		<%=LocalDate.now()%></h2>
</body>
</html>