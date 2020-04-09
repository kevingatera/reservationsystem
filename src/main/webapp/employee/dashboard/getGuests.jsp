<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
  <jsp:include page="../../_header.jsp">
    <jsp:param name="title" value="Show Guests" />
  </jsp:include>

  <body>
    <jsp:include page="../menu.jsp" />

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
            <c:forEach var="guest" items="${guestList}">
              <tr>
                <th scope="row">${guest.id}</th>
                <td>${guest.firstName}</td>
                <td>${guest.lastName}</td>
                <td>${guest.email}</td>
                <td>${guest.position}</td>
                <td>${guest.salary}</td>
                <td>${guest.branch_ID}</td>
                <td>${guest.phone}</td>
                <td>
                  <button
                    type="button"
                    class="btn btn-primary"
                    data-toggle="modal"
										data-target="#editguestModal"
										data-id="${guest.id}"
                  >
                    Edit
                  </button>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <!-- Modal -->
        <jsp:include page="components/_editguestModal.jsp"></jsp:include>

        <jsp:include page="components/_addguestModal.jsp"></jsp:include>
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
