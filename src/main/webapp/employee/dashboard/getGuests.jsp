<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Guests" />
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
        <h3>Here's a list of all Guests</h3>
        <div class="row col-md-6">
          <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Full Name</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Email</th>
                <th scope="col">Branch</th>
                <th scope="col">Phone</th>
                <th scope="col">Options</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="guest" items="${guestList}">
                <tr>
                  <th scope="row">${guest.guestId}</th>
                  <td>${guest.fullName}</td>
                  <td>${guest.firstName}</td>
                  <td>${guest.lastName}</td>
                  <td>${guest.email}</td>
                  <td>${guest.branchID}</td>
                  <td>${guest.phone}</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ...
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="editGuest/${guest.guestId}">Edit</a>
                        <a class="dropdown-item" href="viewGuest/${guest.guestId}">View</a>
                      </div>
                    </div>
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