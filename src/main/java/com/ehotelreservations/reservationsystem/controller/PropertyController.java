package com.ehotelreservations.reservationsystem.controller;

import java.util.List;

import com.ehotelreservations.reservationsystem.model.Property;
import com.ehotelreservations.reservationsystem.service.PropertyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Properties")
public class PropertyController {
  @Autowired
  PropertyService service;

  @GetMapping
  public ResponseEntity<List<Property>> getAllProperties(@RequestParam(defaultValue = "0") Integer pageNo,
      @RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy) {

    List<Property> list = service.findAll();
    // getAllProperties(pageNo, pageSize, sortBy);

    return new ResponseEntity<List<Property>>(list, new HttpHeaders(), HttpStatus.OK);
  }
}