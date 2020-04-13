<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="logoutForm" method="POST" action="${contextPath}/logout">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>



<!-- <form id="logoutForm" method="POST" action="${contextPath}/logout">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form> -->