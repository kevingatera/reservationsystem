<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />

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
      <a href="/employee/dashboard/getEmployees" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
        <span class="fa fa-user-tie mr-3"></span> Employees
      </a>
      <ul class="collapse list-unstyled pull-right" id="pageSubmenu">
        <li>
          <a href="#">Page 1</a>
        </li>
        <li>
          <a href="#">Page 2</a>
        </li>
        <li>
          <a href="#">Page 3</a>
        </li>
      </ul>
    </li>
    <li class="${pagina.endsWith('/dashboard/getGuests') ? 'active' : ''}">
      <a href="/employee/dashboard/getGuests"><span class="fa fa-hot-tub mr-3"></span> Guests</a>
    </li>
    <li class="${pagina.endsWith('/dashboard/getHosts') ? 'active' : ''}">
      <a href="/employee/dashboard/getHosts"><span class="fa fa-user mr-3"></span> Hosts</a>
    </li>
    <li class="${pagina.endsWith('/dashboard/getProperties') ? 'active' : ''}">
      <a href="/employee/dashboard/getProperties"><span class="fa fa-bed mr-3"></span> Properties</a>
    </li>
    <li class="${pagina.endsWith('/dashboard/logout') ? 'active' : ''}">
      <a onclick="document.forms['logoutForm'].submit()"><span class="fa fa-user mr-3"></span> Logout</a>
    </li>
  </ul>
</nav>


<script type="text/javascript">

  $(document).ready(function () {
    // $("#sidebar").mCustomScrollbar({
    //   theme: "minimal"
    // });

    $('#dismiss, .overlay').on('click', function () {
      // hide sidebar
      $('#sidebar').removeClass('active');
      // hide overlay
      $('.overlay').removeClass('active');
    });

    $('#sidebarCollapse').on('click', function () {
      // open sidebar
      $('#sidebar').addClass('active');
      // fade in the overlay
      $('.overlay').addClass('active');
      $('.collapse.in').toggleClass('in');
      $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    });

    $(function () {
      console.log("booyah");
    });

    $(function () {
      $('ul.nav li a[href$="' + window.location.pathname + '"]').parent().addClass("active");
    });

  });
</script>