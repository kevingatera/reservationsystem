package com.ehotelreservations.reservationsystem.model.address;

import com.ehotelreservations.reservationsystem.model.Address;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Guest_Address extends Address {

  int guestID;

}