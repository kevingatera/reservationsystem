<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>


<jsp:include page="../../_header.jsp">
	<jsp:param name="title" value="Add new Guest" />
</jsp:include>

</head>
<%-- <jsp:include page="../menu.jsp" /> --%>

<body>
	<div class="wrapper">

		<jsp:include page="../sidebar.jsp" />

		<!-- Page Content -->
		<div class="content">

			<div class="container mt-4">
				<div class="row">
					<div class="col-sm-10">
						<h3>Register a new guest</h3>
					</div>
				</div>
				<hr>

				<jsp:include page="_newGuestForm.jsp"></jsp:include>

				<!--/tab-pane-->
			</div>
			<!--/-->

		</div>
		<!--/col-9-->
	</div>
	<!--/row-->

</body>

</html>