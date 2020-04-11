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

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div id="content">

      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">

          <button type="button" id="sidebarCollapse" class="btn btn-info">
            <i class="fas fa-align-left"></i>
            <span>Toggle Sidebar</span>
          </button>
        </div>
      </nav>

      <div class="container">
        <h2>Welcome ${pageContext.request.userPrincipal.name} </h2>
      </div>

      <%-- <jsp:include page="components/_addEmployeeModal.jsp"></jsp:include> --%>
    </div>
  </div>
</body>

</html>