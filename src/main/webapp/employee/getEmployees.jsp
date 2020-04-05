<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<jsp:include page="../_header.jsp">
	<jsp:param name="title" value="Show Employees" />
</jsp:include>

<body>
	<jsp:include page="menu.jsp" />

	<div class="container">
		<h3>Here's a list of all Employees</h3>
		<div class="row col-md-6">
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">First</th>
						<th scope="col">Last</th>
						<th scope="col">Email</th>
						<th scope="col">Position</th>
						<th scope="col">Branch</th>
						<th scope="col">Email</th>
						<th scope="col">Phone</th>
						<th scope="col">Options</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="employee" items="${employeeList}">
						<tr>
							<th scope="row">${employee.id}</th>
							<td>${employee.firstName}</td>
							<td>${employee.lastName}</td>
							<td>${employee.email}</td>
							<td>${employee.position}</td>
							<td>${employee.salary}</td>
							<td>${employee.branch_ID}</td>
							<td>${employee.phone}</td>
							<td>
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editEmployeeModal">Edit</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<!-- Modal -->
			<jsp:include page="components/_editEmployeeModal.jsp"></jsp:include>

  		<jsp:include page="components/_addEmployeeModal.jsp"></jsp:include>
			

		</div>
	</div>


	<jsp:include page="../_footer.jsp"></jsp:include>

</body>

</html>