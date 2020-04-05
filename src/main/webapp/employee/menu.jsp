<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

  <c:if test="${pageContext.request.userPrincipal.name != null}">
    <form id="logoutForm" method="POST" action="${contextPath}/logout">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>

    <nav class="navbar navbar-expand-sm bg-light">

      <!-- Links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="modal" data-target="#addEmployeeModal">Add Employee</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/employee/getEmployees">Show Employees</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="document.forms['logoutForm'].submit()">Logout</a>
          </li>
      </ul>
    
    </nav>


  </c:if>

</div>