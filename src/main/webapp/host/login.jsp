<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../_header.jsp" >
    <jsp:param name="title" value="Log into your account"/>
</jsp:include>

<body>
  
  
  <div class="container">
    <form method="POST" action="${contextPath}/host/login" class="form-signin">
      <h2 class="form-heading">Log in</h2>

      <div class="form-group ${error != null ? 'has-error' : ''}">
        <span>${message}</span>
        <input name="username" type="text" class="form-control" placeholder="Username" autofocus="true" />
        <input name="password" type="password" class="form-control" placeholder="Password" />
        <span>${error}</span>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
        <h4 class="text-center"><a href="${contextPath}/host/registration">Create an account</a></h4>
      </div>
    </form>
  </div>

  <%-- <!-- <div class="container">
    <form:form method="POST" action="${contextPath}/login" modelAttribute="loginForm" class="form-signin">
      <h2 class="form-signin-heading">Create your account</h2>

      <spring:bind path="username">
        <div class="form-group ${status.error ? 'has-error' : ''}">
          <form:input type="text" path="username" class="form-control" placeholder="Username" autofocus="true" />
          <form:errors path="username"></form:errors>
        </div>
      </spring:bind>

      <spring:bind path="password">
        <div class="form-group ${status.error ? 'has-error' : ''}">
          <form:input type="password" path="password" class="form-control" placeholder="Password" />
          <form:errors path="password"></form:errors>
        </div>
      </spring:bind>

      <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
      <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
    </form:form>

  </div> --> --%>

  <jsp:include page="../_footer.jsp"></jsp:include>

</body>

</html>