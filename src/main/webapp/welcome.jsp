<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<jsp:include page="_header.jsp" >
    <jsp:param name="title" value="welcome"/>
</jsp:include>

<body>
  <div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
      <form id="logoutForm" method="POST" action="${contextPath}/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      </form>

      <h2>Welcome ${pageContext.request.userPrincipal.name} | <a
          onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>
    <c:else>

      <h2>Guests</h2>

      <a href="/guest/login">Login</a>
      <a href="/guest/registration">Login</a>

      <h2>Hosts</h2>

      <a href="/host/login">Login</a>
      <a href="/host/registration">Login</a>
    </c:else>
  </div>
</body>

</html>