<%@page import="java.util.ArrayList"%>
<%@page import="com.aungpaing.entity.Batch"%>
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
    <div class="row mt-2">
      <div class="col-12">
        <h3>Add New Student</h3>
      </div>
    </div>
    <hr />
    <form action="addStudent" method="post">
      <div class="col-4 mt-3">
        <label for="">Student Name</label> <input type="text"
          class="form-control" name="name" />
      </div>

      <div class="col-4 mt-3">
        <label for="">Email</label> <input type="email"
          class="form-control" name="email" />
      </div>
      
      <div class="col-4 mt-3">
        <label for="">Phone</label> <input type="tel"
          class="form-control" name="phone" />
      </div>

      <div class="col-4 mt-3">
        <label for="batch">Choose Batch</label> <select name="batch"
          id="batch" class="form-select">
          <%
          List<Batch> batchList = (ArrayList<Batch>) application.getAttribute("batches");
          if (batchList == null)
          	batchList = new ArrayList<>();
          for (Batch b : batchList) {
          %>
          <option value="<%=b.getName()%>"><%=b.getName()%></option>
          <%
          }
          %>
        </select>
      </div>
      
      <div class="col-4 mt-3">
        <input type="checkbox" class="form-check-input" name="oldStd" id="oldStd"/>
        <label for="oldStd">Old Student</label>
      </div>

      <div class="row mt-3 mx-auto">
        <div class="col-2">
          <button type="reset" class="btn btn-danger w-100">Clear</button>
        </div>

        <div class="col-2">
          <button type="submit" class="btn btn-primary w-100">Save</button>
        </div>
      </div>
    </form>
  </div>

  <!-- footer -->
  <jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>