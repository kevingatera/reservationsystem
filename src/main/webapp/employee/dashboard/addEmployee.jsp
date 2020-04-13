<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>


<jsp:include page="../../_header.jsp">
	<jsp:param name="title" value="Add new Employee" />
</jsp:include>

</head>
<jsp:include page="../menu.jsp" />

<body>
	<div class="container">
		<h3 style="color: red;">Add New Employee</h3>

		<div id="addEmployee">
			<form:form method="POST" action="${contextPath}/employee/registration" modelAttribute="newEmployee"
				class="form-signin">

				<spring:bind path="firstName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="firstName" class="form-control" placeholder="First Name" autofocus="true" />
						<form:errors path="firstName"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="lastName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="lastName" class="form-control" placeholder="Last Name" autofocus="true" />
						<form:errors path="lastName"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="phone">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="phone" class="form-control" placeholder="Phone Number" autofocus="true" />
						<form:errors path="phone"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="email">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="email" class="form-control" placeholder="Email" autofocus="true" />
						<form:errors path="email"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="username">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="username" class="form-control" placeholder="Username" autofocus="true" />
						<form:errors path="username"></form:errors>
					</div>
				</spring:bind>


				<spring:bind path="password">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="password" path="password" class="form-control" placeholder="Password" />
						<form:errors path="password"></form:errors>
					</div>
				</spring:bind>

				<!-- <spring:bind path="passwordConfirm">
        <div class="form-group ${status.error ? 'has-error' : ''}">
          <form:input type="password" path="passwordConfirm" class="form-control" placeholder="Confirm your password" />
          <form:errors path="passwordConfirm"></form:errors>
        </div>
      </spring:bind> -->

				<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
			</form:form>
		</div>
	</div>
</body>

</html>