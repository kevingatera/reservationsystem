package com.ehotelreservations.reservationsystem.model.address;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
// @Entity
// @Table(name="employee_address")
public class Employee_Address {

  // @Column(name="employee_ID")
  String employeeID;

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