<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Rentals" />
</jsp:include>

<body>

  <div class="wrapper">

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div class="content mt-4">

      <div class="container">
        <h3>Here's a list of all Rentals</h3>
        <hr>
        <div class="row col-md-6">
          <table class="datatable table table-striped">
            <thead>
              <tr>
                <th scope="col">Property ID</th>
                <th scope="col">Guest ID</th>
                <th scope="col">Booking Reference</th>
                <th scope="col">Agreement Start</th>
                <th scope="col">Agreement End</th>
                <th scope="col">Agreement Date</th>
                <th scope="col">Options</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="rental" items="${rentalList}">
                <tr>
                  <th scope="row">${rental.propertyID}</th>
                  <td>${rental.guestID}</td>
                  <td>${rental.bookingReference}</td>
                  <td>${rental.agreementStart}</td>
                  <td>${rental.agreementEnd}</td>
                  <td>${rental.agreementSigning}</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        More
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="editGuest/${rental.propertyID}">Edit</a>
                        <a class="dropdown-item" href="viewGuest/${rental.propertyID}">View</a>
                        <a class="dropdown-item text-danger" href="viewGuest/${rental.propertyID}">Delete</a>
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