<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Properties" />
</jsp:include>

<body>
  <div class="wrapper">
    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div class="content mt-4">

      <div class="container">

        <div class="titleContainer">
          <div class="float-left">
            <h3>Here's a list of all Properties</h3>
          </div>
          <div class="float-right">
            <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i><a href="addProperty"> Add
                new</a></button>
          </div>
        </div>

        <hr>
        <div class="row col-md-6">
          <table class="dataTable table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <!-- <th scope="col">Name</th> -->
                <th scope="col">roomType</th>
                <th scope="col">Bedrooms</th>
                <th scope="col">Bathrooms</th>
                <th scope="col">Max Guests</th>
                <th scope="col">Type</th>
                <!-- <th scope="col">Description</th> -->
                <th scope="col">Availability</th>
                <th scope="col">Review Average</th>
                <th scope="col">Host ID</th>
                <th scope="col">Branch ID</th>
                <th scope="col">Options</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="property" items="${propertyList}">
                <tr>
                  <th scope="row">${property.propertyId}</td>
                    <!-- <td>${property.propertyName}</td> -->
                  <td>${property.roomType}</td>
                  <td>${property.bedrooms}</td>
                  <td>${property.bathrooms}</td>
                  <td>${property.maxGuests}</td>
                  <td>${property.type}</td>
                  <!-- <td>${property.description}</td> -->
                  <td>${property.available}</td>
                  <td>${property.reviewAverage}</td>
                  <td>${property.hostID}</td>
                  <td>${property.branchID}</td>
                  <td>
                    <div class="dropdown">
                      <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        More
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="editProperty/${property.propertyId}">Edit</a>
                        <a class="dropdown-item" href="viewProperty/${property.propertyId}">View</a>
                        <a class="dropdown-item text-danger" href="viewProperty/${property.propertyId}">Delete</a>
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