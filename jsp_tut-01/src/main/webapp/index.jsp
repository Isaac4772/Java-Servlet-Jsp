<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap</title>

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
    <h2 class="mt-2">Register Form</h2>
    <hr />
    <div class="row">
      <div class="col-12">
        <form action="/jsp_tut-01/register" class="form" method="post">
          <div class="row">
            <div class="col-6">
              <div class="mb-3">
                <label for="name" class="form-label">User Name</label> <input
                  id="name" name="name" type="text" class="form-control" />
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label> <input
                  type="text" name="email" id="email"
                  class="form-control required"
                  placeholder="example@gmail.com" />
              </div>
              <div class="mb-3">
                <label for="age" class="form-label">Age</label> <input
                  type="number" name="age" id="age" class="form-control" />
              </div>
              <div class="mb-3">
                <label for="dateofbirth" class="form-label">Birthday</label>
                <input type="date" id="dateofbirth" name="dateofbirth"
                  class="form-control required"
                  placeholder="example@gmail.com" />
              </div>
              <div class="mb-3">
                <label for="region" class="form-label">Region</label> <select
                  name="region" id="region" class="form-select">
                  <option value="mandalay">Mandalay</option>
                  <option value="yangon">Yangon</option>
                  <option value="sagain">Sagaing</option>
                </select>
              </div>
              <div class="row mb-3">
                <div class="col-2">
                  <span>Gender</span>
                </div>
                <div class="col-2">
                  <div class="form-check">
                    <input id="male" name="gender" type="radio"
                      class="form-check-input" value="male" checked />
                    <label for="male" class="form-check-label">Male</label>
                  </div>
                </div>
                <div class="col-2">
                  <div class="form-check">
                    <input id="female" name="gender" type="radio"
                      class="form-check-input" value="female" /> <label
                      for="female" class="form-check-label">Female</label>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6">
              <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea name="address" id="address"
                  class="form-control"></textarea>
              </div>
              <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input"
                  id="oldstudent" name="oldstudent" /> <label
                  for="oldstudent">Old Student</label>
              </div>
              <div class="row">
                <div class="col-6">
                  <button type="reset" class="btn btn-danger w-100">Reset</button>
                </div>
                <div class="col-6">
                  <button type="submit" class="btn btn-success w-100">Register</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>