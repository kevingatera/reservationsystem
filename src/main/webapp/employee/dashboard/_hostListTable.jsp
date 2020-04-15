<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="datatable table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Email</th>
      <th scope="col">Branch</th>
      <th scope="col">Phone</th>
      <th scope="col">Options</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="host" items="${hostList}">
      <tr>
        <th scope="row">${host.hostId}</th>
        <td>${host.firstName}</td>
        <td>${host.lastName}</td>
        <td>${host.email}</td>
        <td>${host.branchID}</td>
        <td>${host.phone}</td>
        <td>
          <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              More
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <!-- <a class="dropdown-item" href="editHost/${host.hostId}">Edit</a> -->
              <a class="dropdown-item" href="viewHost/${host.hostId}">View</a>
              <a class="dropdown-item text-danger" href="viewHost/${host.hostId}">Delete</a>
            </div>
          </div>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>