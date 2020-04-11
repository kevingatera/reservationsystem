package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Pricing {
    private int propertyID;
    private int hostID;
    private double nightlyRate;
    private double cleaningFee;
}