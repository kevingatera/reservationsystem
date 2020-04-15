<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../_header.jsp">
  <jsp:param name="title" value="Show Reviews" />
</jsp:include>

<body>
  <jsp:include page="menu.jsp" />

  <div class="container">
    <h3>Here's a list of all Reviews</h3>
    <div class="row col">
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Type</th>
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
          <c:forEach var="review" items="${reviewList}">
            <tr>
              <th scope="row">${review.id}</th>
              <td>${review.review_ID}</td>
              <td>${review.review_type}</td>
              <td>${review.room_type}</td>
              <td>${review.bedrooms}</td>
              <td>${review.bathrooms}</td>
              <td>${review.max_guests}</td>
              <td>${review.review_description}</td>
              <td>${review.available}</td>
              <td>${review.review_avg}</td>
              <td>${review.host_ID}</td>
              <td>${review.branch_ID}</td>
              <td>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editPropertyModal"
                  data-id="${review.id}">
                  Edit
                </button>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>

    </div>
  </div>

  <jsp:include page="../_footer.jsp"></jsp:include>

  <script>
    $("#modalShowCar").on("show.bs.modal", function (e) {
      var carid = $(e.relatedTarget).data("id");
      // Do Whatever you like to do,
    });
  </script>
</body>

</html>