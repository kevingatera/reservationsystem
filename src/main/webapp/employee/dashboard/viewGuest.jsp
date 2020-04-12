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
        <div class="row">
          <div class="col-lg-8 col-md-8 mx-auto">
            <form>
              <div class="card">
                <div class="card-body">
                  <div class="form-group">
                    <label>Property Title <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" placeholder="Enter Full Name"
                      value="${viewProperty.propertyName}">
                  </div>
                  <div class="form-group">
                    <label>Property Description <span class="text-danger">*</span></label>
                    <textarea class="form-control" rows="4" value="${viewProperty.description}"></textarea>
                  </div>

                  <div class="row">
                    <div class="form-group col-md-4">
                      <label>Type <span class="text-danger">*</span></label>
                      <select id="typeSelect" class="form-control">
                        <option>Select Type</option>
                        <option value="house">House</option>
                        <option value="appartment">Appartment</option>
                      </select>
                    </div>
                    <div class="form-group col-md-4">
                      <label>Status <span class="text-danger">*</span></label>
                      <select id="statusSelect" class="form-control">
                        <option>Select Status</option>
                        <option value="available">Available</option>
                        <option value="unavailable">Unavailable</option>
                      </select>
                    </div>
                    <div class="form-group col-md-4">
                      <label>Rent/Booking Price <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Rent/Booking Price">
                    </div>
                  </div>

                  <div class="row">
                    <div class="form-group col-md-4">
                      <label>Bedrooms <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Bedrooms"
                        value="${viewProperty.bedrooms}">
                    </div>
                    <div class="form-group col-md-4">
                      <label>Bathrooms <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Bathrooms"
                        value="${viewProperty.bathrooms}">
                    </div>
                    <div class="form-group col-md-4">
                      <label>Max Occupancy <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Max Occupancy"
                        value="${viewProperty.maxGuests}">
                    </div>
                  </div>

                  <div class="row">
                    <div class="form-group col-md-6">
                      <label>Property ID <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" value="${viewProperty.propertyId}" disabled>
                    </div>
                    <div class="form-group col-md-6">
                      <label>Host ID <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" value="${viewProperty.hostID}" disabled>
                    </div>
                  </div>
                </div>
              </div>


              <!-- <div class="card property-features-add">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Center Cooling</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Fire Alarm</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Heating</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Gym</label>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Balcony</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Modern Kitchen</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Pool</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Elevator</label>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Dryer</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Sauna</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Dish Washer</label>
                      </div>
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="osahan-checkbox">
                        <label class="custom-control-label" for="osahan-checkbox">Pet Frindly</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div> -->

              <div class="card">
                <div class="card-body">
                  <h4>Address</h4>
                  <div class="row">
                    <div class="form-group col-md-4">
                      <label>Street Number <span class="text-danger">*</span></label>
                      <input type="number" class="form-control" placeholder="Enter Street Number"
                        value="${viewPropertyAddress.streetNumber}">
                    </div>
                    <div class=" form-group col-md-4">
                      <label>Street Name <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Street Name"
                        value="${viewPropertyAddress.streetName}">
                    </div>
                    <div class="form-group col-md-4">
                      <label>Country<span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Country"
                        value="${viewPropertyAddress.country}">
                    </div>
                    <div class="form-group col-md-4">
                      <label>City <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter City"
                        value="${viewPropertyAddress.city}">
                    </div>
                    <div class="form-group col-md-4">
                      <label>State/Province <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter State/Province"
                        value="${viewPropertyAddress.province}">
                    </div>
                    <!-- <div class="form-group col-md-4">
                      <label>Zip/Postal Code <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" placeholder="Enter Zip/Postal"
                      value="${viewPropertyAddress.city}">
                    </div> -->
                  </div>

                  <!-- <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13696.514136891485!2d75.82879273227792!3d30.88306512076876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a825231282e55%3A0xf628112220a2ecda!2sLudhiana%2C+Model+Town%2C+Ludhiana%2C+Punjab!5e0!3m2!1sen!2sin!4v1521540943434"
                    width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> -->
                </div>
              </div>


              <!-- <button type="submit" class="btn btn-success">ADD PROPERTY</button> -->

            </form>
          </div>
        </div>
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