<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

  <c:if test="${pageContext.request.userPrincipal.name != null}">
    <form id="logoutForm" method="POST" action="${contextPath}/logout">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>

    <h3>
      <a href="/addNewEmployee">Add Employee</a> |   
      <a href="/getEmployees">Show Employees</a> |  
      <a onclick="document.forms['logoutForm'].submit()">Logout</a>
    </h3>
  </c:if>

</div>