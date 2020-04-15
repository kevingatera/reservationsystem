<!--  -->
<div class="row">
  <div class="col-lg-10 col-md-8">
    <form>
      <div class="card">
        <div class="card-body">
          <div class="form-group">
            <label>Property Title <span class="text-danger">*</span></label>
            <input type="text" class="form-control" placeholder="Enter Full Name" value="${editProperty.propertyName}">
          </div>
          <div class="form-group">
            <label>Property Description <span class="text-danger">*</span></label>
            <textarea class="form-control" rows="4" value="${editProperty.description}"></textarea>
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
              <input type="text" class="form-control" placeholder="Enter Bedrooms" value="${editProperty.bedrooms}">
            </div>
            <div class="form-group col-md-4">
              <label>Bathrooms <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Bathrooms" value="${editProperty.bathrooms}">
            </div>
            <div class="form-group col-md-4">
              <label>Max Occupancy <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Max Occupancy"
                value="${editProperty.maxGuests}">
            </div>
          </div>

          <div class="row">
            <div class="form-group col-md-6">
              <label>Property ID <span class="text-danger">*</span></label>
              <input type="text" class="form-control" value="${editProperty.propertyId}" disabled>
            </div>
            <div class="form-group col-md-6">
              <label>Host ID <span class="text-danger">*</span></label>
              <input type="text" class="form-control" value="${editProperty.hostID}" disabled>
            </div>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="card-body">
          <h4>Address</h4>
          <div class="row">
            <div class="form-group col-md-4">
              <label>Street Number <span class="text-danger">*</span></label>
              <input type="number" class="form-control" placeholder="Enter Street Number"
                value="${editPropertyAddress.streetNumber}">
            </div>
            <div class=" form-group col-md-4">
              <label>Street Name <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Street Name"
                value="${editPropertyAddress.streetName}">
            </div>
            <div class="form-group col-md-4">
              <label>Country<span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Country"
                value="${editPropertyAddress.country}">
            </div>
            <div class="form-group col-md-4">
              <label>City <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter City" value="${editPropertyAddress.city}">
            </div>
            <div class="form-group col-md-4">
              <label>State/Province <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter State/Province"
                value="${editPropertyAddress.province}">
            </div>
            <!-- <div class="form-group col-md-4">
              <label>Zip/Postal Code <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Zip/Postal"
              value="${editPropertyAddress.city}">
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