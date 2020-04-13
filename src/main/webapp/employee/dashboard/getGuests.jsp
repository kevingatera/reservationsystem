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
    <div class="content mt-4">

      <div class="container">

        <div class="titleContainer">
          <div class="float-left">
            <h3>Here's a list of all Guests</h3>
          </div>
          <div class="float-right">
            <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i><a href="addGuest"> Add
                new</a></button>
          </div>
        </div>

        <hr>
        <div class="row col-md-6">
          <table class="datatable table table-striped">
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
                        More
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="editGuest/${guest.guestId}">Edit</a>
                        <a class="dropdown-item" href="viewGuest/${guest.guestId}">View</a>
                        <a class="dropdown-item text-danger" href="viewGuest/${guest.guestId}">Delete</a>
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