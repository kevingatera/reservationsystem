package com.ehotelreservations.reservationsystem.service;

import java.util.ArrayList;
import java.util.List;

import com.ehotelreservations.reservationsystem.model.Property;
import com.ehotelreservations.reservationsystem.repository.PropertyRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

@Service
public class PropertyService {
  @Autowired
  PropertyRepository repository;

  // public List<Property> findAll(Integer pageNo, Integer pageSize, String
  // sortBy) {
  // Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));
  // Page<Property> pagedResult = repository.findAll(paging);
  // if (pagedResult.hasContent()) {
  // return pagedResult.getContent();
  // } else {
  // return new ArrayList<Property>();
  // }
  // }

  public List<Property> findAll(){

    List<Property> properties = repository.getRentedProperties();
    if (properties.isEmpty()) {
      return new ArrayList<Property>();
    } else {
      return properties;
    }


  }
}