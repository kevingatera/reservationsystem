package com.ehotelreservations.reservationsystem.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Host extends User {

	private int id;

	private String firstName;

	private String lastName;

	private String email;

	private int branchID;

	private String phone;

	// @OneToMany(cascade = CascadeType.MERGE)
	// @JoinTable(name = "employee_address", joinColumns = @JoinColumn(name =
	// "employee_id"))
	// private Host_Address address;

}
