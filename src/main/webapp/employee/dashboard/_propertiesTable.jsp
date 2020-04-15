<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class=" dataTable table table-striped">
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
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
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