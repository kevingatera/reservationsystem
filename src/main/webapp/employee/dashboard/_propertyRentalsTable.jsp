<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="propertyList" scope="page" value=${param.list} />

<table class="dataTable table table-striped">
  <thead>
    <tr>
      <th scope="col">Property ID</th>
      <th scope="col">Guest ID</th>
      <th scope="col">Host ID</th>
      <th scope="col">Booking Reference</th>
      <th scope="col">Branch ID</th>
      <th scope="col">Nightly Rate</th>
      <th scope="col">Start Date</th>
      <th scope="col">End Date</th>
      <th scope="col">Signing Date</th>
      <th scope="col">Payment Status</th>
      <th scope="col">Options</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="property" items="${propertyList}">
      <tr>
        <th scope="row">${propertyRental.agreement.propertyId}</td>
        <td>${propertyRental.agreement.guestID}</td>
        <td>${propertyRental.agreement.hostID}</td>
        <td>${propertyRental.bookingReference}</td>
        <td>${propertyRental.branchID}</td>
        <td>${propertyRental.branchID}</td>
        <td>${propertyRental.payment.branchID}</td>
        <td>${propertyRental.agreementStart}</td>
        <td>${propertyRental.agreementEnd}</td>
        <td>${propertyRental.agreementSigning}</td>
        <td>
          <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
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