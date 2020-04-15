package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Property extends Address {

    private int propertyId;

    private String propertyName;

    private String roomType;

    private int bedrooms;

    private int bathrooms;

    private int maxGuests;

    private String type;

    private String description;

    private String available;

    private double reviewAverage;

    private int hostID;

    private int branchID;
}