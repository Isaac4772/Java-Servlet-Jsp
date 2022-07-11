<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<!-- Resources -->
<jsp:include page="common/resources.jsp"></jsp:include>

<style>
div.content {
	position: absolute;
	left: 50%;
	top: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>

</head>
<body>

  <!-- navbar -->
  <jsp:include page="common/nav.jsp"></jsp:include>

  <div class="container content">
    <h2 class="text-primary text-center">Welcome To Zero To Pro
      Bootcamp</h2>
    <h3 class="text-primary text-center">MMIT</h3>
  </div>

  <!-- footer -->
  <jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>