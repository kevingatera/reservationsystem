package com.ehotelreservations.reservationsystem.model;

import javax.persistence.Column;
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
    @Column(name = "employee_id")
    private Integer id;

    @Column(name = "first_name")
    private String firstName;
    
    @Column(name = "last_name")
    private String lastName;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "position")
    private String position;
    
    @Column(name = "salary")
    private String salary;
    
    @Column(name = "branch_id")
    private String branch_ID;
    
    @Column(name = "phone")
    private String phone;
}