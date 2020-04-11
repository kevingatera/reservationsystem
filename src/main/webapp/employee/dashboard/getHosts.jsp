<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Hosts" />
</jsp:include>

<body>
  <div class="wrapper">

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div id="content">

      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">

          <button type="button" id="sidebarCollapse" class="btn btn-info">
            <i class="fas fa-align-left"></i>
            <span>Toggle Sidebar</span>
          </button>
        </div>
      </nav>
      <div class="container">
        <h3>Here's a list of all Hosts</h3>
        <div class="row col-md-6">
          <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Email</th>
                <th scope="col">Branch</th>
                <th scope="col">Phone</th>
                <th scope="col">Options</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="host" items="${hostList}">
                <tr>
                  <th scope="row">${host.id}</th>
                  <td>${host.firstName}</td>
                  <td>${host.lastName}</td>
                  <td>${host.email}</td>
                  <td>${host.branchID}</td>
                  <td>${host.phone}</td>
                  <td><button type="button" class="btn btn-primary">
                      <a href="editEmployee/${employee.id}" style="color: white; text-decoration: none;">Edit</a>
                    </button>${host.id}">
                    Edit
                    </button>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>

        </div>
      </div>
    </div>

    <jsp:include page="../../_footer.jsp"></jsp:include>

    <script>
      $("#modalShowCar").on("show.bs.modal", function (e) {
        var carid = $(e.relatedTarget).data("id");
        // Do Whatever you like to do,
      });
    </script>
</body>

</html>