<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />

<form id="logoutForm" method="POST" action="${contextPath}/logout">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>


<!-- Sidebar -->
<nav id="sidebar">
  <div class="sidebar-header">
    <h3>Reservation System</h3>
  </div>

  <ul class="list-unstyled components">
    <li class="${pagina.endsWith('/dashboard/') ? 'active' : ''}">
      <a href="/employee/dashboard/"><span class="fa fa-home mr-3"></span> Homepage</a>
    </li>
    <li class="${pagina.endsWith('/dashboard/getEmployees') ? 'active' : ''}">
      <a href="/employee/dashboard/getEmployees"><span class="fa fa-user-tie mr-3"></span> Employees</a>
    </li>
    <li class="${pagina.endsWith('/dashboard/getGuests') ? 'active' : ''}">
      <a href="/employee/dashboard/getGuests"><span class="fa fa-hot-tub mr-3"></span> Guests</a>
    </li>
    <li class="${pagina.endsWith('/dashboard/getHosts') ? 'active' : ''}">
      <a href="/employee/dashboard/getHosts"><span class="fa fa-user mr-3"></span> Hosts</a>
    </li>
    <li>
      <a href="#propertyRentalSubmenu" data-toggle="collapse"
        aria-expanded="${pagina.endsWith('/dashboard/getProperties') || pagina.endsWith('/dashboard/getRentals')}"
        class="dropdown-toggle">
        <span class="fa fa-bed mr-3"></span> Properties & Rentals
      </a>
      <ul
        class="collapse ${pagina.endsWith('/dashboard/getProperties') || pagina.endsWith('/dashboard/getRentals') ? 'show' : ''} list-unstyled pull-right"
        id="propertyRentalSubmenu">
        <li class="${pagina.endsWith('/dashboard/getProperties') ? 'active' : ''}">
          <a href="/employee/dashboard/getProperties">Properties</a>
        </li>
        <li class="${pagina.endsWith('/dashboard/getRentals') ? 'active' : ''}">
          <a href="/employee/dashboard/getRentals">Rentals</a>
        </li>
      </ul>
    </li>
    <li class="${pagina.endsWith('/dashboard/logout') ? 'active' : ''}">
      <a onclick="document.forms['logoutForm'].submit()"><span class="fa fa-user mr-3"></span> Logout</a>
    </li>
  </ul>
</nav>