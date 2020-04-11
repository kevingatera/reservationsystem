package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Address {

  int streetNumber;

  String streetName;

  String city;

  String province;

  String country;

}
