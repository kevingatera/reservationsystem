<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../_header.jsp" >
    <jsp:param name="title" value="Dashboard"/>
</jsp:include>
<jsp:include page="menu.jsp" />
<body>
  <div class="container">
    <h2>Welcome ${pageContext.request.userPrincipal.name} </h2>
  </div>
  
</body>

</html>