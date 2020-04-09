package com.ehotelreservations.reservationsystem.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ehotelreservations.reservationsystem.api.helpers.AbstractRestHandler;
import com.ehotelreservations.reservationsystem.api.helpers.exception.DataFormatException;
import com.ehotelreservations.reservationsystem.model.Property;
import com.ehotelreservations.reservationsystem.service.PropertyService;

/*
* Demonstrates how to set up RESTful API endpoints using Spring MVC
*/

@RestController
@RequestMapping("/api/property/")
public class PropertyRestController extends AbstractRestHandler {

  @Autowired
  PropertyService propertyService;

  /**
   * Create a property resource. Returns the URL of the new resource in the
   * Location header
   */
  @RequestMapping(value = "", method = RequestMethod.POST, consumes = { "application/json"
   }, produces = { "application/json" })
  @ResponseStatus(HttpStatus.CREATED)
  public void createProperty(@RequestBody Property property, HttpServletRequest request, HttpServletResponse response) {

    Property createdProperty = propertyService.createProperty(property);
    response.setHeader("Location",
        request.getRequestURL().append("/").append(createdProperty.getPropertyId()).toString());
  }

  /**
   * Get a paginated list of all properties. The list is paginated. You can
   * provide a page number (default 0) and a page size (default 100)"
   */
  @RequestMapping(value = "", method = RequestMethod.GET, produces = { "application/json"})
  @ResponseStatus(HttpStatus.OK)
  public @ResponseBody Page<Property> getAllProperty(
      @RequestParam(value = "page", required = true, defaultValue = DEFAULT_PAGE_NUM) Integer page,
      @RequestParam(value = "size", required = true, defaultValue = DEFAULT_PAGE_SIZE) Integer size,
      HttpServletRequest request, HttpServletResponse response) {
    return propertyService.getAllPropertys(page, size);
  }

  @GetMapping("/findall")
  @RequestMapping(value = "/findall", method = RequestMethod.GET, produces = { "application/json" })
  @ResponseStatus(HttpStatus.OK)
  public @ResponseBody List<Property> getAllProperties(HttpServletRequest request, HttpServletResponse response) {
    ArrayList<Property> arrayList = new ArrayList<Property>(propertyService.getAllProperties());
    // getAllProperties(pageNo, pageSize, sortBy);
      return arrayList;
  }

  // @GetMapping("/findall")
  // public ResponseEntity<List<Property>> getAllProperties(@RequestParam(defaultValue = "0") Integer pageNo,
  //     @RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy) {

  //   List<Property> list = propertyService.getAllProperties();
  //   // getAllProperties(pageNo, pageSize, sortBy);

  //   return new ResponseEntity<List<Property>>(list, new HttpHeaders(), HttpStatus.OK);
  // }

  /**
   * 
   * Get a single property. You have to provide a valid property ID
   * 
   * @params "The ID of the property.", required = true
   * 
   */
  @RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = { "application/json"})
  @ResponseStatus(HttpStatus.OK)
  public @ResponseBody Property getProperty(@PathVariable("id") Long id, HttpServletRequest request,
      HttpServletResponse response) throws Exception {
    Optional<Property> property = propertyService.getProperty(id);
    if (property.isPresent()) {
      // todo: http://goo.gl/6iNAkz
      checkResourceFound(property);
      return property.get();
    } else {
      return null;

    }
  }

  /**
   * 
   * Update a property resource. You have to provide a valid property ID in the
   * URL and in the payload. The ID attribute can not be updated
   * 
   * @param: @params "The ID of the existing property resource.", required = true
   * 
   */
  @RequestMapping(value = "/{id}", method = RequestMethod.PUT, consumes = { "application/json"
   }, produces = { "application/json" })
  @ResponseStatus(HttpStatus.NO_CONTENT)
  public void updateProperty(@PathVariable("id") Long id, @RequestBody Property property, HttpServletRequest request,
      HttpServletResponse response) {

    checkResourceFound(propertyService.getProperty(id));

    if (id != property.getPropertyId())
      throw new DataFormatException("ID doesn't match!");

    propertyService.updateProperty(property);
  }

  /**
   * 
   * Delete a property resource. You have to provide a valid property ID in the
   * URL. Once deleted the resource can not be recovered
   * 
   * @Param @params "The ID of the existing property resource.", required = true
   * 
   */
  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = { "application/json" })
  @ResponseStatus(HttpStatus.NO_CONTENT)
  public void deleteProperty(@PathVariable("id") Long id, HttpServletRequest request, HttpServletResponse response) {
    checkResourceFound(propertyService.getProperty(id));
    propertyService.deleteProperty(id);
  }
}