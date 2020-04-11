package com.ehotelreservations.reservationsystem.model.address;

import com.ehotelreservations.reservationsystem.model.Address;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Host_Address extends Address {

  String hostID;

}