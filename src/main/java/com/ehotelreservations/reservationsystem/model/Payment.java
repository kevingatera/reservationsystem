package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Payment {
    private String property_ID;
    private String guest_ID;
    private String host_ID;
    private double total_fee;
    private String payment_type;
    private String payment_status;
}