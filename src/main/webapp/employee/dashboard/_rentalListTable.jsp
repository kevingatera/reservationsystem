<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              More
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <!-- <a class="dropdown-item" href="editGuest/${rental.propertyID}">Edit</a> -->
              <a class="dropdown-item" href="viewGuest/${rental.propertyID}">View</a>
              <a class="dropdown-item text-danger" href="viewGuest/${rental.propertyID}">Delete</a>
            </div>
          </div>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>