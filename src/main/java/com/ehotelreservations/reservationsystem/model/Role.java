package com.ehotelreservations.reservationsystem.model;

import com.ehotelreservations.reservationsystem.enums.RoleName;

import lombok.Data;

import java.util.List;

@Data
public class Role {

    private int id;

    private RoleName name;

    // @ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY, cascade = {
    // CascadeType.PERSIST, CascadeType.MERGE })
    private List<User> users;

}