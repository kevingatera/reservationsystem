package com.ehotelreservations.reservationsystem.service;

import java.util.List;

import com.ehotelreservations.reservationsystem.model.Property;
import com.ehotelreservations.reservationsystem.repository.PropertyRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;

/*
 * Service to demonstrate what the API would use to get things done
 */
@Service
public class PropertyService {

  // private static final Logger log =
  // LoggerFactory.getLogger(PropertyService.class);

  @Autowired
  PropertyRepository propertyRepository;

  public PropertyService() {
  }

  public Property createProperty(Property Property) {
    return propertyRepository.save(Property);
  }

  public Property getProperty(int id) {
    return propertyRepository.findById(id);
  }

  public void updateProperty(Property Property) {
    propertyRepository.save(Property);
  }

  public void deleteProperty(int id) {
    propertyRepository.deleteById(id);
  }

  public List<Property> getAllProperties() {
    return propertyRepository.findAll();
  }

  // http://goo.gl/7fxvVf
  // public Page<Property> getAllPropertys(Integer pageNo, Integer pageSize) {

  // Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by("name"));

  // Page<Property> pagedResult = propertyRepository.findAll(paging);
  // return pagedResult;
  // }

  // public List<Property> getAllProperties(Integer pageNo, Integer pageSize,
  // String sortBy) {
  // Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));

  // Page<Property> pagedResult = propertyRepository.findAll(paging);
  // return pagedResult.getContent();
  // }

}