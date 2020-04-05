package com.ehotelreservations.reservationsystem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="employee")
public class Employee {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private String employee_ID;
    private String first_name;
    private String last_name;
    private String email;
    private String position;
    private String salary;
    private String branch_ID;
    private String phone;
}