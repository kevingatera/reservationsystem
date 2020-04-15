<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Property" />
</jsp:include>

<body>
  <div class="wrapper">

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div class="content mt-4">

      <div class="container">

        <div class="titleContainer col">
          <div class="float-left">
            <h3>View Property Details</h3>
          </div>
          <div class="float-right">
            <!-- <button class="btn"><i class="fa fa-redo"></i><a href="addHost"> Reset</a></button>
            <button type="submit" class="btn btn-success"><i class="fa fa-plus"></i><a href="addHost"> Save</a></button> -->
          </div>
        </div>

        <hr>

        <jsp:include page="_viewPropertyForm.jsp"></jsp:include>

      </div>

    </div>
  </div>

  <script>
    document.getElementById("typeSelect").value = "${viewProperty.type}".toLowerCase();
    document.getElementById("statusSelect").value = "${viewProperty.available}".toLowerCase();

    $("#modalShowCar").on("show.bs.modal", function (e) {
      var carid = $(e.relatedTarget).data("id");
      // Do Whatever you like to do,
    });
  </script>
</body>

</html>