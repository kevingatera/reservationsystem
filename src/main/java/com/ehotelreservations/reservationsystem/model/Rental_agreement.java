package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Rental_agreement {
    private String property_ID;
    private String guest_ID;
    private String booking_reference;
    private String agreement_start;
    private String agreement_end;
    private String agreement_signing;
}