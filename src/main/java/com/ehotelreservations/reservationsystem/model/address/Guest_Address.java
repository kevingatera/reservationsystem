package com.ehotelreservations.reservationsystem.model.address;

import lombok.Data;

@Data
public class Guest_Address {

  String guestID;

  int streetNumber;

  String streetName;

  String city;

  String province;

  String country;

}