package com.ehotelreservations.reservationsystem.model.address;

import lombok.Data;

@Data
public class Host_Address {

  String hostID;

  int streetNumber;

  String streetName;

  String city;

  String province;

  String country;

}