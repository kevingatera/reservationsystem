<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Dashboard" />
</jsp:include>


<body>
  <div class="wrapper">

    <div class="container">
      <jsp:include page="../sidebar.jsp" />
    </div>
    <!-- Page Content -->

    <div class="content w-100  mt-4">

      <%-- <jsp:include page="../menu.jsp" /> --%>

      <div class="container">

        <div>
          <h2>Welcome ${pageContext.request.userPrincipal.name} </h2>

        </div>

        <hr>

        <div class="row w-100 mt-5">
          <div class="col-md-3">
            <div class="card border-info mx-sm-1 p-3">
              <div class="card border-info shadow text-info p-3 my-card"><span class="fa fa-user-tie"
                  aria-hidden="true"></span></div>
              <div class="text-info text-center mt-3">
                <h4>Employees</h4>
              </div>
              <div class="text-info text-center mt-2">
                <h1>${statsObject.totalEmployees}</h1>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card border-info mx-sm-1 p-3">
              <div class="card border-info shadow text-info p-3 my-card"><span class="fa fa-user"
                  aria-hidden="true"></span></div>
              <div class="text-info text-center mt-3">
                <h4>Hosts</h4>
              </div>
              <div class="text-info text-center mt-2">
                <h1>${statsObject.totalHosts}</h1>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card border-info mx-sm-1 p-3">
              <div class="card border-info shadow text-info p-3 my-card"><span class="fa fa-hot-tub"
                  aria-hidden="true"></span></div>
              <div class="text-info text-center mt-3">
                <h4>Guests</h4>
              </div>
              <div class="text-info text-center mt-2">
                <h1>${statsObject.totalGuests}</h1>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card border-info mx-sm-1 p-3">
              <div class="card border-info shadow text-info p-3 my-card"><span class="fa fa-bed"
                  aria-hidden="true"></span></div>
              <div class="text-info text-center mt-3">
                <h4>Properties</h4>
              </div>
              <div class="text-info text-center mt-2">
                <h1>${statsObject.totalProperties}</h1>
              </div>
            </div>
          </div>
        </div>
        <!-- /Row -->
      </div>
    </div>

  </div>

  <%-- <jsp:include page="components/_addEmployeeModal.jsp"></jsp:include> --%>

</body>

</html>