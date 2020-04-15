package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Address {

  private int streetNumber;

  private String streetName;

  private String city;

  private String province;

  private String country;

}
