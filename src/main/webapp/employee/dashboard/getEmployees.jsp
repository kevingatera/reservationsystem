<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
  <jsp:include page="../../_header.jsp">
    <jsp:param name="title" value="Show Guests" />
  </jsp:include>
  
  <jsp:include page="../menu.jsp" />

  <body>

    <div class="container">
      <h3>Here's a list of all Guests</h3>
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
                  <button
                    type="button"
                    class="btn btn-primary"
                  >
                  <a href="editEmployee/${employee.id}" style="color: white; text-decoration: none;">Edit</a>
                  </button>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>

    <!-- <jsp:include page="../../_footer.jsp"></jsp:include> -->

    <script>
      // $("#modalShowCar").on("show.bs.modal", function (e) {
      //   var carid = $(e.relatedTarget).data("id");
      //   // Do Whatever you like to do,
      // });
    </script>
  </body>
</html>
