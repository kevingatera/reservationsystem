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
        <div class="row col">


          <jsp:include page="_rentalListTable.jsp"></jsp:include>

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