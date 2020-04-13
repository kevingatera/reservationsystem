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
    <div class="content">

      <div class="container">

        <div class="titleContainer">
          <div class="float-left">
            <h3>Here's a list of all Rentals</h3>
          </div>
          <div class="float-right">
            <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i><a href="addRental"> Add
                new</a></button>
          </div>
        </div>

        <hr>
        <div class="row col-md-6">

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
      </div>
    </div>

</body>

</html>