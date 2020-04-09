<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="margin-bottom: 20px;">
  <c:if test="${pageContext.request.userPrincipal.name != null}">
    <form id="logoutForm" method="POST" action="${contextPath}/logout">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>

    <div class="">
      <nav class="navbar navbar-expand-sm navbar-light bg-light justify-content-center">
        <!-- Links -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <div class="dropdown show">
              <a class="dropdown-toggle nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Add new
              </a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="/employee/dashboard/addEmployee">Employee</a>
                <a class="dropdown-item" href="/employee/dashboard/addHost">Host</a>
                <a class="dropdown-item" href="/employee/dashboard/addGuest">Guest</a>
              </div>
            </div>
            <!-- <a class="nav-link" href="#" data-toggle="modal" data-target="#addEmployeeModal">Add Employee</a> -->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/employee/dashboard/getEmployees">Show Employees</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="document.forms['logoutForm'].submit()">Logout</a>
          </li>
        </ul>
      </nav>
    </div>
  </c:if>
</div>