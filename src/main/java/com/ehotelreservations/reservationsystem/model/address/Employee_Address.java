package com.ehotelreservations.reservationsystem.model.address;

import lombok.Data;

@Data
public class Employee_Address {

  String employeeID;

  int streetNumber;

  String streetName;

  String city;

  String province;

  String country;

}