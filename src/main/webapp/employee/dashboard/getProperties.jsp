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
        <h3>Here's a list of all Properties</h3>
        <div class="row col-md-6">

          <h4>Sorting Options</h4>


          <table class="dataTable table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">roomType</th>
                <th scope="col">Bedrooms</th>
                <th scope="col">Bathrooms</th>
                <th scope="col">Max Guests</th>
                <th scope="col">Type</th>
                <th scope="col">Description</th>
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
                  <td>${property.propertyName}</td>
                  <td>${property.roomType}</td>
                  <td>${property.bedrooms}</td>
                  <td>${property.bathrooms}</td>
                  <td>${property.maxGuests}</td>
                  <td>${property.type}</td>
                  <td>${property.description}</td>
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
                      </div>
                    </div>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-end">
            <li class="page-item disabled">
              <a class="page-link" href="#" tabindex="-1">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </nav>
      </div>
    </div>

</body>

</html>