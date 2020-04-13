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
    <div class="content mt-4">

      <div class="container">

        <div class="titleContainer">
          <div class="float-left">
            <h3>Here's a list of all Hosts</h3>
          </div>
          <div class="float-right">
            <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i><a href="addHost"> Add
                new</a></button>
          </div>
        </div>

        <hr>
        <div class="row col-md-6">
          <table class="datatable table table-striped">
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
                  <th scope="row">${host.hostId}</th>
                  <td>${host.firstName}</td>
                  <td>${host.lastName}</td>
                  <td>${host.email}</td>
                  <td>${host.branchID}</td>
                  <td>${host.phone}</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        More
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="editHost/${host.hostId}">Edit</a>
                        <a class="dropdown-item" href="viewHost/${host.hostId}">View</a>
                        <a class="dropdown-item text-danger" href="viewHost/${host.hostId}">Delete</a>
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

    <!-- Code for datatables -->
    <script>

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