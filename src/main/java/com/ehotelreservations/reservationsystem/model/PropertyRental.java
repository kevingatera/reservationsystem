package com.ehotelreservations.reservationsystem.model;

import com.ehotelreservations.reservationsystem.model.address.Property_Address;

import lombok.Data;

@Data
public class PropertyRental {

    // Property
    private Property property;

    // Address
    private Property_Address address;

    // Rental Agreement
    private RentalAgreement rentalAgreement;

    // Pricing
    private Pricing price;

}
