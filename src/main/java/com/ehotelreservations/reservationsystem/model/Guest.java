package com.ehotelreservations.reservationsystem.model;

import com.ehotelreservations.reservationsystem.model.address.Guest_Address;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Guest extends User {

	private int id;

	private String firstName;

	private String lastName;

	private String email;

	private int branchID;

	private String phone;

	private Guest_Address address;
}
