<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

	<jsp:include page="../../_header.jsp" >
  <jsp:param name="title" value="Add New Property"/>
</jsp:include>

<jsp:include page="menu.jsp" />
<body>
    <div class="container">
	<h3 style="color: red;">Add New Property</h3>

	<div id="addProperty">
		<form:form action="/addNewProperty" method="post"
			modelAttribute="emp">
			<p>
				<label>Enter Property Id</label>
				<form:input path="empId" />
			</p>
			<p>
				<label>Enter Name</label>
				<form:input path="empName" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form:form>
        </div>
	</div>
</body>
</html>
