package com.ehotelreservations.reservationsystem.model.address;

import lombok.Data;

@Data
public class Property_Address {

  String propertyID;

  int streetNumber;

  String streetName;

  String city;

  String province;

  String country;

}