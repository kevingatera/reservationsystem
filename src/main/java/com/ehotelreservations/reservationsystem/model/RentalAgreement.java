package com.ehotelreservations.reservationsystem.model;

import java.sql.Date;

import lombok.Data;

@Data
public class RentalAgreement {
    private int propertyID;
    private int guestID;
    private int bookingReference;
    private Date agreementStart;
    private Date agreementEnd;
    private Date agreementSigning;
}