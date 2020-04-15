<div class="row">
  <div class="col-lg-10 col-md-8">
    <form>
      <div class="card">
        <div class="card-body">
          <div class="form-group">
            <label>Property Title <span class="text-danger">*</span></label>
            <input type="text" class="form-control" placeholder="Enter Full Name">
          </div>
          <div class="form-group">
            <label>Property Description <span class="text-danger">*</span></label>
            <textarea class="form-control" rows="4"></textarea>
          </div>

          <div class="row">
            <div class="form-group col-md-4">
              <label>Type <span class="text-danger">*</span></label>
              <select class="form-control">
                <option>Select Type</option>
                <option>Type 1</option>
                <option>Type 2</option>
                <option>Type 3</option>
              </select>
            </div>
            <div class="form-group col-md-4">
              <label>Status <span class="text-danger">*</span></label>
              <select class="form-control">
                <option>Select Status</option>
                <option>Type 1</option>
                <option>Type 2</option>
                <option>Type 3</option>
              </select>
            </div>
            <div class="form-group col-md-4">
              <label>Location <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Location">
            </div>
          </div>

          <div class="row">
            <div class="form-group col-md-4">
              <label>Bedrooms <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Bedrooms">
            </div>
            <div class="form-group col-md-4">
              <label>Bathrooms <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Bathrooms">
            </div>
            <div class="form-group col-md-4">
              <label>Sale of Rent Price <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Rent Price">
            </div>
          </div>

          <div class="row">
            <div class="form-group col-md-6">
              <label>Property ID <span class="text-danger">*</span></label>
              <input type="text" class="form-control" value="${property.propertyID}" disabled>
            </div>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="form-group col-md-4">
              <label>Street Number <span class="text-danger">*</span></label>
              <input type="number" class="form-control" placeholder="Enter Street Number"
                value="{$viewPropertyAddress.streetNumber}"">
            </div>
            <div class=" form-group col-md-4">
              <label>Address <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Address">
            </div>
            <div class="form-group col-md-4">
              <label>Country<span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Country"
                value="{$viewPropertyAddress.country}">
            </div>
            <div class="form-group col-md-4">
              <label>City <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter City">
            </div>
          </div>

          <div class="row">
            <div class="form-group col-md-4">
              <label>State <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter State">
            </div>
            <div class="form-group col-md-4">
              <label>Zip/Postal Code <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="Enter Zip/Postal">
            </div>
            <div class="form-group col-md-4">
              <label>Neighborhood <span class="text-danger">*</span></label>
              <input type="text" class="form-control" placeholder="...">
            </div>
          </div>

        </div>
      </div>

    </form>
  </div>
</div>