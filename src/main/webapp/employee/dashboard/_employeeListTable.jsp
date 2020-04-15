<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="datatable table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
      <th scope="col">Position</th>
      <th scope="col">Salary</th>
      <th scope="col">Branch</th>
      <th scope="col">Phone</th>
      <th scope="col">Options</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="employee" items="${employeeList}">
      <tr>
        <th scope="row">${employee.employeeId}</th>
        <td>${employee.firstName}</td>
        <td>${employee.lastName}</td>
        <td>${employee.email}</td>
        <td>${employee.position}</td>
        <td>${employee.salary}</td>
        <td>${employee.branch_ID}</td>
        <td>${employee.phone}</td>
        <td>
          <button type="button" class="btn btn-primary">
            <a href="viewEmployee/${employee.employeeId}" style="color: white; text-decoration: none;">View</a>
          </button>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>