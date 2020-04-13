package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class HostStats {

    private int totalGuests;

    private int totalHosts;

    private int totalProperties;

    private int totalRentalAgreements;
}