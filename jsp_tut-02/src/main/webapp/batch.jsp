<%@page import="com.aungpaing.entity.Batch"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=request.getAttribute("title") %></title>

<jsp:include page="common/resources.jsp"></jsp:include>

</head>
<body>
  <jsp:include page="common/nav.jsp"></jsp:include>

  <div class="container">
    <div class="row mt-3">

      <div class="col-4 mt-3">
        <form action="batch" method="post">
          <div class="row">
            <div class="mt-3">
              <div>
                <label for="">Batch Name</label>
                <input type="text" class="form-control" name="name" />
              </div>

              <div class="mt-3">
                <label for="">Start Date</label>
                <input type="date" class="form-control" name="startDate" />
              </div>

              <div class="row mt-4 mx-auto">
                <div class="col-6">
                  <button type="submit" class="btn btn-primary w-100">Create</button>
                </div>

                <div class="col-6">
                  <button type="reset" class="btn btn-danger w-100">Reset</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>

      <div class="col-8">
        <h4>Batch List</h4>
        <table class="table">
          <thead>
            <tr>
              <th>Name</th>
              <th>Start Date</th>
            </tr>
          </thead>
          <tbody>
            <!-- Batches -->
            <%
            List<Batch> batchList = (ArrayList<Batch>) application.getAttribute("batches");
            if (batchList == null)
            	batchList = new ArrayList<>();
            for (Batch b : batchList) {
            %>
            <tr>
              <td><%=b.getName()%></td>
              <td><%=b.getStartDate()%></td>
            </tr>
            <%
            }
            %>
          </tbody>
        </table>
      </div>

    </div>
  </div>

  <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>