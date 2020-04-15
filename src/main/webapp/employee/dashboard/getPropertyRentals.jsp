<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Rentals" />
</jsp:include>

<body>
  <div class="wrapper">

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div class="content">

      <div class="container">

        <div class="titleContainer col">
          <div class="float-left">
            <h3>Here's a list of all Rentals</h3>
          </div>
          <div class="float-right">
            <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i><a href="addRental"> Add
                new</a></button>
          </div>
        </div>

        <hr>
        <div class="row col">

          <jsp:include page="_propertyRentalsTable.jsp">
            <jsp:param name="list" value=${propertyList} />
          </jsp:include>

        </div>
      </div>
    </div>

</body>

</html>