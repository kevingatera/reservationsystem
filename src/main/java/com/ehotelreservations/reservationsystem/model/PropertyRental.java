package com.ehotelreservations.reservationsystem.model;

import com.ehotelreservations.reservationsystem.model.address.Property_Address;

import lombok.Data;

@Data
public class PropertyRental {

    // private int propertyId;
    // private int guestId;
    // private int hostId;
    // private int bookingReference;
    // private int branchId;
    // private int nightlyRate;
    // private int agreementStart;
    // private int agreementEnd;
    // private int agreementSigning;
    // private int paymentStatus;

    // Property
    private Property property;

    // Address
    private Property_Address address;

    // Rental Agreement
    private RentalAgreement rentalAgreement;

    // Pricing
    private Pricing price;

}
