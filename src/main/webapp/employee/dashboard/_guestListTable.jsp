<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="datatable table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Full Name</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Email</th>
      <th scope="col">Branch</th>
      <th scope="col">Phone</th>
      <th scope="col">Options</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="guest" items="${guestList}">
      <tr>
        <th scope="row">${guest.guestId}</th>
        <td>${guest.fullName}</td>
        <td>${guest.firstName}</td>
        <td>${guest.lastName}</td>
        <td>${guest.email}</td>
        <td>${guest.branchID}</td>
        <td>${guest.phone}</td>
        <td>
          <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              More
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <!-- <a class="dropdown-item" href="editGuest/${guest.guestId}">Edit</a> -->
              <a class="dropdown-item" href="viewGuest/${guest.guestId}">View</a>
              <a class="dropdown-item text-danger" href="viewGuest/${guest.guestId}">Delete</a>
            </div>
          </div>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>