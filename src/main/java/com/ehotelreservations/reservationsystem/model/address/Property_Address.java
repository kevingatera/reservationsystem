package com.ehotelreservations.reservationsystem.model.address;

// import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Data
// @Entity
// @Table(name="property_address")
public class Property_Address {

  // @Column(name="property_ID")
  String propertyID;

  // @Column(name = "street_number")
  int streetNumber;

  // @Column(name = "street_name")
  String streetName;

  // @Column(name = "city")
  String city;

  // @Column(name = "province")
  String province;

  // @Column(name = "country")
  String country;

}