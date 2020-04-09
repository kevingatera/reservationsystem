<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Hosts" />
</jsp:include>

<body>
  <jsp:include page="../menu.jsp" />

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
            <th scope="col">Position</th>
            <th scope="col">Branch</th>
            <th scope="col">Email</th>
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
              <td>${host.position}</td>
              <td>${host.salary}</td>
              <td>${host.branch_ID}</td>
              <td>${host.phone}</td>
              <td>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editHostModal"
                  data-id="${host.id}">
                  Edit
                </button>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>

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