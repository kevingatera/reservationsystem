package com.ehotelreservations.reservationsystem.model;

import com.ehotelreservations.reservationsystem.model.address.Employee_Address;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Employee extends User {

    private Integer employeeId;

    private String fullName;

    private String firstName;

    private String lastName;

    private String email;

    private String position;

    private Float salary;

    private int branch_ID;

    private String phone;

    private Employee_Address address;

}