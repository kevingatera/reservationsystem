
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal fade" id="editEmployeeModal" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">
          &times;
        </button>
        <h4 class="modal-title">Edit Employee</h4>
      </div>
      <div class="modal-body">
        <form:form
          method="POST"
          action="${contextPath}/api/employee/editEmployee"
          modelAttribute="userForm"
          class="form-signin"
        >

          <label>First Name </label>
          <spring:bind path="firstName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input
                type="text"
                path="firstName"
                class="form-control"
                placeholder="First Name"
                autofocus="true"
              />
              <form:errors path="firstName"></form:errors>
            </div>
          </spring:bind>

          <label>Last Name </label>
          <spring:bind path="lastName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input
                type="text"
                path="lastName"
                class="form-control"
                placeholder="Last Name"
                autofocus="true"
              />
              <form:errors path="lastName"></form:errors>
            </div>
          </spring:bind>

          <label>Phone Number </label>
          <spring:bind path="phoneNumber">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input
                type="text"
                path="phoneNumber"
                class="form-control"
                placeholder="Phone Number"
                autofocus="true"
              />
              <form:errors path="phoneNumber"></form:errors>
            </div>
          </spring:bind>

          <label>Email </label>
          <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input
                type="text"
                path="email"
                class="form-control"
                placeholder="Email"
                autofocus="true"
              />
              <form:errors path="email"></form:errors>
            </div>
          </spring:bind>

          <label>Username </label>
          <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input
                type="text"
                path="username"
                class="form-control"
                placeholder="Username"
                autofocus="true"
              />
              <form:errors path="username"></form:errors>
            </div>
          </spring:bind>

          <label>Password </label>
          <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input
                type="password"
                path="password"
                class="form-control"
                placeholder="Password"
              />
              <form:errors path="password"></form:errors>
            </div>
          </spring:bind>

          <!-- <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
              <form:input type="password" path="passwordConfirm" class="form-control" placeholder="Confirm your password" />
              <form:errors path="passwordConfirm"></form:errors>
            </div>
          </spring:bind> -->

          <button class="btn btn-lg btn-primary btn-block" type="submit">
            Save
          </button>
        </form:form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">
          Close
        </button>
      </div>
    </div>
  </div>
</div>
