<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Dashboard" />
</jsp:include>


<body>
  <jsp:include page="../sidebar.jsp" />
  <div class="container">
    <h2>Welcome ${pageContext.request.userPrincipal.name} </h2>
  </div>

  <%-- <jsp:include page="components/_addEmployeeModal.jsp"></jsp:include> --%>

</body>

</html>