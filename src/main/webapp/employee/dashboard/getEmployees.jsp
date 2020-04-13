<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Employees" />
</jsp:include>


<body>
  <div class="wrapper">

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div class="content mt-4">

      <div class="container">

        <div class="titleContainer">
          <div class="float-left">
            <h3>Here's a list of all Employees</h3>
          </div>
          <div class="float-right">
            <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i><a href="addEmployee"> Add
                new</a></button>
          </div>
        </div>

        <hr>
        <div class="row col-md-6">
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
                      <a href="viewEmployee/${employee.employeeId}"
                        style="color: white; text-decoration: none;">View</a>
                    </button>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <!-- Dark Overlay element -->
    <div class="overlay"></div>

    <script>
      // $("#modalShowCar").on("show.bs.modal", function (e) {
      //   var carid = $(e.relatedTarget).data("id");
      //   // Do Whatever you like to do,
      // });

      var dtable = $(".datatable").dataTable().api();

      // Grab the datatables input box and alter how it is bound to events
      $(".dataTables_filter input")
        .unbind() // Unbind previous default bindings
        .bind("input", function (e) { // Bind our desired behavior
          // If the length is 3 or more characters, or the user pressed ENTER, search
          if (this.value.length >= 3 || e.keyCode == 13) {
            // Call the API search function
            dtable.search(this.value).draw();
          }
          // Ensure we clear the search if they backspace far enough
          if (this.value == "") {
            dtable.search("").draw();
          }
          return;
        });
    </script>
</body>

</html>