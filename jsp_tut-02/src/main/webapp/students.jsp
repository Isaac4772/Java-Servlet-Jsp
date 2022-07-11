<%@page import="java.util.ArrayList"%>
<%@page import="com.aungpaing.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title><%=request.getAttribute("title")%></title>

<!-- Resources -->
<jsp:include page="common/resources.jsp"></jsp:include>

</head>

<body>

  <!-- navbar -->
  <jsp:include page="common/nav.jsp"></jsp:include>

  <div class="container">
    <div class="row mt-3">
      <div class="col-10">
        <h3>Student List</h3>
      </div>

      <div class="col-2">
        <a href="studentAdd" class="btn btn-primary"><i
          class="fa-solid fa-plus fa-lg"></i> Add Student</a>
      </div>
    </div>
    <hr />

    <table class="table">
      <thead>
        <tr>
          <th>No</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Batch</th>
          <th>Old Student</th>
        </tr>
      </thead>

      <tbody>
        <!-- Student List -->
        <%
        List<Student> studentList = (ArrayList<Student>) session.getAttribute("students");
        if (studentList == null)
        	studentList = new ArrayList<>();
        for (int i = 0; i < studentList.size(); i++) {
        	Student tmp = studentList.get(i);
        %>
        <tr>
          <td><%=(i + 1)%></td>
          <td><%=tmp.getName()%></td>
          <td><%=tmp.getEmail()%></td>
          <td><%=tmp.getPhone()%></td>
          <td><%=tmp.getBatch()%></td>
          <td><%=tmp.isOldStudent()%></td>
        </tr>
        <%
        }
        %>
      </tbody>
    </table>
  </div>

  <!-- footer -->
  <jsp:include page="common/footer.jsp"></jsp:include>
</body>

</html>