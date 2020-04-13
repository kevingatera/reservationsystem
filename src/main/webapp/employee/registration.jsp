<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>

<jsp:include page="../_header.jsp">
  <jsp:param name="title" value="Register a new employee" />
</jsp:include>


<body>
  <div class="wrapper">

    <!-- Page Content -->
    <div class="content">

      <div class="container bootstrap snippet">
        <div class="row">
          <div class="col-sm-10">
            <h3>Register a new employee</h3>
          </div>
        </div>
        <hr>
        <div class="row">
          <form:form class="form" action="${contextPath}/employee/registration" modelAttribute="employeeForm"
            method="POST" id="registrationForm">

            <div class="row">
              <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label for="username">
                      <h6>Username</h6>
                    </label>
                    <form:input type="username" class="form-control" path="username" placeholder="enter a username"
                      title="enter a username" />
                    <form:errors path="username"></form:errors>
                  </div>
                </div>
              </spring:bind>

              <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label for="password">
                      <h6>Password</h6>
                    </label>
                    <form:input type="password" class="form-control" path="password" placeholder="enter a password"
                      title="enter a password" />
                    <form:errors path="password"></form:errors>
                  </div>
                </div>
              </spring:bind>
            </div>
            <hr>

            <div class="row">
              <spring:bind path="firstName">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label for="first_name">
                      <h6>First name</h6>
                    </label>
                    <form:input type="text" class="form-control" path="firstName" id="first_name"
                      placeholder="first name" title="enter your first name if any." />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>

              <spring:bind path="lastName">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label for="last_name">
                      <h6>Last name</h6>
                    </label>
                    <form:input type="text" class="form-control" path="lastName" id="last_name" placeholder="last name"
                      title="enter your last name if any." />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>
            </div>

            <spring:bind path="lastName">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="phone">
                    <h6>Phone</h6>
                  </label>
                  <form:input type="text" class="form-control" path="phone" id="phone" placeholder="enter phone"
                    title="enter your phone number if any." />
                </div>
              </div>
            </spring:bind>

            <spring:bind path="lastName">
              <div class="form-group">
                <div class="col-xs-6">
                  <label for="email">
                    <h6>Email</h6>
                  </label>
                  <form:input type="email" class="form-control" path="email" id="email" placeholder="you@email.com"
                    title="enter your email." />
                </div>
              </div>
            </spring:bind>

            <hr>
            <h5>Address Information</h5>

            <div class="row">
              <spring:bind path="streetNumber">
                <div class="form-group ${status.error ? 'has-error' : ''} col-4">
                  <div class="col-xs-6">
                    <label>Street Number <span class="text-danger">*</span></label>
                    <form:input type="number" class="form-control" path="streetNumber"
                      placeholder="Enter Street Number" />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>

              <spring:bind path="streetName">
                <div class="form-group ${status.error ? 'has-error' : ''} col-8">
                  <div class="col-xs-6">
                    <label>Street Name <span class="text-danger">*</span></label>
                    <form:input type="text" class="form-control" path="streetName" placeholder="Enter Street Name" />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>
            </div>

            <div class="row">
              <spring:bind path="city">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label>City <span class="text-danger">*</span></label>
                    <form:input type="text" path="city" class="form-control" placeholder="Enter City" />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>

              <spring:bind path="province">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label>State/Province <span class="text-danger">*</span></label>
                    <form:input type="text" path="province" class="form-control" placeholder="Enter State/Province" />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>

              <spring:bind path="country">
                <div class="form-group ${status.error ? 'has-error' : ''} col">
                  <div class="col-xs-6">
                    <label>Country<span class="text-danger">*</span></label>
                    <form:input type="text" path="country" class="form-control" placeholder="Enter Country" />
                    <form:errors path="lastName"></form:errors>
                  </div>
                </div>
              </spring:bind>
            </div>

            <hr>

            <div class="col-xs-12">
              <br>
              <button class="btn btn-lg btn-success pull-right" type="submit"><i
                  class="glyphicon glyphicon-ok-sign"></i> Save</button>
              <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
            </div>
          </form:form>

        </div>
        <!--/tab-pane-->
      </div>
      <!--/-->

    </div>
    <!--/col-9-->
  </div>
  <!--/row-->

  <script>

    $(document).ready(function () {


      var readURL = function (input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
            $('.avatar').attr('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
        }
      }


      $(".file-upload").on('change', function () {
        readURL(this);
      });
    });
  </script>
</body>

</html>