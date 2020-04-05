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
@Table(name="branch")
public class Branch {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "branch_id")
    private int id;


    @Column(name = "branch_name")
    private String branchName;

    @Column(name = "country")
    private String country;
}