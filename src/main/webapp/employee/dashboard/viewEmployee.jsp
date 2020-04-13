<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
session="false"%>
<html>
<jsp:include page="../../_header.jsp">
  <jsp:param name="title" value="Show Empoyee" />
</jsp:include>

<body>
  <div class="wrapper">

    <jsp:include page="../sidebar.jsp" />
    <!-- Page Content -->
    <div class="content">



      <div class="container bootstrap snippet">
        <div class="row">
          <div class="col-sm-10">
            <h1>${viewEmployee.fullName}</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-3">
            <!--left col-->


            <div class="text-center">
              <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail"
                alt="avatar">
              <!-- <h6>Upload a different photo...</h6>
              <input type="file" class="text-center center-block file-upload"> -->
            </div>

            </hr><br>

          </div>
          <!--/col-3-->
          <div class="col-sm-9">

            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a href="" data-target="#home" data-toggle="tab" class="nav-link active">Profile</a>
              </li>
              <li class="nav-item">
                <a href="" data-target="#addressTab" data-toggle="tab" class="nav-link">Address</a>
              </li>
              <li class="nav-item">
                <a href="" data-target="#userCredentialsTab" data-toggle="tab" class="nav-link">Credentials</a>
              </li>
            </ul>

            <div class="tab-content">
              <div class="tab-pane active" id="home">
                <hr>
                <form class="form" action="##" method="post" id="registrationForm">
                  <div class="form-group">

                    <div class="col-xs-6">
                      <label for="first_name">
                        <h6>First name</h6>
                      </label>
                      <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name"
                        title="enter your first name if any." value="${viewEmployee.firstName}">
                    </div>
                  </div>
                  <div class="form-group">

                    <div class="col-xs-6">
                      <label for="last_name">
                        <h6>Last name</h6>
                      </label>
                      <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name"
                        title="enter your last name if any." value="${viewEmployee.lastName}">
                    </div>
                  </div>

                  <div class="form-group">

                    <div class="col-xs-6">
                      <label for="phone">
                        <h6>Phone</h6>
                      </label>
                      <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone"
                        title="enter your phone number if any.">
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="mobile">
                        <h6>Mobile</h6>
                      </label>
                      <input type="text" class="form-control" name="mobile" id="mobile"
                        placeholder="enter mobile number" title="enter your mobile number if any."
                        value="${viewEmployee.phone}">
                    </div>
                  </div>
                  <div class="form-group">

                    <div class="col-xs-6">
                      <label for="email">
                        <h6>Email</h6>
                      </label>
                      <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com"
                        title="enter your email." value="${viewEmployee.email}">
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-xs-12">
                      <br>
                      <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>
                        Save</button>
                      <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                    </div>
                  </div>
                </form>

                <hr>

              </div>
              <!--/tab-pane-->
              <div class="tab-pane" id="addressTab">
                <hr>
                <h4>Modify Address</h4>
                <div class="row">
                  <div class="form-group col-md-4">
                    <label>Street Number <span class="text-danger">*</span></label>
                    <input type="number" class="form-control" placeholder="Enter Street Number"
                      value="${viewEmployeeAddress.streetNumber}">
                  </div>
                  <div class=" form-group col-md-4">
                    <label>Street Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" placeholder="Enter Street Name"
                      value="${viewEmployeeAddress.streetName}">
                  </div>
                  <div class="form-group col-md-4">
                    <label>Country<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" placeholder="Enter Country"
                      value="${viewEmployeeAddress.country}">
                  </div>
                  <div class="form-group col-md-4">
                    <label>City <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" placeholder="Enter City"
                      value="${viewEmployeeAddress.city}">
                  </div>
                  <div class="form-group col-md-4">
                    <label>State/Province <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" placeholder="Enter State/Province"
                      value="${viewEmployeeAddress.province}">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <br>
                    <button class="btn btn-lg btn-success pull-right" type="submit"><i
                        class="glyphicon glyphicon-ok-sign"></i> Save</button>
                    <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                  </div>
                </div>
              </div>
              <!--/tab-pane-->
              <div class="tab-pane" id="userCredentialsTab">

                <br>
                <h4>Modify User credentials</h4>
                <hr>

                <div class="form-group">
                  <div class="col-xs-6">
                    <label for="email">
                      <h6>Username</h6>
                    </label>
                    <input type="email" class="form-control" id="location" placeholder="enter a username"
                      title="enter a username" value="${viewEmployeeUser.username}">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-6">
                    <label for="email">
                      <h6>Password</h6>
                    </label>
                    <input type="email" class="form-control" id="location" placeholder="enter a password"
                      title="enter a password" value="************">
                  </div>
                </div>

                <div class="col-xs-12">
                  <br>
                  <button class="btn btn-lg btn-success pull-right" type="submit"><i
                      class="glyphicon glyphicon-ok-sign"></i> Save</button>
                  <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                </div>

              </div>

            </div>
            <!--/tab-pane-->
          </div>
          <!--/tab-content-->

        </div>
        <!--/col-9-->
      </div>
      <!--/row-->

    </div>
  </div>

  <script>
    document.getElementById("typeSelect").value = "${viewProperty.type}".toLowerCase();
    document.getElementById("statusSelect").value = "${viewProperty.available}".toLowerCase();

    $(document).ready(function () {


      var readURL = function (input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
            $('.avatar').attr('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
        }
      }


      $(".file-upload").on('change', function () {
        readURL(this);
      });
    });
  </script>
</body>

</html>